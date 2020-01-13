class CreateBoth < ActiveRecord::Migration[5.2]
  def change
    create_table :boths do |t|
      t.string :name
      t.string :email
      t.boolean :job_search
      t.string :job_title
      t.string :current_company
      t.string :github
      t.string :personal_website
      t.string :linkedin
      t.string :help
      t.integer :hours
      t.boolean :content
    end
  end
end
