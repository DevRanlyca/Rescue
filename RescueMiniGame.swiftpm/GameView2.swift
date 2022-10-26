//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 23/04/22.
//

import SwiftUI
import AVFoundation

struct GameView2: View {
    @Binding var goToView3 : Bool
    @State var view3Button: Bool = false
    
    @State private var showingPopup: Bool = false
    
    //timer counting up
    @State private var timeRemaining = 0
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var isFeedingTime = false
    
    //count points
    @State private var countPoints = 0
    
    //hidden button
    @State var hideButton: Bool = true
    
    //collision
    @State private var xPos1: CGFloat = 195
    @State private var yPos1: CGFloat = 345
    
    @State private var xPos2: CGFloat = 195
    @State private var yPos2: CGFloat = 780
    
    @State private var collision: Bool = false
    
    var body: some View{
        
        ZStack {
            
            Image("game-background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            //time
            VStack(spacing:4) {
                
                Spacer()
                    .frame(height:74)
                
                Text("Hour")
                    .foregroundColor(Color("main-black"))
                    .font(.system(size:17,design:.rounded))
                    .fontWeight(.bold)
                
                Text("\(timeRemaining):00")
                    .foregroundColor(Color("main-brown"))
                    .font(.system(size:40,design:.rounded))
                    .fontWeight(.bold)
                
                Spacer()
            }
            
            VStack (spacing:16) {
                
                Spacer()
                    .frame(height:180)
                
                Text("Drag the food to Abu every 4 hours")
                    .foregroundColor(Color("main-black"))
                    .font(.system(size:17,design:.rounded))
                
                Text("\(countPoints)/6")
                    .foregroundColor(Color("main-brown"))
                    .font(.system(size:24,design:.rounded))
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("main-black"), lineWidth: 1).opacity(0.5))
                    .frame(width: 140, height: 140)
                
                NavigationLink(
                    destination: GameView3(goToView4: self.$goToView3),isActive: $view3Button){}
                
                Button(action:{
                    self.view3Button = true
                    AudioContainer.sharedContainer.playSoundEffect(for: "button")
                },
                       label: {
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size:24, design:.rounded))
                        .fontWeight(.bold)
                        .frame(width: 140, height: 44)
                        .background(Color("main-brown"))
                        .cornerRadius(10)
                        .opacity(hideButton ? 0:1)
                })
                
                
                Spacer()
                
                
                
            }
            
            //draggable object
            Image("wet-food")
                .clipped()
                .frame(width: 80, height:60)
                .position(x: self.xPos1, y: self.yPos1)
            
            //.offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.xPos1 = value.location.x
                            self.yPos1 = value.location.y
                        })
                        .onEnded({ value in
                            self.checkCollision()
                            self.xPos1 = 195
                            self.yPos1 = 345
                        })
                )
            
            //kitten head
            Image("kitten2-head")
                .clipped()
                .frame(width: 140, height:80)
                .position(x: self.xPos2, y: self.yPos2)
            
            Spacer()
                .frame(height:32)
            
            
            
            //popup
            if showingPopup {
                OverlayView2(buttonTap: {
                    showingPopup = false
                })
            }
            
            
        }
        //timer counting up
        .onReceive(timer) { time in
            
            guard timeRemaining < 24 else {
                timer.upstream.connect().cancel()
                return
            }
            
            timeRemaining += 1
            
            if timeRemaining.isMultiple(of: 4) {
                isFeedingTime = true
                timer.upstream.connect().cancel()
            }
            
        }
        
        // popup
        .onAppear {
            showingPopup = true
            print(UIScreen.main.bounds.size)
        }
        
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("")
    }
    
    //collision detector
    func checkCollision() {
        
        guard isFeedingTime else {
            return
        }
        
        if xPos2...(xPos2+140)~=xPos1+60 && yPos2...(yPos2+80)~=yPos1+60 {
            
            countPoints += 1
            
            AudioContainer.sharedContainer.playSoundEffect(for: "correct")
            
            guard countPoints < 6 else {
                self.hideButton = false
                return
            }
            
            self.collision = true
            
            timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            
            isFeedingTime = false
        } else {
            AudioContainer.sharedContainer.playSoundEffect(for: "wrong")
            self.collision = false
        }
    }
}

struct Gameview2_Previews: PreviewProvider {
    static var previews: some View {
        GameView2(goToView3: .constant(false))
    }
}
