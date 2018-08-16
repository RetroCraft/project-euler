import java.util.*;

/**
 * Amicable numbers
 * 
 * @author James Ah Yong
 */
public class Problem021 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		List<Integer> amicableNumbers = new ArrayList<Integer>();

		for (int i = 1; i < 1E4; i++) {
			int divisorSum = divisorSum(i) - i;
			if (divisorSum < i)
				continue; // prevent duplicates (always have sum > i)
			int inverseSum = divisorSum(divisorSum) - divisorSum;
			if (inverseSum == i && divisorSum != i) {
				amicableNumbers.add(i);
				amicableNumbers.add(divisorSum);
			}
		}

		System.out.println(Utilities.sumInts(amicableNumbers));

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

	public static int divisorSum(int n) {
		return (int) Utilities.sumInts(Utilities.divisors(n));
	}

}
