package com.banner.bean;

/**
 * Created by wangyirui on 28/12/15.
 */
public class Banner {
    private Integer banner_id;
    private  String url;
    private  Integer type;
    private  Integer status;

    public Integer getBanner_id() {
        return banner_id;
    }

    public void setBanner_id(Integer banner_id) {
        this.banner_id = banner_id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Banner{" +
                "banner_id=" + banner_id +
                ", url='" + url + '\'' +
                ", type=" + type +
                ", status=" + status +
                '}';
    }
}
