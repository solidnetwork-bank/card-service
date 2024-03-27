package xyz.solidnetwork.service;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CardController {
	@PostMapping("/detail")
	public Card getDetail() {
		return new Card();
	}
}
