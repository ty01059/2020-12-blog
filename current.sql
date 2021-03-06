-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: demoBoard
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `view` int(10) unsigned NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  `hitCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-18 13:32:10','2021-01-04 16:54:30','제목1🐳','내용1',1,2,0,1,2,6),(2,'2020-12-18 13:32:10','2021-01-04 16:54:30','제목2','# 자바기본문법\r\n```java\r\nint a = 10;\r\nint b = 20;\r\nint c = a + b;\r\n```',1,2,0,3,2,6),(3,'2020-12-18 13:32:10','2021-01-04 16:54:30','제목3🐋','# 공지사항\r\n안녕하세요.\r\n이 사이트는 저의 글 연재 공간입니다.\r\n\r\n---\r\n\r\n# 이 사이트의 특징\r\n- A\r\n- B\r\n- C',1,1,0,0,4,6),(4,'2020-12-18 13:32:10','2021-01-04 16:54:29','1강, Class','# Class\r\n- 클래스란 유사한 기능을 가진 객체들의 속성을 묶어놓은 집합체\r\n- java 기초\r\n\r\n# Main 클래스 예시\r\n```\r\n public class Main {\r\n   public static void main(Strings[] args) {\r\n      int i=1;\r\n      String str=\'string\';\r\n  }\r\n}\r\n```\r\n\r\n# 클래스 접근 제어자\r\n```\r\n - public : public 가 붙은 변수, 메소드는 어떤 클래스에서라도 접근이 가능합니다. \r\n - private : 해당 클래스만 접근이 가능합니다. \r\n - protected : protected 가 붙은 변수, 메소드는 동일 패키지내의 클래스 또는 해당 클래스를 상속 받는 외부 패키지의 클래스에서 접근이 가능합니다.\r\n```',1,3,0,0,4,7),(5,'2020-12-18 13:32:10','2021-01-04 16:54:29','2강, Variable(1)','# Variable\r\n- 변수 선언\r\n- 변수에 이름을 정해 값을 저장할 수 있는 메모리 공간을 생성\r\n- 데이터 타입에 따라서 변수의 크기가 달라진다.\r\n\r\n# 변수의 타입\r\n\r\n ## 숫자형\r\n```\r\n1)정수형\r\n - byte\r\n - short\r\n - int\r\n - long\r\n 2)실수형\r\n - float\r\n - double\r\n```\r\n## 논리형\r\n```\r\n - boolean : true, false\r\n```\r\n## 문자형\r\n```\r\n - char : \'a\', \'b\' ... \r\n```\r\n## 문자열\r\n```\r\n - String : \'abc\' ...\r\n```\r\n\r\n# 예시\r\n# ',1,3,0,0,0,0),(6,'2020-12-22 08:51:00','2021-01-04 16:54:29','3강, Variable(2)','# Variable\r\n- 변수 선언\r\n- 변수들의 집합\r\n\r\n# 배열의 종류\r\n\r\n ## Array\r\n```\r\n- 변수를 선언하면서 크기를 지정해주어야 한다.\r\n- 한번 배열을 선언하면 크기를 변경할 수 없다.\r\n\r\nex)\r\n// 선언\r\nint[] i = new int[10];\r\nString[] str = new String[10];\r\n// 추출\r\nint[1];\r\nString[2];\r\n```\r\n## List\r\n```\r\n- 변수 선언하면서 크기를 지정해주지 않아도 된다.\r\n- 값의 크기가 변하는 경우 사용\r\n\r\nex)\r\nimport java.util.ArrayList;\r\nArrayList<Integer> list = new ArrayList<Integer>();\r\n\r\n// 값 추가\r\nlist.add(1);\r\nlist.add(2);\r\nlist.add(3); // list = {1,2,3}\r\n\r\n// 값 추출\r\nlist.get(0); // 1\r\n\r\n// List크기를 반환\r\nlist.size(); // 3\r\n\r\n// 값이 있는지 확인\r\nlist.contains(2); // true\r\n\r\n// 값 제거\r\nlist.remove(0); // list = {2,3}\r\n```\r\n## Map\r\n```\r\n- (key, value)로 값을 저장한다.\r\n- index에 제한받지 않고 값을 찾거나 저장할 수 있다.\r\n\r\nex)\r\nimport java.util.Map;\r\nimport java.util.HashMap;\r\nHashMap<dataType, dataType> map = new HashMap<dataType, dataType>();\r\n\r\n// 값 저장\r\nmap.put(\"key\", \"value\"); // map = {\"key\" : \"value\"}\r\n\r\n// 값 추출\r\nmap.get(\"key\"); // \"value\"\r\n\r\n// 값을 확인\r\nmap.containsKey(\"key\"); // true\r\n\r\n// 값을 제거\r\nmap.remove(\"key\");\r\n\r\n// 크기 반환\r\nmap.size(); // 1\r\n```',1,3,0,0,0,0),(7,'2020-12-22 08:51:00','2021-01-04 16:54:29','4강, 제어문','# 제어문\r\n- 프로그램의 흐름을 변경할 수 있게 도와준다.\r\n\r\n# 제어문 종류\r\n\r\n ## if\r\n```\r\n- 조건문이 true일 경우 if문을 실행하고 false일 경우 아래로 내려가면서 조건에 맞는 if문을 찾는다.\r\n- 조건문에 맞는 if문이 없을 경우 else를 실행하거나 if문을 벗어난다.\r\n- 비교연산자를 사용하여 조건판단을 할 수 있다.\r\n\r\nex)\r\nif(조건문) {\r\n...\r\n} else if(조건문) {\r\n...\r\n} else {\r\n...\r\n}\r\n\r\n```\r\n## switch/case\r\n```\r\n- if문과 비슷하지만 좀 더 정형화됨\r\n- 입력변수에 일치하는 입력값을 찾아 실행한다.\r\n- 찾는 값이 없을 경우 default를 실행\r\n\r\nex)\r\nswitch(입력변수) {\r\n    case 입력값1: ...\r\n        break;\r\n    case 입력값2: ...\r\n        break;\r\n    default: ...\r\n        break;\r\n}\r\n```\r\n## while\r\n```\r\n- 조건문이 true일 경우 반복 실행\r\n- while문을 빠져나가는 코드가 없을 경우 무한 루프에 빠진다.\r\n- 무한루프를 빠져나가기 위해서는 break; 를 사용한다.\r\n- 검색 조건에 맞지 않을 경우 continue; 를 사용해서 while문을 처음부터 실행할 수 있다.\r\n\r\nex)\r\nwhile(조건문) {\r\n...\r\nbreak;\r\n}\r\n```\r\n\r\n## for\r\n```\r\n- 초기치 : 처음 시작 위치\r\n- 증가치 : 초기치에서 얼마만큼 증가시킬것인가\r\n- for문에서도 continue; 를 사용할 수 있다.\r\n\r\nex)\r\nfor (초기치; 조건문; 증가치) {\r\n...\r\n}\r\n```\r\n\r\n## foreach\r\n```\r\n- 배열안에 있는 값들을 한개씩 차례대로 꺼내서 반복한다.\r\n- 배열의 크기만큼 반복\r\n\r\nex)\r\nint[] array = {1, 2, 3};\r\nfor(int i : array) {\r\nSystem.out.printf(i); // 1 2 3\r\n...\r\n}\r\n\r\nArrayList<String>() list = new ArrayList<String>();\r\nlist.add(\"a\");\r\nlist.add(\"b\");\r\nlist.add(\"c\");\r\nfor(String str : list) {\r\nSystem.out.printf(str); // a b c\r\n...\r\n}\r\n```',1,3,0,0,0,0),(8,'2020-12-22 08:51:00','2021-01-04 16:54:28','5강, 객체 지향 프로그래밍','# 객체지향 프로그래밍\r\n\r\n```java\r\n - java : 객체지향 프로그래밍 언어\r\n```\r\n\r\n# 개념\r\n\r\n## 클래스\r\n```\r\n - 객체를 만드는 기능\r\n - 클래스 내에서 변수를 선언할 수 있다. (=객체 변수)\r\n - 메소드를 이용해서 클래스의 변수에 값을 입력할 수 있다.\r\n - 객체 변수는 공유되지 않는다.\r\n \r\n ex)\r\npublic class Animal {\r\n    String name;\r\n}\r\n\r\n// 선언, 접근 가능\r\nAnimal animal = new Animal();\r\nanimal.name;\r\n```\r\n\r\n## 메소드\r\n```\r\n - 클래스 내의 함수\r\n - 입력값과 리턴값을 필요에 따라서 작성할 수 있다.\r\n - return; 만 단독으로 쓰일 경우 메소드를 즉시 빠져나간다.\r\n \r\n ex)\r\npublic class Test {\r\n    // 메소드 작성\r\n    public int sum(int a, int b) {\r\n        return a+b;\r\n    }\r\n}\r\n```\r\n\r\n## call by value\r\n```\r\n - 메소드로 객체를 전달할 경우 메소드에서 객체의 객체변수 값을 변경할 수 있다.\r\n```\r\n\r\n## 상속\r\n```\r\n - 자식 클래스 extends 부모 클래스 { }\r\n - extends 를 사용하여 부모 클래스의 기능을 상속 받을 수 있다.\r\n - IS-A 관계 (상위 하위 개념관계 or 상속관계)\r\n - 자식 클래스는 부모 클래스의 메소드를 오버라이딩, 오버로딩을 할 수 있다.\r\n - 자바는 다중 상속을 지원하지 않는다.\r\n \r\nex)\r\npublic class Dog extends Animal { }\r\n```\r\n\r\n## 생성자\r\n```\r\n - 클래스 객체를 생성시 객체에 값을 넣을 수 있다.\r\n - 메소드명과 클래스명이 동일해야 한다.\r\n - 리턴타입을 정의하지 않는다.\r\n - 생성자 오버로딩 가능.\r\n```\r\n\r\n## 인터페이스\r\n```\r\n - 상위 개념이 같은 종류들의 구조를 모아놓은 것\r\n```\r\n\r\n## 추상클래스\r\n```\r\n - 서로 다른 클래스 간에 비슷한 필드와 메서드를 공통적으로 추출해서 만든 클래스\r\n - 추상클래스는 메서드와 내용이 구체적이지 않기 때문에 객체를 생성할 수 없다.\r\n - 실제 클래스는 추상클래스를 상속받는다.\r\n - abstract 를 사용\r\n - 추상클래스 변수에 추상클래스를 상속받아 구현한 실제클래스 인스턴스를 주입하면 해당 추상클래스 변수는 자동 타입변환을 발생시켜 실제클래스 인스턴스처럼 사용할 수 있는데, 이것을 타입의 다형성이라 한다.\r\n \r\nex)\r\npublic abstract class 클래스명 {\r\n  //필드\r\n  //생성자\r\n  //메서드\r\n  //추상메서드\r\n}\r\n```',1,3,0,0,0,5),(9,'2021-01-04 16:47:09','2021-01-04 16:54:28','JSP 시작','# JSP\r\n\r\n- JAVA 를 기초로 하는 스크립트 언어\r\n- JSP 설명\r\n- 웹 어플리케이션 서버에서 동작되며, 필요한 기능을 수행하고 생성된 데이터를 웹 페이지와 함께 클라이언트로 응답한다.\r\n\r\n# 특징\r\n```\r\n1) 스크립트 언어이기 때문에 java의 기능을 그대로 이용할 수 있다.\r\n\r\n2) tomcat(WAS)이 만들어놓은 객체를 사용한다.\r\n\r\n3) 사용자 정의 태그를 사용할 수 있다.\r\n```',1,4,0,0,0,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-18 13:32:10','2020-12-18 13:32:10','공지사항','notice'),(2,'2020-12-18 13:32:10','2020-12-18 13:32:10','자유','free'),(3,'2020-12-18 13:32:10','2020-12-18 13:32:10','JAVA','java'),(4,'2021-01-04 16:50:40','2021-01-04 16:50:42','JSP','jsp');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (41,'2021-01-04 16:54:34','2021-01-04 16:54:34','/',93),(42,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_list_it_1.html',17),(43,'2021-01-04 16:54:34','2021-01-04 16:54:34','/index.html',10),(44,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_list_free_1.html',9),(45,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_list_notice_1.html',9),(46,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_detail_4.html',7),(47,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_detail_1.html',6),(48,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_detail_2.html',6),(49,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_detail_3.html',6),(50,'2021-01-04 16:54:34','2021-01-04 16:54:34','/article_detail_8.html',5);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) NOT NULL,
  `loginPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-18 13:32:10','2020-12-18 13:32:10','admin','admin','관리자'),(2,'2020-12-18 13:32:10','2020-12-18 13:32:10','test2','test2','테스터2');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 16:59:30
