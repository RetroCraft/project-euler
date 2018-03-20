package ca.retrocraft.projecteuler;

import ca.retrocraft.Utilities;
import java.util.*;
import java.io.*;

/**
 * Names scores
 * @author James Ah Yong
 */
public class Problem022 {

	public static void main(String[] args) {
		String inputData = "";
		try {
			FileReader fReader = new FileReader("Problem022Names.txt");
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
	}

}
