package com.funtl.my.shop.commons.persistence;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体类的基类
 * <p>Title: BaseEntity</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/6/21 15:28
 */
public abstract class BaseEntity implements Serializable {
    private Long id;
    private Date created;
    private Date updated;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}
