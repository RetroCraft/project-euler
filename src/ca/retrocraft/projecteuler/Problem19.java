package ca.retrocraft.projecteuler;

import java.math.*;

/**
 * Counting Sundays
 * @author James Ah Yong
 */
public class Problem19 {

	public static void main(String[] args) {
		// Sunday: 0, Monday: 1, etc.
		int currentDayOfWeek = 1;
		int sundays = 0;
		
		for (int i = 1901; i < 2000; i++) {
			int[] months = { 31, i % 4 == 0 ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
			
			for (int month : months) {
				currentDayOfWeek += month;
				currentDayOfWeek %= 7;

				if (currentDayOfWeek == 0) sundays++;
			}
		}
		
		System.out.println(sundays);
	}

}
