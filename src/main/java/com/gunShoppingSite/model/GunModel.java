package com.gunShoppingSite.model;

public class GunModel
{
    private int id;
    private String gunName;
    private String description;
    private String ammo;
    private float inrPrice;
    private float foreignPrice;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGunName() {
        return gunName;
    }

    public void setGunName(String gunName) {
        this.gunName = gunName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAmmo() {
        return ammo;
    }

    public void setAmmo(String ammo) {
        this.ammo = ammo;
    }

    public float getInrPrice() {
        return inrPrice;
    }

    public void setInrPrice(float inrPrice) {
        this.inrPrice = inrPrice;
    }

    public float getForeignPrice() {
        return foreignPrice;
    }

    public void setForeignPrice(float foreignPrice) {
        this.foreignPrice = foreignPrice;
    }

    @Override
    public String toString() {
        return "GunModel{" +
                "id=" + id +
                ", gunName='" + gunName + '\'' +
                ", description='" + description + '\'' +
                ", ammo='" + ammo + '\'' +
                ", inrPrice=" + inrPrice +
                ", foreignPrice=" + foreignPrice +
                '}';
    }
}
