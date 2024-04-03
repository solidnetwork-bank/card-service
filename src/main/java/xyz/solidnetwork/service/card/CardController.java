package xyz.solidnetwork.service.card;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class CardController {

	@Autowired
	private CardFetch cardFetch;

	@PostMapping("/")
	public List<Card> listAllCards() {
		log.info("lislAllCards is requested");
		return cardFetch.listAllCards();
	}

	@PostMapping("/detail")
	public Card getDetail() {
		Card cardDetail = new Card();
		log.info("card details POST request = {}", cardDetail);
		return cardDetail;
	}

	@PostMapping("/request")
	public Message request() {
		log.info("request is requested");
		return new Message("New Credit Card successfully requested.");
	}

	@PostMapping("/replace")
	public Message replace() {
		log.info("replace is requested");
		return new Message("Credit Card replacement successfully requested.");
	}

	@PostMapping("/lock")
	public Message lock() {
		log.info("lock is requested");
		return new Message("Credit Card successfully locked/unlocked.");
	}

}
