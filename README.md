![topimage](https://user-images.githubusercontent.com/67569270/107881766-10bb8880-6f29-11eb-9fba-10793b3edcbd.jpg)


# ReservationApp
  **小規模ヘアサロン向け予約サイト**

## App URL

  - AWS:    https://reservationapp.tk/
  - ~~heroku:https://hairsalon-reservation.herokuapp.com/~~

#### テストアカウント
  - STAFF NAME : `test`
  - EMAIL : `test@test.com`
  - PASSWORD : `test1234`

<br>

## インストール方法
  ※現在調整中です。

  ```shell
    # git clone
    % git clone https://github.com/taiga-tech/ReservationApp.git
    % cd ReservationApp

    # docker build
    % docker-compose build
    % docker-compose run --rm app yarn install
    % docker-compose up -d

    # 初期設定
    % docker-compose run --rm app rails db:create
    % docker-compose run --rm rails db:migrate
    % docker-compose run --rm rails db:seed
  ```

  <br>

  ## 開発環境
  |language|version|
  |:--------|:-------|
  |Ruby|2.6.5|
  |Ruby on Rails|6.0.3.3|
  |MySQL|5.6.47|
  |jQuery|4.4.0|
  |Docker DeskTop|3.0.1|
  |Docker Engine|20.10.0|
  |docker-compose|1.27.4|
  |CircleCI|2.1|

<br>

<!-- **CircleCiの動き**
  - mastarへcommitするとテストが回り、テスト通過後、自動的にherokuへデプロイ
  - master以外のブランチへcommitするとテストが回り、テスト通過後、マージ可
  - テスト完了、失敗、slack通知
-->

## アプリ機能
  - **ユーザー画面**
    - 美容室の予約
    <br>
  - **店舗管理画面**
    - Staff登録 (Devise)
    - 予約一覧
    - 店舗情報編集
    - スタイリスト追加、編集
    - 消費税、割引率編集
    - メニュー追加、編集
    - プロモーション画像切り替え

<br>

## 作成意図
  少数オペレーションのヘアサロンをターゲットに予約サイトを作成しました。
  理由は少数オペレーションだと電話対応が困難になり、作業中のお客様を待たせてしまうと考えたためです。<br>
  知人のヘアサロン経営者から、スマートフォンのブラウザから予約をしてもらうのはすごく大変で、
  店舗のSNSと予約が合体したモバイルアプリがあるとスマートフォンに慣れていないお客様でもインストールさえすれば電話予約が少なくなるという話を聞いてヒントにしました。<br>
  現状モバイルアプリへの実装は[`WebView`](https://github.com/taiga-tech/iosReservationApp)のみでの実装はできているのですが、より高いユーザビリティを求めているため、Swiftでの実装を考えております。

<img width="380px" alt="iphone" src="https://gyazo.com/8af9d51b795a26d8b6ed516713b9104c.gif">

<br>

## 工夫したポイント
  - 管理画面へのアクセス方法を少し困難にしました。
<img width="800px" alt="management" src="https://gyazo.com/9ac1e6f6f35cd49cb5bd3d8530599bc2.gif">

  > トップページのフッターにあるタイトルを10回クリックすると`Management`というリンクが出現するため、クリックすると管理画面へアクセスできます。
    ※現状テスト段階のため、現在のアクセス方法は単純にしてます。

<br>

  - Trelloを意識したUIにこだわり、タスクの管理のしやすいような実装を意識しました。
<img width="800px" alt="trello" src="https://gyazo.com/4173d76a4bf12a52a9cd32206e6e14c1.gif">

  > 現状、縦方向のソートしかできないため、スタイリスト間の移動ができるよう改善予定です。

<br>

  - 予約フォームで希望ヘアスタイルの画像を添付することにより、カウンセリング時間の短縮ができます。
<img width="800px" alt="trello" src="https://gyazo.com/2719685bd6cb9eb1ead1ba84de280823.gif">

<br>

## 追加実装予定
  - モバイルアプリ化
  - レスポンシブ化
  - 予約時にメニューの複数選択
  - 予約一覧で日時順にする
  - 予約キャンセル、終了タスクの棲み分け
  - 店舗情報の住所を変更するとトップページ下部のマップを変更する(Google API)
  - 管理画面へのアクセスのセキュリティ強化
  - ~~CircleCi導入~~
  - CircleCi設定

<br>

# DB設計
## ER図
<img width="800" alt="ER図" src="https://user-images.githubusercontent.com/67569270/91464572-ad309680-e8c7-11ea-8319-32042b184706.png">

## Tables
### reservations
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|tel|string|null: false|
|date|string|null: false|
|time|string|null: false|
|request|string||
|image|string||
|menu_id|references|foreign_key: true|
|stylist_id|references|foreign_key: true|

#### Association
- belongs_to :menu
- belongs_to :stylist

### stylists
|Column|Type|Options|
|------|-----|-------|
|name|string|null: false|
|position|string|null: false|
|comment|text||
|image|stirng||

#### Association
- has_many :reservations


### menus
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|parice|integer|null: false|
|comment|text||

#### Association
- has_many :reservations
- has_many :menu_categories
- has_many :categories, through: :menu_categories


### menu_categiries
|Column|Type|Options|
|------|----|-------|
|menu_id|references|foreign_key: true|
|category_id|references|foreign_key: true|

#### Association
- belongs_to :menu
- belongs_to :category


### categories
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

#### Association
- has_many :menu_categories
- has_many :menus, through: :menu_categories

### staffs
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### infos
|Column|Type|Options|
|------|----|-------|
|code|string|null: false|
|address|string|null: false|
|tel|string|null: false|
|weekday|string|null: false|
|weekend|string|null: false|
|holiday|string|null: false|

### galleries
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|

### calculations
|Column|Type|Options|
|------|----|-------|
|tax|float|null: false|
|discount|float|null: false|
