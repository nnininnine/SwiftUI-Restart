//
//  HomeView.swift
//  Restart
//
//  Created by Nuttapon Buaban on 1/6/2565 BE.
//

import SwiftUI

struct HomeView: View {
  // MARK: Property

  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

  // MARK: Body

  var body: some View {
    VStack(spacing: 20) {
      Text("Home")
        .font(.largeTitle)

      Button(action: {
        // action
        isOnboardingViewActive = true
      }) {
        Text("Restart")
      }
    } // VStack
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
