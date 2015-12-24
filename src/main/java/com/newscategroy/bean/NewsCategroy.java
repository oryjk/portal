package com.newscategroy.bean;

/**
 * Created by dianjinzi on 24/12/15.
 */
public class NewsCategroy {
    private Integer newsCategroy_id;
    private String name;
    private  String url;

    public Integer getNewsCategroy_id() {
        return newsCategroy_id;
    }

    public void setNewsCategroy_id(Integer newsCategroy_id) {
        this.newsCategroy_id = newsCategroy_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "NewsCategroy{" +
                "newsCategroy_id=" + newsCategroy_id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
