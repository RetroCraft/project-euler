/**
 * Sum square difference
 * 
 * @author James Ah Yong
 */

// timing: 32000 ns
public class Problem006 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		long squares = 0;
		long sum = 0;
		for (int i = 1; i <= 100; i++) {
			squares += i * i;
			sum += i;
		}

		System.out.println((sum * sum) - squares);

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
