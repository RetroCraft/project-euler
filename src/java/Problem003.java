/**
 * Largest prime factor
 * 
 * @author James Ah Yong
 */
public class Problem003 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		long n = 600851475143l;

		// remove all prime factors until prime
		for (int i = 2; i < n; i += 1) {
			while (n % i == 0) {
				n /= i;
			}
		}

		// remaining value is a) prime and b) the biggest one
		System.out.println(n);

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
