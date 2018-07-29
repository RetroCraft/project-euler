package ca.retrocraft.projecteuler;

/**
 * Summation of primes
 * 
 * @author James Ah Yong
 */
public class Problem010 extends Problem {

	public static void main() {
		long total = 0;
		long n = 1;
		while (true) {
			primefinder: while (true) {
				n++;
				for (int j = 2; j <= Math.sqrt(n); j++) {
					if (n % j == 0)
						continue primefinder;
				}
				break;
			}
			if (n > 2000000)
				break;
			System.out.println(n);
			total += n;
		}
		System.out.println(total);
	}

}
