//
//  CircleGroupView.swift
//  Restart
//
//  Created by Nuttapon Buaban on 7/7/2565 BE.
//

import SwiftUI

struct CircleGroupView: View {
  // MARK: Properties

  @State var shapeColor: Color
  @State var shapeOpacity: Double

  // MARK: Body

  var body: some View {
    ZStack {
      Circle()
        .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
        .frame(width: 260, height: 260, alignment: .center)
      Circle()
        .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
        .frame(width: 260, height: 260, alignment: .center)
    } //: ZStack
  }
}

struct CircleGroupView_Previews: PreviewProvider {
  static var previews: some View {
    CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
      .preferredColorScheme(.dark)
  }
}
