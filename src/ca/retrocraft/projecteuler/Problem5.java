package ca.retrocraft.projecteuler;

/**
 * Smallest multiple
 * @author James Ah Yong
 */
public class Problem5 {

	public static void main(String[] args) {
		int n = 1;
		
		while (true) {
			boolean passed = true;
			for (int i = 2; i <= 20; i++) {
				if (n % i != 0) passed = false;
			}
			if (passed) break;
			n++;
		}
		
		System.out.println(n);
	}

}
