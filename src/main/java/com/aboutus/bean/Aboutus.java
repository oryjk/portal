package com.aboutus.bean;

import java.util.Date;

/**
 * Created by dianjinzi on 24/12/15.
 */
public class Aboutus {
    private Integer aboutus_id;
    private String title;
    private String article;
    private Date date;
    private Integer banner_id;
    private Integer type;
    private Integer state;

    public Integer getAboutus_id() {
        return aboutus_id;
    }

    public void setAboutus_id(Integer aboutus_id) {
        this.aboutus_id = aboutus_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getBanner_id() {
        return banner_id;
    }

    public void setBanner_id(Integer banner_id) {
        this.banner_id = banner_id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Aboutus{" +
                "aboutus_id=" + aboutus_id +
                ", title='" + title + '\'' +
                ", article='" + article + '\'' +
                ", date=" + date +
                ", banner_id=" + banner_id +
                ", type=" + type +
                ", state=" + state +
                '}';
    }
}
