package ca.retrocraft.projecteuler;

/**
 * Longest Collatz sequence
 * 
 * @author James Ah Yong
 */
public class Problem014 extends Problem {

	public static void main() {
		long longest = 0;
		int longestLength = 0;
		for (long start = 1; start < 1E6; start++) {
			long i = start;
			int chainLength = 0;
			while (i != 1) {
				if (i % 2 == 0)
					i /= 2;
				else
					i = 3 * i + 1;
				chainLength++;
			}
			if (chainLength > longestLength) {
				longest = start;
				longestLength = chainLength;
			}
		}

		System.out.println(longest + ": " + longestLength);
	}

}
