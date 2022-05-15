//
//  UserRowView.swift
//  ListApp
//
//  Created by German Blonski on 15.05.2022.
//

import SwiftUI


struct UserRowView: View {
    
    var person: Person
    
    var body: some View {
        HStack {
            AsyncImage(url: person.profileURL) { image in
                image
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            VStack(alignment: .leading) {
                Text("\(person.firstName) \(person.lastname)")
                    .font(.headline)
                Text(person.email)
                    .font(.subheadline)
            }
        }
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person(id: 0, email: "email@example.com", firstName: "Firstname", lastname: "LastName", avatarURL: "")
        UserRowView(person: person)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
