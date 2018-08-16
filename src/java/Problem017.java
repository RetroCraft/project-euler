/**
 * Number letter counts
 * 
 * @author James Ah Yong
 */
public class Problem017 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		int total = 0;
		for (int i = 1; i <= 999; i++) {
			total += count(i);
			System.out.println(i + ": " + count(i));
		}
		total += "onethousand".length();
		System.out.println(total);

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

	public static int count(int n) {
		// zero -> nineteen
		final String[] numbers = { "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
				"eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" };
		// twenty -> ninety
		final String[] tens = { "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" };

		String count = "";
		// hundreds
		int tensPart = n % 100;
		if (n >= 100) {
			count += numbers[n / 100];
			count += "hundred"; // hundred
			if (tensPart != 0)
				count += "and"; // and
		}
		// tens
		if (tensPart < 20) {
			count += numbers[n % 100];
		} else {
			count += tens[tensPart / 10];
			count += numbers[n % 10];
		}
		return count.length();
	}

}
