////
////  ContentView.swift
////  Edutainment
////
////  Created by karma on 5/11/22.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView{
//            VStack{
//                HStack{
//                    ForEach(0..<4){index in
//                        Button("\(index + 2)"){
//                            
//                        }
//                        .padding()
//                        .background(.cyan)
//                        .clipShape(Circle())
//                        .foregroundColor(.white)
//                        
//                    }
//                }
//                .padding()
//                HStack{
//                    ForEach(0..<4){index in
//                        Button("\(index + 6)"){
//                            
//                        }
//                            .padding()
//                            .background(.cyan)
//                            .clipShape(Circle())
//                            .foregroundColor(.white)
//                    }
//                }
//                .padding()
//                HStack{
//                    ForEach(0..<3){index in
//                        Button("\(index + 10)"){
//                            
//                        }
//                            .padding()
//                            .background(.cyan)
//                            .clipShape(Circle())
//                            .foregroundColor(.white)
//                    }
//                }.padding()
//               
//            }
//            .navigationTitle("Multiplication")
//            .navigationBarTitleDisplayMode(.large)
//            
//            //
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
