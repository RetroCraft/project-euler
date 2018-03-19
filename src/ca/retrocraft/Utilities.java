package ca.retrocraft;

import java.util.*;

public class Utilities {

	public static List<Integer> divisors(int x) {
		List<Integer> factors = new ArrayList<Integer>();
		
		for (int j = 1; j * j <= x; j++) {
			if (x % j == 0) {
				factors.add(j);
				factors.add(x / j);
			}
		}
		
		return factors;
	}
	
	public static long sumList(Collection<Integer> list) {
		long sum = 0;
		for (int i : list) {
			sum += i;
		}
		return sum;
	}
	
}
