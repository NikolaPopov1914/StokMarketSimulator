package smsimulator.model.users;

import java.util.ArrayList;

public interface UsersDAO {
	public ArrayList<Users> getUsers();

	public boolean saveUsers(ArrayList<Users> users);

	public boolean deleteAllFromUsers();
}
