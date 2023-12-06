//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//Story(
//    title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
//    choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
//    choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
//)
import Foundation

struct Story {
    let title : String
    let choice1 : String
    let choice1Destination : Int
    let choice2 : String
    let choice2Destination : Int
}
