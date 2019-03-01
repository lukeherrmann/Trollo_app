class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :board_name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
