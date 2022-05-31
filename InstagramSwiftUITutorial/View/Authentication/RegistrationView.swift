import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var userName = ""
    @State private var password = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State private var imagePickerpresented = false
    
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
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
                if let image = image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                } else {
                    Button(
                        action: {
                            imagePickerpresented.toggle()
                        },
                        label: {
                            Image("plus-icon")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140, height: 140)
                                .foregroundColor(.white)
                        }
                    )
                    .sheet(
                        isPresented: $imagePickerpresented,
                        onDismiss: {
                            loadImage()
                        },
                        content: {
                            ImagePicker(image: $selectedImage)
                        }
                    )
                }
                
                
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
                    
                    CustomTextField(
                        text: $userName,
                        placeholder: Text("Username"),
                        imageName: "person")
                    .padding()
                    .background(
                        Color(.init(white: 1, alpha: 0.15))
                    )
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.horizontal, 32)
                    
                    CustomTextField(
                        text: $fullName,
                        placeholder: Text("Full Name"),
                        imageName: "person")
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
                
                Button(
                    action: {
                        viewModel.register(
                            withEmail: email,
                            password: password
                        )
                    }
                ) {
                    Text("Sign Up")
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
                        mode.wrappedValue.dismiss()
                    }
                ) {
                    
                    HStack {
                        Text("Already Have An Account")
                            .font(
                                .system(size: 14)
                            )
                        Text("Sign In")
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

extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else {
            return
        }
        image = Image(uiImage: selectedImage)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
