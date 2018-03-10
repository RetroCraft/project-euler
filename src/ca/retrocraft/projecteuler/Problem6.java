package ca.retrocraft.projecteuler;

/**
 * Sum square difference
 * @author James Ah Yong
 */
public class Problem6 {

	public static void main(String[] args) {
		long squares = 0;
		long sum = 0;
		for (int i = 1; i <= 100; i++) {
			squares += i * i;
			sum += i;
		}

		System.out.println((sum * sum) - squares);
	}

}
