# ベースイメージを指定
FROM ruby:3.2.2

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# ワークディレクトリの設定
WORKDIR /myapp

# GemfileとGemfile.lockをコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# BundlerでGemをインストール
RUN bundle install

# 現在のディレクトリの全てをコンテナのワークディレクトリにコピー
COPY . /myapp

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets

# コンテナ起動時に実行するコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
