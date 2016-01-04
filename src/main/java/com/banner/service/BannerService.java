package com.banner.service;

import com.banner.bean.Banner;

import java.util.List;

/**
 * Created by wangyirui on 28/12/15.
 */
public interface BannerService {
    void insertBanner(Banner banner);
    void deleteBanner(int banner_id);
    void updateBanner(Banner banner);
    List<Banner> selectBanner();
    Banner selectBannerById(int banner_id);
    List<Banner> selectTypeBanner(Banner banner);
}
