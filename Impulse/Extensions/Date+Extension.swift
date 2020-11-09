//
//  Date+Extension.swift
//  Impulse
//
//  Created by Gleb Shendrik on 22.09.2020.
//

import Foundation

extension Date {
    
    var zeroSeconds: Date? {
        let calendar = Calendar.current
        let dateComponents = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: self)
        return calendar.date(from: dateComponents)
    }
    
    func monthMMM() -> String? {
        let dateFormatter = DateFormatter.monthDateFormatter
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
    }
    
    func dayWithMonth() -> String? {
        let dateFormatter = DateFormatter.todayDateFormatter
        return dateFormatter.string(from: self).capitalized
    }
    
    func time() -> String? {
        let dateFormatter = DateFormatter.timeDateFormatter
        return dateFormatter.string(from: self).capitalized
    }

    func timeAmPm() -> String? {
        let dateFormatter = DateFormatter.amPmDateFormatter
        return dateFormatter.string(from: self).capitalized
    }
    
    func placeholder() -> String? {
        if DateFormatter.is24Hour {
            return monthMMM()
        }
        else {
            return timeAmPm()
        }

    }
    
}

