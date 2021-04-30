//
//  ContentView.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack(content: {
            VStack(content: {
                MapView()
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

