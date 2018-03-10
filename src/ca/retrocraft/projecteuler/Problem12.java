package ca.retrocraft.projecteuler;

/**
 * Highly divisible triangular number
 * @author James Ah Yong
 */
public class Problem12 {

	public static void main(String[] args) {
		for (long i = 1; true; i++) {
			long triangle = 0;
			for (long j = 0; j <= i; j++) triangle += j;
			
			long factors = 0;
			
			for (long j = 1; j * j <= triangle; j++) {
				if (triangle % j == 0) {
					factors += 2;
				}
			}
			
			System.out.println(triangle + ": " + factors);
			
			if (factors > 500) break;
		}
	}

}
