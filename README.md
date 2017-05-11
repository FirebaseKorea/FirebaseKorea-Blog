# FirebaseKorea-Blog

이 프로젝트는 Firebase Korea의 커뮤니티 페이지인 [Firebase Korea](https://firebasekorea.io/)를 구성하는 정적 웹 사이트 프로젝트입니다.

우리의 커뮤니티인 Firebase Korea는 Jekyll로 구현되며, Markdown 기반으로 포스트를 작성합니다.

웹 상에 배포는 **Firebase** 의 정적 호스팅 기능인 **Hosting** 을 활용하여 SSL이 적용된 채로 배포됩니다.

저희와 함께 하고자하는 분들은 아래의 방법을 통해 연락해주시면 감사하겠습니다.

* Email : namhoon kim, mydamyda1032@gmail.com
* Facebook Group : [Firebase Korea Group](https://www.facebook.com/groups/firebasekorea.io)
* Facebook Page : [Firebase Korea Page](https://www.facebook.com/FirebaseKorea)

확인 후 최대한 빠르게 답변해드리도록 하겠습니다.

## Organizer

**김남훈**

* 이메일 : mydamyda1032@gmail.com
* 블로그 : http://namhoon.kim/
* Github : https://github.com/mydamyda
* Facebook : https://www.facebook.com/FGMyk
* LinkedIn : https://www.linkedin.com/in/namhoon-kim-b912a913a/

**조민재**

* 이메일: alswo2722@uos.ac.kr
* 블로그: http://minjaejo.github.io
* Github: https://github.com/minjaeJo
* Facebook: https://www.facebook.com/alswo2722

**허성욱**

* email: wooklym@gmail.com
* facebook: https://www.facebook.com/hswook93
* github: https://github.com/wooklym

## 커뮤니티 개발 환경
**Language**
* HTML
* CSS
* Javascript
* Markdown
* [Ruby](https://www.ruby-lang.org/en/)  ver 2.4.1

**Tools**
* [Jekyll](https://jekyllrb.com/) ver 3.4.3

**BaaS**
* [Firebase Hosting](https://firebase.google.com/)

## Gems
```{ruby id:"j2ad9jtg"}
gem "jekyll", "3.4.3"

gem "minima", "~> 2.0"

group :jekyll_plugins do
   gem "jekyll-feed", "~> 0.6"
   gem 'jekyll-paginate', group: :jekyll_plugins
end
```
## Category List
이 카테고리는 HTML과 Jekyll 내부의 Front-matter에 동일하게 적용된다.

파이어베이스 관련 포스트 : **our_post**
파이어베이스 오픈소스 : **our_open_source**
파이어베이스 공식 블로그 번역 : **official_post**
파이어베이스 공식 오픈소스 한글화 : **official_open_source**
파이어베이스 공식 문서 한글화 : **document**

## 패치노트
2017.05.04 : Readme 작성
