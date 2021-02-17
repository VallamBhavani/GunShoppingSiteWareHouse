package com.gunShoppingSite.model;



import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;


@XmlRootElement
public class Gun  implements Serializable {

    private int id;
    private String gunName;
    private String description;
    private float priceInr;
    private float priceUsd;
    private String scope;

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    @XmlElement
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @XmlElement
    public String getGunName() {
        return gunName;
    }

    public void setGunName(String gunName) {
        this.gunName = gunName;
    }

    @XmlElement
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @XmlElement
    public float getPriceInr() {
        return priceInr;
    }

    public void setPriceInr(float priceInr) {
        this.priceInr = priceInr;
    }

    @XmlElement
    public float getPriceUsd() {
        return priceUsd;
    }

    public void setPriceUsd(float priceUsd) {
        this.priceUsd = priceUsd;
    }

    @Override
    public String toString() {
        return "Gun{" +
                "id=" + id +
                ", gunName=" + gunName +
                ", description='" + description + '\'' +
                ", priceInr=" + priceInr +
                ", priceUsd=" + priceUsd +
                ", scope='" + scope + '\'' +
                '}';
    }
}
