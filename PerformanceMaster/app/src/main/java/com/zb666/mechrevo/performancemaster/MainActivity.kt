package com.zb666.mechrevo.performancemaster

import android.support.v7.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setTheme(R.style.AppTheme_After_Launch)
        setContentView(R.layout.activity_main)
//        setTheme(R.style.AppTheme_Launcher)
    }
}
