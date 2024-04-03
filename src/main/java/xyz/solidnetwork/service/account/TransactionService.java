package xyz.solidnetwork.service.account;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TransactionService {
    private Statement statement;

    public TransactionService() {
        statement = new Statement("5544 3322 1100", getDeposits(), getWithdrawals(), getFees());
    }

    public Statement getStatement() {
        return statement;
    }

    public void setStatement(Statement statement) {
        this.statement = statement;
    }

    private List<Transaction> getDeposits() {
        List<Transaction> deposits = new ArrayList<>();
        deposits.add(new Transaction("11", LocalDate.of(2024, 03, 15),
                "Direct Deposit transfer from CHK 7788 Confirmation # 557788445", 4511.03));

        deposits.add(new Transaction("22", LocalDate.of(2024, 03, 18),
                "Direct Deposit transfer from CHK 7788 Confirmation # 114455754", 630.00));

        deposits.add(new Transaction("33", LocalDate.of(2024, 03, 30),
                "Direct Deposit transfer from CHK 7788 Confirmation # 114455754", 3804.95));

        return deposits;
    }

    private List<Transaction> getWithdrawals() {
        List<Transaction> withdrawals = new ArrayList<>();
        withdrawals.add(new Transaction("44", LocalDate.of(2024, 03, 05),
                "Online Banking transfer to CHK 3322 Confirmation # 5544778899", -25.00));

        return withdrawals;
    }

    private List<Transaction> getFees() {
        List<Transaction> fees = new ArrayList<>();
        fees.add(new Transaction("55", LocalDate.of(2024, 03, 23), "Monthly Maintenance Fee", -5.00));

        return fees;
    }

}
