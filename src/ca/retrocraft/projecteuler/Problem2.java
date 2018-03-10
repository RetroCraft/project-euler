package ca.retrocraft.projecteuler;

/**
 * Even Fibonacci Numbers
 * @author James Ah Yong
 */
public class Problem2 {

	public static void main(String[] args) {
		int last = 1;
		int current = 1;
		int total = 0;
		while (current < 4E6) {
			int next = last + current;
			if (next % 2 == 0) total += next;
			last = current;
			current = next;
		}
		System.out.println(total);
	}

}
