/**
 * 10 001st prime
 * 
 * @author James Ah Yong
 */

// timing: 6829000 ns
// 130641000 ns
public class Problem007 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		int n = 0;
		for (int i = 0; i <= 10001; i++) {
			primefinder: while (true) {
				n++;
				if (n == 2)
					break;
				if (n % 2 == 0)
					continue primefinder;
				for (int j = 3; j <= Math.sqrt(n); j += 2) {
					if (n % j == 0)
						continue primefinder;
				}
				break;
			}
		}
		System.out.println(n);

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
