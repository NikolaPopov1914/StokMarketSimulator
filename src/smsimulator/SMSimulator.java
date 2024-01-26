package smsimulator;

import java.util.ArrayList;

import javax.swing.SwingWorker;

import smsimulator.Controler.FormMediator;
import smsimulator.model.company.Company;
import smsimulator.view.*;

import smsimulator.model.investor.Investor;

import smsimulator.model.transaction.Transaction;

import smsimulator.model.InvestorsCompaniesCreator;
import smsimulator.model.TradingDaySimulation;

import smsimulator.Controler.Mediator;

import smsimulator.Controler.MediatorInterface;

public class SMSimulator {

	public static void main(String[] args) {
        // Show the login form
        LoginForm loginForm = new LoginForm();
        RegistrationForm registrationForm = new RegistrationForm();
        ForgotPasswordForm forgotPasswordForm = new ForgotPasswordForm();
        // Create the mediator and set it for the forms
        FormMediator mediator = new FormMediator(loginForm, registrationForm, forgotPasswordForm);

        // Set the mediator for each form
        loginForm.setMediator(mediator);
        registrationForm.setMediator(mediator);
        forgotPasswordForm.setMediator(mediator);
		registrationForm.setVisible(false);
		forgotPasswordForm.setVisible(false);
        loginForm.setVisible(true);

        // Wait for the user to log in
        loginForm.addPropertyChangeListener(evt -> {
            if ("loggedIn".equals(evt.getPropertyName()) && (boolean) evt.getNewValue()) {
                // User is logged in, start the simulation program
                setupAndRunSimulation();
            }
        });
    }
	private static void setupAndRunSimulation() {
 // Setting up the GUI
		InvestorsCompaniesCreator setup = new InvestorsCompaniesCreator();
		setup.setCompanies(100);
		setup.setInvestors(100);
		ArrayList<Company> companies = setup.getCompanies();
		ArrayList<Investor> investors = setup.getInvestors();

		TradingDaySimulation tds = new TradingDaySimulation();
		ArrayList<Transaction> transactions = tds.tradingSimulator(companies, investors);

		MediatorInterface mediator = new Mediator(investors, companies, transactions);

		mediator.registerComponent(new GUITableInvestors());
		mediator.registerComponent(new GUITableCompanies());
		mediator.registerComponent(new GUITableTransactions());
		mediator.registerComponent(new GUIMenuBar());
		mediator.registerComponent(new GUITablesSummary());
		mediator.registerComponent(new GUIOptionPane());
		mediator.createGUI();

	}

}