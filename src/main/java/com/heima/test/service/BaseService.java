package com.heima.test.service;


import com.github.abel533.entity.Example;
import com.github.abel533.mapper.Mapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.heima.test.domain.TestCtrl;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by yst on 2017/7/19.
 */
public abstract class BaseService<T> {

    /**
     * 注入时在Spring容器中找T的通用mapper实现
     */
    @Autowired
    private  Mapper<T> mapper;

    /**
     * 由子类实现该方法，返回Spring注入的Mapper对象
     *
     * @return
     */
    public  Mapper<T> getMapper() {
        return  this.mapper;
    }

    /**
     * 根据id查询数据
     *
     * @param id
     * @return
     */
    public T queryById(String id) {
        return getMapper().selectByPrimaryKey(id);
    }

    /**
     * 查询所有数据
     *
     * @return
     */
    public List<T> queryAll() {
        return getMapper().select(null);
    }

    /**
     * 根据查询条件查询数据集合
     *
     * @param param
     * @return
     */
    public List<T> queryListByWhere(T param) {
        return getMapper().select(param);
    }

    /**
     * 查询数量
     *
     * @param param
     * @return
     */
    public Integer queryCount(T param) {
        return getMapper().selectCount(param);
    }

    /**
     * 查询数量
     *
     * @return
     */
    public Integer queryCount() {
        return queryCount(null);
    }

    /**
     * 分页查询
     *
     * @param param 查询条件
     * @param page 当前页
     * @param rows 页面大小
     * @return
     */
    public PageInfo<T> queryPageListByWhere(T param, Integer page, Integer rows) {
        // 设置分页参数
        PageHelper.startPage(page, rows);
        List<T> list = this.queryListByWhere(param);
        return new PageInfo<T>(list);
    }

    /**
     * 查询一条数据
     *
     * @param param
     * @return
     */
    public T queryOne(T param) {
        return getMapper().selectOne(param);
    }

    /**
     * 新增数据
     * @param t
     * @return
     */
    public Integer save(T t){
        return this.getMapper().insert(t);
    }

    /**
     * 新增非空字段数据
     * @param t
     * @return
     */
    public Integer saveSelective(T t){
        return this.getMapper().insertSelective(t);
    }

    /**
     * 根据主键id更新数据
     * @param t
     * @return
     */
    public Integer updateById(T t){
        return this.getMapper().updateByPrimaryKey(t);
    }


    /**
     * 根据主键id更新数据（非空字段）
     * @param t
     * @return
     */
    public Integer updateSelectiveById(T t){

        return this.getMapper().updateByPrimaryKeySelective(t);
    }

    /**
     * 根据ids删除数据
     * @param clazz
     * @param values
     * @return
     */
    public Integer deleteByIds(Class<?> clazz,List<Object> values){
        Example example = new Example(clazz);
        example.createCriteria().andIn("id", values);
        return this.getMapper().deleteByExample(example);
    }

    /**
     * 根据ids查询数据
     * @param clazz
     * @param values
     * @return
     */
    public List<T> queryByIds(Class<?> clazz,List<Object> values){
        Example example = new Example(clazz);
        example.createCriteria().andIn("id", values);
        return this.getMapper().selectByExample(example);
    }

    /**
     * 根据id删除
     *
     * @param id
     * @return
     */
    public Integer deleteById(Integer id){
        return this.getMapper().deleteByPrimaryKey(id);
    }



}
