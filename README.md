# アプリ名 dodo

# 概要  
dodoアプリの名前の由来は努力する(努->do、do->する)という気持ちを込めて名付けました、このアプリは努力することや継続することが苦手な方々の為に作った試験勉強や筋トレなど努力する事を習慣化するためのアプリです。<br> 
　主な特徴としては自分が努力したい事を決めそのプランで使う参考書や道具、サイト(これらアイテムは任意です)などを決める事ができ、１日の努力する時間なども設定できる様にして目標合格するためのプランを詳細に決める事ができる様なアプリにしようと思っております。<br>
　また加えて、自分のプランを達成できなかった場合にお金を支払ったり罰ゲームをするというペナルティを設定する事ができ、そのお金や罰ゲームを課す事でペナルティをしない為にも自分の目標に「絶対に成し遂げるぞ！」という責任を持つ事ができます。<br>
　このペナルティはプラン終了日に上手くできたかどうかを同じプランを設定しているランダムなユーザー同士で写真などを使って確認し合い、自分がプランを達成できていた場合はペナルティ無し、失敗だった場合はペナルティとして罰ゲームや料金を支払ってもらうという機能にしようと考えております。<br>
　他にも、同じプランに参加しているユーザー同士でチャットで繋がれる様にし、分からない事を聞き合ったりお互いのプランの達成具合などを共有できるようにし孤独に頑張る事をしないでいい様にするつもりです。<br>

# 制作背景  
自分が浪人した時に塾に通わず宅浪だったので孤独や欲望などの自分との戦いを迫られました。<br>
　結果的に自分は親への迷惑を考え浪人を断念しましたが、これからの時代スマホを使いわからない事を簡単にすぐ調べられ、良質な学習動画などのコンテンツも簡単に見る事ができる時代なので塾などに通わず努力する道を選ぶ方々が増えると思います。<br>
　なのでそんな方々のために、自分の浪人時代を振り返ってこんなアプリがあればよかったと考えながら制作しました。<br>  

# 今後の実装内容<br>
##### ・同じプランに参加しているユーザー同士のチャット機能（人数も設定できる様にする） <br>
チャットを利用することで孤独感をなくす<br>
##### ・価格支払い機能<br>
自分の目標に対して責任を持つ<br>
##### ・プラン検索機能 <br>
検索機能で自分のやりたいプランを見つけやすくする<br>
##### ・タグ付け機能<br>
タグ付け機能で自分のマッチしたプランを探しやすくする<br>
##### ・マイページ設定<br>
アイコン画像や自分についての解説でユーザー間の繋がりを濃くする、加えて達成したプランや合計の努力時間などを表示して自分がどれくらい頑張れているのかを視覚化することでモチベーションをアップさせる
##### ・フォロー機能と招待機能
仲良くなったユーザーをフォローをする事ができ、そこから招待機能で新たな目標も共に頑張れる
##### ・努力ポイント機能(未定)
目標を達成した分だけポイント付与がされて自分の欲しかったものなどがもらえる、もしくは目標に関連する企業などと協力してカテゴリ別に目標を達成できた方々にプレゼントする機能
##### ・アウトプット機能
自分の参加しているチャットチームで日々の達成度合いを文や写真でお互いにアウトプットする事で、競争力や理解を深める事ができる


## 1,トップページ
![FireShot Capture 003 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108613427-4da9e280-7435-11eb-9d0e-8ddb580addae.png)

# 2,ログイン
![FireShot Capture 007 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108613483-d7f24680-7435-11eb-9fef-e34f2c1cc539.png)

# 3,新規登録
![FireShot Capture 013 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614504-6f5b9780-743e-11eb-8d94-d90b066da68b.png)

# 4,ログイン後の画面
![FireShot Capture 016 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614545-d5481f00-743e-11eb-8367-8230d7fc3ca6.png)

# 5,投稿ボタン
![FireShot Capture 027 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614652-b1390d80-743f-11eb-8e7a-db3e102b4409.png)


# 6,新規投稿画面
![FireShot Capture 019 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614576-104a5280-743f-11eb-984d-83c5399c5aa0.png)

# 7,詳細画面
![FireShot Capture 022 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614608-58697500-743f-11eb-9165-919c4e41e10e.png)


# 8,投稿者本人だった場合の詳細画面
![FireShot Capture 030 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614684-0f65f080-7440-11eb-926d-35f1c7166231.png)








# DB 設計


## users テーブル

| Column             | Type                | Options           |
|--------------------|---------------------|-------------------|
| email              | string              | null: false       |
| password           | string              | null: false       |
| nickname           | string              | null: false       |
| explain            | text                | null: false       |

### Association

- has_many :plans
- has_many :plans_users


## plans テーブル

| Column                   | Type       | Options           |
|--------------------------|------------|-------------------|
| name                     | string     | null: false       |
| description              | text       | null: false       |
| item                     | text       | null: false       |
| price_id                 | integer    | null: false       |
| term_id                  | integer    | null: false       |
| ctegory_id               | integer    | null: false       |

### Association

- has_many :users
- has_many :plans_users

## plan_user テーブル

| Column                  | Type       | Options            |
|-------------------------|------------|--------------------|
| user                    | references | foreign_key: true  |
| plan                    | references | foreign_key: true  |

### Association

- belongs_to :user 
- belongs_to :plan

