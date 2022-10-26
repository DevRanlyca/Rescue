import SwiftUI
import AVFoundation

struct StartView: View {
    @State var originalView : Bool = false
    @State var aboutOriginalView: Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("main-background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing:40){
                    
                    Image("main-logo")
                    
                    VStack (spacing:16){
                        NavigationLink(
                            destination: GameView1(goToView2: self.$originalView),isActive: self.$originalView){}
                        
                        Button(action:{
                            
                            self.originalView = true
                            AudioContainer.sharedContainer.playSoundEffect(for: "button")
                            
                        },
    
                               label: {
                            Text("Start")
                                .foregroundColor(.white)
                                .font(.system(size:28, design:.rounded))
                                .fontWeight(.bold)
                                .frame(width: 250, height: 60)
                                .background(Color("main-brown"))
                                .cornerRadius(20)
                        })
                        
                        NavigationLink(
                            destination:
                                AboutView(),isActive: self.$aboutOriginalView){}
                        
                        Button(action:{
                            self.aboutOriginalView = true
                            AudioContainer.sharedContainer.playSoundEffect(for: "button")
                        },
                               
                               label: {
                            Text("About")
                                .foregroundColor(.white)
                                .font(.system(size:28, design:.rounded))
                                .fontWeight(.bold)
                                .frame(width: 250, height: 60)
                                .background(Color("main-brown"))
                                .cornerRadius(20)
                            
                        })
                    }
                    
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    
                    Spacer()
                        .frame(height:265)
                }
                
            }
            
        }
        
        .onAppear {
            AudioContainer.sharedContainer.playBackgroundMusic()
        }

        .accentColor(Color("main-black"))
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
