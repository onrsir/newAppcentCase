//
//  AlertManager.swift
//  Nasa
//
//  Created by Onur on 11.11.2022
//

import UIKit

class AlertManager {

  static func showAlert(
    title: String = Constants.Style.Text.Error.oops,
    message: String,
    alertAction: (() -> Void)? = nil,
    viewController: UIViewController?
  ) {
    DispatchQueue.main.async {
      let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: Constants.Style.Text.Error.ok, style: .default) { action in
        alertAction?()
      }
      alertController.addAction(action)
      viewController?.present(alertController, animated: true, completion: nil)
    }
  }
}
