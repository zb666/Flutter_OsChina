package com.zb666.mechrevo.performancemaster.utils

object LogUtils {

    fun showToast(str: String): String {
        return when (str) {
            "1", "2", "3" -> "属于1-3的情况"
            else -> "other"
        }
    }
}