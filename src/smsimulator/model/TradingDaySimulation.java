package smsimulator.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;
import smsimulator.model.company.Company;
import smsimulator.model.investor.Investor;
import smsimulator.model.transaction.Transaction;

public class TradingDaySimulation {

	public ArrayList<Company> companies = null;
	public ArrayList<Investor> investors = null;
	public ArrayList<Transaction> transactions = null;

	public ArrayList<Transaction> tradingSimulator(ArrayList<Company> companies, ArrayList<Investor> investors) {

		ArrayList<Transaction> transactions = new ArrayList<Transaction>();

		// Date of the transactions
		LocalDate time = LocalDate.now();
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd-M-yyyy");
		String date = formato.format(time);

		// We need this list to keep track of the total number of transactions made for
		// each company,
		// and the number of transactions made for each company every 10 transactions:
		ArrayList<Integer> sharesSold = new ArrayList<Integer>();
		ArrayList<Integer> sharesSoldEvery10Trans = new ArrayList<Integer>();
		for (int i = 0; i < companies.size(); i++) {
			sharesSold.add(0);
			sharesSoldEvery10Trans.add(0);
		}

		Random r = new Random();

		boolean t = true;
		while (t == true) {
			t = false;

			// Getting only the companies that have shares
			ArrayList<Company> companiesTrans = getCompaniesWithShares(companies);

			// A transaction is possible only if there are companies with sharess
			if (companiesTrans != null && companiesTrans.size() > 0) {

				int indexComp = r.nextInt(companiesTrans.size()); // randomly taking a company
																	// from the list of companies with shares
				Company comp = companiesTrans.get(indexComp);

				// We get the minimum price of a share to make to know which are the investors
				// that have enough money to buy a share
				double minSharePrice = getMinSharePrice(companiesTrans);

				// Making a list with only the investors that have enough money to by a share
				ArrayList<Investor> investorsTrans = getInvestorsWithEnoughBudget(investors, minSharePrice);

				if (investorsTrans != null && investorsTrans.size() > 0) {

					// t variable = true
					// to continue looping in our while statement so continue making transactions
					t = true;

					// List with only the investor that have enough money to buy a
					// share of the company involved in the current transaction
					ArrayList<Investor> investorsCurrentTras = getInvestorsWithEnoughBudget(investorsTrans,
							comp.getsharePrice());
					if (investorsCurrentTras != null && investorsCurrentTras.size() > 0) {

						// Randomly taking an investor from the list of investors that have enough
						// money to buy a share of the current company:
						int indexInv = r.nextInt(investorsCurrentTras.size());
						Investor inv = investorsCurrentTras.get(indexInv);

						// New transaction
						transactions.add(new Transaction(inv, comp, comp.getsharePrice(), date));

						// Removing one of the shares of the current company, and
						// updating the budget of the
						// investor involved in the current transaction
						companies.get(indexComp).setShares(comp.getShares() - 1);
						investors.get(indexInv).setBudget(inv.getBudget() - comp.getsharePrice());

						// Keeping track of the total number of transactions made for each
						// company and the number of transactions each 10 transactions
						sharesSold.set(indexComp, sharesSold.get(indexComp) + 1);
						sharesSoldEvery10Trans.set(indexComp, sharesSoldEvery10Trans.get(indexComp) + 1);

						// If a company sells 10 shares, the share price should double up
						if (sharesSold.get(indexComp) != 0 && sharesSold.get(indexComp) % 10 == 0) {
							companies.get(indexComp).setSharePrice(comp.getsharePrice() * 2);

						}

						// When any 10 shares are sold (from any company), and a company hasn't sold
						// any - the price must reduce in 2%.
						if (sumAll(sharesSold) != 0 && sumAll(sharesSold) % 10 == 0) {
							for (int i = 0; i < companies.size(); i++) {
								if (sharesSoldEvery10Trans.get(i) == 0) {
									double price = companies.get(i).getsharePrice();
									double newPrice = price - price * 0.02;
									companies.get(i).setSharePrice(newPrice);
								} else {
									// sharesSoldEvery10Trans.set(i, 0);
								}
							}
						}
					}
				}
			}
		}

		return transactions;

	}

	public ArrayList<Company> getCompaniesWithShares(ArrayList<Company> companies) {
		ArrayList<Company> c = new ArrayList<Company>();
		for (int i = 0; i < companies.size(); i++) {
			if (companies.get(i).getShares() > 0) {
				c.add(companies.get(i));
			}
		}
		return c;
	}

	public ArrayList<Investor> getInvestorsWithEnoughBudget(ArrayList<Investor> investors, double minBudget) {
		ArrayList<Investor> inv = new ArrayList<Investor>();
		for (int i = 0; i < investors.size(); i++) {
			if (investors.get(i).getBudget() >= minBudget) {
				inv.add(investors.get(i));
			}
		}
		return inv;
	}

	public double getMinSharePrice(ArrayList<Company> companies) {
		double minSharePrice = companies.get(0).getsharePrice();
		// Declare min and max elements index as 0 (i.e. first element)
		int minIndex;
		// Iterate through ArrayList
		for (int i = 1; i < companies.size(); i++) {
			// If current value is less than min value, it is new minimum value
			if (companies.get(i).getsharePrice() < minSharePrice) {
				minSharePrice = companies.get(i).getsharePrice();
				minIndex = i;
			}
		}
		return minSharePrice;
	}

	public int sumAll(ArrayList<Integer> numbers) {
		int sum = 0;
		for (int number : numbers) {
			sum += number;
		}
		return sum;
	}

}