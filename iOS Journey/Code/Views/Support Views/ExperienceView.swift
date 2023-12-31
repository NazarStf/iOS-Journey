//
//  ExperienceView.swift
//  iOS Journey
//
//  Created by NazarStf on 31.07.2023.
//

import SwiftUI

struct ExperienceView: View {
	
	// MARK: Variables
	
	var experience: Experience
	
	// MARK: Views
    var body: some View {
		VStack(alignment: .leading) {
			Circle()
				.frame(width: 10, height: 10)
				.opacity(0.65)
			
			HStack {
				RoundedRectangle(cornerRadius: 8)
					.frame(width: 3)
					.padding(.leading, 3)
				
				VStack(alignment: .leading) {
					
					Text(experience.role)
						.fontWeight(.semibold)
						.font(.headline)
					
					Text(experience.companyName)
						.font(.caption)
						.fontWeight(.medium)
						.opacity(0.75)
						.padding(.top, 4)
					
					Text(experience.duration)
						.font(.caption)
						.fontWeight(.medium)
						.opacity(0.45)
						.padding(.top, 14)
				}
				.padding(.leading, 16)
			}
			.padding(.top, 8)
		}
		.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
		ExperienceView(experience: AppModel().portfolio.experiences[0])
			.padding(24)
    }
}
