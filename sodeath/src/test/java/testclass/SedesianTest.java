package testclass;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class SedesianTest {

	@Test
	void insertUserTest() {
		// GVEN �׽�Ʈ�� �ϱ� ����  �غ� �ܰ�.
		// username,email,usergrade
		User testUser = new User();
		testUser.setUsername("�޵�����");
		testUser.setEmail("medestell0415@gmail.com");
		testUser.setUsergrade(9);
		
		// WHEN �����ϴ� �ܰ�.
		Sedesian seldesian = new Sedesian();
		int x = seldesian.insertUser(testUser);
		
		// THEN ����� Ȯ���ϴ� �ܰ�.
		assertTrue(x== 0);
		
		//fail("Not yet implemented");
		// oo. 9��.
	}
	
	@Test
	void insertUserTest2() {
		// GVEN �׽�Ʈ�� �ϱ� ����  �غ� �ܰ�.
		// username,email,usergrade
		User testUser = new User();
		testUser.setUsername("�޵���");
		testUser.setEmail("meste");
		testUser.setUsergrade(2);
		
		// WHEN �����ϴ� �ܰ�.
		Sedesian seldesian = new Sedesian();
		int x = seldesian.insertUser(testUser);
		
		// THEN ����� Ȯ���ϴ� �ܰ�.
		assertTrue(x== 1);
		
		//fail("Not yet implemented");
		// oo. 9��.
	}

}
