USE chosun;


# Book 테이블 생성
DROP TABLE IF EXISTS tbl_book CASCADE;
CREATE TABLE IF NOT EXISTS tbl_book(
    book_ISBN INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(100) NOT NULL,
    book_writer VARCHAR(50) NOT NULL,
    book_publisher VARCHAR(50) NOT NULL,
    book_price INT DEFAULT 0,
    register_at DATE DEFAULT NOW(),
    useyn CHAR(1) DEFAULT 'y'
);
SELECT * FROM tbl_book;

# Book 정보 추가
TRUNCATE TABLE tbl_book;
INSERT INTO tbl_book(book_name, book_writer, book_publisher, book_price) VALUES("Do it! 점프 투 파이썬", "박응용", "이지스퍼블리싱", 18800);
INSERT INTO tbl_book(book_name, book_writer, book_publisher, book_price) VALUES("혼자 공부하는 파이썬", "윤인성", "한빛미디어", 18000);
INSERT INTO tbl_book(book_name, book_writer, book_publisher, book_price) VALUES("두근두근 파이썬", "천인국", "생능출판", 24000);
INSERT INTO tbl_book(book_name, book_writer, book_publisher, book_price) VALUES("비전공자를 위한 이해할 수 있는 IT 지식", "최원영", "티더블유아이지", 16800);
INSERT INTO tbl_book(book_name, book_writer, book_publisher, book_price) VALUES("이것이 MySQL이다", "우재남", "한빛미디어", 32000);
COMMIT;
SELECT * FROM tbl_book;