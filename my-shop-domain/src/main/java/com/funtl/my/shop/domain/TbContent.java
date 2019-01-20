package com.funtl.my.shop.domain;

import com.funtl.my.shop.commons.persistence.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NonNull;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;

/**
 * 内容管理
 * <p>Title: TbContent</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/6/25 14:02
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class TbContent extends BaseEntity {
    @Length(min = 1, max = 20, message = "标题长度介于 1 - 20 个字符之间")
    private String title;

    @Length(min = 1, max = 20, message = "子标题长度介于 1 - 20 个字符之间")
    private String subTitle;

    @Length(min = 1, max = 50, message = "标题描述长度介于 1 - 50 个字符之间")
    private String titleDesc;

    private String url;
    private String pic;
    private String pic2;

    @Length(min = 1, message = "内容不能为空")
    private String content;

    @NotNull(message = "父级类目不能为空")
    private TbContentCategory tbContentCategory;
}
