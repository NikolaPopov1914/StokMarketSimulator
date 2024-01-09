package smsimulator.view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import smsimulator.Controler.MediatorInterface;

public class GUIMenuBar extends JMenuBar implements Component {
	private MediatorInterface mediator;

	public GUIMenuBar() {
		// First JMenu
		JMenu simulation = new JMenu("Simulation");
		this.add(simulation);
		JMenuItem newsms = new JMenuItem("New Simulation");
		simulation.add(newsms);

		newsms.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ev) {
				mediator.newSimulation();
			}
		});

	}

	@Override
	public void setMediator(MediatorInterface mediator) {
		this.mediator = mediator;
	}

	@Override
	public String getName() {
		return "MenuBar";
	}
}
