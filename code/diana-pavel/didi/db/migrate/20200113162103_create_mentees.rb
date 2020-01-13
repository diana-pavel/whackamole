class CreateMentees < ActiveRecord::Migration[5.2]
  def change
    create_table :mentees do |t|
      t.string :name
      t.string :email
      t.string :job_title

    end
  end
end
