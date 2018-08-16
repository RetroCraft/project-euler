/**
 * Lattice paths
 * 
 * See http://mathworld.wolfram.com/LatticePath.html
 * 
 * @author James Ah Yong
 */

// timing: 699000 ns
public class Problem015 extends Problem {

  public static void main() {
    long tStart = System.nanoTime();

    System.out.println(Utilities.binomial(40, 20));

 		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
  }

}
