CREATE TABLE city_info (
    id SERIAL PRIMARY KEY,
    province VARCHAR(50) NOT NULL,       -- 省份名称
    city VARCHAR(50) NOT NULL,           -- 城市名称
    geom GEOMETRY(Point, 4326) NOT NULL, -- 几何列，使用WGS 84坐标系
    CONSTRAINT unique_province_city UNIQUE (province, city) -- 唯一性约束，确保省份和城市组合唯一
);