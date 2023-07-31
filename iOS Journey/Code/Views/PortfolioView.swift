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
					
				}
				.padding(24)
			}
		}
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
			.colorScheme(.dark)
    }
}
