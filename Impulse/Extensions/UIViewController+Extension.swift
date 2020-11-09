//
//  UIViewController+Extension.swift
//  Impulse
//
//  Created by Gleb Shendrik on 15.10.2020.
//

import UIKit
import SPAlert

extension UIViewController {
    
    var topPadding: CGFloat {
        if #available(iOS 11.0, *) {
            let keyWindow = UIApplication.shared.connectedScenes
                    .filter({$0.activationState == .foregroundActive})
                    .map({$0 as? UIWindowScene})
                    .compactMap({$0})
                    .first?.windows
                    .filter({$0.isKeyWindow}).first
            return keyWindow?.safeAreaInsets.top ?? 0
        }
        return 0
    }
    
    func showWidgetSuccessSelectedAlert() {
        showSuccessAlert(title: L10n.AllWidgets.SuccesAlert.Selected.title, body: L10n.AllWidgets.SuccesAlert.body)
    }
    
    func showWidgetSuccessAddedAlert() {
        showSuccessAlert(title: L10n.AllWidgets.SuccesAlert.Added.title, body: L10n.AllWidgets.SuccesAlert.body)
    }
    
    func showSuccessAlert(title: String, body: String) {
        let alertView = SPAlertView(title: title, message: body, image: Asset.successIcon.image)
        alertView.duration = 3
        alertView.dismissByTap = true
        alertView.layout.iconHeight = 32
        alertView.layout.bottomIconSpace = 14
        alertView.layout.topSpace = 20
        alertView.layout.bottomSpace = 20
        alertView.haptic = .success
        alertView.layer.cornerRadius = 14
        alertView.present()
    }

}
