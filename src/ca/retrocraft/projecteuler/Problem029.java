package ca.retrocraft.projecteuler;

import java.util.*;

/**
 * Distinct powers
 *
 * @author James Ah Yong
 */
public class Problem029 extends Problem {

  public static void main() {
    Set<Double> powers = new HashSet<Double>();
    for (int a = 2; a <= 100; a++)
      for (int b = 2; b <= 100; b++)
        powers.add(Math.pow(a, b));
    System.out.println(powers.size());
  }

}
