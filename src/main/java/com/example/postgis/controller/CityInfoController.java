package com.example.postgis.controller;

import com.alibaba.fastjson2.JSON;
import com.example.postgis.model.vo.CityInfoVO;
import com.example.postgis.service.CityInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
public class CityInfoController {

    @Autowired
    private CityInfoService cityInfoService;

    @GetMapping("/cityInfo/{city}")
    public String getCityInfo(@PathVariable("city") String city) {
        CityInfoVO cityInfoVO = cityInfoService.findByCity(city);
        if (Objects.isNull(cityInfoVO)) {
            return "not found";
        }
        return JSON.toJSONString(cityInfoVO);
    }

    @GetMapping("/province/{province}")
    public String getProvinceCity(@PathVariable("province") String province) {
        List<CityInfoVO> provinceCityList = cityInfoService.findByProvince(province);
        if (CollectionUtils.isEmpty(provinceCityList)) {
            return "not found";
        }
        return JSON.toJSONString(provinceCityList);
    }

    @GetMapping("/city/nearest/{longitude}/{latitude}")
    public String getNearestCity(@PathVariable("longitude") BigDecimal longitude, @PathVariable("latitude") BigDecimal latitude) {
        List<CityInfoVO> provinceCityList = cityInfoService.findNearestCities(longitude, latitude);
        provinceCityList = Optional.ofNullable(provinceCityList).orElse(Collections.emptyList());
        return JSON.toJSONString(provinceCityList);
    }

    @GetMapping("/distance/{longitude1}/{latitude1}/{longitude2}/{latitude2}")
    public String calcDistance(@PathVariable("longitude1") BigDecimal longitude1,
                               @PathVariable("latitude1") BigDecimal latitude1,
                               @PathVariable("longitude2") BigDecimal longitude2,
                               @PathVariable("latitude2") BigDecimal latitude2) {
        BigDecimal distance = cityInfoService.calcDistance(longitude1, latitude1, longitude2, latitude2);
        return JSON.toJSONString(distance);
    }
}
