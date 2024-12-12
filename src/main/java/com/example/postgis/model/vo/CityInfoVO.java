package com.example.postgis.model.vo;

import lombok.*;

import java.math.BigDecimal;

@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class CityInfoVO {

    private Long id;

    private String province;

    private String city;

    private BigDecimal distance;
}
