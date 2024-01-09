package smsimulator.model.users;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import smsimulator.model.DataSourceSingleton;

public class MySQLUsersDAO {

	public ArrayList<Users> getUsers() {
		DataSourceSingleton dsource = DataSourceSingleton.getInstance();

		String query = "select * from investor;";

		ResultSet rs = dsource.select(query);

		ArrayList<Users> users = new ArrayList<Users>();

		try {
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String password = rs.getString("password");

				users.add(new Users(id, name, password));
			}

			// dsource.closing();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	public boolean saveUsers(ArrayList<Users> users) {
		DataSourceSingleton dsource = DataSourceSingleton.getInstance();

		boolean result = false;

		for (int i = 0; i < users.size(); i++) {

			int id = users.get(i).getId();
			String name = users.get(i).getName();
			String password = users.get(i).getPassword();

			String query = "insert into users(id, name, password, role) values(" + id + ", '" + name + "', " + password
					+ ");";

			result = dsource.save(query);
		}

		// dsource.closing();

		return result;

	}

	public boolean deleteAllFromUsers() {
		DataSourceSingleton dsource = DataSourceSingleton.getInstance();
		boolean result = false;
		result = dsource.deleteAllFromTable("users");
		// dsource.closing();
		return result;
	}

}