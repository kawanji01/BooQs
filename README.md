# 概要
株式会社BooQsのコーポレートサイトです。

# セットアップ

## Dockerをインストール
- https://matsuand.github.io/docs.docker.jp.onthefly/desktop/mac/install/

## セットアップ方法
- コンテナをビルド： `docker-compose build`
- コンテナの起動： `docker-compose up`x
- DBとseedをセットアップ： `docker-compose run web rails db:setup`
  - DBを作成： `docker-compose run web rails db:create`
  - DBをmigrate: `docker-compose run web rails db:migrate`
  - seed（ニュース）を作成： `docker-compose run web rails db:seed`

