import UIKit

var message = "test"

func getMessage() -> String {
    let progress = getProgress()
    
    if progress <= 20 {
        message = "You may have to fight a battle more than once to win it!"
    } else if progress <= 40 {
        message = "Tuesday isn’t so bad…It’s a sign that I’ve somehow survived Monday"
    } else if progress == 50 {
        message = "Congratulations, you are halfway there!"
    } else if progress <= 60 && progress != 50 {
        message = "A Wednesday with no rain is a dry hump day"
    } else if progress <= 80 {
        message = "Some people call it Thursday, I like to call it Friday Eve"
    } else if progress < 100 {
    message = "Fridays are the hardest in some ways: you’re so close to freedom"
    } else {
    message = "There is no such thing as a weekend.  This is an everyday gig: Every day is a Monday"
    }
    return message
}
