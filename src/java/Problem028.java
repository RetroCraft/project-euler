/**
 * Number spiral diagonals
 *
 * @author James Ah Yong
 */
public class Problem028 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    System.out.println(spiral(1001));

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

  public static long spiral(int size) {
    // the four arms can be solved using the following equations clockwise from the
    // top right
    // (2n - 1)^2 from 1 to ceil(size/2), includes the center 1
    long arm1Sum = 0;
    for (int i = 1; i <= Math.ceil(size / 2f); i++) {
      arm1Sum += Math.pow(2 * i - 1, 2);
    }
    // 4n^2 - 2n + 1 from 1 to floor(size/2)
    // 4n^2 + 1 from 1 to floor(size/2)
    // 4n^2 + 2n + 1 from 1 to floor(size/2)
    long otherArmSum = 0;
    for (int i = 1; i <= size / 2; i++) {
      // sum of above 3 equations is 12x^2 + 3
      otherArmSum += (12 * i * i) + 3;
    }
    return arm1Sum + otherArmSum;
  }

}
