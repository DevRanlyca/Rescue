//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 20/04/22.
//

import SwiftUI
import AVFoundation

struct OverlayView1: View {
    var didTap: (() -> Void)
    
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
                    Image("kitten1-head")
                    
                    Text("This is **Abu**, she’s a orphaned stray kitten found in the streets of Jakarta")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("main-black"))
                        .font(.system(size:16,design:.rounded))
                        .padding(.horizontal,16)
                    
                    VStack (spacing:8){
                        HStack (spacing:8){
                            VStack(spacing:4){
                                Text("Age")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("0-2 weeks old")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                            }
                            .frame(width: 138, height: 80)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                            
                            VStack(spacing:4){
                                Text("Characteristics")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("eyes closed, ears folded, can’t walk")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 150, height: 80)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                        }
                        
                        HStack (spacing:8){
                            VStack(spacing:4){
                                Text("Feed every")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("2 hours")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                            }
                            .frame(width: 138, height: 80)
                            .overlay(
                                RoundedRectangle(cornerRadius:10)
                                    .stroke(Color("main-brown"), lineWidth: 1))
                            
                            VStack(spacing:4){
                                Text("Food")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .fontWeight(.bold)
                                
                                Text("kitten milk replacement")
                                    .foregroundColor(Color("main-black"))
                                    .font(.system(size:16,design:.rounded))
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 150, height: 80)
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
                        
                        Text("Help Abu grow by feeding her the correct food at the right time and the amount she needs!")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:16,design:.rounded))
                            .padding(.horizontal,16)
                    }
                    
                    
                    Button(action:{
                        AudioContainer.sharedContainer.playSoundEffect(for: "button")
                        didTap()
                    }
                           ,
                           
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
            .frame(width: 326, height: 540)
        }
    }
    
    
}

struct OverlayView1_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView1(didTap: {})
    }
}
