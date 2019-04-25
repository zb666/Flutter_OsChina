package com.zb666.mechrevo.performancemaster

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.FrameLayout
import com.zb666.mechrevo.performancemaster.flyweight.FlyWeightFactory

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setTheme(R.style.AppTheme_After_Launch)
        setContentView(R.layout.activity_main)

        val ofo = FlyWeightFactory.getInstance().getOrderBike("ofo")
        ofo.getBikeStr("ofo 输出")

        val mobile = FlyWeightFactory.getInstance().getOrderBike("mobile")
        mobile.getBikeStr("mobile 输出")

        val ofoShare = FlyWeightFactory.getInstance().getOrderBike("ofo")
        ofoShare.getBikeStr("ofo 备份数据开始输出")
    }
}
