package smsimulator.view;

import javax.swing.JFrame;

import smsimulator.Controler.FormMediator;

class BaseForm extends JFrame {
	public FormMediator mediator;

	public void setMediator(FormMediator mediator) {
		this.mediator = mediator;
	}

	public BaseForm(String title) {
		super(title);
	}
}
