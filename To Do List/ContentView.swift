//
//  ContentView.swift
//  To Do List
//
//  Created by Jadrien on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var typeHere = ""
    @State var showSheet = false
    @State var toggle = true
    @State var toggle2 = true
    @State var minutes = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Toggle("Wake up", isOn: $toggle)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                Toggle(isOn: $toggle2) {
                    Image(systemName: "graduationcap")
                }
                .padding(.horizontal)
                .padding(.vertical, 5)
                
            
                Spacer ()
                
                Button("Add Tasks") {
                    showSheet.toggle()
                }
                .padding(.vertical, 5)
                    NavigationLink {
                } label: {
                    Text("Tasks")
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button ("") {
                    }
                }
            }
        }
        .sheet(isPresented: $showSheet) {
            TextField("input text here!", text: $typeHere)
                .offset(x: 20, y: -200)
                .padding(.vertical, 30)
            Text("\(minutes)")
                .offset(x: 40, y: -260)
            Stepper("", value: $minutes)
                .offset(x: 0, y: -300)
                .padding(.horizontal)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider
    {
        static var previews: some View {
            ContentView()
        }
    }
}
