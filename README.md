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
