package testclass;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class SedesianTest {

	@Test
	void insertUserTest() {
		// GVEN 테스트를 하기 위한  준비 단계.
		// username,email,usergrade
		User testUser = new User();
		testUser.setUsername("메데스텔");
		testUser.setEmail("medestell0415@gmail.com");
		testUser.setUsergrade(9);
		
		// WHEN 실행하는 단계.
		Sedesian seldesian = new Sedesian();
		int x = seldesian.insertUser(testUser);
		
		// THEN 결과를 확인하는 단계.
		assertTrue(x== 0);
		
		//fail("Not yet implemented");
		// oo. 9라서.
	}
	
	@Test
	void insertUserTest2() {
		// GVEN 테스트를 하기 위한  준비 단계.
		// username,email,usergrade
		User testUser = new User();
		testUser.setUsername("메데텔");
		testUser.setEmail("meste");
		testUser.setUsergrade(2);
		
		// WHEN 실행하는 단계.
		Sedesian seldesian = new Sedesian();
		int x = seldesian.insertUser(testUser);
		
		// THEN 결과를 확인하는 단계.
		assertTrue(x== 1);
		
		//fail("Not yet implemented");
		// oo. 9라서.
	}

}
