# redash V8 to V10 へのアップグレード手順

## 概要

- Docker image を V10 に更新する
- さらにマイグレーションを実行する（マイグレーションを実行しないとエラーになる）
  - 関連issue：https://github.com/getredash/redash/issues/5542

## ローカルで動作確認

### 前提

- Docker をインストール済み

### 手順

- redashのテーブルを作成

```shell
just create-db
```

- redash起動

```shell
just run
```

- http://localhost:5000/setup を開くとセットアップ画面が開くことを確認してセットアップしてから redash を落とす
- redash の Docker イメージを `redash/redash:10.1.0.b50633` に変更する
- redash を再起動する
  - この時点ではログインはできるが、その後でエラーになる
- migration を実行する
```shell
just migrate
```
- ログインして redash の画面が開くことが確認できる