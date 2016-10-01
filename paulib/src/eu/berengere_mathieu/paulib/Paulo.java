package eu.berengere_mathieu.paulib;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Paulo {

	private static String lastSpeaker = "nobody";
	private static List<String> answers = null;

	public static void load(String[] answers) {
		Paulo.answers = Arrays.asList(answers);
	}

	public static String getAnswer(String msg) {
		if (answers == null) {
			throw new IllegalStateException("You must call Paulo.load to initialize the possible answers first");
		}

		int maxScore = 0;
		String answer = "";
		Collections.shuffle(answers, new java.util.Random());
		for (String prop : answers) {
			String propLower = prop.toLowerCase();
			int score = 0;
			for (String word : msg.toLowerCase().split("\\s+")) {
				if (propLower.contains(word)) {
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

	public static String getSpeaker() {
		return lastSpeaker;
	}

}
