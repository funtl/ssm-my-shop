package com.funtl.my.shop.web.api.service;

import com.funtl.my.shop.domain.TbUser;

/**
 * 会员管理
 * <p>Title: TbUserService</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/7/6 9:12
 */
public interface TbUserService {

    /**
     * 登录
     * @param tbUser
     * @return
     */
    TbUser login(TbUser tbUser);
}
