package com.funtl.my.shop.commons.persistence;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 通用的树形结构接口
 * <p>Title: BaseTree</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/6/29 11:05
 */
public interface BaseTreeDao<T extends BaseEntity> {
    /**
     * 查询全部数据
     *
     * @return
     */
    List<T> selectAll();

    /**
     * 新增
     *
     * @param entity
     */
    void insert(T entity);

    /**
     * 删除
     *
     * @param ids
     */
    void delete(String[] ids);

    /**
     * 根据 ID 查询信息
     *
     * @param id
     * @return
     */
    T getById(Long id);

    /**
     * 更新
     *
     * @param entity
     */
    void update(T entity);

    /**
     * 根据父级节点 ID 查询所有子节点
     *
     * @param pid
     * @return
     */
    List<T> selectByPid(Long pid);
}
