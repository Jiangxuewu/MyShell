package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/10.
 *
 */
@Deprecated
public class ScreenInfo {

    /**
     * _id : 1
     * width : 480
     * height : 854
     * dpi : 240
     * density : 1.5
     */
    private int width;
    private int height;
    private int dpi;
    private float density;

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

    public int getDpi() {
        return dpi;
    }

    public void setDpi(int dpi) {
        this.dpi = dpi;
    }

    public float getDensity() {
        return density;
    }

    public void setDensity(float density) {
        this.density = density;
    }
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.height=").append(height).append("\n");
        sb.append("refresh.width=").append(width).append("\n");
        sb.append("refresh.dpi=").append(dpi).append("\n");
        sb.append("refresh.density=").append(density).append("\n");
        return sb.toString();
    }
}
