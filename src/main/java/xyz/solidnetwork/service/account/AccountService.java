package xyz.solidnetwork.service.account;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

import xyz.solidnetwork.service.account.transaction.Report;

@Service
public class AccountService {
    // @Autowired
    RestTemplate restTemplate = new RestTemplate();

    public Report getReport() {
        restTemplate.setUriTemplateHandler(new DefaultUriBuilderFactory("http://localhost:80"));
        return restTemplate.postForObject("/private/transaction", "my-request", Report.class);

    }

}
