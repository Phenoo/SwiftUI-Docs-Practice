//
//  CategoryRow.swift
//  SwiftDocsTutorial
//
//  Created by Eze Chidera Paschal on 15/07/2024.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName)
                .font(.headline)
                .padding(.top, 6)
                .padding(.leading, 16)
           
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }

            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmark = ModelData().landmarks
    
    return CategoryRow(
        categoryName: landmark[0].category.rawValue, items: Array(landmark.prefix(3))    )
}
