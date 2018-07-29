package ca.retrocraft.projecteuler;

/**
 * Number spiral diagonals
 *
 * @author James Ah Yong
 */
public class Problem028 {

  public static void main(String[] args) {
    System.out.println(spiral(1001));
  }

  public static long spiral(int size) {
    // the four arms can be solved using the following equations clockwise from the
    // top right
    // (2n - 1)^2 from 1 to ceil(size/2), includes the center 1
    long arm1Sum = 0;
    for (int i = 1; i <= Math.ceil(size / 2f); i++) {
      arm1Sum += Math.pow(2 * i - 1, 2);
    }
    // 2n^2 - 2n - 1 from 1 to floor(size/2)
    // 2n^2 + 1 from 1 to floor(size/2)
    // 2n^2 + 2n + 1 from 1 to floor(size/2)
    long otherArmSum = 0;
    for (int i = 1; i <= Math.floor(size / 2f); i++) {
      int j = (2 * i) * (2 * i); // 2n^2
      otherArmSum += j - (i * 2) + 1;
      otherArmSum += j + 1;
      otherArmSum += j + (i * 2) + 1;
    }
    return arm1Sum + otherArmSum;
  }

}
