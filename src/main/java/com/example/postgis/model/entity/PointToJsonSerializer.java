package com.example.postgis.model.entity;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import org.locationtech.jts.geom.Point;

import java.io.IOException;

public class PointToJsonSerializer extends JsonSerializer<Point> {


    @Override
    public void serialize(Point value, JsonGenerator jgen,
                          SerializerProvider provider) throws IOException {

        String jsonValue = "null";
        if (value != null) {
            double lat = value.getY();
            double lon = value.getX();
            jsonValue = String.format("POINT (%s %s)", lat, lon);
        }
        jgen.writeString(jsonValue);
    }
}
