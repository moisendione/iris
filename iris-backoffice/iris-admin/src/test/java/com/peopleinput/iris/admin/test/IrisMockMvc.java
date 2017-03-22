package com.peopleinput.iris.admin.test;

import com.peopleinput.iris.core.web.config.IrisResponseResolver;
import com.peopleinput.iris.core.web.view.IrisView;
import org.junit.rules.TestRule;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import static org.springframework.test.util.AssertionErrors.assertEquals;
import static org.springframework.test.util.AssertionErrors.assertTrue;

/**
 * Created by Yakhya DABO on 03/02/16.
 */
public class IrisMockMvc implements TestRule {
  private static final String TEMPLATE_PREFIX = "/templates/";
  private static final String TEMPLATE_SUFFIX = ".html";
  private final MockMvc mockMvc;

  public IrisMockMvc(Object controller) {
    this.mockMvc = MockMvcBuilders.standaloneSetup(controller)
        //.setViewResolvers(viewResolver())
        .setCustomReturnValueHandlers(new IrisResponseResolver())
        .build();
  }

  public ResultActions perform(RequestBuilder requestBuilder) throws Exception {
    return mockMvc.perform(requestBuilder);
  }

  @Override
  public Statement apply(Statement base, Description description) {
    return base;
  }

  public ResultMatcher view(final IrisView view) {
    //checkNotNull(view);
    return result -> {
      ModelAndView mav = result.getModelAndView();
      assertTrue("No ModelAndView found", mav != null);
      assertEquals("View name", view.getLogicalViewName(), mav.getViewName());
    };
  }

  public ResultMatcher redirect(final String someUrl) {
    //checkNotNull(someUrl);
    return result -> {
      ModelAndView mav = result.getModelAndView();
      assertTrue("No ModelAndView found", mav != null);
      View view = mav.getView();
      assertTrue("View must be an instance of RedirectView", view instanceof RedirectView);
      RedirectView redirectView = (RedirectView) view;
      assertEquals("Redirect URL", redirectView.getUrl(), someUrl);
    };
  }
}
