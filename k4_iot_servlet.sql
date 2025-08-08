-- k4_iot_servlet Connection --

DROP DATABASE IF EXISTs `k4_iot_servlet`;
CREATE DATABASE IF NOT EXISTS `k4_iot_servlet`
default CHARACTER SET utf8mb4 COLLATE UTf8mb4_general_ci;
/*
**문자셋(Charset)**은 데이터가 어떻게 **인코딩(저장)**될지를 정의합니다.
utf8mb4는 MySQL에서 **이모지, 다양한 언어(한글, 일본어, 특수 문자 등)**를 모두 지원하는 권장 문자셋입니다.
과거 utf8은 최대 3바이트까지만 지원해서 이모지를 제대로 저장하지 못했어요.
✅ utf8mb4 = 진짜 UTF-8 (최대 4바이트)
*/

/*
**Collation(콜레이션)**은 문자열을 어떻게 정렬하고 비교할 것인지를 정합니다.
utf8mb4_general_ci는:
일반적인 유니코드 비교 규칙
ci = case-insensitive (대소문자 구분 없음)
*/

USE `k4_iot_servlet`;
CREATE TABLE users (
	id INT auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null unique, -- unique 는 이메일은 중복되면 안됩니다!! 
    country varchar(100) not null 
);