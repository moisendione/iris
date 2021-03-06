package com.peopleinput.iris.db.migration.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * Created by Yakhya Dabo on 11/06/16.
 */
@Configuration
public class MigrationDataSourceConfiguration {

  @Value("${datasource.driver.class.name}")
  private String dbDriverClassName;

  @Value("${datasource.url}")
  private String dbUrl;

  @Value("${datasource.username}")
  private String dbUsername;

  @Value("${datasource.password}")
  private String dbPassword;

  @Bean
  public DataSource getDataSource() {
    return DataSourceBuilder
        .create()
        .url(dbUrl)
        .driverClassName(dbDriverClassName)
        .username(dbUsername)
        .password(dbPassword)
        .build();
  }

}
