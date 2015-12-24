package com.media.bean;

import java.io.Serializable;

/**
 * Created by dianjinzi on 23/12/15.
 */
public class Media implements Serializable{
    private Integer media_id;
    private String url;
    private Integer type;
    private Integer relation;

    public Integer getMedia_id() {
        return media_id;
    }

    public void setMedia_id(Integer media_id) {
        this.media_id = media_id;
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

    public Integer getRelation() {
        return relation;
    }

    public void setRelation(Integer relation) {
        this.relation = relation;
    }

    @Override
    public String toString() {
        return "Media{" +
                "media_id=" + media_id +
                ", url='" + url + '\'' +
                ", type=" + type +
                ", relation=" + relation +
                '}';
    }
}
