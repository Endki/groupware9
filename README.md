## 의의

그룹웨어 기능을 추가적으로 구현하면서 개발실력을 키우기 위해 프로젝트를 진행한다.

https://forest71.tistory.com/163 님 감사합니다.





## 그룹웨어 ##

본 샘플은 Spring 4 + MyBatis 3 + MariaDB (Maven) 기반으로  제작한 웹 기반 그룹웨어이다.

웹 프로젝트 템플릿인 [Project9](https://github.com/gujc71/project9/)을 이용하여, 웹 개발을 쉽게 할 수 있다는 예제로 제작 중이다. 

간단한 화면 설계는 [여기](https://docs.google.com/presentation/d/1QcCr2WwDNhcEbF3v9Kr_KQGe0ohOSXVOW_gneKO7VBw/edit#slide=id.p)서 확인할 수 있다.

### 주요 구현 기능 ###
- 일정: 월간일정
- 결제: 기안하기, 결재 받을 문서, 결재 할 문서
- 전자우편: 새메일, 받은 메일, 보낸 메일
- 게시판 ([Project9](https://github.com/gujc71/project9/))



### 추가개발기능 (예정)

- 개인기능 (개인 업무, 개인 자료, 개인 블로그, 그룹관리, 개인 아이디어 , 명함 관리, 방문일지)
- 업무기능 ( 프로젝트 관리, 출근부, 전화메모, 메일, 쪽지, 노트, 웹디스크, 작업관리 , 일정관리 )
- 공유기능 ( 게시판, 커뮤니티 )
- 사전기능 ( 지식사전, 용어 사전 )
- 상담기능 ( 상담관리, 투표, 만족도 조사, 질문과 답변, 설문조사 )
- 개선기능 ( 아이디어 공유, 동아리 활동 )
- 편의기능 ( 각종 사이트 리다이렉트 )



### 개발 환경 ###
    Programming Language - Java 1.8
    IDE - Eclipse
    DB - MariaDB 
    Framework - MyBatis, Spring 4
    Build Tool - Maven

### 설치 ###
- MariaDB에 데이터 베이스(groupware9)를 생성하고 tables.sql, tableData.sql를 실행하여 테이블과 데이터를 생성한다.
- applicationContext.xml에 적절한 접속 정보를 입력한다.
- 톰캣이나 이클립스에서 groupware9를 실행
- http://localhost:8080/groupware9/ 로 접속
- ID/PW: admin/admin, user1/user1, user2/user2 ...

### Branches ###
- master: 연습용
- useful: 버그 수정, 기븐 보완을 거쳐 제법 유용한 버전. 작성중 ...

### License ###
GPL v3

  



