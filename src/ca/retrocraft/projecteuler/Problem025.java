package ca.retrocraft.projecteuler;

import java.math.*;

/**
 * 1000-digit Fibonacci number
 * @author James Ah Yong
 */
public class Problem025 {

	public static void main(String[] args) {
		BigInteger last = new BigInteger("1");
		BigInteger current = new BigInteger("1");
		int index = 2;
		
		while (true) {
			BigInteger next = last.add(current);
			last = current;
			current = next;
			index++;
			
			if (current.toString().length() >= 1000) break;
		}
		
		System.out.println(index + ": " + current.toString());
	}

}
