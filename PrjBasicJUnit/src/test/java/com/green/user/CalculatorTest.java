package com.green.user;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorTest {

	@Test
	public  void testAdd() {
		Calculator  c       =  new Calculator();
		double      result  =  c.add(123, 234);
		
		// 결과값(result) 357 과 같은가?
		// run As -> JUnit test 클릭 결과 :녹색 통과, 적색 : 실패
		assertEquals(result, 358, 5); // 오차 + 5~ -5 까지 허용오차
		
	}
}





