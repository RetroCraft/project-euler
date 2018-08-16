import java.util.Arrays;

/**
 * Permuted multiples
 *
 * @author James Ah Yong
 */
public class Problem052 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    int i = 2;
    while (true) {
      i++;
      char[] chars = Integer.toString(i).toCharArray();
      Arrays.sort(chars);
      boolean failed = false;
      for (int j = 2; j <= 6; j++) {
        int n = i * j;
        char[] newChars = Integer.toString(n).toCharArray();
        Arrays.sort(newChars);
        if (!Arrays.equals(chars, newChars)) {
          failed = true;
          break;
        }
      }
      if (!failed) {
        System.out.println(i);
        break;
      }
    }

    long tEnd = System.nanoTime();
    System.err.println(tEnd - tStart + " ns");
  }

}
