/**
 * 10 001st prime
 * 
 * @author James Ah Yong
 */
public class Problem007 extends Problem {

	public static void main() {
		int n = 0;
		for (int i = 0; i <= 10001; i++) {
			primefinder: while (true) {
				n++;
				for (int j = 2; j <= Math.sqrt(n); j++) {
					if (n % j == 0)
						continue primefinder;
				}
				System.out.println(i + ": " + n);
				break;
			}
		}
	}

}
