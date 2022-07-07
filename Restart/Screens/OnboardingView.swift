//
//  OnboardingView.swift
//  Restart
//
//  Created by Nuttapon Buaban on 1/6/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: Property

  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

  // MARK: Body

  var body: some View {
    VStack(spacing: 20) {
      Text("Onboarding")
        .font(.largeTitle)

      Button(action: {
        // action
        isOnboardingViewActive = false
      }) {
        Text("Start")
      }
    } //: VStack
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
