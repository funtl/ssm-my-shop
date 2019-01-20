package com.funtl.my.shop.web.admin.dao;

import com.funtl.my.shop.commons.persistence.BaseDao;
import com.funtl.my.shop.domain.TbUser;
import org.springframework.stereotype.Repository;

@Repository
public interface TbUserDao extends BaseDao<TbUser> {
    /**
     * 根据邮箱查询用户信息
     *
     * @param email
     * @return
     */
    TbUser getByEmail(String email);
}
