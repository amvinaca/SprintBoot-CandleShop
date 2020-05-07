package com.FinalProject.FinalProject.Models;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "transaction")
//@SecondaryTable(name="customer", pkJoinColumns = @PrimaryKeyJoinColumn(name = "customerid"))
public class Transaction {


    @Id
    @Column(name = "transactionid")
    private String transactionid;
    @Column(name = "customern"/*, table="customer"*/)
    String customeridfk;
    @Column(name = "employeen")
    private String employeeid;
    @Column(name = "inventoryn")
    private String inventoryidfk;
    @Column(name = "pricen")
    private String pricen;

    @Column(name = "receiptnum")
    private String receiptnum;



  /*  @ManyToOne(fetch = FetchType.LAZY)  //fetch
    @JoinColumn(name = "customerid")
    private Customer customer;
*/
    public Transaction() {
    }
    public Transaction(String transactionid, String customeridfk, String employeeid, String inventoryidfk, String pricen, String receiptnum) {
        this.inventoryidfk = inventoryidfk;
        this.customeridfk = customeridfk;
        this.transactionid = transactionid;
        this.employeeid = employeeid;
        this.pricen = pricen;
        this.receiptnum = receiptnum;
    }

    public String getPricen() {
        return pricen;
    }

    public void setPricen(String pricen) {
        this.pricen = pricen;
    }

    public String getTransactionid() {
        return transactionid;
    }

    public void setTransactionid(String transactionid) {
        this.transactionid = transactionid;
    }

    public String getCustomeridfk() {
        return customeridfk;
    }

    public void setCustomeridfk(String customeridfk) {
        this.customeridfk = customeridfk;
    }

    public String getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(String employeeid) {
        this.employeeid = employeeid;
    }

    public String getInventoryidfk() {
        return inventoryidfk;
    }

    public void setInventoryidfk(String inventoryidfk) {
        this.inventoryidfk = inventoryidfk;
    }

    public String getReceiptnum() {
        return receiptnum;
    }

    public void setReceiptnum(String receiptnum) {
        this.receiptnum = receiptnum;
    }
}