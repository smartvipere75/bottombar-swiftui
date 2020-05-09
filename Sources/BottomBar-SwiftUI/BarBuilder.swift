//
//  BarBuilder.swift
//  
//
//  Created by Markus Pfeifer on 09.05.20.
//

import Foundation


@_functionBuilder
public struct BarBuilder{
    
    
    static func buildBlock(_ items: BottomBarItem...) -> [BottomBarItem]{
        items
    }
    
    
}
