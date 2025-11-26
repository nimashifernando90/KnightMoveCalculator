//
//  main.swift
//  Test
//
//  Created by Nimashi Fernando on 2025-11-24.
//

import Foundation

//board maximum Y value, according to the current input
var maxYPosition = 0
var userInputYValue : Int = 0


func getExpectedPositions (_ userInput : String){
    
    //board X values
    let xPositionsArray = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    //split the string by ","
    let currentPositionArray = userInput.components(separatedBy: ",")
    
    //letter value
    let xPosition = currentPositionArray[0]
    //row value
    let yPosition = currentPositionArray[1]
    userInputYValue = Int(yPosition)!
    print("User Input= \(xPosition),\(yPosition)")
    
    //grid maximum Y value, according to the current input
    maxYPosition = Int(yPosition)! + 2
    
    //grid input value X position in array
    let inputXpositionIndex = xPositionsArray.firstIndex(of: xPosition)
    if(inputXpositionIndex == nil){
        print("The given user input is out of the grid")
        return
    }
    
    //board maximum X position index, according to the current input
    let maxXIndex = inputXpositionIndex! + 2
    var boardMaxIndex = maxXIndex
   
    //board minimum X position index, according to the current input
    let minXIndex = inputXpositionIndex! - 2
    var boardMinIndex = minXIndex
    
    //validate X position movements within the board and re-assign values according to 8*8
    if(minXIndex < 0){
        boardMinIndex = 0
        
    }
    if(maxXIndex >= xPositionsArray.count){
        boardMaxIndex = (xPositionsArray.count-1)
    }
    
    //validate Y position movements within the board and re-assign values according to 8*8
    if(maxYPosition > 8){
        maxYPosition = 8
    }
    
    //to get all the possible position letters, along with number
    for i in (boardMinIndex)...(boardMaxIndex) {
        if(i != inputXpositionIndex){
            //going through valid letters
            (getYpostionValueForGivenXIndex(i,xPositionsArray[i]))
        }
    }
    
    //to get all the possible values
    func getYpostionValueForGivenXIndex(_ newRowIndex: Int, _ newRowValue: String) {
        // edge columns → move 1 step
        if newRowIndex == maxXIndex || newRowIndex == minXIndex {
            validateYPositionAndPrintExpected(1, newRowValue)
        }
        // middle columns → move 2 steps
        else if(newRowIndex < maxXIndex || newRowIndex > minXIndex){
            validateYPositionAndPrintExpected(2, newRowValue)
        }
    }
}

func validateYPositionAndPrintExpected(_ coloumn : Int, _ newRowValue : String){
    
    //the expected values should be within the board, always > 0 & <= 8
    if(userInputYValue + coloumn <= maxYPosition && userInputYValue - coloumn > 0){
        print("Position = \(newRowValue),\(userInputYValue + coloumn) \nPosition = \(newRowValue),\(userInputYValue - coloumn)")
    }
    else if(userInputYValue + coloumn > maxYPosition && userInputYValue - coloumn > 0){
        print("Position = \(newRowValue),\(userInputYValue - coloumn)")
    }
    else{
        print("Position = \(newRowValue),\(userInputYValue + coloumn)")
    }
}

getExpectedPositions("d,4")
