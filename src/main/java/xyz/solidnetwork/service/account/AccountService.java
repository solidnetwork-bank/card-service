package xyz.solidnetwork.service.account;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

import lombok.extern.slf4j.Slf4j;
import xyz.solidnetwork.service.account.transaction.Report;

@Service
@Slf4j
public class AccountService {
    // @Autowired
    RestTemplate restTemplate = new RestTemplate();

    public Report getReport() {
        restTemplate.setUriTemplateHandler(new DefaultUriBuilderFactory("http://localhost:80"));
        log.info("microservice transaction-service is invoked");
        return restTemplate.postForObject("/private/transaction", "my-request", Report.class);

    }

}
