package com.zb666

import android.widget.ImageView
import com.bumptech.glide.Glide
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter
import com.chad.library.adapter.base.BaseQuickAdapter
import com.chad.library.adapter.base.BaseViewHolder
import com.chad.library.adapter.base.entity.MultiItemEntity
import com.zb666.item.EntityA
import com.zb666.item.EntityB
import com.zb666.item.MyMultipleItem
import com.zb666.mechrevo.performancemaster.R

class InnerAdapter
/**
 * Same as QuickAdapter#QuickAdapter(Context,int) but with
 * some initialization data.
 *
 * @param data A new list is created out of this one to avoid mutable list
 */
    (data: List<MyMultipleItem>) : BaseMultiItemQuickAdapter<MyMultipleItem, BaseViewHolder>(data) {

    init {
        addItemType(MyMultipleItem.FIRST_TYPE, R.layout.item_111)
        addItemType(MyMultipleItem.SECOND_TYPE, R.layout.item_222)
    }

    override fun convert(helper: BaseViewHolder, item: MyMultipleItem) {
        val itemType = item.itemType
        when (itemType) {
            MyMultipleItem.FIRST_TYPE -> helper.setText(R.id.tv111, item.data)
            MyMultipleItem.SECOND_TYPE -> {
                val imageView = helper.getView<ImageView>(R.id.iv_smooth)
                Glide.with(mContext).load("https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
                    .into(imageView)
                helper.addOnClickListener(R.id.iv_smooth)
                helper.setText(R.id.tv222, item.data)
            }
        }
    }
}
