package com.example.postgis.model.entity;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import jakarta.persistence.*;
import lombok.Data;
import org.locationtech.jts.geom.Point;

@Entity
@Table(name = "city_info", uniqueConstraints = {@UniqueConstraint(columnNames = {"province", "city"})})
@Data
public class CityInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String province;

    private String city;

    @Column(columnDefinition = "geometry(Point, 4326)")
//    @JsonSerialize(using = PointToJsonSerializer.class)
//    @JsonDeserialize(using = JsonToPointDeserializer.class)
    private Point geom;
}
