import java.util.*;
import java.io.*;

/**
 * Names scores
 * 
 * @author James Ah Yong
 */

// timing: 24460000 ns
public class Problem022 extends Problem {

	public static void main() {
		long tStart = System.nanoTime();

		String inputData = "";
		try {
			FileReader fReader = new FileReader("data/Problem022.txt");
			BufferedReader bReader = new BufferedReader(fReader);
			inputData = bReader.readLine();
			bReader.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		List<String> names = new ArrayList<String>(Arrays.asList(inputData.split("\",?\"?")));

		Collections.sort(names);

		List<Long> values = new ArrayList<Long>();

		for (int i = 0; i < names.size(); i++) {
			int letterSum = 0;
			char[] letters = names.get(i).toCharArray();
			for (char letter : letters) {
				letterSum += letter - 64;
			}
			values.add((long) (letterSum * i));
		}

		System.out.println(Utilities.sumLongs(values));

		long tEnd = System.nanoTime();
		System.err.println(tEnd - tStart + " ns");
	}

}
