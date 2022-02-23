//
//  BarBuilder.swift
//  
//
//  Created by Markus Pfeifer on 09.05.20.
//

import Foundation


@resultBuilder
public struct BarBuilder{}


public extension BarBuilder{
    
    
    static func buildBlock(_ items: BottomBarItem...) -> [BottomBarItem]{
        items
    }
    
    
}
