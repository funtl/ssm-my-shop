package com.funtl.my.shop.web.ui.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class TbUser implements Serializable {
    private Long id;
    private String username;
    private String password;
    private String phone;
    private String email;
    private String verification;
}
