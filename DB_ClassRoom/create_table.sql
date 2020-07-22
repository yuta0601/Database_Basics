create database 販売管理db;

use 販売管理db;

create table 受注(
受注番号   varchar(10) primary key,
受注年月日 date,
顧客番号   varchar(10),
受注合計   int
);

create table 顧客(
顧客番号 varchar(10) primary key,
顧客名   varchar(30),
住所     varchar(50),
電話番号 varchar(15)
);

create table 受注明細(
受注番号 varchar(10) not null,
商品番号 varchar( 5) not null,
数量     int,
受注小計 int,
primary key (受注番号,商品番号)
);

create table 商品(
商品番号 varchar( 5) primary key,
商品名   varchar(30),
単価     int
);

alter table 受注 add foreign key (顧客番号)
references 顧客(顧客番号);

insert into 顧客 values('1001', '株式会社山田貿易', '東京都港区芝浦',        '03-3256-XXXX');
insert into 顧客 values('1003', '株式会社川野物産', '大阪府大阪市中央区城見', '06-6112-XXXX');
insert into 顧客 values('1006', '世界商事株式会社', '東京都足立区神明',       '03-5126-XXXX');

insert into 受注 values('00001', '2011/04/01', '1001', 640000);
insert into 受注 values('00002', '2011/04/02', '1006', 518000);
insert into 受注 values('00003', '2011/04/02', '1003', 600000);
insert into 受注 values('00004', '2011/04/05', '1001',   3000);
insert into 受注 values('00005', '2011/04/05', '1001',  10000);

insert into 受注明細 values('00001', 'A01',  2, 400000);
insert into 受注明細 values('00001', 'G02',  3, 240000);
insert into 受注明細 values('00002', 'S05',  6,  18000);
insert into 受注明細 values('00002', 'A11', 10, 500000);
insert into 受注明細 values('00003', 'A01',  3, 600000);
insert into 受注明細 values('00004', 'S05',  1,   3000);
INSERT INTO 受注明細 VALUES("99999", "Z99", 99, 9999);

insert into 商品 values('A01', 'テレビ（液晶大型）', 200000);
insert into 商品 values('A11', 'テレビ（液晶小型）',  50000);
insert into 商品 values('G02', 'DVDレコーダ',         80000);
insert into 商品 values('S05', 'ラジオ',               3000);
INSERT INTO 商品 values('Z01', '冷蔵庫', 180000);
INSERT INTO 商品 values('Z11', 'エアコン',  80000);
