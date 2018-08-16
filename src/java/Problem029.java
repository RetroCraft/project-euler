import java.util.*;

/**
 * Distinct powers
 *
 * @author James Ah Yong
 */

// timing: 4344000 ns
public class Problem029 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    Set<Double> powers = new HashSet<Double>();
    for (int a = 2; a <= 100; a++)
      for (int b = 2; b <= 100; b++)
        powers.add(Math.pow(a, b));
    System.out.println(powers.size());

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

}
