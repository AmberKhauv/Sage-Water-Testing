//
//  ContentView.swift
//  Sage Water Testing 2
//
//  Created by Amber on 3/21/20.
//  Copyright © 2020 Amber. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var totalOz = 0
    @State private var oz = 8
    @State private var cupNum = 0
    @State private var ozCup = "Water Cup 8"
    @State private var cupTotal = "Current Cup Measurement 0"
    func nextCup(){
        cupNum = cupNum + 1
        if cupNum == 1{
            cupTotal = "Current Cup Measurement 1"
        }
        if cupNum == 2{
            cupTotal = "Current Cup Measurement 2"
        }
        if cupNum == 3{
            cupTotal = "Current Cup Measurement 3"
        }
        if cupNum == 4{
            cupTotal = "Current Cup Measurement 4"
        }
        if cupNum == 5{
            cupTotal = "Current Cup Measurement 5"
        }
        if cupNum == 6{
            cupTotal = "Current Cup Measurement 6"
        }
        if cupNum == 7{
            cupTotal = "Current Cup Measurement 7"
        }
        if cupNum == 8{
            cupTotal = "Current Cup Measurement 8"
        }
    }
    func nextOz(){
        oz = oz - 1
        totalOz = totalOz + 1
        if oz == 8{
            ozCup = "Water Cup 8"
        }
        if oz == 7{
            ozCup = "Water Cup 7"
        }
        if oz == 6{
            ozCup = "Water Cup 6"
        }
        if oz == 5{
            ozCup = "Water Cup 5"
        }
        if oz == 4{
            ozCup = "Water Cup 4"
        }
        if oz == 3{
            ozCup = "Water Cup 3"
        }
        if oz == 2{
            ozCup = "Water Cup 2"
        }
        if oz == 1{
            ozCup = "Water Cup 1"
        }
        if oz == 0{
            ozCup = "Water Cup 0"
            nextCup()
            oz = 8
            ozCup = "Water Cup 8"
        }
    }
    var body: some View {
        VStack {
            Image("Water Header").resizable().frame(width: 300, height: 90, alignment: .center)
            Image(cupTotal).resizable().frame(width: 350, height: 50, alignment: .center)
            Text("\(totalOz)/64 oz").font(.custom("HelveticaNeue-Light", size: 23)).foregroundColor(Color.gray)
            Image("Current Cup Header").resizable().frame(width: 350, height: 50, alignment: .center)
            Image(ozCup).resizable().frame(width: 300, height: 330, alignment: .center)
            HStack{
                Button(action: {
                    //action here
                }){
                    Image("Back Button").resizable().padding([.leading, .bottom]).frame(width: 100, height: 57, alignment: .center)
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                Button(action: {
                    self.nextOz()
                }){
                    Image("Minus 10 oz").resizable().padding([.bottom, .trailing]).frame(width: 100, height: 70, alignment: .center)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
