package struts.dto;

import java.util.Date;


public class Request 
{
    
    private int orderId;
    private String customerId;
    private Date deliveryDate;
    private Date dateOfOrder;
    private String type;
    private int quantity;
    private String location;

    public Request() {
    }

    public Request(int orderId, String customerId, Date deliveryDate, Date dateOfOrder, String type, int quantity, String location) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.deliveryDate = deliveryDate;
        this.dateOfOrder = dateOfOrder;
        this.type = type;
        this.quantity = quantity;
        this.location = location;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public Date getDateOfOrder() {
        return dateOfOrder;
    }

    public void setDateOfOrder(Date dateOfOrder) {
        this.dateOfOrder = dateOfOrder;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    
    
}