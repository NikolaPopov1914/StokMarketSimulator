package smsimulator.view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class ForgotPasswordForm extends BaseForm {
	private JTextField nameField;
	private JPasswordField passwordField;
	private JPasswordField repeatPasswordField;

	public ForgotPasswordForm() {
		super("Forgot Password Form");

		// Create components
		JLabel nameLabel = new JLabel("Name:");
		JLabel passwordLabel = new JLabel("New Password:");
		JLabel repeatPasswordLabel = new JLabel("Repeat New Password:");
		nameField = new JTextField(20);
		passwordField = new JPasswordField(20);
		repeatPasswordField = new JPasswordField(20);
		JButton resetPasswordButton = new JButton("Reset Password");

		// Add action listener
		resetPasswordButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String name = nameField.getText();
				String password = new String(passwordField.getPassword());
				String repeatPassword = new String(repeatPasswordField.getPassword());
				mediator.onForgotPasswordButtonClicked(name, password, repeatPassword);
			}
		});

		// Add components to the form
		JPanel panel = new JPanel();
		panel.add(nameLabel);
		panel.add(nameField);
		panel.add(passwordLabel);
		panel.add(passwordField);
		panel.add(repeatPasswordLabel);
		panel.add(repeatPasswordField);
		panel.add(resetPasswordButton);
		getContentPane().add(panel);

		// Set frame properties
		setSize(300, 200);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLocationRelativeTo(null);
		setVisible(true);
	}
}
