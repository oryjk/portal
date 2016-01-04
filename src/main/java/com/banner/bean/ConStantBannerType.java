package com.banner.bean;

import org.springframework.stereotype.Component;

/**
 * Created by wangyirui on 28/12/15.
 */
@Component
public class ConStantBannerType {
    public static final Integer HOME_TYPE = 1;//首页banner
    public static final Integer JUEDANGTAO_TYPE = 2;//绝当淘banner
    public static final Integer SHOUYITAO_TYPE = 3;//收益淘banner
    public static final Integer NEWS_TYPE = 4;//新闻banner
    public static final Integer ABOUTUS_TYPE = 5;//关于我们banner
    public static final Integer SHOW_STATUS=1;//设为banner显示
    public static final Integer HIDDEN_STATUS=0;//不设为banner
}
