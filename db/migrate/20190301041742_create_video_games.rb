class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :platform
      t.string :description
      t.integer :players
      t.string :genre

      t.timestamps
    end
  end
end
