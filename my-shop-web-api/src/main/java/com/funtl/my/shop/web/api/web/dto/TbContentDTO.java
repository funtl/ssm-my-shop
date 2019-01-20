package com.funtl.my.shop.web.api.web.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * 内容数据传输对象
 * <p>Title: TbContentDTO</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/7/3 14:32
 */
@Data
public class TbContentDTO implements Serializable {
    private Long id;
    private String title;
    private String subTitle;
    private String titleDesc;
    private String url;
    private String pic;
    private String pic2;
}
