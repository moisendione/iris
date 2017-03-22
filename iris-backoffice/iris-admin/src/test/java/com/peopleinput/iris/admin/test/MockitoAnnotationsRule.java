package com.peopleinput.iris.admin.test;

import org.junit.rules.TestRule;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;
import org.mockito.MockitoAnnotations;

/**
 * Created by Yakhya DABO on 24/01/16.
 */
public class MockitoAnnotationsRule implements TestRule {
  public MockitoAnnotationsRule(Object test) {
    MockitoAnnotations.initMocks(test);
  }

  @Override
  public Statement apply(Statement base, Description description) {
    return base;
  }
}
