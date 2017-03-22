package com.peopleinput.iris.admin;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.TestRestTemplate;
import org.springframework.boot.test.WebIntegrationTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import static org.assertj.core.api.Assertions.assertThat;


@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = AdminApplicationStartup.class)
@WebIntegrationTest(randomPort = true)
public class AdminApplicationStartupTest {
  @Value("${local.server.port}")
  private static int port;

  private static RestTemplate restTemplate = new TestRestTemplate("user", "password");
  private static String url = "http://localhost:" + port;


  @Test
  @Ignore
  public void contextLoads() {
    // String body = new RestTemplate().getForObject(url,String.class);
    String body = restTemplate.getForObject(url, String.class);
    // assertThat(body.) , is("hello : devoxx"));
  }


  // http://www.javabeat.net/spring-boot-testing/

  @Test
  @Ignore
  public void should_display_product_details_when_id_exists() {
/*
    ProductForm apiResponse = restTemplate.getForObject(url + "/products/" + 1, ProductForm.class);

    assertThat(apiResponse).isNotNull();
*/
  }
}