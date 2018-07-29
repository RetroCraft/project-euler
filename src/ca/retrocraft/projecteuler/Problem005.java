package ca.retrocraft.projecteuler;

/**
 * Smallest multiple
 * 
 * @author James Ah Yong
 */
public class Problem005 extends Problem {

	public static void main() {
		int n = 1;

		while (true) {
			boolean passed = true;
			for (int i = 2; i <= 20; i++) {
				if (n % i != 0)
					passed = false;
			}
			if (passed)
				break;
			n++;
		}

		System.out.println(n);
	}

}
