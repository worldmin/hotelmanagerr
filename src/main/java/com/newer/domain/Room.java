package com.newer.domain;

import java.io.Serializable;

/**
 * @author worldmin
 */
public class Room implements Serializable{

    private Integer roomId;
    private String roomType;
    private Integer price;
    private String roomState;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getRoomState() {
        return roomState;
    }

    public void setRoomState(String roomState) {
        this.roomState = roomState;
    }
}
