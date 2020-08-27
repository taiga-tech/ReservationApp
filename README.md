![topimage](https://user-images.githubusercontent.com/67569270/90042708-fe585c00-dd05-11ea-8b9a-27e112c42653.png)

# ReservationApp
  **小規模ヘアサロン向け予約サイト**

## App URL
  https://hairsalon-reservation.herokuapp.com/

**テストアカウント**
  - STAFF NAME : test
  - EMAIL : test@test.com
  - PASSWORD : test1234

## 開発環境
  |language|version|
  |:--------|:-------|
  |Ruby|2.6.5|
  |Ruby on Rails|6.0.3|
  |MySQL|5.6.47|
  |jQuery|4.4.0|

## アプリ機能
  - ユーザー画面
    - 美容室の予約

<br>

  - 店舗管理画面
    - Staff登録 (Devise)
      ![managements](https://gyazo.com/9ac1e6f6f35cd49cb5bd3d8530599bc2.gif)
        > トップページのフッターにあるタイトルを10回クリックすると`Managements`というリンクが出現する、それをクリックすると管理画面へ入ることができる。
    - 予約一覧
      ![reservations](https://user-images.githubusercontent.com/67569270/91419501-6ecab580-e88e-11ea-9f67-af42eebc257e.png)
        > 現状日時順にならないため、ソート機能を実装する予定
    - 店舗情報編集
    - スタイリスト追加、編集
    - 消費税、割引率編集
    - メニュー追加、編集
    - プロモーション画像切り替え

## 作成意図

## 工夫したポイント

## 追加実装予定
  - リファクタリング
  - 予約フォームのカレンダーと定休日、予約状況と結びつける
  - 予約時にメニューの複数選択
  - 予約一覧で日時順にする
  - 予約キャンセル、終了タスクの棲み分け
  - 店舗情報の住所を変更するとトップページの位置情報を変更する(Google API)
  - 管理画面へのアクセスのセキュリティ強化
  - 管理画面のビュー
  - モバイルアプリ化
  - レスポンシブデザイン

## DB設計

![Reservation](https://user-images.githubusercontent.com/67569270/91386233-82195900-e86d-11ea-830c-c1bba4936f7b.png)



<!--
①既にデプロイしている、もしくはローカル環境でアプリが完成している場合
◎READMEを書く理由
・成果物のURLを渡すだけでは、企業は成果物の技術レベルしか判断できないため
・READMEを見せることで、どこにこだわったのか、どんな意図でこのアプリを作ろうと思ったのかなどの熱意を伝えることができるため
◎READMEの書き方 参考URL
他にも参考になるサイトはあると思うので、まずは調べてみて下さい！
https://qiita.com/aocattleya/items/5f836e9c65ba3eb3af03
https://howpon.com/8334
◎READMEに記載する項目　※下記項目は必ず記載しましょう！
・アプリ名
・概要(このアプリでできることを書いて下さい)
・本番環境(デプロイ先　テストアカウント＆ID)
・制作背景(意図)
⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
・工夫したポイント
・使用技術(開発環境)
・課題や今後実装したい機能
・DB設計
-->
