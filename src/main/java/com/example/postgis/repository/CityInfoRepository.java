package com.example.postgis.repository;

import com.example.postgis.model.entity.CityInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

public interface CityInfoRepository extends JpaRepository<CityInfo, Long> {

    CityInfo findByCity(String city);

    List<CityInfo> findByProvince(String province);

    @Query(value = """
            SELECT id,province,city,ST_DistanceSphere(geom, ST_SetSRID(ST_MakePoint(:longitude, :latitude), 4326)) AS distance
                                    FROM CityInfo
                                    ORDER BY distance asc
                                    LIMIT :limit
            """)
    List<Object[]> findNearestCities(@Param("longitude") BigDecimal longitude,
                                            @Param("latitude") BigDecimal latitude,
                                            @Param("limit") int limit);


    @Query(value = """
            SELECT ST_DistanceSphere(
                       ST_SetSRID(ST_MakePoint(:longitude1, :latitude1), 4326),
                       ST_SetSRID(ST_MakePoint(:longitude2, :latitude2), 4326)
                   ) AS distance
            """, nativeQuery = true)
    BigDecimal calcDistance(@Param("longitude1") BigDecimal longitude1,
                            @Param("latitude1") BigDecimal latitude1,
                            @Param("longitude2") BigDecimal longitude2,
                            @Param("latitude2") BigDecimal latitude2);
}
