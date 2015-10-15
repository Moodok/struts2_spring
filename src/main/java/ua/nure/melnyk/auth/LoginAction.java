package ua.nure.melnyk.auth;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Component;

@Component
public class LoginAction extends ActionSupport {

    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

}
