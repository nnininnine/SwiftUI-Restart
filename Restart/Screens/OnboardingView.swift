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
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)

      VStack(spacing: 20) {
        // MARK: Header

        Spacer()
        VStack(spacing: 0) {
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundColor(.white)

          Text("""
          It's not how much we give but
          how much love we put into giving.
          """)
          .font(.title3)
          .fontWeight(.light)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        } //: Header

        // MARK: Center

        ZStack {
          CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
          Image("character-1")
            .resizable()
            .scaledToFit()
        } //: Center

        Spacer()

        // MARK: Footer

        ZStack {
          // Parts of the custom button

          // 1. background (static)
          Capsule()
            .fill(Color.white.opacity(0.2))

          Capsule()
            .fill(Color.white.opacity(0.2))
            .padding(8)

          // 2. call-to-action (static)

          Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .offset(x: 20)

          // 3. capsule (dynamic width)
          HStack {
            Capsule()
              .fill(Color("ColorRed"))
              .frame(width: 80)
            Spacer()
          }

          // 4. circle (draggable)
          HStack {
            ZStack {
              Circle()
                .fill(Color("ColorRed"))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            }
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
              isOnboardingViewActive = false
            }

            Spacer()
          } //: HStack
        } //: Footer
        .frame(height: 80, alignment: .center)
        .padding()
      } //: VStack
    } //: ZStack
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
