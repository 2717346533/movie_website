create movie;

mysql> show tables;
+-----------------+
| Tables_in_movie |
+-----------------+
| admin           |
| adminlog        |
| auth            |
| comment         |
| movie           |
| moviecol        |
| oplog           |
| preview         |
| role            |
| tag             |
| user            |
| userlog         |
+-----------------+

mysql> desc admin;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| name     | varchar(100) | YES  | UNI | NULL    |                |
| pwd      | varchar(100) | YES  |     | NULL    |                |
| is_super | smallint(6)  | YES  |     | NULL    |                |
| role_id  | int(11)      | YES  | MUL | NULL    |                |
| addtime  | datetime     | YES  | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+

mysql> desc adminlog;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| Admin_id | int(11)      | YES  | MUL | NULL    |                |
| ip       | varchar(100) | YES  |     | NULL    |                |
| addtime  | datetime     | YES  | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+

mysql> desc auth;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| name    | varchar(100) | YES  | UNI | NULL    |                |
| url     | varchar(255) | YES  | UNI | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

mysql> desc comment;
+----------+----------+------+-----+---------+----------------+
| Field    | Type     | Null | Key | Default | Extra          |
+----------+----------+------+-----+---------+----------------+
| id       | int(11)  | NO   | PRI | NULL    | auto_increment |
| content  | text     | YES  |     | NULL    |                |
| movie_id | int(11)  | YES  | MUL | NULL    |                |
| user_id  | int(11)  | YES  | MUL | NULL    |                |
| addtime  | datetime | YES  | MUL | NULL    |                |
+----------+----------+------+-----+---------+----------------+

mysql> desc movie;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(11)      | NO   | PRI | NULL    | auto_increment |
| title        | varchar(255) | YES  | UNI | NULL    |                |
| url          | varchar(255) | YES  | UNI | NULL    |                |
| info         | text         | YES  |     | NULL    |                |
| logo         | varchar(255) | YES  | UNI | NULL    |                |
| star         | smallint(6)  | YES  |     | NULL    |                |
| playnum      | bigint(20)   | YES  |     | NULL    |                |
| commentnum   | bigint(20)   | YES  |     | NULL    |                |
| tag_id       | int(11)      | YES  | MUL | NULL    |                |
| area         | varchar(255) | YES  |     | NULL    |                |
| release_time | date         | YES  |     | NULL    |                |
| length       | varchar(100) | YES  |     | NULL    |                |
| addtime      | datetime     | YES  | MUL | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

mysql> desc moviecol;
+----------+----------+------+-----+---------+----------------+
| Field    | Type     | Null | Key | Default | Extra          |
+----------+----------+------+-----+---------+----------------+
| id       | int(11)  | NO   | PRI | NULL    | auto_increment |
| movie_id | int(11)  | YES  | MUL | NULL    |                |
| user_id  | int(11)  | YES  | MUL | NULL    |                |
| addtime  | datetime | YES  | MUL | NULL    |                |
+----------+----------+------+-----+---------+----------------+

mysql> desc oplog;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| Admin_id | int(11)      | YES  | MUL | NULL    |                |
| ip       | varchar(100) | YES  |     | NULL    |                |
| reason   | varchar(600) | YES  |     | NULL    |                |
| addtime  | datetime     | YES  | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+

mysql> desc preview;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| title   | varchar(255) | YES  | UNI | NULL    |                |
| logo    | varchar(255) | YES  | UNI | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

mysql> desc role;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| name    | varchar(100) | YES  | UNI | NULL    |                |
| auths   | varchar(600) | YES  |     | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

mysql> desc tag;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| name    | varchar(100) | YES  | UNI | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

mysql> desc user;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| name    | varchar(100) | YES  | UNI | NULL    |                |
| pwd     | varchar(100) | YES  |     | NULL    |                |
| email   | varchar(100) | YES  | UNI | NULL    |                |
| phone   | varchar(11)  | YES  | UNI | NULL    |                |
| info    | text         | YES  |     | NULL    |                |
| face    | varchar(255) | YES  | UNI | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
| uuid    | varchar(255) | YES  | UNI | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

mysql> desc userlog;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| user_id | int(11)      | YES  | MUL | NULL    |                |
| ip      | varchar(100) | YES  |     | NULL    |                |
| addtime | datetime     | YES  | MUL | NULL    |                |
+---------+--------------+------+-----+---------+----------------+
