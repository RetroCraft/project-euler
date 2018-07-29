package ca.retrocraft.projecteuler;

import java.util.*;

/**
 * Largest palindrome product
 * 
 * @author James Ah Yong
 */
public class Problem004 extends Problem {

	public static void main() {
		int a = 999;
		int b = 999;

		List<Integer> foundPalindromes = new ArrayList<Integer>();

		while (true) {
			int test = a * b;
			String total = String.valueOf(test);
			int halfLength = (int) Math.floor(total.length() / 2);
			String start = total.substring(0, halfLength);
			// generate reversed end string
			String end = "";

			for (int i = 0; i < halfLength; i++) {
				end += total.charAt(total.length() - 1 - i);
			}

			if (start.equals(end)) {
				foundPalindromes.add(test);
			}

			if (a > 100) {
				a--;
			} else {
				a = 999;
				b--;
			}

			if (b < 100) {
				break;
			}
		}

		int largest = 0;
		for (int i = 0; i < foundPalindromes.size(); i++) {
			if (foundPalindromes.get(i) > largest) {
				largest = foundPalindromes.get(i);
			}
		}

		System.out.println(largest);
	}

}
