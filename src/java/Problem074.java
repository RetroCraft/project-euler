import java.util.*;

/**
 * Digit factorial chains
 *
 * @author James Ah Yong
 */

// timing: 11403810000 ns
public class Problem074 extends Problem {

  // precalculated factorials from 0! to 9!
  public static int[] factorial = { 1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880 };

  public static void main() {
    long tStart = System.nanoTime();

    int counter = 0;
    for (int i = 0; i < 1000000; i++) {
      if (chainLength(i) == 60)
        counter++;
    }
    System.out.println(counter);

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

  public static int chainLength(int n) {
    Set<Integer> chain = new HashSet<>();
    int next = n;
    while (!chain.contains(next)) {
      chain.add(next);
      next = factorialDigits(next);
    }
    return chain.size();
  }

  public static int factorialDigits(int n) {
    int sum = 0;
    String[] digits = Integer.toString(n).split("");
    for (String digit : digits)
      sum += factorial[Integer.parseInt(digit)];
    return sum;
  }

}
