package com.heima.test.view;

import com.heima.test.domain.TestInfo;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class ScoreListView extends AbstractExcelView {
    @Override
    protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 从model对象中获取userList
        @SuppressWarnings("unchecked")
        List<TestInfo> proList = (List<TestInfo>) model.get("scoreList");
        // 创建Excel的sheet
        HSSFSheet sheet = workbook.createSheet("学员考试成绩");

        // 创建标题行
        HSSFRow header = sheet.createRow(0);
        header.createCell(0).setCellValue("序号");
        header.createCell(1).setCellValue("姓名");
        header.createCell(2).setCellValue("总分数");


        // 填充数据
        int rowNum = 1;
        for (TestInfo testInfo : proList) {
            HSSFRow row = sheet.createRow(rowNum);
            row.createCell(0).setCellValue(rowNum);
            row.createCell(1).setCellValue(testInfo.getUsername());
            row.createCell(2).setCellValue(testInfo.getTotalScore());
            rowNum++;
        }
        // 设置相应头信息，以附件形式下载并且指定文件名
        response.setHeader("Content-Disposition", "attachment;filename="
                + new String("黑马开班考试成绩.xls".getBytes(), "ISO-8859-1"));

    }
}
