package com.gunShoppingSite.controller;

import com.gunShoppingSite.model.Gun;
import com.gunShoppingSite.model.GunList;
import com.gunShoppingSite.service.GunServiceImpl;
import com.gunShoppingSite.service.OxmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@Controller
@RestController
public class GunControllerForMarshUnmarsh
{
    @Autowired
    OxmService oxmService;

    @Autowired
    GunServiceImpl gunService;

    /*@RequestMapping(value = "/getInXml", method = RequestMethod.GET , produces = "application/xml")
    public String getInXml() throws IOException {
        String data=gunService.convertObjectToXml();

        return data;
    }*/

    @RequestMapping(value = "/getInXml", method = RequestMethod.GET , produces = "application/xml")
    @ResponseBody
    public String getInXml() throws IOException {
        String data=gunService.convertObjectToXml();

        return data;
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET )
    @ResponseBody
    public List<Gun> getInJson() throws IOException {
        List<Gun> gunList=gunService.allGunData();

        return gunList;
    }

    @RequestMapping(value="/getInObj",method = RequestMethod.GET)
    public GunList  getDataInObject( ) throws IOException {
        System.out.println("inside getDataInObject method");
        String data=gunService.convertObjectToXml();
        System.out.println("inside getDataInObject method2");
        return gunService.convertXmlToObject(data);


    }


}
