/**
 * Circular primes
 *
 * @author James Ah Yong
 */
public class Problem035 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    // compute prime list
    boolean[] primes = primesBelow(1000000);
    // iterate through primes
    int count = 0;
    primeloop: for (int i = 0; i < primes.length; i++) {
      if (!primes[i])
        continue;
      String s = Integer.toString(i);
      for (int j = 0; j <= s.length(); j++) {
        // shift over by one char
        s = s.substring(1) + s.charAt(0);
        // prime check
        if (!primes[Integer.parseInt(s)])
          continue primeloop;
      }
      count++;
    }
    System.out.println(count - 1); // do not count 1

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

  public static boolean[] primesBelow(int n) {
    boolean[] primes = new boolean[n + 1];
    for (int i = 1; i < n; i++) {
      boolean prime = true;
      for (int j = 2; j <= Math.sqrt(n); j++) {
        if (i % j == 0 && i != j) {
          prime = false;
          break;
        }
      }
      primes[i] = prime;
    }
    return primes;
  }

}
