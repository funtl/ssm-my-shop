package com.funtl.my.shop.web.admin.service;

import com.funtl.my.shop.commons.persistence.BaseService;
import com.funtl.my.shop.domain.TbUser;

public interface TbUserService extends BaseService<TbUser> {
    /**
     * 用户登录
     *
     * @param email
     * @param password
     * @return
     */
    TbUser login(String email, String password);
}
