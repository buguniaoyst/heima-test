package com.heima.test.web;

import com.heima.test.domain.ItemInfo;
import com.heima.test.domain.TestSource;
import com.heima.test.service.ItemInfoService;
import com.heima.test.service.TestSourceService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("item")
public class ItemInfoController {


    //注入ItemInfoService
    @Autowired
    private ItemInfoService itemInfoService;

    @Autowired
    private TestSourceService testSourceService;


    @RequestMapping(value = "itemList",method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getItemList() {
        Map<String, Object> result = new HashMap<>();
        List<ItemInfo> itemInfoList = itemInfoService.queryAll();
        result.put("pagesize", 20);
        result.put("results", itemInfoList);

        return result;
    }

    @RequestMapping(value = "addItem",method = RequestMethod.POST)
    public String addItem(ItemInfo itemInfo){
        itemInfoService.save(itemInfo);
        return "redirect:/rest/item_list";
    }


    @RequestMapping(value = "queryItem",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> queryItem(ItemInfo itemInfo) {
        Map<String, Object> result = new HashMap<>();
        ItemInfo itemParam = new ItemInfo();
        if (StringUtils.isNotBlank(itemInfo.getClassType())){
            itemParam.setClassType(itemInfo.getItemType());
        }
        List<ItemInfo> itemInfos = itemInfoService.queryListByWhere(itemParam);
        result.put("pagesize", 20);
        result.put("results", itemInfos);
        return result;
    }


    @RequestMapping(value = "addTestItem",method = RequestMethod.POST)
    public String addTestItem(@RequestParam("itemId") String itemId, TestSource testSource) {
        System.out.println(itemId);
        if(StringUtils.isNotBlank(testSource.getTestType()) && testSource.getTestType().endsWith("0")){
            testSource.setTestType("0");
        }else{
            testSource.setTestType("1");
        }
        testSource.setTestStatus("1");
        testSource.setTestItems(itemId);
        System.out.println(testSource);
        testSourceService.save(testSource);
        return "redirect:/rest/test_source_list";
    }


    @RequestMapping(value = "queryTestSourceList",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> queryTestSourceList() {
        Map<String, Object> result = new HashMap<>();
        List<TestSource> testSourceList = testSourceService.queryAll();
        result.put("pagesize", 20);
        result.put("results", testSourceList);
        return result;
    }


    @RequestMapping(value = "showItemDetail",method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> showItemDetail(@RequestParam("testItems")String itemIds) {
        System.out.println(itemIds);
        List<Object> ids = new ArrayList<>();
        if(StringUtils.isNotBlank(itemIds)){
            String[] strs = itemIds.split(",");
            for (String id : strs) {
                ids.add(id);
            }

        }
        List<ItemInfo> itemInfoList = itemInfoService.queryByIds(ItemInfo.class, ids);
        System.out.println(itemInfoList);
        Map<String, Object> results = new HashMap<>();
        results.put("pagesize", 20);
        results.put("results", itemInfoList);
        return results;
    }


}
