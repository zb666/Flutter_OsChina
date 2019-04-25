package com.zb666.mechrevo.performancemaster.flyweight;

import android.util.Log;

public class Bike implements IBike {

    @Override
    public void getBikeStr(String key) {
        Log.d("Bike",key);
    }
}
