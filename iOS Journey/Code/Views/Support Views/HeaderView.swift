//
//  HeaderView.swift
//  iOS Journey
//
//  Created by NazarStf on 31.07.2023.
//

import SwiftUI

struct HeaderView: View {
	
	// MARK: - Variables
	var appModel: AppModel
	
	// MARK: - Views
    var body: some View {
		VStack {
			Image("self")
				.resizable()
				.frame(width: 100, height: 100)
				.padding(5)
				.background(
					Circle()
						.opacity(0.7)
						.shadow(radius: 5)
				)
			Text(appModel.portfolio.name)
				.font(.title2)
				.fontWeight(.semibold)
				.padding(.top, 8)
			
			Text(appModel.portfolio.role)
				.font(.title3)
				.fontWeight(.light)
				.opacity(0.7)
				.padding(.top, -8)
			
			HStack {
				Image(systemName: "location.fill")
					.font(.system(size: 18, weight: .semibold))
				
				Text(appModel.portfolio.location)
					.font(.title3)
			}
			.padding(.top, 10)
			.opacity(0.4)
			
			Text(appModel.portfolio.description)
				.font(.body)
				.opacity(0.7)
				.padding(.top, 24)
				.lineSpacing(5)
		}
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
			.padding(24)
    }
}
