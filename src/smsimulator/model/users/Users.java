package smsimulator.model.users;

public class Users {
	public static int idAutoIncrement;
	private final int id;
	private String name;
	private String password;

	public Users(String name, String password) {
		idAutoIncrement++;
		this.id = idAutoIncrement;
		this.name = name;
		this.password = password;
	}

	public Users(int id, String name, String password) {
		idAutoIncrement++;
		this.id = id;
		this.name = name;
		this.password = password;
	}

	// Getters
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	// Setters
	public void setName(String name) {
		this.name = name;
	}

	public void setBudget(String password) {
		this.password = password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
