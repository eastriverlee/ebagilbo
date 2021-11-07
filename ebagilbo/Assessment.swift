//
//  Assessment.swift
//  ebagilbo
//
//  Created by dan lee on 2021/11/03.
//

import Foundation

enum Journalism: Character, CaseIterable {
	case yellow = "💩"
	case quote = "🦜"
	case fake = "😈"
	case propaganda = "📣"
	case foodForThought = "🤔"
	case good = "❤️"
}

class Assessment {
	var dateCreated: Date
	let article: Article
	var journalism: Journalism
	init(_ article: Article, _ journalism: Journalism) {
		self.dateCreated = Date()
		self.article = article
		self.journalism = journalism
	}
}
