/**
 * Combinatoric selections
 *
 * @author James Ah Yong
 */
public class Problem053 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    int count = 0;
    for (int n = 1; n <= 100; n++) {
      for (int r = 1; r <= n - 1; r++) {
        if (binomialPastMillion(n, r))
          count++;
      }
    }
    System.out.println(count);

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

  public static boolean binomialPastMillion(int n, int r) {
    if (r < 0 || r > n || r == 0 || r == n)
      return false;
    r = Math.min(r, n - r);
    long c = 1;
    for (int i = 0; i < r; i++) {
      c = c * (n - i) / (i + 1);
      if (c > 1000000)
        return true;
    }
    return false;
  }

}
