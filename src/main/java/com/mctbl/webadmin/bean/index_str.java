package com.mctbl.webadmin.bean;

import java.util.HashMap;
import java.util.Map;

public class index_str {

    static private Map<Integer, String> map;

    static public Map<Integer, String> getMap() {
        if (map == null) {
            map = new HashMap<>();
            map.put(0, "家常菜");
            map.put(1, "鲁菜");
            map.put(2, "粤菜");
            map.put(3, "江苏菜");
            map.put(4, "闽菜");
            map.put(5, "浙江菜");
            map.put(6, "湘菜");
            map.put(7, "徽菜");
            map.put(8, "川菜");
            map.put(9, "外国菜");
        }
        return map;
    }
}
