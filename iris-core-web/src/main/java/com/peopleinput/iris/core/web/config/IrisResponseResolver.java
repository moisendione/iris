package com.peopleinput.iris.core.web.config;

import com.peopleinput.iris.core.web.view.IrisRedirect;
import com.peopleinput.iris.core.web.view.IrisResponse;
import com.peopleinput.iris.core.web.view.IrisView;
import org.springframework.core.MethodParameter;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Created by Yakhya DABO on 06/02/16.
 */
public class IrisResponseResolver implements HandlerMethodReturnValueHandler {

  @Override
  public boolean supportsReturnType(MethodParameter returnType) {
    return IrisResponse.class.isAssignableFrom(returnType.getParameterType());
  }

  @Override
  public void handleReturnValue(Object returnValue, MethodParameter returnType, ModelAndViewContainer mavContainer, NativeWebRequest webRequest) throws Exception {
    if (returnValue == null) {
      return;
    }

    if (returnValue instanceof IrisView) {
      String viewName = ((IrisView) returnValue).getLogicalViewName();
      mavContainer.setViewName(viewName);
    } else if (returnValue instanceof IrisRedirect) {
      IrisRedirect projectRedirect = (IrisRedirect) returnValue;
      mavContainer.setView(new RedirectView(projectRedirect.getUrl(), projectRedirect.isContextRelative()));
      mavContainer.setRedirectModelScenario(true);
    } else {
      throw new UnsupportedOperationException("Unexpected return type: " +
          returnType.getParameterType().getName() + " in method: " + returnType.getMethod());
    }
  }
}
