class CreateMentees < ActiveRecord::Migration[5.2]
  def change
    create_table :mentees do |t|
      t.string :name
      t.string :email
      t.string :job_title
      t.string :goal
      t.string :linkedin
      t.string :github
      t.string :website
      t.integer :time
    end
  end
end
