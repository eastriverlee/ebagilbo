//
//  Article.swift
//  ebagilbo
//
//  Created by dan lee on 2021/11/03.
//

import Foundation

enum Category {
	case local
	case national
	case international
}

enum ArticleKind {
	case fact
	case opinion
	case essay
}

enum Priority {
	case zeroth
	case first
	case second
	case third
}

enum Source {
	case unknown
	case anonymous
	case article(String)
	case informant(String)
	case publicData(String)
	case selfExperience(Date)
}

struct Datetime {
	var year: UInt16
	var month: UInt8
	var day: UInt8
}
extension Datetime: CustomStringConvertible {
	var description: String {
		"\(year).\(month < 10 ? "0" : "")\(month).\(day < 10 ? "0" : "")\(day)."
	}
}

class _5W1H {
	var when: Datetime
	var _where: String
	var who: String
	var what: String
	var how: String
	var why: String
	var sentence: String {
		return why.isEmpty ? "\(when) \(_where)에서 \(who.이가) \(what.을를) \(how)다" : "\(when) \(_where)에서 \(who.이가) \(why.을를) 위해 \(what.을를) \(how)다"
	}
	init(when: Datetime, where _where: String, who: String, why: String, what: String, how: String) {
		self.when = when
		self._where = _where
		self.who = who
		self.why = why
		self.what = what
		self.how = how
	}
}

class _4W1H: _5W1H {
	init(when: Datetime, where _where: String, who: String, what: String, how: String) {
		super.init(when: when, where: _where, who: who, why: "", what: what, how: how)
	}
}

class Article {
	let dateCreated: Date
	let dateEdited: Date
	let author: UInt64
	let priority: Priority = .third
	let source: Source = .unknown
	
	var assessments: [Character: Int] = [:]
	var title: String = ""
	var summary: _5W1H = _5W1H(when: Datetime(year: 0, month: 0, day: 0), where: "", who: "", why: "", what: "", how: "")
	var body: String = ""
	var category: Category = .local
	var kind: ArticleKind = .opinion
	var view: UInt64 = 0
	var copyright: Bool = false
	//TODO: replace to database
	var readers: Set<UInt64> = []
	var assessers: Set<UInt64> = []
	
	init(_ author: UInt64) {
		self.dateCreated = Date()
		self.dateEdited = dateCreated
		self.author = author
		for journalism in Journalism.allCases {
			self.assessments[journalism.rawValue] = 0
		}
	}
	convenience init(_ author: UInt64, summary: _5W1H, title: String, body: String, category: Category = .local, kind: ArticleKind = .opinion, view: UInt64 = 0) {
		self.init(author)
		self.summary = summary
		self.title = title
		self.body = body
		self.category = category
		self.kind = kind
		self.view = view
	}
}
