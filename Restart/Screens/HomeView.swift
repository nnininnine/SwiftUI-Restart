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
      // MARK: Header

      Spacer()

      ZStack {
        Circle()
          .stroke(.black.opacity(0.1), lineWidth: 40)
          .frame(width: 260, height: 260, alignment: .center)
        Circle()
          .stroke(.black.opacity(0.1), lineWidth: 80)
          .frame(width: 260, height: 260, alignment: .center)

        Image("character-2")
          .resizable()
          .scaledToFit()
          .padding()
      } //: Header

      // MARK: Center

      Text("The time that leads to mastery is dependent on the intensity of our focus.")
        .font(.title3)
        .fontWeight(.light)
        .foregroundColor(.secondary)
        .multilineTextAlignment(.center)
        .padding()

      // MARK: Footer

      Spacer()

      Button(action: {
        isOnboardingViewActive = true
      }) {
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
          .imageScale(.large)

        Text("Restart")
          .font(.system(.title3, design: .rounded))
          .fontWeight(.bold)
      }
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      .controlSize(.large)
    } // VStack
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
