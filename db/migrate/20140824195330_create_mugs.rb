class CreateMugs < ActiveRecord::Migration
  def change
    create_table :mugs do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :agency
      t.string :slug
      t.date :birthdate
      t.text :notes

      t.timestamps
    end
  end
end
