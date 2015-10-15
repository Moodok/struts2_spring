package ua.nure.melnyk.auth;

import org.springframework.security.access.expression.SecurityExpressionOperations;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;
import org.springframework.security.web.access.expression.WebSecurityExpressionRoot;
import org.springframework.stereotype.Component;

@Component
public class CustomWebSecurityExpressionHandler extends DefaultWebSecurityExpressionHandler {

    @Override
    protected SecurityExpressionOperations createSecurityExpressionRoot(
            Authentication authentication, FilterInvocation fi) {
        WebSecurityExpressionRoot root = new CustomSecurityExpressionRoot(authentication, fi);
        root.setPermissionEvaluator(getPermissionEvaluator());
        root.setTrustResolver(new AuthenticationTrustResolverImpl());
        root.setRoleHierarchy(getRoleHierarchy());
        return root;
    }

}
