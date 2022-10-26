//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 23/04/22.
//

import SwiftUI
import AVFoundation

struct EndView: View {
    @Binding var goToStartView : Bool
    
    var body: some View {
        
        ZStack {
            Image("end-background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing:32) {
                Image("end-kitten")
                
                VStack (spacing:16) {
                    
                    VStack (spacing:4) {
                        Text("Good job!")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("main-brown"))
                            .font(.system(size:24,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("You raised Abu, the stray kitten")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("main-brown"))
                            .font(.system(size:24,design:.rounded)).padding(.horizontal,16)
                        
                    }
                    
                    Text("She will now survive and ready to be placed in her forever home!")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("main-black"))
                        .font(.system(size:17,design:.rounded))
                        .padding(.horizontal,16)
                    
                }
                
                Text("You may apply this knowledge to many other kittens that needs your help.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("main-black"))
                    .font(.system(size:17,design:.rounded))
                    .padding(.horizontal,16)
                
                
                
                Button(action: {
                    AudioContainer.sharedContainer.playSoundEffect(for: "button")
                    self.goToStartView = false },
                       
                       label: {
                    Text("Back to start")
                        .foregroundColor(.white)
                        .font(.system(size:24, design:.rounded))
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(Color("main-brown"))
                        .cornerRadius(20)
                    
                })
                
                
            }
        }.navigationBarTitle("")
        
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView(goToStartView: .constant(false))
    }
}
