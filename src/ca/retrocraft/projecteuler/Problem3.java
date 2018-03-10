package ca.retrocraft.projecteuler;

/**
 * Largest prime factor
 * @author James Ah Yong
 */
public class Problem3 {

	public static void main(String[] args) {
		long n = 600851475143l;
		
		// remove all prime factors until prime
		for (int i = 2; i < n; i += 1) {
			while (n % i == 0) {
				n /= i;
			}
		}
		
		// remaining value is a) prime and b) the biggest one
		System.out.println(n);
	}

}
