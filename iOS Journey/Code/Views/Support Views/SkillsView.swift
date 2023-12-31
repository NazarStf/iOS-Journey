//
//  SkillsView.swift
//  iOS Journey
//
//  Created by NazarStf on 31.07.2023.
//

import SwiftUI

struct SkillsView: View {
	
	// MARK: Variables
	
	var skills: [Skill]
	var width: CGFloat
	
	@State var showSkills = true
	
	// MARK: Views
    var body: some View {
		VStack(alignment: .leading) {
			HStack(spacing: 16) {
				Text("Skills")
					.fontWeight(.bold)
					.font(.title3)
					.opacity(0.9)
				
				Button {
					withAnimation(.easeInOut(duration: 0.35)) {
						showSkills.toggle()
					}
				} label: {
					Image(systemName: "chevron.up")
						.font(.system(size: 18, weight: .medium))
						.rotationEffect(self.showSkills ? .zero : .degrees(180))
				}
				.buttonStyle(PlainButtonStyle())
			}
			
			if(showSkills) {
				LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
					ForEach(skills) { skill in
						SkillView(skill: skill, width: width / 3 - 15)
					}
				}
				.padding(.top, 38)
			}
		}
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
		GeometryReader { proxy in
			SkillsView(skills: AppModel().portfolio.skills, width: 360)
				.padding(24)
		}
    }
}
