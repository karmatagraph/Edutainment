//
//  ContentView.swift
//  Edutainment
//
//  Created by karma on 5/11/22.
//

import SwiftUI


struct ContentView: View {
    @State private var multiple = 2
    @State private var questionAmount = 5
    @State private var questionShow = false
    
    var numOfQuestion = [5,10,20]
    
    var body: some View {
        NavigationView{
            
            VStack{
                Form{
                    Section{
                        Picker("How many question?", selection: $questionAmount){
                            ForEach(numOfQuestion, id: \.self){
                                Text("\($0)")
                            }
                        }
//                        .pickerStyle(.segmented)
                    }
                    Section{
                        VStack{
                            Stepper("Multiplication of ",value: $multiple, in: 2...12)
                            Text("\(multiple)")
                        }
                    }
                   
                }
//                Spacer()
                Button("Start"){
                    // navigate to questions sheets
                    questionShow = true
                }
                    .padding()
                    .background(.cyan)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .sheet(isPresented: $questionShow){
                        QuestionView(multiple: multiple,numOfQuestion: questionAmount)
                    }
            }
                
            .navigationTitle("Multiplication")
            .navigationBarTitleDisplayMode(.large)
            
            //
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
