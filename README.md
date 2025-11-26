# KnightMoveCalculator
This Swift console application calculates all possible valid knight moves on an 8×8 chessboard, based on a given user input such as "e,4"
The program ensures all returned moves stay within the chess grid boundaries (a–h for columns and 1–8 for rows).


## 🚀 Features

-   Validates input position (file + rank)
-   Supports all 8 knight movement patterns
-   Automatically checks board boundaries
-   Clean, readable Swift structure with a `Position` model
-   Prints all legal moves in chess notation (`a,1`)

## 📌 Example

**Input:**

    d,4

**Output:**

    Position = c,6
    Position = e,6
    Position = b,5
    Position = f,5
    Position = b,3
    Position = f,3
    Position = c,2
    Position = e,2

## 🧠 How It Works

The program: 1. Parses the input `"file,rank"` 2. Converts the file
(`a–h`) into an index 3. Applies all 8 knight movement offsets 4. Checks
board limits (1--8 for rank, a--h for file) 5. Prints all valid
resulting positions

## 📝 Swift Code

``` swift
// (See main.swift in your project for the fully refactored version)
```

## 📦 Running the Program

Build and run using:

    swiftc main.swift -o KnightMoveCalculator
    ./KnightMoveCalculator

## 🧪 Future Improvements

-   Add support for other chess pieces
-   Build a SwiftUI board visualizer
-   Add XCTest unit tests

  

  
  
  





