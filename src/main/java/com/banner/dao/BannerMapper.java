package com.banner.dao;

import com.banner.bean.Banner;
import com.base.mapper.SqlMapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangyirui on 28/12/15.
 */
@Component
public interface BannerMapper extends SqlMapper{
    void insertBanner(Banner banner);
    void deleteBanner(int banner_id);
    void updateBanner(Banner banner);
    List<Banner> selectBanner();
    Banner selectBannerById(int banner_id);
    List<Banner> selectTypeBanner(int type);
}
