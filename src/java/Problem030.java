/**
 * Digit fifth powers
 *
 * @author James Ah Yong
 */

// timing: 29994000 ns
public class Problem030 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    // precompute
    int[] powers = new int[10];
    for (int i = 0; i < 10; i++) {
      powers[i] = i * i * i * i * i;
    }
    // upper bound is 9^5 * 4
    int sum = 0;
    int max = powers[9] * 4;
    for (int i = 2; i <= max; i++) {
      String s = Integer.toString(i);
      int digitPowerSum = 0;
      for (int j = 0; j < s.length(); j++) {
        digitPowerSum += powers[s.charAt(j) - 48]; // ascii shift to 0
      }
      if (digitPowerSum == i)
        sum += i;
    }
    System.out.println(sum);

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

}
