package smsimulator.Controler;

import javax.sql.DataSource;
import javax.swing.*;

import org.mariadb.jdbc.MariaDbDataSource;
import smsimulator.view.ForgotPasswordForm;
import smsimulator.view.LoginForm;
import smsimulator.view.RegistrationForm;

import java.sql.*;

public class FormMediator {
	private LoginForm loginForm;
	private RegistrationForm registrationForm;
	private ForgotPasswordForm forgotPasswordForm;

	public FormMediator(LoginForm loginForm, RegistrationForm registrationForm, ForgotPasswordForm forgotPasswordForm) {
		this.loginForm = loginForm;
		this.registrationForm = registrationForm;
		this.forgotPasswordForm = forgotPasswordForm;

		this.loginForm.setMediator(this);
		this.registrationForm.setMediator(this);
		this.forgotPasswordForm.setMediator(this);
	}

	public FormMediator(LoginForm loginForm) {
		this.loginForm=loginForm;
	}

	public void onLoginButtonClicked(String name, String password) {
		// Check credentials against the database
		if (checkCredentials(name, password)) {
			JOptionPane.showMessageDialog(loginForm, "Login successful!");
			loginForm.setLoggedIn(true);
			loginForm.setVisible(false);
		} else {
			JOptionPane.showMessageDialog(loginForm, "Invalid credentials. Please try again.");
		}
	}

	public void onRegisterButtonClicked(String name, String password, String repeatPassword) {
		// Check if passwords don't match
		loginForm.setVisible(false);
		if (!password.equals(repeatPassword)) {
			JOptionPane.showMessageDialog(registrationForm, "Passwords do not match. Please try again.");

			return;

		}

		// Save user to the database
		if (saveUserToDatabase(name, password)) {
			JOptionPane.showMessageDialog(registrationForm, "Registration successful!");

		} else {
			JOptionPane.showMessageDialog(registrationForm, "Registration failed. Please try again.");
		}
	}

	public void onForgotPasswordButtonClicked(String name, String password, String repeatPassword) {
		// Check if passwords match
		if (!password.equals(repeatPassword)) {
			JOptionPane.showMessageDialog(forgotPasswordForm, "Passwords do not match. Please try again.");
			loginForm.setVisible(false);
			return;
		}

		// Update user password in the database
		if (updateUserPassword(name, password)) {
			JOptionPane.showMessageDialog(forgotPasswordForm, "Password reset successful!");
			forgotPasswordForm.dispose();
		} else {
			JOptionPane.showMessageDialog(forgotPasswordForm, "Password reset failed. Please try again.");
		}
	}

	private boolean checkCredentials(String name, String password) {
		try (Connection connection = DatabaseHelper.getInstance().getConnection();
				PreparedStatement statement = connection
						.prepareStatement("SELECT * FROM users WHERE name=? AND password=?")) {
			statement.setString(1, name);
			statement.setString(2, password);
			ResultSet resultSet = statement.executeQuery();
			return resultSet.next();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	private boolean saveUserToDatabase(String name, String password) {
		try (Connection connection = DatabaseHelper.getInstance().getConnection();
				PreparedStatement statement = connection
						.prepareStatement("INSERT INTO users (name, password) VALUES (?, ?)")) {
			statement.setString(1, name);
			statement.setString(2, password);
			int rowsAffected = statement.executeUpdate();
			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	private boolean updateUserPassword(String name, String password) {
		try (Connection connection = DatabaseHelper.getInstance().getConnection();
				PreparedStatement statement = connection.prepareStatement("UPDATE users SET password=? WHERE name=?")) {
			statement.setString(1, password);
			statement.setString(2, name);
			int rowsAffected = statement.executeUpdate();
			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}