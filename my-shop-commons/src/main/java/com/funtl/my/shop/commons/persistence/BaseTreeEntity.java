package com.funtl.my.shop.commons.persistence;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = true)
public abstract class BaseTreeEntity<T extends BaseEntity> extends BaseEntity implements Serializable {
    private T parent;
    private Boolean isParent;
}
