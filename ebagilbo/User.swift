//
//  User.swift
//  ebagilbo
//
//  Created by dan lee on 2021/11/03.
//

import Foundation

enum Authority {
	case review
	case assess
	case comment
	case write
	case repair
	case correct
}

func upload(_ article: Article)
{
}

class User {
	let id: UInt64
	let dateCreated: Date
	var name: String
	var phoneNumber: String
	var email: String
	var portrait: String
	var lastAssessment: Assessment?
	var trustworthy: Int = 0
	
	var authority: Authority = .review
	var isBanned: Bool = false
	init(_ name: String, phoneNumber: String, email: String = "", portrait: String = "") {
		//TODO: get id assigned from server
		self.id = 0
		
		self.dateCreated = Date()
		self.name = name
		self.phoneNumber = phoneNumber
		self.email = email
		self.portrait = portrait
	}
	func assess(_ article: Article, _ journalism: Journalism) {
		lastAssessment = Assessment(article, journalism)
		article.assessers.insert(id)
		article.assessments[journalism.rawValue]! += 1
	}
	func read(_ article: Article) {
		article.readers.insert(id)
	}
	func write(_ article: Article) {
		upload(article)
	}
}
