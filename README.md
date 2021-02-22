# 1,トップページ
![FireShot Capture 003 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108613427-4da9e280-7435-11eb-9d0e-8ddb580addae.png)

# 2,ログイン
![FireShot Capture 007 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108613483-d7f24680-7435-11eb-9fef-e34f2c1cc539.png)

# 3,新規登録
![FireShot Capture 013 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614504-6f5b9780-743e-11eb-8d94-d90b066da68b.png)

# 4,ログイン後の画面
![FireShot Capture 016 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614545-d5481f00-743e-11eb-8367-8230d7fc3ca6.png)

# 5,新規投稿画面
![FireShot Capture 019 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614576-104a5280-743f-11eb-984d-83c5399c5aa0.png)

# 6,詳細画面
![FireShot Capture 022 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614608-58697500-743f-11eb-9165-919c4e41e10e.png)

# 投稿ボタン
![FireShot Capture 027 - Dodo - localhost](https://user-images.githubusercontent.com/71998423/108614652-b1390d80-743f-11eb-8e7a-db3e102b4409.png)


# 投稿者本人だった場合の詳細画面
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
- has_many :messages
- has_many :words
- has_many :outputs


## plans テーブル

| Column                   | Type       | Options           |
|--------------------------|------------|-------------------|
| name                     | string     | null: false       |
| description              | text       | null: false       |
| item                     | text       | null: false       |
| plan_price               | integer    |                   |
| term                     | string     |                   |
| member                   | integer    |                   |

### Association

- has_many :users
- has_many :plans_users

## plans_users テーブル

| Column                  | Type       | Options            |
|-------------------------|------------|--------------------|
| user                    | references | foreign_key: true  |
| plan                    | references | foreign_key: true  |

### Association

- belongs_to :user 
- belongs_to :plan

## messages テーブル

| Column                  | Type       | Options            |
|-------------------------|------------|--------------------|
| message                 | text       |                    |
| user                    | references | foreign_key: true  |

### Association 

- belongs_to :user

## words テーブル

| Column                  | Type       | Options            |
|-------------------------|------------|--------------------|
| effort                  | string     | null:  false       |
| user                    | references | foreign_key: true  |


### Association 

- belongs_to :user

## outputs テーブル

| Column                  | Type       | Options            |
|-------------------------|------------|--------------------|
| output                  | text       | null:  false       |
| user                    | references | foreign_key: true  |


### Association 

- belongs_to :user
