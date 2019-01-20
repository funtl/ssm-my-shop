package com.funtl.my.shop.web.ui.controller;

import com.funtl.my.shop.commons.dto.BaseResult;
import com.funtl.my.shop.commons.utils.EmailSendUtils;
import com.funtl.my.shop.web.ui.api.UsersApi;
import com.funtl.my.shop.web.ui.constant.SystemConstants;
import com.funtl.my.shop.web.ui.dto.TbUser;
import com.google.code.kaptcha.Constants;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * 登录控制器
 * <p>Title: LoginController</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/7/5 12:34
 */
@Controller
public class LoginController {

    @Autowired
    private EmailSendUtils emailSendUtils;

    /**
     * 跳转登录页
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    /**
     * 登录
     * @param tbUser
     * @return
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(TbUser tbUser, Model model, HttpServletRequest request) throws Exception {
        // 验证码验证失败
        if (!checkVerification(tbUser, request)) {
            model.addAttribute("baseResult", BaseResult.fail("验证码输入错误，请重新输入"));
            return "login";
        }

        TbUser user = UsersApi.login(tbUser);
        // 登录失败
        if (user == null) {
            model.addAttribute("baseResult", BaseResult.fail("用户名或密码错误，请重新输入！"));
            return "login";
        }

        // 登录成功
        else {
            emailSendUtils.send("用户登录", String.format("用户 【%s】 登录 MyShop", user.getUsername()), "lusifer@yeah.net");
            // 将会员信息放入 Session
            request.getSession().setAttribute(SystemConstants.SESSION_USER_KEY, user);
            return "redirect:/index";
        }
    }

    /**
     * 注销
     * @return
     */
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/index";
    }

    /**
     * 检查验证码
     * @param tbUser
     * @param request
     * @return
     */
    private boolean checkVerification(TbUser tbUser, HttpServletRequest request) {
        String verification = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if (StringUtils.equals(verification, tbUser.getVerification())) {
            return true;
        }

        return false;
    }
}
