//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 22/04/22.
//

import SwiftUI
import AVFoundation

struct OverlayView2: View {
    var buttonTap: (() -> Void)
    
    var body: some View{
        
        ZStack {
            
            Image("game-background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .overlay(Color.black.opacity(0.5))
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("overlay-fillbrown"))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("overlay-borderbrown"), lineWidth: 5))
                
                VStack(spacing:16){
                    Image("kitten2-head")
                    
                    Text("Abu is getting bigger and stronger thanks to your help!")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("main-black"))
                        .font(.system(size:16,design:.rounded))
                        .padding(.horizontal,16)
                    
                    VStack (spacing:8) {
                        HStack {
                            VStack(spacing:4){
                                Text("Age")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("3-5 weeks old")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                            }
                            .frame(width: 138, height: 95)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                            
                            VStack(spacing:4){
                                Text("Characteristics")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("blue eyes, walking, teeth emerging, unfolded ears")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal,8)
                            }
                            .frame(width: 150, height: 95)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                        }
                        
                        HStack {
                            VStack(spacing:4){
                                Text("Feed every")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("4 hours")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                            }
                            .frame(width: 138, height: 95)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                            
                            VStack(spacing:4){
                                Text("Food")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("Wet cat food")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 150, height: 95)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                        }
                    }
                    
                    VStack (spacing:8) {
                        Text("Instructions")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:16,design:.rounded))
                            .fontWeight(.bold)
                        
                        Text("Feed Abu the correct food at the right time and the amount she needs!")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:16,design:.rounded))
                            .padding(.horizontal,16)
                    }
                    
                    
                    Button(
                        action: {
                            AudioContainer.sharedContainer.playSoundEffect(for: "button")
                            buttonTap()
                        },
                        
                        label: {
                            Text("Let's go!")
                                .foregroundColor(.white)
                                .font(.system(size:24, design:.rounded))
                                .fontWeight(.bold)
                                .frame(width: 150, height: 44)
                                .background(Color("main-brown"))
                                .cornerRadius(10)
                            
                        })
                    
                }
            }
            .frame(width: 326, height: 550)
        }
    }
    
    
}

struct OverlayView2_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView2(buttonTap: {})
    }
}
