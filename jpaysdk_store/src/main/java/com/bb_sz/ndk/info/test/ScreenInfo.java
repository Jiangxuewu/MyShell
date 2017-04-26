package com.bb_sz.ndk.info.test;

import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 * <p>屏幕信息</p>
 */
public class ScreenInfo {

//    private static final int[] w = {320, 480, 720, 1080, 400, 720, 720, 1080};
//    private static final int[] h = {480, 854, 1184, 1776, 800, 960, 1280, 1920};

    private static final int[] w = {720};
    private static final int[] h = {1280};

    private int width;
    private int height;
    private int densityDpi;
    private float density;

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.height=").append(height).append("\n");
        sb.append("refresh.width=").append(width).append("\n");
        sb.append("refresh.densityDpi=").append(densityDpi).append("\n");
        sb.append("refresh.density=").append(density).append("\n");
        return sb.toString();
    }

    public ScreenInfo() {
        int i = new Random().nextInt(w.length);
        width = w[i];
        height = h[i];
        densityDpi = 320;
        density = 2;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getDensityDpi() {
        return densityDpi;
    }

    public void setDensityDpi(int densityDpi) {
        this.densityDpi = densityDpi;
    }

    public float getDensity() {
        return density;
    }

    public void setDensity(float density) {
        this.density = density;
    }
}
