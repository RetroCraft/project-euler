/**
 * Sum square difference
 * 
 * @author James Ah Yong
 */
public class Problem006 extends Problem {

	public static void main() {
		long squares = 0;
		long sum = 0;
		for (int i = 1; i <= 100; i++) {
			squares += i * i;
			sum += i;
		}

		System.out.println((sum * sum) - squares);
	}

}
