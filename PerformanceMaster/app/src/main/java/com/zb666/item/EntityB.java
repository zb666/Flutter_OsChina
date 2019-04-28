package com.zb666.item;

import com.chad.library.adapter.base.entity.MultiItemEntity;

public class EntityB implements MultiItemEntity {

    private int b;

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    @Override
    public int getItemType() {
        return 1;
    }
}
