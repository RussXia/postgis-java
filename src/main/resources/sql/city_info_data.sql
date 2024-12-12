INSERT INTO city_info (province, city, geom) VALUES
    -- 北京市
    ('北京市', '北京市', ST_GeomFromText('POINT(116.4074 39.9042)', 4326)),

    -- 上海市
    ('上海市', '上海市', ST_GeomFromText('POINT(121.4737 31.2304)', 4326)),

    -- 广东省
    ('广东省', '广州市', ST_GeomFromText('POINT(113.2644 23.1291)', 4326)),
    ('广东省', '深圳市', ST_GeomFromText('POINT(114.0579 22.5431)', 4326)),
    ('广东省', '珠海市', ST_GeomFromText('POINT(113.5767 22.2707)', 4326)),
    ('广东省', '汕头市', ST_GeomFromText('POINT(116.7085 23.3710)', 4326)),
    ('广东省', '佛山市', ST_GeomFromText('POINT(113.1214 23.0215)', 4326)),
    ('广东省', '东莞市', ST_GeomFromText('POINT(113.7518 23.0207)', 4326)),

    -- 浙江省
    ('浙江省', '杭州市', ST_GeomFromText('POINT(120.1551 30.2741)', 4326)),
    ('浙江省', '宁波市', ST_GeomFromText('POINT(121.5498 29.8683)', 4326)),
    ('浙江省', '温州市', ST_GeomFromText('POINT(120.6994 27.9949)', 4326)),
    ('浙江省', '嘉兴市', ST_GeomFromText('POINT(120.7555 30.7469)', 4326)),
    ('浙江省', '湖州市', ST_GeomFromText('POINT(120.1024 30.8672)', 4326)),

    -- 江苏省
    ('江苏省', '南京市', ST_GeomFromText('POINT(118.7969 32.0603)', 4326)),
    ('江苏省', '苏州市', ST_GeomFromText('POINT(120.5853 31.2989)', 4326)),
    ('江苏省', '无锡市', ST_GeomFromText('POINT(120.3119 31.4912)', 4326)),
    ('江苏省', '常州市', ST_GeomFromText('POINT(119.9737 31.8107)', 4326)),
    ('江苏省', '南通市', ST_GeomFromText('POINT(120.8943 31.9802)', 4326)),

    -- 山东省
    ('山东省', '济南市', ST_GeomFromText('POINT(117.0009 36.6758)', 4326)),
    ('山东省', '青岛市', ST_GeomFromText('POINT(120.3826 36.0671)', 4326)),
    ('山东省', '烟台市', ST_GeomFromText('POINT(121.4479 37.4638)', 4326)),
    ('山东省', '潍坊市', ST_GeomFromText('POINT(119.1618 36.7069)', 4326)),
    ('山东省', '临沂市', ST_GeomFromText('POINT(118.3564 35.1047)', 4326)),

    -- 四川省
    ('四川省', '成都市', ST_GeomFromText('POINT(104.0665 30.5723)', 4326)),
    ('四川省', '绵阳市', ST_GeomFromText('POINT(104.6866 31.4736)', 4326)),
    ('四川省', '德阳市', ST_GeomFromText('POINT(104.3979 31.1270)', 4326)),
    ('四川省', '乐山市', ST_GeomFromText('POINT(103.7654 29.5521)', 4326)),
    ('四川省', '泸州市', ST_GeomFromText('POINT(105.4434 28.8891)', 4326)),

    -- 湖北省
    ('湖北省', '武汉市', ST_GeomFromText('POINT(114.3054 30.5931)', 4326)),
    ('湖北省', '黄石市', ST_GeomFromText('POINT(115.0389 30.1995)', 4326)),
    ('湖北省', '十堰市', ST_GeomFromText('POINT(110.7989 32.6292)', 4326)),
    ('湖北省', '荆州市', ST_GeomFromText('POINT(112.2397 30.3352)', 4326)),
    ('湖北省', '宜昌市', ST_GeomFromText('POINT(111.2908 30.7026)', 4326)),

    -- 辽宁省
    ('辽宁省', '沈阳市', ST_GeomFromText('POINT(123.4315 41.8057)', 4326)),
    ('辽宁省', '大连市', ST_GeomFromText('POINT(121.6147 38.9140)', 4326)),
    ('辽宁省', '鞍山市', ST_GeomFromText('POINT(122.9946 41.1086)', 4326)),
    ('辽宁省', '抚顺市', ST_GeomFromText('POINT(123.9572 41.8809)', 4326)),
    ('辽宁省', '本溪市', ST_GeomFromText('POINT(123.7669 41.2942)', 4326)),

    -- 安徽省
    ('安徽省', '合肥市', ST_GeomFromText('POINT(117.2273 31.8206)', 4326)),
    ('安徽省', '芜湖市', ST_GeomFromText('POINT(118.4335 31.3525)', 4326)),
    ('安徽省', '蚌埠市', ST_GeomFromText('POINT(117.3893 32.9155)', 4326)),
    ('安徽省', '马鞍山市', ST_GeomFromText('POINT(118.5068 31.6705)', 4326)),
    ('安徽省', '安庆市', ST_GeomFromText('POINT(117.0638 30.5435)', 4326)),

    -- 福建省
    ('福建省', '福州市', ST_GeomFromText('POINT(119.2965 26.0745)', 4326)),
    ('福建省', '厦门市', ST_GeomFromText('POINT(118.0895 24.4798)', 4326)),
    ('福建省', '泉州市', ST_GeomFromText('POINT(118.6759 24.8741)', 4326)),
    ('福建省', '漳州市', ST_GeomFromText('POINT(117.6473 24.5135)', 4326)),
    ('福建省', '莆田市', ST_GeomFromText('POINT(119.0076 25.4540)', 4326)),

    -- 江西省
    ('江西省', '南昌市', ST_GeomFromText('POINT(115.8582 28.6829)', 4326)),
    ('江西省', '九江市', ST_GeomFromText('POINT(115.9890 29.7196)', 4326)),
    ('江西省', '赣州市', ST_GeomFromText('POINT(114.9359 25.8311)', 4326)),
    ('江西省', '宜春市', ST_GeomFromText('POINT(114.3911 27.8043)', 4326)),
    ('江西省', '上饶市', ST_GeomFromText('POINT(117.9712 28.4444)', 4326)),

    -- 广西壮族自治区
    ('广西壮族自治区', '南宁市', ST_GeomFromText('POINT(108.3669 22.8170)', 4326)),
    ('广西壮族自治区', '柳州市', ST_GeomFromText('POINT(109.4155 24.3254)', 4326)),
    ('广西壮族自治区', '桂林市', ST_GeomFromText('POINT(110.2900 25.2736)', 4326)),
    ('广西壮族自治区', '梧州市', ST_GeomFromText('POINT(111.2791 23.4770)', 4326)),
    ('广西壮族自治区', '北海市', ST_GeomFromText('POINT(109.1192 21.4733)', 4326)),

    -- 云南省
    ('云南省', '昆明市', ST_GeomFromText('POINT(102.8329 24.8801)', 4326)),
    ('云南省', '曲靖市', ST_GeomFromText('POINT(103.7972 25.5016)', 4326)),
    ('云南省', '玉溪市', ST_GeomFromText('POINT(102.5466 24.3520)', 4326)),
    ('云南省', '保山市', ST_GeomFromText('POINT(99.1671 25.1118)', 4326)),
    ('云南省', '丽江市', ST_GeomFromText('POINT(100.2278 26.8565)', 4326)),

    -- 贵州省
    ('贵州省', '贵阳市', ST_GeomFromText('POINT(106.6302 26.6477)', 4326)),
    ('贵州省', '遵义市', ST_GeomFromText('POINT(106.9373 27.7066)', 4326)),
    ('贵州省', '安顺市', ST_GeomFromText('POINT(105.9462 26.2531)', 4326)),
    ('贵州省', '六盘水市', ST_GeomFromText('POINT(104.8302 26.5934)', 4326)),
    ('贵州省', '毕节市', ST_GeomFromText('POINT(105.2914 27.2835)', 4326)),

    -- 海南省
    ('海南省', '海口市', ST_GeomFromText('POINT(110.1983 20.0440)', 4326)),
    ('海南省', '三亚市', ST_GeomFromText('POINT(109.5119 18.2528)', 4326)),
    ('海南省', '三沙市', ST_GeomFromText('POINT(112.3386 16.8314)', 4326)),
    ('海南省', '儋州市', ST_GeomFromText('POINT(109.5807 19.5211)', 4326)),

    -- 宁夏回族自治区
    ('宁夏回族自治区', '银川市', ST_GeomFromText('POINT(106.2309 38.4872)', 4326)),
    ('宁夏回族自治区', '石嘴山市', ST_GeomFromText('POINT(106.3833 39.0202)', 4326)),
    ('宁夏回族自治区', '吴忠市', ST_GeomFromText('POINT(106.1984 37.9976)', 4326)),
    ('宁夏回族自治区', '固原市', ST_GeomFromText('POINT(106.2852 36.0046)', 4326)),
    ('宁夏回族自治区', '中卫市', ST_GeomFromText('POINT(105.1968 37.4999)', 4326)),

    -- 青海省
    ('青海省', '西宁市', ST_GeomFromText('POINT(101.7789 36.6232)', 4326)),
    ('青海省', '海东市', ST_GeomFromText('POINT(102.1033 36.5029)', 4326)),
    ('青海省', '海西蒙古族藏族自治州', ST_GeomFromText('POINT(97.3700 37.3747)', 4326)),
    ('青海省', '玉树藏族自治州', ST_GeomFromText('POINT(97.0085 33.0041)', 4326)),
    ('青海省', '果洛藏族自治州', ST_GeomFromText('POINT(100.2421 34.4714)', 4326));
