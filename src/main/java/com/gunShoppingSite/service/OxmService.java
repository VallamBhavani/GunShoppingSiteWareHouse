package com.gunShoppingSite.service;

import com.gunShoppingSite.model.Gun;
import com.gunShoppingSite.model.GunList;
import org.springframework.oxm.Marshaller;
import org.springframework.oxm.Unmarshaller;

import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.List;

public class OxmService
{

    Marshaller marshaller;
    Unmarshaller unmarshaller;

    public Marshaller getMarshaller() {
        return marshaller;
    }

    public void setMarshaller(Marshaller marshaller) {
        this.marshaller = marshaller;
    }

    public Unmarshaller getUnmarshaller() {
        return unmarshaller;
    }

    public void setUnmarshaller(Unmarshaller unmarshaller) {
        this.unmarshaller = unmarshaller;
    }

//Marshalling
    public String getGunDataInXml(GunList gunList) throws IOException {
        StringWriter stringWriter = new StringWriter();
        getMarshaller().marshal(gunList,new StreamResult(stringWriter));

         System.out.println(stringWriter);
        return stringWriter.toString();
    }


    //Unmarshalling
    public GunList getGunDataInObject(String xml) throws IOException {
        StringReader stringReader= new StringReader(xml);
        System.out.println("inside inside oxmservice method");

        GunList guns= (GunList)  getUnmarshaller().unmarshal(new StreamSource(stringReader));

        System.out.println(guns);
        return guns;
    }



}
