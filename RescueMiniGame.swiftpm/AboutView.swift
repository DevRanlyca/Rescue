//
//  File.swift
//  RescueMiniGame
//
//  Created by Devina Ranlyca on 20/04/22.
//

import SwiftUI
import AVFoundation

struct AboutView: View {
    
    var body: some View{
        
        ZStack {
            Color("light-blue")
                .edgesIgnoringSafeArea([.all])
            
            ScrollView{
                
                VStack (spacing:24) {
                    
                    Spacer()
                        .frame(height:4)
                    
                    Image("abu-picture")
                    
                    VStack (alignment: .leading, spacing: 16) {
                        Text("Welcome to Rescue!")
                            .foregroundColor(Color("main-brown"))
                            .font(.system(size:17,design:.rounded))
                            .fontWeight(.bold)
                            .padding(.horizontal,16)
                        
                        Text("This is Abu ( meaning gray in Indonesian), a cat who loves taking walks, watching birds, and nice scratches behind her ears. I raised her since she strayed into my house in Jakarta when she was about 3 weeks old, with no knowledge or experience on how to care of young cats.")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("In this playground app, you’re going to learn how to raise a kitten to 10 weeks of age in 3 stages with interactive simulation through Abu, so you’ll know what to do when you get adopted by a feline friend in the future.")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("Learning and watching her grow up was one of the most rewarding experience to me, and I wish to share that feeling with you through this app project!")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("Follow the instructions in the app and enjoy!")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("**Note:** Run the app project on iOS Simulator for iPhone 12 or iPhone 13 for better viewing experience")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Text("Thank you for playing!")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:17,design:.rounded))
                            .padding(.horizontal,16)
                        
                        Divider()
                        
                        Text("All music and sound effects used in this playground were obtained from https://orangefreesounds.com/ credited to Alexander. Free for commercial use under Creative Commons Attribution 4.0 International License.")
                            .foregroundColor(Color("main-black"))
                            .font(.system(size:14))
                            .italic()
                            .padding(.horizontal,16)
                        
                    }
                }
            }
        }
        
        .navigationBarTitle("About Rescue", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
