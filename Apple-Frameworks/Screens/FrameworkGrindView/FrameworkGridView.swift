//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by İsmail Kocaoglu on 26.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
   
                                
  
    
    var body: some View {
        NavigationView{
            
                List{
                    ForEach(MockData.frameworks) {framework in
                        NavigationLink(destination: FramworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView) ){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            
           
            .navigationTitle("Frameworks")
         
        }
        .accentColor(Color(.label))
      
       
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


