import java.math.*;

/**
 * 1000-digit Fibonacci number
 * 
 * @author James Ah Yong
 */
public class Problem025 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		BigInteger last = new BigInteger("1");
		BigInteger current = new BigInteger("1");
		int index = 2;

		while (true) {
			BigInteger next = last.add(current);
			last = current;
			current = next;
			index++;

			if (current.toString().length() >= 1000)
				break;
		}

		System.out.println(index + ": " + current.toString());

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
