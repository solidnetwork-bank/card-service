package xyz.solidnetwork.service;

public class Card {
    private String number;
    private String expiration;
    private String holder;
    private String cvv;

    public Card() {
        number = "1111 2222 3333 4444";
        expiration = "11/33";
        holder = "Mary Jane Doe";
        cvv = "555";
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getExpiration() {
        return expiration;
    }

    public void setExpiration(String expiration) {
        this.expiration = expiration;
    }

    public String getHolder() {
        return holder;
    }

    public void setHolder(String holder) {
        this.holder = holder;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    @Override
    public String toString() {
        return "Card [number=" + number + ", expiration=" + expiration + ", holder=" + holder + ", cvv=" + cvv + "]";
    }

}
