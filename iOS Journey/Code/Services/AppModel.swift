//
//  AppModel.swift
//  iOS Journey
//
//  Created by NazarStf on 31.07.2023.
//

import Foundation

class AppModel: ObservableObject {
	var portfolio: Portfolio = Portfolio(name: "Nazar Stf.", role: "iOS Developer", description: "My passion lies in the intersection of technology and design, and I find Swift to be an exceptional tool that harmoniously unifies these two domains, making it particularly appealing to me.", location: "Ukraine 🇺🇦",
										 skills: [
											Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
											Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
											Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
											Skill(id: UUID().uuidString, skillName: "English", image: "ellipsis.bubble.fill"),
											Skill(id: UUID().uuidString, skillName: "Copywriting", image: "pencil"),
											Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays")
										 ],
										 experiences: [
											Experience(id: UUID().uuidString, companyName: "Developing my own training apps", role: "Beginner iOS developer", duration: "Aug 2023 - Present"),
											Experience(id: UUID().uuidString, companyName: "Completing training courses", role: "Beginner iOS developer", duration: "May 2023 - Aug 2023"),
											Experience(id: UUID().uuidString, companyName: "Learning Swift", role: "Beginner iOS developer", duration: "Mar 2023 - May 2023")
										 ])
}
