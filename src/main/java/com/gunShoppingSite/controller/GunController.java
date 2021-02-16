package com.gunShoppingSite.controller;

import com.gunShoppingSite.model.Gun;
import com.gunShoppingSite.service.GunServiceImpl;
import com.gunShoppingSite.validator.GunValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class GunController
{
    @Autowired
    GunServiceImpl gunService;

    @Autowired
    GunValidator gunValidator;
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.addValidators(gunValidator);
    }

    //Add

    @RequestMapping(value = "/addGun",method = RequestMethod.GET)
    public String addGunData(Model model)
    {
        model.addAttribute("gun",new Gun());
        return "addForm";

    }


    @RequestMapping(value = "/saveGun",method = RequestMethod.POST)
    public String saveGun(@ModelAttribute("gun") @Validated Gun gun , BindingResult result, Model model) {
        if (result.hasErrors()) {
            System.out.println(result);
            return "addForm";
        } else {

            String str = gunService.addGun(gun);

            model.addAttribute("msg", str);
            return "SuccessMsgOfSave";
        }
    }

    //Delete Data
    @RequestMapping(value = "/deleteGun/{id}" , method = RequestMethod.GET)
    public String deleteGun(@PathVariable int id , Model model)
    {
        String str=gunService.deleteGun(id);

        model.addAttribute("msg",str);
        return "successMsg";

    }

    // Retriew ALl data
    @RequestMapping(value="allGun" , method = RequestMethod.GET)
    public String getAllDataOfGun(Model model)
    {
        List<Gun> al=gunService.allGunData();

        model.addAttribute("data",al);
        return "viewAllData";
    }

    // Retriew  data By Id

    @RequestMapping(value = "/getById/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Gun getDataById(@PathVariable int id )
    {
        Gun gun=gunService.getGunDataById(id);
        return gun;
    }

    //Update Data

    @RequestMapping(value="/updateGun/{id}",method = RequestMethod.GET)
    public String updateGunData(@PathVariable int id, Model model)
    {
        Gun gun=gunService.getGunDataById(id);

        model.addAttribute("updt",gun);
        return "updateForm";

    }

    @RequestMapping(value="/updateSave",method = RequestMethod.POST)
    public String saveUpdatedDataOfGun(@ModelAttribute("updt") Gun gun,Model model)
    {
        String str=gunService.updateGunData(gun);

        model.addAttribute("msg",str);
        return "updateSuccessMsg";
    }

    //home
    @RequestMapping("/")
    public String home()
    {
        return "Home";
    }


}
