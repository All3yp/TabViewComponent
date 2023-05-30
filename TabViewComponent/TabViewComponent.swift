//
//  TabViewComponent.swift
//  TabViewComponent
//
//  Created by Alley Pereira on 29/05/23.
//

import SwiftUI

struct TabViewComponent: Identifiable, Hashable {
    let id: Int
    let text: String
    let image: String
    let view: AnyView
    
    init<T: View>(id: Int, text: String, image: String, view: T) {
        self.id = id
        self.text = text
        self.image = image
        self.view = AnyView(view)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: TabViewComponent, rhs: TabViewComponent) -> Bool {
        lhs.id == rhs.id
    }
}
