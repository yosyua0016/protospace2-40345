class Comment < ApplicationRecord
  belongs_to :user # ユーザーとの関連付け
  belongs_to :prototype # プロトタイプとの関連付け
end
