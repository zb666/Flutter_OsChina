package com;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import com.zb666.mechrevo.performancemaster.R;

public class AAAAc extends AppCompatActivity {

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_aaa);
        String aaa = "a" + "_" + "b" + "_" + "c";
        String[] s = aaa.split("_");
        for (String s1 : s) {
            String s11 = s1;
        }
    }
}
