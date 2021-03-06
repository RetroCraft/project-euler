/**
 * Smallest multiple
 * 
 * @author James Ah Yong
 */

// timing: 17622897000 ns
public class Problem005 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

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

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
