package com;

import com.zb666.IAPi;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;

import java.util.Arrays;
import java.util.List;

public class ArrayUtils {


    public static void toArray() {
        List<String> list = Arrays.asList("1", "2", "4");
        String[] str = (String[]) list.toArray();
        String[] str1 = (String[]) list.toArray();

        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl("")
                .build();

        IAPi iaPi = retrofit.create(IAPi.class);
        Call<String> add = iaPi.add();
        add.enqueue(new Callback<String>() {
            @Override
            public void onResponse(Call<String> call, Response<String> response) {

            }

            @Override
            public void onFailure(Call<String> call, Throwable t) {

            }
        });


    }
}
