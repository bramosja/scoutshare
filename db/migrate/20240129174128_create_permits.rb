class CreatePermits < ActiveRecord::Migration[7.1]
  def change
    create_table :permits do |t|
      t.string :title
      t.float :cost

      t.timestamps
    end
  end
end
