package ca.retrocraft.projecteuler;

import java.math.*;

/**
 * Factorial digit sum
 * 
 * @author James Ah Yong
 */
public class Problem020 extends Problem {

	public static void main() {
		BigInteger dearLordHelp = new BigInteger("100");

		for (int i = 99; i > 1; i--) {
			dearLordHelp = dearLordHelp.multiply(new BigInteger(Integer.toString(i)));
		}

		String[] digits = dearLordHelp.toString().split("");

		long sum = 0;

		for (int i = 1; i < digits.length; i++) {
			sum += Integer.parseInt(digits[i]);
		}

		System.out.println(sum);
	}

}
