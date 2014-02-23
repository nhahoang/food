class CreateFs < ActiveRecord::Migration
  def change
    create_table :fs do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
