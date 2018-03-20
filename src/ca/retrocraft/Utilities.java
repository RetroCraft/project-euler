package ca.retrocraft;

import java.util.*;
import java.math.BigInteger;

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
	
	public static long sumInts(Collection<Integer> list) {
		long sum = 0;
		for (int i : list) {
			sum += i;
		}
		return sum;
	}
	
	public static BigInteger sumLongs(Collection<Long> list) {
		BigInteger sum = new BigInteger("0");
		for (long i : list) {
			sum = sum.add(new BigInteger(Long.toString(i)));
		}
		return sum;
	}
	
}
