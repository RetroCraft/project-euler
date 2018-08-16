import java.util.*;

/**
 * Spiral primes
 *
 * @author James Ah Yong
 */

// timing: 608015000 ns
public class Problem058 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    int size = 7;
    int primeCount = 8;
    int totalCount = 13;
    while (true) {
      totalCount += 4;
      size += 2;
      int i = size / 2;
      // These 3 equations are from Problem 28
      // n1 = 4n^2 - 2n + 1 = a - b,
      // n2 = 4n^2 + 1 = a,
      // n3 = 4n^2 + 2n + 1 = a + b,
      // applied over 1 -> floor(size / 2)
      long a = (4 * i * i) + 1;
      long b = 2 * i;
      if (prime(a - b))
        primeCount++;
      if (prime(a))
        primeCount++;
      if (prime(a + b))
        primeCount++;
      float ratio = primeCount / (float) totalCount;
      if (ratio < 0.1) {
        System.out.println(size);
        break;
      }
    }

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

  public static Map<Long, Boolean> primes = new HashMap<Long, Boolean>();

  public static boolean prime(long n) {
    if (primes.containsKey(n))
      return primes.get(n);
    for (long j = 2; j <= Math.sqrt(n); j++) {
      if (n % j == 0) {
        primes.put(n, false);
        return false;
      }
    }
    primes.put(n, true);
    return true;
  }

}
