//
//  DateFormatter+Extensions.swift
//  Impulse
//
//  Created by Gleb Shendrik on 23.09.2020.
//

import Foundation

extension DateFormatter {
    
    static var todayDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMM"
        return dateFormatter
    }()
    
    static var timeDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        if is24Hour {
            dateFormatter.dateFormat = "HH:mm"
        } else {
            dateFormatter.dateFormat = "h:mm"
        }
        return dateFormatter
    }()
    
    static var amPmDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "a"
        return dateFormatter
    }()
    
    static var monthDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        return dateFormatter
    }()
    
    static var is24Hour: Bool = {
        let locale = Locale.current
        let dateFormat = DateFormatter.dateFormat(fromTemplate: "j", options: 0, locale: locale)!
        return dateFormat.firstIndex(of: "a") == nil
    }()
}
