package com.zb666.mechrevo.performancemaster

import android.app.Activity
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.FrameLayout
import com.zb666.mechrevo.performancemaster.flyweight.FlyWeightFactory
import com.zb666.mechrevo.performancemaster.utils.LogUtils
import kotlinx.android.synthetic.main.activity_main.*
import java.lang.ref.ReferenceQueue
import java.util.*
import android.opengl.ETC1.getHeight
import android.opengl.ETC1.getWidth
import android.content.Intent
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.PopupWindow
import com.ArrayUtils
import com.youth.banner.BannerConfig
import com.zb666.*
import com.zb666.mechrevo.smooth.OriginalActivity
import java.io.Serializable
import kotlin.collections.ArrayList


class MainActivity : AppCompatActivity() {

    private val strLazy by lazy {
        "lazy data"
    }
    var list = ArrayList<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setTheme(R.style.AppTheme_After_Launch)
        setContentView(R.layout.activity_main)
list.add("1")
list.add("2")
list.add("3")

//ArrayUtils.toArray()


        val ofo = FlyWeightFactory.getInstance().getOrderBike("ofo")
        ofo.getBikeStr("ofo 输出")

        val mobile = FlyWeightFactory.getInstance().getOrderBike("mobile")
        mobile.getBikeStr("mobile 输出")

        val ofoShare = FlyWeightFactory.getInstance().getOrderBike("ofo")
        ofoShare.getBikeStr("ofo 备份数据开始输出")

        val d = Log.d("LogUtils", strLazy)
        var list = ArrayList<String>()
        list.add("https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
        list.add("https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
        list.add("https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
        list.add("https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
        tv.setOnClickListener {
            jump()
        }
        tv2.setOnClickListener {
            jump222()
        }

        tvPup.setOnClickListener {
            showPup()
        }

        banner.apply {
            setImageLoader(GlideImageLoader())
            setImages(list)
            isAutoPlay(false)
            setIndicatorGravity(BannerConfig.CENTER)
        }.start()

        supportFragmentManager.beginTransaction()
            .add(MyDialog(), "")
            .commitAllowingStateLoss()

        jump()
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) {
            showPup()
        }
    }

    private fun showPup() {
    }

    private fun jump222() {
        var intent = Intent(this, HorActivity::class.java)
        startActivity(intent)
    }

    private fun jump() {
        val intent = Intent(this@MainActivity, RvActivity::class.java)
        val list = ArrayList<Person>()
        val  person = Person()
        person.name = "aaaaaa"
        list.add(person)
        intent.putExtra("aaa",list)
        startActivityForResult(intent, 111)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode == Activity.RESULT_OK && requestCode == 111) {
            val listStr = data?.getStringArrayExtra("data")
        }
    }


}
