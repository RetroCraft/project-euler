package ca.retrocraft.projecteuler;

import java.math.*;

/**
 * Power digit sum
 * @author James Ah Yong
 */
public class Problem16 {

	public static void main(String[] args) {
		BigInteger dearLordHelp = new BigInteger("2").pow(1000);
		
		String[] digits = dearLordHelp.toString().split("");
		
		long sum = 0;
		
		for (int i = 1; i < digits.length; i++) {
			sum += Integer.parseInt(digits[i]);
		}
		
		System.out.println(sum);
	}

}
