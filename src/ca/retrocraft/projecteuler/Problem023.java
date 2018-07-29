package ca.retrocraft.projecteuler;

/**
 * Non-abundant sums
 *
 * @author James Ah Yong
 */
public class Problem023 {

  public static void main(String[] args) {
    // given that we loop through 12 -> 28123 to find abundant numbers
    boolean[] abundantNumbers = new boolean[28123];
    for (int i = 12; i < 28123; i++) {
      if (isAbundant(i))
        abundantNumbers[i] = true;
    }
    // now loop and check sums
    long sum = 0;
    for (int i = 1; i <= 28123; i++) {
      if (!sumCheck(i, abundantNumbers)) {
        sum += i;
      }
    }
    System.out.println(sum);
  }

  public static boolean isAbundant(int n) {
    int factorSum = -n;
    for (int j = 1; j * j <= n; j++) {
      if (n % j == 0) {
        factorSum += j;
        if (n / j != j) factorSum += n / j;
        if (factorSum > n)
          return true;
      }
    }
    return false;
  }

  public static boolean sumCheck(int n, boolean[] abundantNumbers) {
    for (int abundant = 12; abundant < 28123; abundant++) {
      if (!abundantNumbers[abundant]) continue;
      if (n - abundant < 12) {
        // abundant is too large, no abundant number will work
        return false;
      }
      if (abundantNumbers[n - abundant]) {
        // number can be written as 2 abundants
        return true;
      }
    }
    // couldn't find an abundant, add to sum
    return false;
  }

}
