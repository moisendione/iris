package com.peopleinput.iris.admin;

import com.peopleinput.iris.core.web.config.IrisResponseResolver;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.ErrorPage;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpStatus;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.List;
import java.util.Locale;

@EnableAutoConfiguration
@ComponentScan(basePackages = {
        "com.peopleinput.iris.admin",
    "com.peopleinput.iris.domain.config",
    "com.peopleinput.iris.service.pdf.config",
    "com.peopleinput.iris.core.web",

    "com.peopleinput.iris.admin.service"})

//@EnableOAuth2Sso


public class AdminApplicationStartup {

  public static void main(String[] args) {
    SpringApplication.run(AdminApplicationStartup.class, args);
  }

  @Bean
  public WebMvcConfigurerAdapter observableMVCConfiguration() {
    return new WebMvcConfigurerAdapter() {
      @Override
      public void addReturnValueHandlers(List<HandlerMethodReturnValueHandler> returnValueHandlers) {
        returnValueHandlers.add(new IrisResponseResolver());
      }

      @Override
      public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(localeChangeInterceptor());
      }
    };
  }

  @Bean
  public EmbeddedServletContainerCustomizer containerCustomizer() {

    return (container -> {
      ErrorPage error401Page = new ErrorPage(HttpStatus.UNAUTHORIZED, "/error/401.html");
      ErrorPage error404Page = new ErrorPage(HttpStatus.NOT_FOUND, "/error/404.html");
      ErrorPage error500Page = new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/error/500.html");

      container.addErrorPages(error401Page, error404Page, error500Page);
    });
  }

  @Bean
  public LocaleResolver localeResolver() {
    SessionLocaleResolver slr = new SessionLocaleResolver();
    slr.setDefaultLocale(Locale.FRANCE);
    return slr;
  }

  @Bean
  public LocaleChangeInterceptor localeChangeInterceptor() {
    LocaleChangeInterceptor lci = new LocaleChangeInterceptor();
    lci.setParamName("lang");
    return lci;
  }
}
