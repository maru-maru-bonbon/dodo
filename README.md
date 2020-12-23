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
| week_plan                |            |                   |
| rest_plan                |            |                   |
| plan_price               | integer    |                   |

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