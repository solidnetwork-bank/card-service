package xyz.solidnetwork.service.secure.auth;

public class Signin {
    private String token;

    public Signin() {

        token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL2Jhbmsuc29saWRuZXR3b3JrLnh5eiIsImlhdCI6MTUxNjIzOTAyMiwidXNlciI6eyJlbWFpbCI6ImV4YW1wbGVAc29saWRuZXR3b3JrLnh5eiIsImF1dGgiOiIwMThlNDg0NC1lOGQ4LTcyNDAtODVhMy0zNGI4NzgzYTY2Y2MiLCJpZCI6ImI3NmMiLCJmaXJzdE5hbWUiOiJKb2huIiwibGFzdE5hbWUiOiJEb2UifX0.6n-EqXDjlo0te5PhTD1U6JqAcKGFaqkU7egj-kwG5X4";

    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

}
