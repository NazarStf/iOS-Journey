//
//  ContentView.swift
//  iOS Journey
//
//  Created by NazarStf on 31.07.2023.
//

import SwiftUI

struct PortfolioView: View {
	
	// MARK: Variables
	var appModel: AppModel = AppModel()
	
	// MARK: Views
    var body: some View {
		ZStack {
			Color(UIColor.systemBackground)
				.ignoresSafeArea()
			
			ScrollView(.vertical, showsIndicators: false) {
				VStack(alignment: .leading) {
					
					HeaderView(appModel: appModel)
					
					SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
						.padding(.top, 32)
					
					ExperiencesView(experiences: appModel.portfolio.experiences)
						.padding(.top, 42)
				}
				.padding(24)
			}
		}
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
