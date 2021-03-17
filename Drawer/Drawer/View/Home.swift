//
//  Home.swift
//  Drawer
//
//  Created by Renatazip on 15.03.2021.
//

import SwiftUI

struct Home: View {
    
    // Hiding tab Bar...
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @StateObject var menuData = MenuViewModel()
    
    @Namespace var animation
    
    var body: some View {
        
        HStack(spacing: 0){
            //Drawer And Main View...
            
            //Drawer
            Drawer(animation: animation)
            
            // Main View
            TabView{
                
                Catalogue()
                    .tag("Catalogue")
                
                Your_Orders()
                    .tag("Your Orders")
                
                Your_University_pass()
                    .tag("Your university pass")
                
                Apple_Map()
                    .tag("Apple Map")
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        // Max Frame...
        .frame(width: UIScreen.main.bounds.width)
        // Moving View
        .offset(x: menuData.showDrawer ? 125 : -125)
        .overlay(
            
            ZStack{
                
                if !menuData.showDrawer{
                    
                    DrawerCloseButton(animation: animation)
                        .padding()
                }
            },
            alignment: .topLeading
        )
        .environmentObject(menuData)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
