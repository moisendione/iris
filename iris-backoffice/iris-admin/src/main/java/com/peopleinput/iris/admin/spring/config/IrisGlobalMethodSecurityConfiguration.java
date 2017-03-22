package com.peopleinput.iris.admin.spring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler;
import org.springframework.security.access.expression.method.MethodSecurityExpressionHandler;
import org.springframework.security.access.hierarchicalroles.RoleHierarchy;
import org.springframework.security.access.hierarchicalroles.RoleHierarchyImpl;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.method.configuration.GlobalMethodSecurityConfiguration;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled=true)
public class IrisGlobalMethodSecurityConfiguration extends GlobalMethodSecurityConfiguration
{

    @Bean
    public RoleHierarchy roleHierarchy() {
        RoleHierarchyImpl roleHierarchy = new RoleHierarchyImpl();
        roleHierarchy.setHierarchy(
                "{authority=ROLE_SUP_ADMIN} > {authority=ROLE_ADMIN} " +
                "{authority=ROLE_ADMIN} > {authority=ROLE_BACKOFFICE} " +
                "{authority=ROLE_BACKOFFICE} > {authority=ROLE_FRONTOFFICE} " +
                "{authority=ROLE_FRONTOFFICE} > {authority=ROLE_USER}");

        return roleHierarchy;
    }

    @Override
    protected MethodSecurityExpressionHandler createExpressionHandler() {
        DefaultMethodSecurityExpressionHandler expressionHandler = (DefaultMethodSecurityExpressionHandler) super.createExpressionHandler();
        expressionHandler.setRoleHierarchy(roleHierarchy());
        return expressionHandler;
    }
}