class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end

    add_foreign_key :dogs, :users, name: "dogs_user_id_fk"
  end
end
