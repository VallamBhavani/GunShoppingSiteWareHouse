package com.gunShoppingSite.service;

import com.gunShoppingSite.dao.GunDaoImpl;
import com.gunShoppingSite.model.Gun;
import com.gunShoppingSite.model.GunList;

import java.io.IOException;
import java.util.List;

public class GunServiceImpl implements GunService {

    OxmService oxmService;

    public OxmService getOxmService() {
        return oxmService;
    }

    public void setOxmService(OxmService oxmService) {
        this.oxmService = oxmService;
    }

    GunDaoImpl gunDao;

    public GunDaoImpl getGunDao() {
        return gunDao;
    }

    public void setGunDao(GunDaoImpl gunDao) {
        this.gunDao = gunDao;
    }

    //Add service implementation

    @Override
    public String addGun(Gun gun) {
        int count = 0;

        count = gunDao.addGun(gun);

        if (count == 1) {
            return "Gun data is added successfully";
        } else {
            return "Gun data not added , try again";
        }
    }

    //Delete Servce implementation

    @Override
    public String deleteGun(int id) {
        int count = 0;

        count = gunDao.deleteGun(id);

        if (count == 1) {
            return "Gun data is Deleted successfully";
        } else {
            return "Gun data is not Deleted , try again";
        }
    }

    //Update Service implementation
    @Override
    public String updateGunData(Gun gun) {
        int count = 0;

        count = gunDao.updateGunData(gun);

        if (count == 1) {
            return "Gun data is Updated successfully";
        } else {
            return "Gun data is not Updated , try again";
        }
    }

    //GetById  Service Implementation
    @Override
    public Gun getGunDataById(int id) {
        return getGunDao().getGunDataById(id);
    }

    //List of Data implementation
    @Override
    public List<Gun> allGunData() {
        return getGunDao().allGunData();
    }

    //Convert object to XMl implementation

    @Override
    public String convertObjectToXml() throws IOException {
        GunList gunList = new GunList();

        gunList.setGunList(getGunDao().allGunData());

        String str=getOxmService().getGunDataInXml(gunList);

        return str;
    }
    //Convert XML to object implmentation

    @Override
    public GunList convertXmlToObject(String xml) throws IOException
    {
        System.out.println("inside gunservice method");
        return getOxmService().getGunDataInObject(xml);
    }
}
