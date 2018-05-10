package pl.tmsnoo.POJO;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.LongStream;

public class Playground {

	public static void main(String[] args) {
		String[] table = { "Jaś", "Natalka", "Ewelina", "Piotr" };
		Arrays.sort(table);
		for (String tab : table) {
			System.out.println(tab);
		}
		Arrays.sort(table, (first, second) -> Integer.compare(first.length(), second.length()));
		for (int i = 0; i < table.length; i++) {
			System.out.println("'" + table[i]);
			System.out.println();
		}
		List<String> list = Arrays.asList(table);
		list.sort(Comparator.comparing(String::length).thenComparing(String::compareTo));
		System.out.println(list.toString());
		System.out.println(BigInteger.probablePrime(45, new Random()));

		// (String first, String second) -> Integer.compare(first.length(),
		// second.length());
		// List<Long> fiveDigitNumbers = ^[0-9]{5,7}$

	}
	
	static List<Long> range = LongStream.rangeClosed(10000, 99999).boxed().collect(Collectors.toList());
	// System.out.println(range.size());
	boolean[] primes = new boolean[range.size()];
	
	
//	public void fillSieve() {
//		Arrays.fill(primes, true);
//	    range.forEach((number)->	{ System.out.println()
//	    	
//	    }
//
//	
//	}
}

