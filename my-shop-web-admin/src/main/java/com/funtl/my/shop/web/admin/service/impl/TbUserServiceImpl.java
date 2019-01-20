package com.funtl.my.shop.web.admin.service.impl;

import com.funtl.my.shop.commons.dto.BaseResult;
import com.funtl.my.shop.commons.validator.BeanValidator;
import com.funtl.my.shop.domain.TbUser;
import com.funtl.my.shop.web.admin.abstracts.AbstractBaseServiceImpl;
import com.funtl.my.shop.web.admin.dao.TbUserDao;
import com.funtl.my.shop.web.admin.service.TbUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import java.util.Date;

@Service
@Transactional(readOnly = true)
public class TbUserServiceImpl extends AbstractBaseServiceImpl<TbUser, TbUserDao> implements TbUserService {

    @Override
    @Transactional(readOnly = false)
    public BaseResult save(TbUser tbUser) {
        String validator = BeanValidator.validator(tbUser);
        // 验证不通过
        if (validator != null) {
            return BaseResult.fail(validator);
        }

        // 通过验证
        else {
            tbUser.setUpdated(new Date());

            // 新增用户
            if (tbUser.getId() == null) {
                // 密码需要加密处理
                tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                tbUser.setCreated(new Date());
                dao.insert(tbUser);
            }

            // 编辑用户
            else {
                // 编辑用户时如果没有输入密码则沿用原来的密码
                if (StringUtils.isBlank(tbUser.getPassword())) {
                    TbUser oldTbUser = getById(tbUser.getId());
                    tbUser.setPassword(oldTbUser.getPassword());
                } else {
                    // 验证密码是否符合规范，密码长度介于 6 - 20 位之间
                    if (StringUtils.length(tbUser.getPassword()) < 6 || StringUtils.length(tbUser.getPassword()) > 20) {
                        return BaseResult.fail("密码长度必须介于 6 - 20 位之间");
                    }

                    // 设置密码加密
                    tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
                }
                update(tbUser);
            }

            return BaseResult.success("保存用户信息成功");
        }
    }

    @Override
    public TbUser login(String email, String password) {
        TbUser tbUser = dao.getByEmail(email);
        if (tbUser != null) {
            // 明文密码加密
            String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());

            // 判断加密后的密码和数据库中存放的密码是否匹配，匹配则表示允许登录
            if (md5Password.equals(tbUser.getPassword())) {
                return tbUser;
            }
        }

        return null;
    }
}
