/**
 * Special Pythagorean triplet
 * 
 * @author James Ah Yong
 */
public class Problem009 extends Problem {

	public static void main() {
		for (int a = 3; a <= 997 / 3; a++) {
			for (int b = a + 1; b <= (1000 - a) / 2; b++) {
				int c = 1000 - a - b;
				if (a * a + b * b == c * c)
					System.out.println(a * b * c);
			}
		}
	}

}
