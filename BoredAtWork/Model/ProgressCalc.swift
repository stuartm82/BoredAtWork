import UIKit

let date = Date()
let calendar = Calendar.current

let hour = Double(calendar.component(.hour , from: date))
let minute = Double(calendar.component(.minute , from: date))
let weekday = Double(calendar.component(.weekday, from: date))

func getProgress() -> Float {
    
    func getDays() -> Float {
        if weekday - 1 == 0 {
            return 40
        } else if weekday - 1 == 6 {
                return 40
        } else {
            return Float ((weekday-2) * 8)
        }
    }

    func getHours() -> Float {
        if hour > 16 {
            return 8
        } else if hour < 8 {
                return 0
        } else {
            return Float (hour-8)
        }
    }
    
let progress = (((getDays()+getHours())/40)*100).rounded()
    if progress < 100 {
        return progress
    } else {
        return 100
    }
}


