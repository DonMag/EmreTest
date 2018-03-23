//
//  ViewController.swift
//  EmreTest
//
//  Created by Don Mag on 3/23/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var theAlertView: Alert?
	
	@IBAction func wrongWayTapped(_ sender: Any) {
		let alert = Alert(title: "hata",message: "hata mesajı ekrana basıldı", image: UIImage(named: "error")!)
		alert.show()
		
		// the alert view has been shown, but this function will exit
		// at which point the newly created "alert" object will be deallocated / destroyed
		// so the "Close" button will have no code to run
	}
	
	@IBAction func rightWayTapped(_ sender: Any) {
		theAlertView = Alert(title: "hata",message: "hata mesajı ekrana basıldı", image: UIImage(named: "error")!)
		theAlertView?.show()
		
		// the alert view has been shown, and because we retain a reference to it with
		// the class-level "theAlertView" var, it will still exist when this function exits
		// and the code inside that class for the "Close" button will be available for the button tap
	}
	
}

