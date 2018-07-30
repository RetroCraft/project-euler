package ca.retrocraft.projecteuler;

import java.math.BigInteger;

/**
 * Lychrel numbers
 *
 * @author James Ah Yong
 */
public class Problem055 extends Problem {

  public static void main() {
    int count = 0;
    for (int i = 1; i < 10000; i++) {
      if (!lychrelCount(i))
        count++;
    }
    System.out.println(count);
  }

  public static boolean lychrelCount(int n) {
    BigInteger l = new BigInteger(String.valueOf(n));
    for (int i = 1; i <= 50; i++) {
      String reversed = new StringBuilder(l.toString()).reverse().toString();
      l = l.add(new BigInteger(reversed));
      String string = l.toString();
      int halfLength = (int) Math.floor(string.length() / 2);
      String start = string.substring(0, halfLength);
      // generate reversed end string
      String end = "";

      for (int j = 0; j < halfLength; j++) {
        end += string.charAt(string.length() - 1 - j);
      }

      if (start.equals(end)) {
        return true;
      }
    }
    return false;
  }

}
