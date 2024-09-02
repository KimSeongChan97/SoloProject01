
개인 프로젝트 작업 페이지 입니다

개인 미니 프로젝트 홈페이지 만들기 

# SoloProject01

## 프로젝트 개요 (Overview)

이 프로젝트는 [개인 미니 홈페이지 만들기]으로, 
[ "소셜 네트워크 서비스", "To-Do 리스트 웹 애플리케이션" 등]을 목표로 개발되었습니다. 
이 프로젝트는 [특정 문제나 요구 사항]을 해결하기 위해 만들어졌으며, 
사용자가 [프로젝트의 주요 목적이나 기능]을 경험할 수 있도록 설계되었습니다.

## 기술 스택 (Tech Stack)

- **Back-End**: Java
- **Front-End**: HTML, CSS, JavaScript(JQuery, Ajax)
- **Database**: MySQL(Oracle DB)
- **Version Control**: Git, GitHub


## 주요 기능 (Key Features)

- **사용자 인증 및 권한 관리**: 회원 가입, 로그인, 권한에 따른 페이지 접근 제어
- **CRUD 기능**: [프로젝트와 관련된 주요 데이터]에 대한 생성, 읽기, 수정, 삭제 기능
- **검색 및 필터링**: [검색 및 필터링이 적용되는 데이터 종류]에 대한 검색 및 필터링 기능
- **반응형 UI**: 다양한 디바이스에서 최적화된 사용자 경험 제공

## 프로젝트 구조 (Project Structure)

TREE 구조 입니다.

```plaintext
└── main
    ├── java
    │   └── com
    │       └── example
    │           ├── dao
    │           │   ├── BoardDAO.java
    │           │   └── MemberDAO.java
    │           └── dto
    │               ├── BoardDTO.java
    │               └── MemberDTO.java
    ├── SQL
    │   └── register_hr.sql
    └── webapp
        ├── bbs.json
        ├── board.html
        ├── board_write.html
        ├── css
        │   └── style.css
        ├── images (image files)
        ├── index.html
        ├── js
        │   ├── jquery.tmpl.min.js
        │   └── script.js
        ├── json
        │   └── bbs.json
        ├── json01.json
        ├── json02.json
        ├── JSP
        │   ├── delete_post.jsp
        │   ├── edit_post.jsp
        │   ├── getPosts.jsp
        │   ├── login.jsp
        │   ├── logout.jsp
        │   ├── mypage.jsp
        │   ├── navbar.jsp
        │   └── save_post.jsp
        ├── login.html
        ├── login_process.jsp
        ├── logout.jsp
        ├── META-INF
        │   └── MANIFEST.MF
        ├── mypage.html
        ├── navbar.html
        ├── register.html
        ├── register_process.jsp
        ├── WEB-INF
        │   ├── lib
        │   │   ├── jstl-1.2.jar
        │   │   └── standard-1.1.2.jar
        │   └── web.xml
        └── write_process.jsp
```



