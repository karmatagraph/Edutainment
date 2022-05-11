//
//  QuestionView.swift
//  Edutainment
//
//  Created by karma on 5/11/22.
//

import SwiftUI
struct QuestionView: View {
    @State private var inputAnswer = 0
    @State private var randomInt = 0
    @State private var score = 0
    @State private var answer = 0
    @State private var completed = false
    @State private var showingScore = false
    @State private var questionCount = 0
//    @State private var multiplier = 0
    
    let multiple: Int
    let numOfQuestion: Int
    var body: some View{
        //        ForEach(1...numOfQuestion, id: \.self){num in
        //            Text("Questions on multiple of \(multiple) for question \(num)")
        //
        //        }
        
        VStack{
            Form{
                
                Text("What is \(multiple) X \(randomInt) ")
                TextField("Enter your answer here ", value: $inputAnswer, formatter: NumberFormatter()){
                    
                }
                .onAppear(){
                    askQuestion()
                }
                Text("the user inputed answer is: \(inputAnswer)")
            }
            .onSubmit {
                checkAnswer()
                askQuestion()
                
            }
        }
        .alert("Completed", isPresented: $completed){
            Button("Play again", action: resetGame)
        }message: {
            Text("Congrats you have completed the questions with the score of \(score)")
        }
        
    }
    
    
    func checkAnswer(){
        if inputAnswer == multiple * randomInt{
            score += 1
            print("yay")
        }else{
            print("Wrong")
        }
        if questionCount == numOfQuestion - 1{
            print(numOfQuestion,"----------------no of question")
            completed = true
            return
        }
        // show the score
//        showingScore = true
        questionCount += 1
        
    }
    
    func askQuestion(){
        randomInt = Int.random(in: 1...9)
    }
    
    func resetGame(){
        randomInt = 0
        answer = 0
        questionCount = 0
        score = 0
        inputAnswer = 0
    }
    
}
