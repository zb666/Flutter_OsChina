package com.zb666.item;

import com.chad.library.adapter.base.entity.MultiItemEntity;

public class EntityA implements MultiItemEntity {

    private int a;

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    @Override
    public int getItemType() {
        return 0;
    }
}
