package com.zb666.mechrevo.performancemaster.flyweight;

import android.util.Log;

import java.util.HashMap;

public class FlyWeightFactory {

    private static class HOLDER{
        private static final FlyWeightFactory flyWeightFactory = new FlyWeightFactory();
    }

    private FlyWeightFactory(){}

    public static FlyWeightFactory getInstance(){
        return HOLDER.flyWeightFactory;
    }

    private HashMap<String,IBike> mBikeMap = new HashMap<>();

    /**
     *享受元模式
     * @param key
     * @return
     */
    public IBike getOrderBike(String key){
        if (!mBikeMap.containsKey(key)){
            mBikeMap.put(key,new Bike());
            Log.d("Bike","key不存在 "+key);
            return mBikeMap.get(key);
        }
        Log.d("Bike","key已经存在 "+key);
        return mBikeMap.get(key);
    }


}
