package xyz.solidnetwork.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CardController {
	private static final Logger logger = LoggerFactory.getLogger(CardController.class);

	@PostMapping("/detail")
	public Card getPostDetail() {
		Card cardDetail = new Card();
		logger.trace("card details POST request ={}", cardDetail);
		return cardDetail;
	}

	@GetMapping("/detail")
	public Card getGetDetail() {
		Card cardDetail = new Card();
		logger.trace("card details GET request ={}", cardDetail);
		return cardDetail;
	}
}
