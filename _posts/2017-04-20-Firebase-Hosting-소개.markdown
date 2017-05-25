---
layout: official_post
title:  "Firebase Hosting 소개"
date:   2017-04-20 00:00:00 +0900
categories: official_post
tags : [CLI, Command, firebase, Google, hosting, interface, line, 구글, 파이어베이스, 호스팅]
---

## Firebase Hosting 포스팅에 앞서

본 카테고리는 작년부터 구글이 밀고 있는 Serverless인 Firebase의 `Hosting`에 관하여 다룬다.

일반적인 호스팅 서비스와는 다르게 정적 페이지만을 호스팅해주는 서비스로 각각 장단이 존재한다.

Firebase의 많은 서비스 중 `Hosting`에 대해 정리해본다.

> **참고** [Firebase 공식 사이트](https://firebase.google.com)

> **참고** [Firebase Korea Facebook Page](https://www.facebook.com/FirebaseKorea)

> **참고** [Firebase Korea Github](https://github.com/FirebaseKorea)

## Firebase Hosting 소개

<iframe width="720" height="405" src="https://www.youtube.com/embed/jsRVHeQd5kU" frameborder="0" allowfullscreen></iframe>

위의 동영상은 Firebase Hosting에 관하여 설명하는 공식 동영상이니 한 번 간단히 시청해보자.

Firebase 호스팅은 웹 앱에 대한 빠르고 안전한 정적 호스팅을 제공합니다.

정적 호스팅이란 Github Pages처럼 서버 사이드의 코드 없이 정적 데이터(예를 들면 HTML)과 같은 형태의 파일을 호스팅해준다는 말이다.

개인적으로는 Firebase의 Hosting을 이용해서 어떤 웹사이트를 구축하는 것보다 랜딩페이지를 만들어 간단히 서비스 소개하는 것에 더욱 어울리지 않나 싶다.

Firebase 홈페이지의 공식 설명은 아래와 같다.

> Firebase 호스팅은 개발자를 위한 프로덕션 등급 웹 콘텐츠 호스팅 서비스입니다. Firebase 호스팅을 사용하면 한 번의 명령으로 웹 앱과 정적 콘텐츠를 글로벌 콘텐츠 전송 네트워크(CDN)에 빠르고 손쉽게 배포할 수 있습니다.

위의 CDN에 대해서 궁금하다면 [위키피디아 CDN](https://ko.wikipedia.org/wiki/%EC%BD%98%ED%85%90%EC%B8%A0_%EC%A0%84%EC%86%A1_%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC)을 눌러 정의를 확인해보자.

결국 정리하자면 제작한 정적 웹 사이트를 직접 ISP에 배포하여 사이트를 빠르게 보여줄 수 있는 게 Firebase Hosting의 장점이라 할 수 있겠다.

#### 주요 기능

**보안 연결을 통해 제공**
오늘날의 웹에서 가장 중요한 과제는 바로 보안입니다. Firebase 호스팅은 별도의 구성 없이 SSL을 기본적으로 제공하여 콘텐츠를 항상 안전하게 전송합니다.

**빠른 콘텐츠 전송**
업로드하는 각 파일이 전 세계 CDN 에지의 SSD에 캐싱되므로 사용자가 어디에 있든 빠르게 콘텐츠를 전달합니다.

**신속한 배포**
Firebase CLI가 불과 몇 초만에 앱을 궤도에 올려 드립니다. 명령줄 도구로 빌드 프로세스에 배포 타겟을 손쉽게 추가할 수 있습니다.

**클릭 한 번으로 롤백**	빠른 배포도 좋지만 실수를 빠르게 되돌릴 수 있다면 더 좋을 것입니다. Firebase 호스팅은 완벽한 버전 관리 및 릴리스 관리를 제공하며 클릭 한 번으로 롤백이 가능합니다.

위와 같은 장점이 있지만 먼저 맛보기로 몇 몇 스크린샷을 보자.

![](http://cfile22.uf.tistory.com/image/232A3B4858F8230A06CD65)

**신속한 배포** 항목에 CLI 얘기가 있다.

위의 스크린샷처럼 터미널에서 배포를 하는데 형상 관리도 소스트리와 같은 GUI 형태로 배포하는데, 그 구글에서 배포를 CLI로 한다는 게 조금 의문이 든다.

물론 CLI로 하면서 로컬 환경에 있는 프로젝트를 손쉽게 접근할 수 있다는 장점은 있겠지만 서도...

언젠가 업데이트 되리라 기대한다.

![](http://cfile26.uf.tistory.com/image/236E6B4858F8230A021724)

**클릭 한 번으로 롤백** 의 기능을 수행하는 페이지다.

클릭하면 바로 해당 배포 시점을 선택할 수 있다.

문제는 해당 프로젝트에서 어떤 변경사항이 있었는지 파일을 확인할 수가 없다는 것이다.

결국 Github와 연계하여 형상 관리 또한 잊지 말아야 한다.

특정 `release` 브랜치를 이용하여 배포 날짜를 라벨링하는 것도 하나의 방법이 될 수 있겠다.

#### 작동 원리

아래는 Firebase 공식 페이지에 나오는 작동원리이다.

> Firebase 호스팅은 최신형 웹 개발자를 위해 개발되었습니다. Angular 등의 프런트 엔드 JavaScript 프레임워크 및 Jekyll 등의 정적 생성기 도구가 부상하면서 정적 사이트의 기능이 점점 커지고 있습니다. 간단한 앱 방문 페이지를 배포하든 복잡한 미래형 웹 앱을 배포하든, Firebase 호스팅은 정적 웹사이트를 배포하고 관리하는 데 특화된 인프라, 기능, 도구를 제공합니다.

>Firebase 호스팅은 프로젝트에 firebaseapp.com 도메인의 하위 도메인을 제공합니다. Firebase CLI를 사용하여 컴퓨터의 로컬 디렉토리에 있는 파일을 호스팅 서버에 배포할 수 있습니다. 이러한 파일은 글로벌 CDN 중 사용자와 가장 가까운 에지 서버로부터 SSL 연결을 통해 제공됩니다.

>Firebase 호스팅은 정적 콘텐츠 호스팅뿐 아니라 정교한 미래형 웹 앱을 개발하는 데 필요한 간단한 구성 옵션을 제공합니다. 개발자는 손쉽게 클라이언트측 라우팅 URL을 수정하거나 맞춤 헤더를 설정할 수 있습니다.
사이트를 프로덕션 단계로 운영할 준비가 끝났으면 자체 도메인 이름을 Firebase 호스팅에 연결할 수 있습니다. 도메인의 SSL 인증서가 자동으로 발급되므로 모든 콘텐츠가 안전하게 제공됩니다.

단순히 Firebase에 대해서 설명하는 건 공식 홈페이지가 최고이니, 실제 실습을 자세히 명세해보는 방향으로 포스팅을 작성해야 겠다.
