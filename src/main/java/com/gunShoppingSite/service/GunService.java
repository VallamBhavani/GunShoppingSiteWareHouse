package com.gunShoppingSite.service;

import com.gunShoppingSite.model.Gun;
import com.gunShoppingSite.model.GunList;

import java.io.IOException;
import java.util.List;

public interface GunService {
    String addGun(Gun gun);

    String deleteGun(int id);

    String updateGunData(Gun gun);

    Gun getGunDataById(int id);

    List<Gun> allGunData();

    String convertObjectToXml() throws IOException;

    GunList convertXmlToObject(String xml) throws IOException;

}
