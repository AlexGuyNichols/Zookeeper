//
//  ContentView.swift
//  Zookeeper
//
//  Created by Alex Nichols on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
	
	let animalGroups = [
		AnimalGroup(groupName: "Pets", animals: [
			Animal(name: "Dog"),
			Animal(name: "Cat"),
			Animal(name: "Parrot"),
			Animal(name: "Mouse")
		]),
		AnimalGroup(groupName: "Farm", animals: [
			Animal(name: "Cow"),
			Animal(name: "Horse"),
			Animal(name: "Goat"),
			Animal(name: "Sheep"),
		]),
		AnimalGroup(groupName: "Critters", animals: [
			Animal(name: "Firefly"),
			Animal(name: "Spider"),
			Animal(name: "Ant"),
			Animal(name: "Squirrel"),
		])
	]
	
    var body: some View {
		VStack {
			List {
				ForEach(animalGroups) {
					animalGroup in Section(header: Text(animalGroup.groupName)) {
						ForEach(animalGroup.animals) {
							animal in Text(animal.name)
						}
					}
				}
			} .listStyle(InsetGroupedListStyle())
			//Button("Add") {
				//animals.append(Animal(name: "New Animal"))
			//}
		}
    }
}

struct Animal: Identifiable {
	var id = UUID()
	var name: String
}

struct AnimalGroup: Identifiable {
	var id = UUID()
	var groupName : String
	var animals : [Animal]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
