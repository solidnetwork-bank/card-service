package xyz.solidnetwork.service;

import java.io.IOException;

import org.slf4j.MDC;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

@Component
public class FilterConfig implements Filter {

  @Value("${log.time.zone}")
  private String logTimeZone;

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
      throws IOException, ServletException {

    try {

      final String userId = getHeader(Const.USER_ID_HEADER, servletRequest);
      final String requestId = getHeader(Const.REQUEST_ID_HEADER, servletRequest);

      MDC.put(Const.USER_ID, userId);
      MDC.put(Const.REQUEST_ID, requestId);

      filterChain.doFilter(servletRequest, servletResponse);
    } finally {
      MDC.clear();

    }

  }

  private String getHeader(String headerName, ServletRequest servletRequest) {

    HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;

    return httpRequest.getHeader(headerName);

  }

}