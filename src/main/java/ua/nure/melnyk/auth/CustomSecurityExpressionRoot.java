package ua.nure.melnyk.auth;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.expression.WebSecurityExpressionRoot;
import ua.nure.melnyk.entities.User;

public class CustomSecurityExpressionRoot extends WebSecurityExpressionRoot {

    public CustomSecurityExpressionRoot(Authentication a, FilterInvocation fi) {
        super(a, fi);
    }

    public boolean checkMine() {
        String userId = request.getParameter("userId");
        return isAuthenticated() && String.valueOf(((User) getPrincipal()).getId()).equals(userId);
    }

}
