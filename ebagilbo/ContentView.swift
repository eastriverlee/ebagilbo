//
//  ContentView.swift
//  ebagilbo
//
//  Created by dan lee on 2021/11/02.
//

import SwiftUI

let keyColor = Color(red: 0.1, green: 0.1, blue: 0.8)

extension Text {
	func logo_chinese(_ size: CGFloat) -> some View {
		//self.font(.custom("MaruBuriOTF Bold", size: size))
		//self.font(.custom("Solmoe KimDaeGeonOTF Medium", size: size))//.foregroundColor(keyColor)
		self.font(.custom("HanWangMingBlack", size: size))//.foregroundColor(keyColor)
	}
	func logo_korean(_ size: CGFloat) -> some View {
		//self.font(.custom("MaruBuriOTF Bold", size: size))
		self.font(.custom("Solmoe KimDaeGeonOTF Medium", size: size))//.foregroundColor(keyColor)
	}
	func bold(_ size: CGFloat) -> some View {
		//self.fontWeight(.bold).font(.system(size: size)).lineSpacing(size*0.4)
		self.font(.custom("MaruBuriOTF Bold", size: size)).lineSpacing(size*0.4)
	}
	func medium(_ size: CGFloat) -> some View {
		self.fontWeight(.regular).font(.system(size: size)).lineSpacing(size*0.4)
	}
	func light(_ size: CGFloat) -> some View {
		self.fontWeight(.light).font(.system(size: size)).lineSpacing(size*0.4)
	}
}

struct ContentView: View {
    var body: some View {
		VStack(alignment: .leading, spacing: 0) {
			Text("李白一步EBAGILBO").logo_chinese(24)
			//Text("이백일보").logo_korean(24)
				.padding(.horizontal)
				.padding(.vertical, 8)
			Rectangle().fill(.gray).frame(maxHeight: 0.5)
			ArticleView(article)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
