![topimage](https://user-images.githubusercontent.com/67569270/90042708-fe585c00-dd05-11ea-8b9a-27e112c42653.png)

# ReservationApp
  **小規模ヘアサロン向け予約サイト**

## App URL (EC2移行中)
  https://hairsalon-reservation.herokuapp.com/

#### テストアカウント
  - STAFF NAME : `test`
  - EMAIL : `test@test.com`
  - PASSWORD : `test1234`

## 開発環境
  |language|version|
  |:--------|:-------|
  |Ruby|2.6.5|
  |Ruby on Rails|6.0.3|
  |MySQL|5.6.47|
  |jQuery|4.4.0|

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

## 作成意図
  少数オペレーションのヘアサロンをターゲットに予約サイトを作成しました。
  理由は少数オペレーションだと電話対応が困難になり、作業中のお客様を待たせてしまうと考えたためです。
  私は、特にヘアサロン業界に携わってはないのですが、知人のヘアサロン経営者から、スマートフォンのブラウザから予約をしてもらうのはすごく大変で、
  店舗のSNSと予約が合体したモバイルアプリがあるとスマートフォンに慣れていないお客様でもインストーさえすれば電話予約が少なくなるという話を聞いてヒントにしました。
  現状モバイルアプリへの実装は`WebView`のみでの実装はできているのですが、より高いユーザビリティを求めているため、Swiftでの実装を考えております。
  <img with="430" alt="iphone" src="https://gyazo.com/e936ab12835f19576fbd38cf3be7ec53.gif">

## 工夫したポイント
  - 管理画面へのアクセス方法を少し困難にしました。
<img width="800" alt="management" src="https://gyazo.com/9ac1e6f6f35cd49cb5bd3d8530599bc2.gif">

  > トップページのフッターにあるタイトルを10回クリックすると`Managements`というリンクが出現するため、クリックすると管理画面へアクセスできます。
    ※現状テスト段階のため、現在のアクセス方法は単純にしてます。

  - Trelloを意識したUIにこだわり、タスクの管理のしやすいような実装を意識しました。
<img width="800" alt="trello" src="https://gyazo.com/4173d76a4bf12a52a9cd32206e6e14c1.gif">

  > 現状、縦方向のソートしかできないため、スタイリスト間の移動ができるよう改善予定です。

## 追加実装予定
  - モバイルアプリ化
  - レスポンシブデザイン
  - 予約時にメニューの複数選択
  - 予約一覧で日時順にする
  - 予約キャンセル、終了タスクの棲み分け
  - 店舗情報の住所を変更するとトップページ下部のマップを変更する(Google API)
  - 管理画面へのアクセスのセキュリティ強化

## DB設計

<img width="800" alt="iphone" src="https://user-images.githubusercontent.com/67569270/91386233-82195900-e86d-11ea-830c-c1bba4936f7b.png">
