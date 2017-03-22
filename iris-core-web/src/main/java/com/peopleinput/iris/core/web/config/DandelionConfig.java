package com.peopleinput.iris.core.web.config;

import com.github.dandelion.core.web.DandelionFilter;
import com.github.dandelion.core.web.DandelionServlet;
import com.github.dandelion.datatables.thymeleaf.dialect.DataTablesDialect;
import com.github.dandelion.thymeleaf.dialect.DandelionDialect;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;

/**
 * Created by IMPELLO\ydabo on 13/04/16.
 */
@Configuration
public class DandelionConfig {
  @Bean
  public DandelionDialect dandelionDialect() {
    return new DandelionDialect();
  }

  @Bean
  public DataTablesDialect dataTablesDialect(){
    return new DataTablesDialect();
  }

  @Bean
  public Filter dandelionFilter() {
    return new DandelionFilter();
  }

  @Bean
  public ServletRegistrationBean dandelionServletRegistrationBean() {
    return new ServletRegistrationBean(new DandelionServlet(), "/dandelion-assets/*");
  }
}
