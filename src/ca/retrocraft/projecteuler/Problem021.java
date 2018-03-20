package ca.retrocraft.projecteuler;

import ca.retrocraft.Utilities;
import java.util.*;

/**
 * Amicable numbers
 * @author James Ah Yong
 */
public class Problem021 {

	public static void main(String[] args) {
		List<Integer> amicableNumbers = new ArrayList<Integer>();		
		
		for (int i = 1; i < 1E4; i++) {
			int divisorSum = divisorSum(i) - i;
			if (divisorSum < i) continue; // prevent duplicates (always have sum > i)
			int inverseSum = divisorSum(divisorSum) - divisorSum;
			if (inverseSum == i && divisorSum != i) {
				amicableNumbers.add(i);
				amicableNumbers.add(divisorSum);
			}
		}
		
		System.out.println(Utilities.sumInts(amicableNumbers));
	}
	
	public static int divisorSum(int n) {
		return (int) Utilities.sumInts(Utilities.divisors(n));
	}

}
