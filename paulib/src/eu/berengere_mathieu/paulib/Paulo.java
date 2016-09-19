package eu.berengere_mathieu.paulib;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Paulo {

	private String lastSpeaker = "nobody";
	private final List<String> answers;

	public Paulo(String[] answers) {
		this.answers = Arrays.asList(answers);
	}

	public String getAnswer(String msg) {
		int maxScore = 0;
		String answer = "";
		Collections.shuffle(answers, new java.util.Random());
		for (String prop : answers) {
			prop = prop.toLowerCase();
			int score = 0;
			for (String word : msg.toLowerCase().split("\\s+")) {
				if (prop.contains(word)) {
					score++;
				}
			}
			if (score > maxScore) {
				maxScore = score;
				answer = prop;
			}
		}

		if (maxScore == 0) {
			// not relevant phrase found, take one at random
			answer = answers.get(new Random().nextInt(answers.size()));
		}

		String source = answer.split(" ", 2)[0];
		answer = answer.split(" ", 2)[1];
		lastSpeaker = source;

		return answer;
	}

	public String getSpeaker() {
		return lastSpeaker;
	}

}
