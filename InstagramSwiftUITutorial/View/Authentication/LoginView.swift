import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [Color.purple, Color.blue]
                        ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                VStack {
                    Image("instagram-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                    
                    VStack(spacing: 20) {
                        CustomTextField(
                            text: $email,
                            placeholder: Text("Email"),
                            imageName: "envelope")
                        .padding()
                        .background(
                            Color(.init(white: 1, alpha: 0.15))
                        )
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                        
                        CustomSecureField(
                            text: $password,
                            placeholder: Text("Password")
                        )
                        .padding()
                        .background(
                            Color(.init(white: 1, alpha: 0.15))
                        )
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    }
                    
                    HStack {
                        Spacer()
                        
                        Button(
                            action: {
                                
                            }
                        ) {
                            Text("Forgot Password?")
                                .font(
                                    .system(
                                        size: 13,
                                        weight: .semibold
                                    )
                                )
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                        
                    }
                    
                    Button(
                        action: {
                            
                        }
                    ) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(
                                Color(
                                    #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
                                )
                            )
                            .clipShape(Capsule())
                            .padding()
                    }
                    
                    Spacer()
                    
                    Button(
                        action: {
                            
                        }
                    ) {
                        HStack {
                            Text("Dont have an account?")
                                .font(
                                    .system(size: 14)
                                )
                            Text("Sign Up")
                                .font(
                                    .system(size: 14, weight: .semibold)
                                )
                        }
                        .foregroundColor(.white)
                    }
                    .padding(.bottom, 30)
                }
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
