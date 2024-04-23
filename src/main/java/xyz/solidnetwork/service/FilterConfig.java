package xyz.solidnetwork.service;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;

import org.slf4j.MDC;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class FilterConfig implements Filter {

  @Value("${log.time.zone}")
  private String logTimeZone;

  private static final String USER_ID = "user-id";
  private static final String REQUEST_ID = "request-id";

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
      throws IOException, ServletException {

    try {

      final String userId = getFromJWT();
      final String requestId = getFromRequestFromLambda();

      MDC.put(USER_ID, userId);
      MDC.put(REQUEST_ID, requestId);

      log.info("*** Intercept coming request and set MDC context information ***");

      log.info("Received {}:{}, {}:{}", USER_ID, userId, REQUEST_ID, requestId);

      filterChain.doFilter(servletRequest, servletResponse);
    } finally {
      MDC.clear();
      log.info("*** Intercept coming request and MDC context information is clear ***");
    }

  }

  private String getFromJWT() {

    int min = 6;
    int max = 32;
    Random rand = new Random();

    int top = rand.nextInt((max - min) + 1) + min;

    return UUID.randomUUID().toString().replaceAll("-", "").substring(0, top - 1);

  }

  private String getFromRequestFromLambda() {

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");
    LocalDateTime dateTime = LocalDateTime.now(TimeZone.getTimeZone((logTimeZone)).toZoneId());
    String time = dateTime.format(formatter);

    StringBuffer stringBuffer = new StringBuffer();

    stringBuffer.append("REQ");
    stringBuffer.append("-");

    stringBuffer.append(UUID.randomUUID().toString().replaceAll("-", ""));
    stringBuffer.append("-");
    stringBuffer.append(time);

    return stringBuffer.toString();

  }

}