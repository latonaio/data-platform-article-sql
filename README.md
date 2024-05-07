# data-platform-article-sql 

data-platform-article-sql は、データ連携基盤において、記事データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-article-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-article-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-article-sql-header-data.sql（データ連携基盤 記事 - ヘッダデータ）
* data-platform-article-sql-header-doc-data.sql（データ連携基盤 記事 - ヘッダ文書データ）
* data-platform-article-sql-event-data.sql（データ連携基盤 記事 - イベントデータ）
* data-platform-article-sql-campaign-data.sql（データ連携基盤 記事 - キャンペーンデータ）
* data-platform-article-sql-game-data.sql（データ連携基盤 記事 - ゲームデータ）
* data-platform-article-sql-counter-data.sql（データ連携基盤 記事 - カウンタデータ）
* data-platform-article-sql-like-data.sql（データ連携基盤 記事 - いいねデータ）
* data-platform-article-sql-questionnaire-data.sql（データ連携基盤 記事 - アンケートデータ）
* data-platform-article-sql-partner-data.sql（データ連携基盤 記事 - パートナデータ）
* data-platform-article-sql-address-data.sql（データ連携基盤 記事 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
