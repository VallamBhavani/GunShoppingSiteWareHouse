package com.gunShoppingSite.dao;

import com.gunShoppingSite.model.Gun;

import java.util.List;

public interface GunDao
{
    public int addGun(Gun gun);
    public int deleteGun(int id);
    public Gun  getGunDataById(int id);
    public int updateGunData(Gun gun);
    List<Gun> allGunData();
}
