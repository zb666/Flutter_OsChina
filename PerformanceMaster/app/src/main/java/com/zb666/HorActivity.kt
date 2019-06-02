package com.zb666

import android.app.Activity
import android.graphics.Color
import android.os.Bundle
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.LinearSnapHelper
import android.support.v7.widget.RecyclerView
import android.text.SpannableString
import android.text.Spanned
import android.text.style.BackgroundColorSpan
import android.text.style.ForegroundColorSpan
import android.widget.LinearLayout
import android.widget.TextView
import com.zb666.mechrevo.performancemaster.R

import java.util.ArrayList

class HorActivity : Activity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hor)

        /**
         * LinearLayoutManager manager = new LinearLayoutManager(getContext());
         * manager.setOrientation(LinearLayoutManager.HORIZONTAL);
         * mRecyclerView.setLayoutManager(manager);
         * // 将SnapHelper attach 到RecyclrView
         * LinearSnapHelper snapHelper = new LinearSnapHelper();
         * snapHelper.attachToRecyclerView(mRecyclerView);
         */

        val rvHor = findViewById<RecyclerView>(R.id.rvHor)
        val snapHelper = LinearSnapHelper()
        //        snapHelper.attachToRecyclerView(rvHor);
        rvHor.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        val horAdapter = HorAdapter()
        rvHor.adapter = horAdapter
        val list = ArrayList<String>()
        for (i in 0..3) {
            list.add("item $i")
        }
        horAdapter.setNewData(list)

        val textView = findViewById<TextView>(R.id.tvSp)
        val spannableString = SpannableString("如果我是陈奕迅")
        val backgroundColorSpan = ForegroundColorSpan(Color.GREEN)
        spannableString.setSpan(backgroundColorSpan, 0, 4, Spanned.SPAN_INCLUSIVE_INCLUSIVE)
        textView.text = spannableString

        finish()
    }
}
