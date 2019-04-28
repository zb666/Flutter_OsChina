package com.zb666.item;

import com.chad.library.adapter.base.entity.MultiItemEntity;

public class MyMultipleItem implements MultiItemEntity {

    public static final int FIRST_TYPE = 1;
    public static final int SECOND_TYPE = 2;
//    public static final int NORMAL_TYPE = 3;

    private int itemType;

    private String data;

    public MyMultipleItem(int itemType, String data) {
        this.itemType = itemType;
        this.data = data;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public int getItemType() {
        return itemType;
    }
}
