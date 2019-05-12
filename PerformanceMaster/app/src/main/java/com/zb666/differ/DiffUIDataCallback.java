package com.zb666.differ;

import android.support.v7.util.DiffUtil;

import java.util.List;

/**
 * AsyncListDiff基础
 * DiffUtil比较
 * @param <T>
 */
public class DiffUIDataCallback<T extends DiffUIDataCallback.UiDataDiffer<T>> extends DiffUtil.Callback {

    private List<T> mOldList,mNewList;

    public DiffUIDataCallback(List<T> mOldList, List<T> mNewList) {
        this.mOldList = mOldList;
        this.mNewList = mNewList;
    }

    @Override
    public int getOldListSize() {
        return mOldList.size();
    }

    @Override
    public int getNewListSize() {
        return mNewList.size();
    }

    @Override
    public boolean areItemsTheSame(int oldItemPos, int newItemPos) {
        T oldBean = mOldList.get(oldItemPos);
        T newBean = mNewList.get(newItemPos);
        return oldBean.isSame(newBean);
    }

    @Override
    public boolean areContentsTheSame(int oldItemPos, int newItemPos) {
        T oldBean = mOldList.get(oldItemPos);
        T newBean = mNewList.get(newItemPos);
        return oldBean.isUiContentSame(newBean);
    }

    /**
     * 定义抽象规则
     * 需要进行比较的数据需要实现该接口
     *
     * @param <T>
     */
    public interface UiDataDiffer<T> {
        //数据类型是否为同一个
        boolean isSame(T old);
        //新旧数据的内容是否相同
        boolean isUiContentSame(T old);
    }

}
