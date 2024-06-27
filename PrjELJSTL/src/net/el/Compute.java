package net.el;

public class Compute {
	public int plus(String x, String y) {
		return Integer.valueOf(x) + Integer.valueOf(y);
	} 
	public int minus(String x, String y) {
		return Integer.valueOf(x) - Integer.valueOf(y);
	} 
	public int multi(String x, String y) {
		return Integer.valueOf(x) * Integer.valueOf(y);
	} 
	public int divide(String x, String y) {
		return Integer.valueOf(x) / Integer.valueOf(y);
	} 
	
	public static int add(String x, String y) {
		return Integer.valueOf(x) + Integer.valueOf(y);
	}
	public static int sub(String x, String y) {
		return Integer.valueOf(x) - Integer.valueOf(y);
	} 
	
}
