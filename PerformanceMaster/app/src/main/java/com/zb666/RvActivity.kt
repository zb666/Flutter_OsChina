package com.zb666

import android.content.Intent
import android.media.Image
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView
import com.chad.library.adapter.base.BaseQuickAdapter
import com.chad.library.adapter.base.BaseViewHolder
import com.chad.library.adapter.base.entity.MultiItemEntity
import com.zb666.cachemoudle.ImageDetailBean
import com.zb666.item.EntityA
import com.zb666.item.EntityB
import com.zb666.item.MyMultipleItem
import com.zb666.mechrevo.performancemaster.R
import com.zb666.mechrevo.performancemaster.utils.LogUtils
import com.zb666.mechrevo.smooth.ImageDetailActivity

import java.util.ArrayList

class RvActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_rv)
        val recyclerView = findViewById<RecyclerView>(R.id.recycle)

        val itemList = ArrayList<MyMultipleItem>()
        for (i in 0..9) {
            val myMultipleItem = MyMultipleItem(if (i % 2 == 0) 1 else 2, "哈哈$i")
            itemList.add(myMultipleItem)
        }

        val innerAdapter = InnerAdapter(itemList)

        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = innerAdapter
        innerAdapter.addHeaderView(LayoutInflater.from(this).inflate(R.layout.item_111, null))
        innerAdapter.addFooterView(LayoutInflater.from(this).inflate(R.layout.item_222, null))

        innerAdapter.onItemChildClickListener = BaseQuickAdapter.OnItemChildClickListener { adapter, view, position ->
            val itemViewType = adapter.getItemViewType(position)
            //                if (itemViewType == MyMultipleItem.FIRST_TYPE) return;
            val intent = Intent(this@RvActivity, ImageDetailActivity::class.java)
            val imageDetailBean = ImageDetailBean("image", 1)
            intent.putExtra("imageDetailBean", imageDetailBean)
            intent.putExtra("images", "https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg")
            val location = IntArray(2)
            view.findViewById<View>(R.id.iv_smooth).getLocationOnScreen(location)
            intent.putExtra("locationX", location[0])
            intent.putExtra("locationY", location[1])
            intent.putExtra("width", view.findViewById<View>(R.id.iv_smooth).width)
            intent.putExtra("height", view.findViewById<View>(R.id.iv_smooth).height)
            startActivity(intent)
            overridePendingTransition(0, 0)
        }

        findViewById<View>(R.id.tvRefersh).setOnClickListener { innerAdapter.notifyDataSetChanged() }
    }


    /**
     * kotlin处理图片
     */
     fun kotlinImage() {
        //比如只是想把某个数据过滤出来  for循环，然后
        var girl1 = Girl(1, "girl")
        var girl3 = Girl(3, "girl")
        var girl2 = Girl(2, "girl")
        var girl4 = Girl(4, "girl")
        //kotlin可以将函数作为一个参数返回
        //比如寻找年龄最大的 需要for循环去寻找该数据,然后通过If进行匹配

        var list = ArrayList<Girl>()

        //数据从T转变成了R
        list.map {
            "$it.name+$it.age"
        }

        list.groupBy {
            it.age
        }.get(1)?.forEach {  }

    }

}
