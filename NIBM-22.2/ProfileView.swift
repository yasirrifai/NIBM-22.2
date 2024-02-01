//
//  ProfileView.swift
//  NIBM-22.2
//
//  Created by Yasir Rifai on 2024-01-27.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("cover")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .ignoresSafeArea()
                    .overlay{
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .offset(y: 90)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                VStack{
                    Text("Yasir Rifai").bold()
                    Text("yasirrifai30@gmail.com")
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 200, height: 40)
                            .overlay{
                                Text("Edit profile")
                                    .foregroundStyle(.white)
                            }
                        
                    })
                    
                    
                }
                
                HStack {
                    VStack{
                        Text("Weight")
                        Text("85 KG").font(.system(size: 30))
                        
                    }
                    Spacer()
                    
                    VStack{
                        Text("Height")
                        Text("178 CM").font(.system(size: 30))
                        
                    }
                    Spacer()
                    VStack{
                        Text("Blood Group")
                        Text("O+").font(.system(size: 30))
                        
                    }
                }.padding(.horizontal, 30)
                    .padding(.top, 30)
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}
