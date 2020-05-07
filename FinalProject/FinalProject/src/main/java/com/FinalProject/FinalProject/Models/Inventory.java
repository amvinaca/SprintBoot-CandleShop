package com.FinalProject.FinalProject.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "inventory")
public class Inventory {


    @Id
    @Column(name = "inventoryid")
    private String inventoryid;
    @Column(name = "description")
    private String description;
    @Column(name = "price")
    private String price;


    public Inventory() {
    }

    public Inventory(String inventoryid, String description, String price) {
        this.inventoryid = inventoryid;
        this.description = description;
        this.price = price;
    }

    public String getInventoryid() {
        return inventoryid;
    }

    public void setInventoryid(String inventoryid) {
        this.inventoryid = inventoryid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
