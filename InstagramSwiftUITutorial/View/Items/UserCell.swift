//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Ivan on 5/29/22.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // MARK: Image
            Image("background-colors")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // MARK: User name, full name
            VStack(alignment: .leading) {
                Text("batman")
                    .font(
                        .system(
                            size: 14, weight: .semibold
                        )
                    )
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
