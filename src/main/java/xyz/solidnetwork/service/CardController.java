package xyz.solidnetwork.service;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
public class CardController {
	@PostMapping("/detail")
	public Card getPostDetail() {
		return new Card();
	}

	@GetMapping("/detail")
	public Card getGetDetail() {
		return new Card();
	}
}
