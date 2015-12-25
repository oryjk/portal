package com.news.bean;

import java.util.Date;

/**
 * Created by dianjinzi on 23/12/15.
 */
public class News {
    private Integer news_id;
    private String article;
    private String title;
    private Date  date;
    private  Integer categroy_id;
    private Integer state;

    public Integer getNews_id() {
        return news_id;
    }

    public void setNews_id(Integer news_id) {
        this.news_id = news_id;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getCategroy_id() {
        return categroy_id;
    }

    public void setCategroy_id(Integer categroy_id) {
        this.categroy_id = categroy_id;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "News{" +
                "news_id=" + news_id +
                ", article='" + article + '\'' +
                ", title='" + title + '\'' +
                ", date=" + date +
                ", categroy_id=" + categroy_id +
                ", state=" + state +
                '}';
    }
}
