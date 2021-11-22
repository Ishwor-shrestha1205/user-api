# RailsでUSER-APIを実装する

## seedとFakerでランダムなサンプルデータを作成
1\.　fakerをインストールする
```
Gemile

gem 'faker'
gem 'gimei'
```
gimeiは、日本人の名前や、日本の住所をランダムに返すGemです。
* ひらがなの場合、Gimei.hiragana
* カタカナの場合、Gimei.katakana
* 漢字の場合、Gimei.kanji
```
bundle install
```

### usersデーブルに50件のダミーデータを追加する。
```
seeds.rb

require 'faker'

50.times do |n|
  first_name = Gimei.first.kanji
  last_name = Gimei.last.kanji
  User.create!(
    first_name:         first_name,
    last_name:         last_name,
    gender: rand(1..2)
  )
end
```

```
rails db:seed
```

<br />

## APIを実行する
```
$ rails s
```
<br />

## HTTP要求の種類別に要求をしてみる
### GET(http://localhost:3000/users/:id) or (http://localhost:3000/users)
<img width="1080" alt="スクリーンショット 2021-11-22 15 11 48" src="https://user-images.githubusercontent.com/83254076/142811035-9cbe1014-fbf6-4499-a593-b1411bd71baf.png">

### POST(http://localhost:3000/users)
<img width="1080" alt="スクリーンショット 2021-11-22 15 14 19" src="https://user-images.githubusercontent.com/83254076/142815142-ca9be358-5a5a-4275-8962-1683e342f700.png">

### PUT(http://localhost:3000/users/:id)
<img width="1080" alt="スクリーンショット 2021-11-22 15 13 50" src="https://user-images.githubusercontent.com/83254076/142815721-38aa4402-8389-4dc9-a5c2-5ab8bbc95d3c.png">

### DELETE(http://localhost:3000/users/:id)
<img width="1080" alt="スクリーンショット 2021-11-22 15 14 51" src="https://user-images.githubusercontent.com/83254076/142815638-3a7c8893-e0a1-48a0-bb52-169f09e7c30d.png">


