package ca.retrocraft.projecteuler;

/**
 * Powerful digit counts
 *
 * @author James Ah Yong
 */
public class Problem063 extends Problem {

  public static void main() {
    int counter = 0;
    int power = 1;
    while (true) {
      int subCounter = 0;
      int base = 1;
      while (String.format("%.0f", Math.pow(base, power)).length() < power)
        base++;
      while (String.format("%.0f", Math.pow(base, power)).length() == power) {
        base++;
        subCounter++;
      }
      if (subCounter == 0)
        break;
      counter += subCounter;
      power++;
    }
    System.out.println(counter);
  }

}
