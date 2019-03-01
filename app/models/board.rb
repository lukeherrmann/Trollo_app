class Board < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy
  has_many :tasks, through: :lists

  # def self.all_boards(id)
  #   Board.find_by_sql(
  #     "SELECT *
  #     FROM boards
  #     WHERE boards.id = #{id}"
  #   )
  # end
end
