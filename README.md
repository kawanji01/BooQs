# 概要
株式会社BooQsのコーポレートサイトです。

# セットアップ

## Dockerをインストール
- Macなら　https://matsuand.github.io/docs.docker.jp.onthefly/desktop/mac/install/
- Windowsは分からないので誰か加筆よろしくお願いします。


## セットアップ方法
- コンテナをビルド： `docker-compose build`
- コンテナの起動： `docker-compose up`
- DBを作成： `docker-compose run web rails db:create`
- DBをmigrate: `docker-compose run web rails db:migrate`
