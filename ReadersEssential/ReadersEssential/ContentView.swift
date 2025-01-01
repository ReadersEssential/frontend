//
//  ContentView.swift
//  ReadersEssential
//
//  Created by Main Admin on 12/31/24.
//

import SwiftUI

//struct name View format, in that you can have anything
struct ReadersEssentialFirstView: View{
    var body: some View{
        Text("Readers Essential")
            .font(.title)
            .fontDesign(Font.Design.serif)
            .fontWeight(Font.Weight.light)
            .frame(
                width: CGFloat.pi*230,
                height: CGFloat.pi*230,
                alignment: .top
            )
    }
}

#Preview {
    ReadersEssentialFirstView()
}
