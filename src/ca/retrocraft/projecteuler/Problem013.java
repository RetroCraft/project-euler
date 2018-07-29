package ca.retrocraft.projecteuler;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Large sum
 * 
 * @author James Ah Yong
 */
public class Problem013 extends Problem {

  public static void main() {
    List<String> lines = new ArrayList<String>();
    try {
      lines = Files.readAllLines(Paths.get("", "Problem013Numbers.txt"), StandardCharsets.UTF_8);
    } catch (IOException e) {
      e.printStackTrace();
    }
    List<BigInteger> numbers = lines.stream().map((String s) -> new BigInteger(s)).collect(Collectors.toList());

    BigInteger sum = new BigInteger("0");
    for (BigInteger number : numbers) {
      sum = sum.add(number);
    }
    System.out.println(sum.toString().substring(0, 10));
  }

}
