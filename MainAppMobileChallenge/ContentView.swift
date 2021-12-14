//
//  ContentView.swift
//  MainAppMobileChallenge
//
//  Created by Michele Manniello on 11/12/21.
//

import SwiftUI
import IosMobileChallenge

struct ContentView: View {
    @StateObject var user = UserList()
    var body: some View {
        ScrollView{
            HStack {
                VStack(alignment: .leading) {
                    if user.error != ""{
                        Text("Error \(user.error)")
                            .padding()
                    }else{
                        Text("Succes \(user.value)")
                    }
                }
                Spacer()
            }
        }
        .onAppear {
            user.GetUser(owner: "octocat", name: "hello-world")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
