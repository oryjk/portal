package com.banner.service;

import com.banner.bean.Banner;
import com.banner.bean.ConStantBannerType;
import com.banner.dao.BannerMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangyirui on 28/12/15.
 */
@Service
public class BannerServiceImp implements BannerService{
    private static final Logger LOGGER= LoggerFactory.getLogger(BannerServiceImp.class);

    @Autowired
    private BannerMapper bannerMapper;

    @Override
    public void insertBanner(Banner banner) {
        try {
            bannerMapper.insertBanner(banner);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when create a banner");
        }
    }

    @Override
    public void deleteBanner(int banner_id) {
        try {
            bannerMapper.deleteBanner(banner_id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when delete a banner");
        }
    }

    @Override
    public void updateBanner(Banner banner) {
        try {
            bannerMapper.updateBanner(banner);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when update a banner");
        }
    }

    @Override
    public List<Banner> selectBanner() {
        List<Banner> list=null;
        try {
            list=bannerMapper.selectBanner();
        }catch (Exception e){
            LOGGER.error("Some thing wrong when select a banner");
        }
        return list;
    }

    @Override
    public Banner selectBannerById(int banner_id) {
        Banner banner=null;
        try {
            banner=bannerMapper.selectBannerById(banner_id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectById a banner");
        }
        return banner;
    }

    @Override
    public List<Banner> selectTypeBanner(Banner banner) {
        List<Banner> list=null;
        try {
            list=bannerMapper.selectTypeBanner(banner);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectType a banner");
        }
        return list;
    }


}
