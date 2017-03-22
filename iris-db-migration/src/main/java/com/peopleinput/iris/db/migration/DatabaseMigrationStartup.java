package com.peopleinput.iris.db.migration;

import com.peopleinput.iris.db.migration.config.MigrationDataSourceConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Import;

/**
 * Created by IMPELLO\ydabo on 11/06/16.
 */

@SpringBootApplication
@Import(value = {MigrationDataSourceConfiguration.class})
@EnableConfigurationProperties
public class DatabaseMigrationStartup {
  public static void main(String[] args) {
    SpringApplication.run(DatabaseMigrationStartup.class, args);
  }


}
