//
//  ArticleView.swift
//  ebagilbo
//
//  Created by dan lee on 2021/11/04.
//

import SwiftUI

struct AuthorView: View {
    var body: some View {
		HStack {
			Image("").foregroundColor(.blue)
		}
	}
}

struct ArticleView: View {
	var article: Article
	init(_ article: Article) {
		self.article = article
	}
    var body: some View {
		ScrollView {
			LazyVStack(alignment: .leading) {
				Text(article.title).bold(24).padding(.bottom).padding(.top, 8)
				Text(article.summary.sentence).medium(16).opacity(0.8)
				Divider().padding(.bottom, 32)
				Text(article.body).light(16).opacity(0.6)
			}.padding()
		}
    }
}
let article = Article(0,
					  summary: _5W1H(when: Datetime(year: 2021, month: 11, day: 3), where: "헝가리", who: "문재인 대통령과 아데르 야노쉬 헝가리 대통령", why: "양국 관계 증진 및 경제 협력", what: "한·헝가리 관계", how: "전략적 동반자 관계로 격상에 합의했"),
					  title: "한·헝가리 정상회담…전략적 동반자 관계 격상 합의했다",
					  body: """
헝가리를 국빈 방문 중인 문재인 대통령은 3일(현지시각) 아데르 야노쉬 헝가리 대통령과 정상회담을 갖고 두 나라 관계 증진 방안을 비롯해 공동 관심사에 대해 폭넓게 논의했다.

문 대통령은 이날 오전 10시22분부터 11시17분까지 헝가리 부다페스트 대통령궁에서 한·헝가리 정상회담을 갖고 한반도 정세, 기후변화 대응, 코로나19 이후 경제 회복 방안 등을 논의했다.

한국 대통령의 헝가리 방문은 2001년 김대중 대통령 이후 20년 만이다.

두 정상은 양국이 1989년 첫 외교 관계를 수립한 이후 우호 협력 관계를 꾸준히 발전시켜 온 것을 평가했다. 헝가리는 우리의 첫 구(舊) 동구권 수교국으로서 북방외교의 출발점이 된 국가라는 데 의미가 있다.

문 대통령과 아데르 대통령은 특히 두 나라 관계를 전략적 동반자 관계로 격상하는 데 합의했다.

문 대통령과 아데르 대통령은 지난해 코로나19 상황 속에도 양국 교역이 사상 최고치(약 36억 달러)를 기록한 것을 평가했다.

두 정상은 한국 기업들이 헝가리에 전기차 배터리 분야 투자를 확대하고 있는 것을 평가했다. SK는 헝가리 코마롬 시(市)와 이반차 시(市) 등 총 3개의 배터리 공장을 운영 또는 건설 중이다.

문 대통령과 아데르 대통령은 기후변화 대응, 코로나19 이후 경제 회복 등 글로벌 주요 이슈에 대해 의견을 교환했다. 탄소중립과 디지털 전환의 성공으로 지속가능한 회복을 실현하는 데 공동노력키로 했다.

아데르 대통령은 한반도 항구적 평화 정착을 위한 정부 노력에 변함없는 지지 의사를 확인했다.

한편 헝가리는 동유럽 내 지역 협의체인 비세그라드 그룹(V4·헝가리·체코·슬로바키아·폴란드) 의장국이다. 창설 30주년을 맞은 V4는 유럽연합(EU) 내 최대 수출시장(약 168억달러)이자 2대 교역대상(총 135억달러)으로 전략적 가치가 높다. 자동차, 전기차 배터리 분야에 650여개 우리 기업이 진출해 있다. EU 진출을 위한 교두보로 평가된다.

문 대통령은 방문 기간 V4 그룹 국가들과의 개별 정상회담을 갖고 협력 강화 방안을 집중 논의할 예정이다.
""")
struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
		ArticleView(article)
    }
}
