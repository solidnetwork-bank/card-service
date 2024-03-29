package xyz.solidnetwork.service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class CardController {

	@PostMapping("/detail")
	public Card getPostDetail() {
		Card cardDetail = new Card();
		log.info("card details POST request = {}", cardDetail);
		return cardDetail;
	}

	@GetMapping("/detail")
	public Card getGetDetail() {
		Card cardDetail = new Card();
		log.info("card details GET request = {}", cardDetail);
		return cardDetail;
	}
}
