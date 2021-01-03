package com.entity;

import java.time.LocalDateTime;

public class News {
    private int id;
    private String title;
    private String homePhoto;
    private String content;
    private LocalDateTime time;
    private Boolean showAble;
    private int level;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHomePhoto() {
        return homePhoto;
    }

    public void setHomePhoto(String homePhoto) {
        this.homePhoto = homePhoto;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime(LocalDateTime time) {
        this.time = time;
    }

    public Boolean getShowAble() {
        return showAble;
    }

    public void setShowAble(Boolean showAble) {
        this.showAble = showAble;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }
}
