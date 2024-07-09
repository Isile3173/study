package testclass;

public class Sedesian {
	
	public int insertUser(User user){
		
		Boolean result;
		result = true;
		
		if(user.getUsername() == null || user.getUsername().isEmpty()) {
			result = false;
		}
		
		if(user.getEmail() == null || user.getEmail().length()>10) {
			result = false;
		}
		
		if(user.getUsergrade() < 1 || user.getUsergrade()>9) {
			result = false;
		}
		
		if(result == true) {
			
			return 1;
		} else {
			return 0;
		}
		
	}

}
