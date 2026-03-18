# Toss 자재관리 시스템

Node.js + MariaDB 기반 자재 관리 웹 애플리케이션입니다.

## 기술 스택

- **Backend**: Node.js, Express
- **Database**: MariaDB (MySQL)
- **Frontend**: HTML, CSS (Template 방식)

## 폴더 구조

```
Toss자재관리/
├── server.js
├── init.sql
├── package.json
├── static/
│   ├── style.css
│   └── images/
│       └── tossbank-logo.png
└── templates/
    ├── material-list.html
    ├── material-write.html
    ├── material-detail.html
    ├── material-edit.html
    └── material-message.html
```

## 실행 방법

### 1. 패키지 설치
```bash
npm install
```

### 2. 데이터베이스 설정
MariaDB에서 `init.sql` 실행:
```bash
mysql -u root < init.sql
```

DB 접속 정보 (`server.js` 기준):
| 항목 | 값 |
|------|-----|
| host | localhost |
| database | testdb |
| user | testuser |
| password | 1234 |

### 3. 서버 실행
```bash
node server.js
```

### 4. 브라우저 접속
```
http://localhost:3000
```

## 주요 기능

- 자재 목록 조회
- 자재 등록
- 자재 상세 조회
- 자재 수정
- 자재 삭제
