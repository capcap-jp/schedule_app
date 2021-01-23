class Post < ApplicationRecord
  validates :title, {presence: true}
  validates :start_day, {presence: true}
  validates :finish_day, {presence: true}
  validates :schedule_memo, {presence: true, length: {maximum: 140}}
end
