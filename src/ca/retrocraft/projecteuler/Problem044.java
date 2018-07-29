package ca.retrocraft.projecteuler;

/**
 * Triangular, pentagonal, and hexagonal
 *
 * @author James Ah Yong
 */
public class Problem044 extends Problem {

  public static void main() {
    boolean done = false;
    int i = 143;
    while (!done) {
      i++;
      // loop through hexagonal numbers
      long n = i * (2 * i - 1);
      // no triangular check, all hexagonals are triangular
      // pentagonal check
      double a = Math.sqrt(24 * n + 1);
      if ((a + 1) % 6 == 0) {
        System.out.println(n);
        break;
      }
    }
  }

}
