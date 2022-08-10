//
//  ContentView.swift
//  Zookeeper
//
//  Created by Alex Nichols on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack{
			Text("I love list").font(.headline)
			List {
				Text("Item 1")
				Text("Item 2")
				Text("Item 3")
			}
			.listStyle(InsetGroupedListStyle())
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
