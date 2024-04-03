package xyz.solidnetwork.service.card;

import java.util.ArrayList;
import java.util.List;

public class CardFetch {

    public List<Card> listAllCards() {
        List<Card> cards = new ArrayList<>();
        cards.add(new Card("11", 1122));
        cards.add(new Card("22", 2233));
        cards.add(new Card("33", 3344));
        cards.add(new Card("44", 4455));

        return cards;
    }

}
