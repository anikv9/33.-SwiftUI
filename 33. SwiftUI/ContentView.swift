//
//  ContentView.swift
//  33. SwiftUI
//
//  Created by ani kvitsiani on 08.12.23.
//

import SwiftUI

struct ContentView: View {
    
    struct taskDetails: Identifiable {
        var id = UUID()
        
        var task_title: String
        var date: String
        @State var isChecked = false
    }
    
    
    @State var tasks: [taskDetails] = [
        
        taskDetails(task_title: "Mobile App Research", date: "4 Oct", isChecked: false),
        
        taskDetails(task_title: "Prepare Wireframe for Main Flow", date: "4 Oct", isChecked: false),
        
        taskDetails(task_title: "Prepare Screens", date: "4 Oct", isChecked: false),
        
        taskDetails(task_title: "Website Research", date: "5 Oct", isChecked: false),
        
        taskDetails(task_title: "Prepare Wireframe for Main Flow", date: "5 Oct", isChecked: false),
        
        taskDetails(task_title: "Prepare Screens", date: "5 Oct", isChecked: false) ]
    
    
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 16) {
                HStack {
                    Text("You have 3 tasks \nto complete") //here number
                        .font(
                            Font.custom("Roboto", size: 25)
                                .weight(.bold)
                        )
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    ZStack{
                        
                        Image("Ellipse 1")
                            .frame(width: 49, height: 49)
                            .cornerRadius(22)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.73, green: 0.51, blue: 0.87), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.5, y: 0),
                                    endPoint: UnitPoint(x: 0.5, y: 1)
                                )
                            )
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 44, height: 45)
                            .background(
                                Image("Image1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 44, height: 45)
                                    .clipped()
                            )
                            .cornerRadius(22)
                        
                        
                        
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color(red: 1, green: 0.46, blue: 0.23))
                            .padding(.top, 40)
                            .padding(.leading, 40)
                        
                        Text("3") //here number
                            .font(Font.custom("Inter", size: 9))
                            .foregroundColor(.white)
                            .padding(.top, 40)
                            .padding(.leading, 40)
                        
                    }
                    
                    
                    
                    
                    
                }
                
                
                
                
                Button("complete all"){
                    
                }
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: 380, height: 50)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.73, green: 0.51, blue: 0.87), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.87, green: 0.51, blue: 0.69), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0, y: 0.49),
                        endPoint: UnitPoint(x: 1.02, y: 0.73)
                    )
                )
                .cornerRadius(8)
                
                
                Text("Progress")
                
                    .font(Font.custom("Roboto", size: 22))
                    .foregroundColor(.white)
                
                
                ZStack{
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 391, height: 139)
                        .background(Color(red: 0.09, green: 0.09, blue: 0.09))
                    
                        .cornerRadius(8)
                    
                    VStack {
                        HStack {
                            Text("Daily Task")
                                .font(
                                    Font.custom("Inter", size: 18)
                                        .weight(.medium)
                                )
                            
                                .foregroundColor(.white)
                            
                            Spacer()
                                .padding(.bottom, 10)
                        }
                        
                        
                        HStack {
                            Text("3/6 Task Completed") //here number
                                .font(Font.custom("Inter", size: 16))
                                .foregroundColor(.white.opacity(0.8))
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                                .padding(.bottom, 9)
                        }
                        
                        HStack{
                            Text("Keep  working")
                                .font(
                                    Font.custom("Inter", size: 14)
                                        .weight(.light)
                                )
                                .foregroundColor(.white.opacity(0.8))
                            
                            Spacer()
                            
                            Text("50%")
                                .font(Font.custom("Inter", size: 18))
                                .foregroundColor(.white)
                            
                                .padding(.bottom, 6)
                            
                            
                        }
                        
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 360.93143, height: 18)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .inset(by: 5)
                                        .stroke(Color(red: 0.73, green: 0.51, blue: 0.87).opacity(0.41), lineWidth: 10)
                                    
                                )
                            
                            
                            HStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 175.82857, height: 18)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .inset(by: 5)
                                            .stroke(Color(red: 0.73, green: 0.51, blue: 0.87), lineWidth: 10)
                                        
                                        
                                        
                                    )
                                
                                Spacer()
                            }
                        }
                        
                    }
                    
                    .padding(.leading, 16)
                    .padding(.trailing, 15)
                    .frame(alignment: .leading)
                    
                    
                    
                    
                    
                }
                
                Text("Completed Tasks")
                    .font(Font.custom("Roboto", size: 22))
                    .foregroundColor(.white)
                
                ForEach(tasks, id: \.id) { task in
                    
                    
                    HStack {
                        
//                                        Rectangle()
//                                        .foregroundColor(.clear)
//                                        .frame(width: 15, height: 80)
//                                        .background(Color(red: 0.98, green: 0.8, blue: 0.73))
//                        
//                                        .cornerRadius(7.5)
//                                        .padding(.trailing, 0)
                        
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 391, height: 80)
                                .background(Color(red: 0.12, green: 0.12, blue: 0.12))
                            
                                .cornerRadius(8)
                            
                            HStack {
                                
                                VStack {
                                    
                                    
                                    
                                    HStack {
                                        
                                        Text("\(task.task_title)")
                                            .font(Font.custom("Inter", size: 16))
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                    }
                                    .padding(.bottom, 5)
                                    
                                    HStack {
                                        Image("Calendar")
                                            .frame(width: 15, height: 16.67482)
                                            .foregroundColor(.white)
                                        
                                        
                                        Text("\(task.date)")
                                            .font(Font.custom("Inter", size: 14))
                                            .foregroundColor(.white.opacity(0.8))
                                        
                                        Spacer()
                                        
                                        
                                    }
                                    
                                    
                                }
                                Spacer()
                                
                                
                                Button(action: {
                                    
                                    task.isChecked.toggle()
                                }) {
                                    Image(uiImage: UIImage(named: task.isChecked ? "Checkbox" : "Empty")!)
            
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 26, height: 26)
                                        .foregroundColor(task.isChecked ? .green : .gray)
                                    
                                        
                                }
                                //ამან გამაწამა, ჯერ მუშაობდა ოღონდ ერთს რო ვაჭერდი ყველა ინიშნებოდა, მერე შევცვალე და აღარც ეჭირება, არის ასე უძრავად!!!!
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            }
                            .padding(.leading, 14)
                            .padding(.trailing, 11)
                        }
                        
                    }
//                    .clipShape(Rectangle())
                    
                }
            }
            
            
        }
        
        //        .frame(width: 393, height: 1100)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .background(Color(red: 0.01, green: 0.01, blue: 0.02))
        
        
        
        
        
    }
    
    
    
}

#Preview {
    ContentView()
}
