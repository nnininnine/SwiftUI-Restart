//
//  HomeView.swift
//  Restart
//
//  Created by Nuttapon Buaban on 1/6/2565 BE.
//

import SwiftUI

struct HomeView: View {
  // MARK: Properties

  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

  @State private var isAnimating: Bool = false

  // MARK: Body

  var body: some View {
    VStack(spacing: 20) {
      // MARK: Header

      Spacer()

      ZStack {
        CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)

        Image("character-2")
          .resizable()
          .scaledToFit()
          .padding()
          .offset(y: isAnimating ? 35 : -35)
          .animation(.easeInOut(duration: 4).repeatForever(), value: isAnimating)
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
        withAnimation {
          isOnboardingViewActive = true
        }
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
    .onAppear(perform: {
      DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
        isAnimating = true
      }
    })
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
