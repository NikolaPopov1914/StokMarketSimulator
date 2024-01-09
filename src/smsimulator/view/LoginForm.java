package smsimulator.view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;


public class LoginForm extends BaseForm {
	private JTextField nameField;
	private JPasswordField passwordField;
	private final PropertyChangeSupport pcs = new PropertyChangeSupport(this);
	private boolean loggedIn = false;

	public LoginForm() {
		super("Login Form");

		// Create components
		JLabel nameLabel = new JLabel("Name:");
		JLabel passwordLabel = new JLabel("Password:");
		nameField = new JTextField(20);
		passwordField = new JPasswordField(20);
		JButton loginButton = new JButton("Login");
		JButton registerButton = new JButton("Register");
		JButton forgotPasswordButton = new JButton("Forgot Password");

		// Add action listeners
		loginButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String name = nameField.getText();
				String password = new String(passwordField.getPassword());
				mediator.onLoginButtonClicked(name, password);
			}
		});

		registerButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new RegistrationForm().setVisible(true);
			}
		});

		forgotPasswordButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new ForgotPasswordForm().setVisible(true);
			}
		});

		// Add components to the form
		JPanel panel = new JPanel();
		panel.add(nameLabel);
		panel.add(nameField);
		panel.add(passwordLabel);
		panel.add(passwordField);
		panel.add(loginButton);
		panel.add(registerButton);
		panel.add(forgotPasswordButton);
		getContentPane().add(panel);

		// Set frame properties
		setSize(300, 200);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLocationRelativeTo(null);
		setVisible(true);
	}
	public void login(String username, String password) {
        // Placeholder for authentication logic
            loggedIn = true;
    }

	public void setLoggedIn(boolean loggedIn) {
		boolean oldLoggedIn = this.loggedIn;
		this.loggedIn = loggedIn;
		pcs.firePropertyChange("loggedIn", oldLoggedIn, loggedIn);
	}

	public boolean isLoggedIn() {
		return loggedIn;
	}

	public void addPropertyChangeListener(PropertyChangeListener listener) {
		pcs.addPropertyChangeListener(listener);
	}
}
