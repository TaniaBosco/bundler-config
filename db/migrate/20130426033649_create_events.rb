class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :start
      t.date :end
      t.string :allday

      t.timestamps
    end
  end
end
