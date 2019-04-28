package com.zb666.mechrevo.smooth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.zb666.mechrevo.performancemaster.R;

import java.io.File;


public class OriginalActivity extends Activity {

	GridView gridView;
	private Adapter adapter;

	private int[] ImageRes = {
			R.mipmap.ic_launcher_round,
			R.mipmap.ic_launcher_round};

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_original);
		gridView = findViewById(R.id.gridView);
		adapter = new Adapter();
		gridView.setAdapter(adapter);

	}


	public class Adapter extends BaseAdapter {
		private ImageView imageView;

		@Override
		public int getCount() {
			return ImageRes.length;
		}

		@Override
		public Object getItem(int position) {
			return ImageRes[position];
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(final int position, View convertView, ViewGroup parent) {
			View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.image_item, null);
			imageView = (ImageView) view.findViewById(R.id.image);
			Glide.with(OriginalActivity.this)
					.load("http://appfile.xys.ren/avatar1/2018/05/1684291687461527569516.jpg")
					.downloadOnly(new SimpleTarget<File>() {
						@Override
						public void onResourceReady(@NonNull File resource, @Nullable Transition<? super File> transition) {
							imageView.setImageURI(Uri.fromFile(resource));
						}
					});

			imageView.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View view) {
					Intent intent = new Intent(OriginalActivity.this, ImageDetailActivity.class);
					intent.putExtra("images", ImageRes[position]);
					int[] location = new int[2];
					view.getLocationOnScreen(location);
					intent.putExtra("locationX", location[0]);
					intent.putExtra("locationY", location[1]);

					intent.putExtra("width", view.getWidth());
					intent.putExtra("height", view.getHeight());
					startActivity(intent);
					overridePendingTransition(0, 0);
				}
			});
			return view;
		}
	}
	

}
