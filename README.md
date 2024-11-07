## 1. 개발환경 구축
### 1-1. 다운로드
 - anaconda
 - vscode

 ### 1-2. 아나콘다 세팅
 - conda env list                           (가상환경 목록 보기)
 - conda create -n developer python=3.11    (가상환경 생성)
 - conda activate developer                 (가상환경 접속)
 - pip list                                 (가상환경의 라이브러리 목록 보기)
 - pip install pandas                       (pandas 라이브러리 설치)
 - cls                                      (화면 클리어)

 ### 1-3. VSCODE 세팅 
 1. Extensions 설치
  - Python
  - Prettier
  - Python Extension Pack
  - Atom Material Theme
  - Atom Material Icons
 2. Settings
  - [Mouse Wheel Zoom] 켜기
 3. Thema 설정
 4. 아나콘다 가상환경 주입
  - [Ctrl] + [Shift] = [p] -> "Python: Select Interpreter" 클릭 후 
  "developer" 가상환경 클릭
  
### 1-4. 명령어 단축기
- [Ctrl] + [,] : Settings 열기
- [Ctrl] + [`] : 터미널 열기

## 2. 데이터베이스(atabase)
### 2-1. DBMS(데이터베이스 관리 시스템)
1. 관계형 DB(RDB)
  - 표(Table) 형태
  - MariaDB, Oracle, MySQL, PostgreSQL

2. NoSQL
  - 자유 형태
  - MongoDB

### 2-2. SQL (구조질의어)
  - DBMS에게 명령을 내리기 위한 언어
  - 예) SELECT * FROM tbl_user;

# 국가공인
#   - SQLD → SQL + DB
#   - ADsP → 데이터분석 + 머신러닝
#   - 리눅스마스터 1급 → 기초 리눅스

### 2-3. 설치 방법
  1. 로컬 설치(설치파일 다운로드 직접 설치)
  2. 로컬 도커
  3. 클라우드

## 3. 도커
  - 컨테이너 가상화 기술을 사용할 수 있는 프로그램
  - 컨테이너를 사용하기 위해서는 → 도커엔진 + 도커이미지
  - 도커이미지 → 도커 컨테이너의 설계 도면
  - 도커엔진 → 도커이미지대로 컨테이너를 만들어서 실행

### 3-1. 도커 명령어
  - docker ps                     # 현재 실행중인 컨테이너 목록 확인
  - docker images                 # 도커 이미지 목록 확인
  - docker logs [컨테이너 이름]    # 도커 컨테이너 로그 확인
  - docker run                    # 도커 컨테이너 실행
  
  docker run --name mariadb -d -p 3306:3306 -e 
  MARIADB_ROOT PASSWORD=mariadb mariadb









## 99. 전체 시스템 구조(학습용) - 