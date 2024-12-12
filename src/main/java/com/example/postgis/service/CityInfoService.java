package com.example.postgis.service;

import com.example.postgis.model.entity.CityInfo;
import com.example.postgis.model.vo.CityInfoVO;
import com.example.postgis.repository.CityInfoRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Service
public class CityInfoService {

    @Autowired
    private CityInfoRepository cityInfoRepository;

    public CityInfoVO findByCity(String city) {
        CityInfo cityInfo = cityInfoRepository.findByCity(city);
        if (Objects.isNull(cityInfo)) {
            return null;
        }
        CityInfoVO cityInfoVO = new CityInfoVO();
        BeanUtils.copyProperties(cityInfo, cityInfoVO);
        return cityInfoVO;
    }

    public List<CityInfoVO> findByProvince(String city) {
        List<CityInfo> cityInfoList = cityInfoRepository.findByProvince(city);
        if (CollectionUtils.isEmpty(cityInfoList)) {
            return Collections.emptyList();
        }
        return cityInfoList.stream().map(cityInfo -> {
            CityInfoVO cityInfoVO = new CityInfoVO();
            BeanUtils.copyProperties(cityInfo, cityInfoVO);
            return cityInfoVO;
        }).toList();
    }

    public List<CityInfoVO> findNearestCities(BigDecimal longitude, BigDecimal latitude) {
        List<Object[]> cityInfoList = cityInfoRepository.findNearestCities(longitude, latitude, 3);
        if (CollectionUtils.isEmpty(cityInfoList)) {
            return Collections.emptyList();
        }
        return cityInfoList.stream()
                .map(cityInfo -> CityInfoVO.builder()
                        .id((Long) cityInfo[0])
                        .province((String) cityInfo[1])
                        .city((String) cityInfo[2])
                        .distance(BigDecimal.valueOf((double)cityInfo[3]))
                        .build())
                .toList();
    }

    public BigDecimal calcDistance(BigDecimal longitude1, BigDecimal latitude1, BigDecimal longitude2, BigDecimal latitude2) {
        return cityInfoRepository.calcDistance(longitude1, latitude1, longitude2, latitude2);
    }
}
