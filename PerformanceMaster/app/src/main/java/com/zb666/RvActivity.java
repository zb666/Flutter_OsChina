package com.zb666;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.zb666.item.EntityA;
import com.zb666.item.EntityB;
import com.zb666.item.MyMultipleItem;
import com.zb666.mechrevo.performancemaster.R;
import com.zb666.mechrevo.smooth.ImageDetailActivity;

import java.util.ArrayList;
import java.util.List;

public class RvActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rv);
        RecyclerView recyclerView = findViewById(R.id.recycle);

        final List<MyMultipleItem> itemList = new ArrayList<>();
        for (int i=0;i<10;i++){
            MyMultipleItem myMultipleItem = new MyMultipleItem(i%2==0?1:2,"哈哈"+i);
            itemList.add(myMultipleItem);
        }

        InnerAdapter innerAdapter = new InnerAdapter(itemList);

        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(innerAdapter);

        innerAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public void onItemChildClick(BaseQuickAdapter adapter, View view, int position) {
                int itemViewType = adapter.getItemViewType(position);
                if (itemViewType == MyMultipleItem.FIRST_TYPE) return;
                Intent intent = new Intent(RvActivity.this, ImageDetailActivity.class);
                intent.putExtra("images", "https://youimg1.c-ctrip.com/target/100310000000p6767262E.jpg");
                int[] location = new int[2];
                view.findViewById(R.id.iv_smooth).getLocationOnScreen(location);
                intent.putExtra("locationX", location[0]);
                intent.putExtra("locationY", location[1]);
                intent.putExtra("width", view.findViewById(R.id.iv_smooth).getWidth());
                intent.putExtra("height", view.findViewById(R.id.iv_smooth).getHeight());
                startActivity(intent);
                overridePendingTransition(0, 0);
            }
        });
    }


}
