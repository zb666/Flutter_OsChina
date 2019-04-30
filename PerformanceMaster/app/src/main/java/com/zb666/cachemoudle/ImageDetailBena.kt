package com.zb666.cachemoudle

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

//跳转到图片详情界面需要传递的参数
@Parcelize data class ImageDetailBean (
        val images: String,
        val locationX: Int
) : Parcelable