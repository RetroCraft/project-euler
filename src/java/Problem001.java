/**
 * Multiples of 3 and 5
 * 
 * @author James Ah Yong
 */
public class Problem001 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		int total = 0;
		for (int i = 0; i < 1000; i++) {
			if (i % 3 == 0 || i % 5 == 0)
				total += i;
		}
		System.out.println(total);

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
