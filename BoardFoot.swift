//  BoardFoot.swift
//
//  Created by Remy Skelton
//  Created on 2025-March-6
//  Version 1.0
//  Copyright (c) Remy Skelton. All rights reserved.
//
// This program will check the user width and height of a board
// and display the required length to make exactly 1 board foot
// (144 cubic inches).

// Import Foundation library
import Foundation

// Constants as double
let BOARD_FOOT: Double = 144

func boardFoot() {
    // Welcome message and instructions
    print("This program will ask for the width"
            , " and height of a piece of wood."
            , " It will then calculate the required"
            , " length to make exactly 1 board foot (144 cubic inches).")
    // Declare userHeightDouble and userWidthDouble
    var userHeightDouble: Double = 0
    var userWidthDouble: Double = 0

    // Do-while loop for valid userHeightDouble and width input
    repeat {
        // Message to ask user for height
        print("Please enter"
            + " the height of the piece of wood: ")

        // Read user height as a string and use guard to make sure input is valid
        guard let userHeightString = readLine() else {
            // Error message
            print("Invalid input. Please enter a height and width greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Message to ask user for width
        print("Please enter"
            + " the width of the piece of wood: ")

        // Read user width as a string and use guard to make sure input is valid
        guard let userWidthString = readLine() else {
            // Error message
            print("Invalid input. Please enter a height and width greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Safely convert user height as a string to double and use guard to make sure input is valid
        guard let userHeightDoubleLoop = Double(userHeightString) else {
            // Error message
            print("Invalid input \(userHeightString) and/or \(userWidthString)."
                    , "Please enter a height and width greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Safely convert user width as a string to double and use guard to make sure input is valid
        guard let userWidthDoubleLoop = Double(userWidthString) else {
            // Error message
            print("Invalid input \(userHeightString) and/or \(userWidthString)."
                    , "Please enter a height and width greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Set userHeightDouble and userWidthDouble to userHeightDoubleLoop and userWidthDoubleLoop
        userHeightDouble = userHeightDoubleLoop
        userWidthDouble = userWidthDoubleLoop

        // If to see if height and width are greater than 0
        if userWidthDouble <= 0 || userHeightDouble <= 0 {
            // Error message
            print("Invalid input \(userHeightString) and/or \(userWidthString)."
                    , "Please enter a height and width greater than 0.")
        }
    // Loop runs until userHeightDouble and userWidthDouble are greater than 0
    } while userHeightDouble <= 0 || userWidthDouble <= 0

    // Calculate the length required to make 1 board foot with calculateBoardFoot function
    let length = calculateBoardFoot(height: userHeightDouble, width: userWidthDouble)

    // Message to tell user the required length to make 1 board foot
    print("The required length to make exactly 1 board foot is: ", String(format: "%.2f", length), " inches.")
}

// Call function
boardFoot()

// Function to calculate the length required to make 1 board foot
func calculateBoardFoot(height: Double, width: Double) -> Double {
    // Calculate the length required to make 1 board foot
    let length = BOARD_FOOT / (height * width)
    // Return the length
    return length
}
