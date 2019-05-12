package com.zb666;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.widget.LinearLayout;
import com.zb666.mechrevo.performancemaster.R;

import java.util.ArrayList;
import java.util.List;

public class HorActivity extends Activity {


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hor);

        /**
         * LinearLayoutManager manager = new LinearLayoutManager(getContext());
         *  manager.setOrientation(LinearLayoutManager.HORIZONTAL);
         *  mRecyclerView.setLayoutManager(manager);
         * // 将SnapHelper attach 到RecyclrView
         *  LinearSnapHelper snapHelper = new LinearSnapHelper();
         *  snapHelper.attachToRecyclerView(mRecyclerView);
         */

        RecyclerView rvHor = findViewById(R.id.rvHor);
        LinearSnapHelper snapHelper = new LinearSnapHelper();
//        snapHelper.attachToRecyclerView(rvHor);
        rvHor.setLayoutManager(new LinearLayoutManager(this,LinearLayoutManager.HORIZONTAL,false));
        HorAdapter horAdapter = new HorAdapter();
        rvHor.setAdapter(horAdapter);
        List<String> list = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            list.add("item " + i);
        }
        horAdapter.setNewData(list);

    }
}
