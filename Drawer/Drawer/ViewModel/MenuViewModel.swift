//
//  MenuModel.swift
//  Drawer
//
//  Created by Renatazip on 15.03.2021.
//

import SwiftUI

// Menu data...

class MenuViewModel : ObservableObject{
    
    //Default...
    @Published var selectedMenu = "Catalogue"
    
    @Published var showDrawer = false
}
