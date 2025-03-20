import SwiftUI

@main
struct StarbucksApp: App {
    @State private var isLaunching: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isLaunching {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            self.isLaunching = false
                        }
                    }
            }
            else {
                LoginView()
            }
            
        }
    }
}
