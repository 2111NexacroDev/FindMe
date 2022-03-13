# FindMe
- 지하철 온라인 분실물 센터
- 프로젝트 참여자 / 권진실(팀장), 김선교(부팀장), 김아름, 이수연, 장민수, 전장영 
<br>

## 목차
1. [프로젝트 개요](#프로젝트-개요)
2. [설계의 주안점](#설계의-주안점)
3. [사용기술 및 개발환경](#사용기술-및-개발환경)
4. [프로젝트 기능 구현](#프로젝트-기능-구현)
5. [주요기능](#주요기능)
6. [Document](#Document)
<br>

## 프로젝트 개요
- 지하철 분실물과 같은 특수한 장소에 최적화된 보다 편리한 검색기능 제공
- 기존 타사이트에서 제공하는 분실물 찾기, 습득물 신고 기능 외 습득물택배서비스, 경매, 마일리지 서비스 등
사이트를 활성화 시키고 습득물 신고를 독려하는 서비스 제공 
- 분실물센터에 경매 기능을 결합하여 모든 사용자(분실물 센터, 습득자, 분실자, 경매이용자)의 편익을 극대화하고자 함
<br>

## 설계의 주안점
- UI와 기능 모두 직관적인 사이트를 제작하여 사용자 경험을 극대화하고자 함. 
- AJAX 비동기 통신으로 사이트 이용 체감 속도 향상
<br>

## 사용기술 및 개발환경
|Area|Tools|
|---|---|
|Server|Apache Tomcat|
|Coding Tool|Eclipse, VS CODE|
|언어|HTML, CSS, JavaScript, jQuery, JAVA|
|Database|Oracle|


![tools](https://user-images.githubusercontent.com/40844404/157788090-eb8c89c0-e109-4951-8ede-cb5afc0877ef.jpg)
<br><br>

## 프로젝트 기능 구현

### 권진실
+ 공통레이아웃
  - 프론트 페이지 구성
  - 습득물/분실물/경매 상세 AJAX조회
+ 경매 페이지
  - 좋아요 기능
  - 경매물품페이지(등록/삭제)
  - 경매 타이머세팅
  - 낙찰자 결제 기능

### 김선교
+ Found(습득물) 페이지
  - 습득물 신고 처리
  - 습득물 게시판
    * 게시물 내용 수정
    * 게시물 택배서비스 신청
    * 게시물 단일&복합 조건 검색
+ 공통 페이징 처리

### 김아름
+ 회원 기능 전반
  - 로그인
  - 로그아웃
  - 회원가입
  - 회원 탈퇴
  - 회원 정보 수정
  - 아이디 찾기
  - 비밀번호 찾기

### 이수연
+ 경매 페이지
  - 경매 리스트 목록
  - 제품종류,습득날자,현재최고입찰가 조회
+ 관리자페이지
  - 경매리스트 상태 수정
+ 마이페이지 
  - 경매 참여 이력

### 장민수
+ 마이페이지
  - 습득물 신고 이력
  - 분실물 신고 이력
  - 마일리지 적립 내역
  - 마일리지 사용 내역
  - 택배 서비스 신청 내역

### 전장영
+ lost(분실물) 페이지
  - 분실물 조회
  - 분실물 검색
+ found(습득물) 
  - 해시태그 추출, 워드클라우드 생성

<br>

## 주요기능

**메인페이지**

![main](https://user-images.githubusercontent.com/40844404/158043034-c0cd3286-d3b2-49b5-a6ce-d312a64ef189.jpg)

**분실물**

+ 분실물 신고

![findme_lost_report](https://user-images.githubusercontent.com/97657886/157793255-9c263cfc-7293-4668-80d7-628ac68117f6.png)

+ 분실물 검색

![findme_lost_list](https://user-images.githubusercontent.com/97657886/157793261-aa2b0cf9-c0a0-4bf6-9150-5627798e274a.png)

**습득물**

+ 습득물 등록

![findme_found_report](https://user-images.githubusercontent.com/97657886/157815016-bacfaaa8-6bb8-42ea-a89e-119d90eb6c3b.png)

+ 습득물 수정

![findme_post_modify](https://user-images.githubusercontent.com/97657886/157815207-a348f507-2305-47de-8d3b-d1004493deda.png)

**회원관리**

+ 로그인

![로그인폼](https://user-images.githubusercontent.com/97659389/157798509-bfb69302-b531-44c9-8718-24eeda8829dc.png)

+ 회원가입

![회원가입 폼](https://user-images.githubusercontent.com/97659389/157799343-07f66379-81e6-48ea-a8e7-0e26a99a99f3.png)

+ 정보수정

![정보수정](https://user-images.githubusercontent.com/97659389/157799315-710b3e24-6636-4784-9bcf-3eb4ab885e11.png)

+ 아이디, 비밀번호 찾기

![아이디찾기](https://user-images.githubusercontent.com/97659389/157798755-e8a6f5d1-e643-447f-9e2b-77b2c4f0613e.png)
![비밀번호찾기](https://user-images.githubusercontent.com/97659389/157799493-35eae5ff-314b-4f8f-94f8-f13f23fce244.png)

+ 탈퇴

![회원탈퇴](https://user-images.githubusercontent.com/97659389/157798774-4a449193-c1a3-4912-b4e0-18bab34ff381.png)

**습득물 경매**

+ 습득물 경매 입찰
<img width="100%" alt="옥션 리스트" src="https://user-images.githubusercontent.com/97710895/157823482-2e3a1a04-0d35-4820-9150-d1a246d21e61.png">

+ 습득물 낙찰
<img width="100%" alt="경매 참여 페이지" src="https://user-images.githubusercontent.com/97710895/157825156-0b3d33fb-8c3f-41b4-84af-e7f7be34a06f.png">

+ 경매물품 등록
<img width="100%" alt="경매물품 등록 페이지" src="https://user-images.githubusercontent.com/40844404/158043219-502eb288-c02c-4277-ac9b-a445ec1d995a.PNG">

**마일리지**
+ 마일리지 적립

![마일리지 적립내역](https://user-images.githubusercontent.com/97657567/158046648-cb02fa6f-ffb5-42de-a379-17f393a4ae31.png)

+ 마일리지 사용

![마일리지 사용내역](https://user-images.githubusercontent.com/97657567/158046610-18ca8149-4d70-4174-9fc9-e5dc4feb8b48.png)

**택배**
+ 택배 신청
+ 택배 조회

![택배서비스 신청내역](https://user-images.githubusercontent.com/97657567/158046687-439f567b-e715-4658-982d-983fda202d04.png)

## Document

+ USECASE

![FINDME_USECASE](https://user-images.githubusercontent.com/40844404/157806821-fe913830-afed-446e-aa7d-f86c72f6555d.jpg)

+ FLOW CHART

![flowchart](https://user-images.githubusercontent.com/40844404/158043354-0e33ea5c-c8d3-4c56-b36f-aa92df5f6c43.jpg)

+ ERD

![erd](https://user-images.githubusercontent.com/40844404/158043993-bdac4e13-d937-4015-b665-34b75300bb90.jpg)
