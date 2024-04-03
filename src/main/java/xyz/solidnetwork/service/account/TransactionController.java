package xyz.solidnetwork.service.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class TransactionController {
    @Autowired
    private TransactionFetch transactionFetch;

    @PostMapping("/transaction")
    public Statement getTransaction() {
        log.info("transaction is requested");
        return transactionFetch.getStatement();
    }
}
