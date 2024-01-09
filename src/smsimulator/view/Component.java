package smsimulator.view;

import smsimulator.Controler.MediatorInterface;

// component interface

public interface Component {
	void setMediator(MediatorInterface mediator);

	String getName();
}
