class CreateMentors < ActiveRecord::Migration[5.2]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :job_title
      t.string :current_company
      t.string :github
      t.string :personal_website
      t.string :linkedin
      t.integer :hours
      t.boolean :content
    end
  end
end
