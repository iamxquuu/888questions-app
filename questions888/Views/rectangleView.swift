//
//  rectangleView.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import SwiftUI

struct rectangleView: View {
    
    
    
    var cornerRadius: Int
    var height: Int
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
            .padding(.horizontal, 30)
            .frame(height: CGFloat(height))
            
            
            
            
    }
}

struct rectangleView_Previews: PreviewProvider {
    static var previews: some View {
        rectangleView(cornerRadius: 15, height: 60)
    }
}
