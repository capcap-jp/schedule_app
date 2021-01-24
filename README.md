# schedule_app
<br>

# 概要
ポテパンキャンプ Railsキャリアコース  
実践課題 Rails  
スケジュール管理アプリ  
<br>


# Note
Dockerによる環境構築
```
docker-compose run web rails new . --force --datebase=mysql
docker-compose build
```
database.ymlを編集
```
password: password
host: db
```

db作成、コンテナ作成と起動
```
docker-compose run web rails db:migrate
docker-compose up -d
```
<br>


MySQLにて、デフォルト設定の場合、以下のような挙動が起きる。  
selectなどで日本語を取り出そうとすると文字化けしてしまい、”??????”のような文字列に置き換わってしまう。  
  
下記URLを参考に、解決することができた。  
>https://cpoint-lab.co.jp/article/201804/2683/  
```
docker-compose exec db /bin/bash
apt-get update
apt-get install vim
vi etc/mysql/my.cnf
```
<br>

my.cnf下記4行を追加
```
[mysqld]
character-set-server=utf8

[client]
default-character-set=utf8
```
