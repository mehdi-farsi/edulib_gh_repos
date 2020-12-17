class CreateRepositories < ActiveRecord::Migration[6.0]
  def change
    create_table :repositories do |t|
      t.string :name
      t.text :description
      t.string :html_url
      t.integer :stargazers_count
      t.integer :forks
      t.integer :external_id

      t.timestamps
    end
  end
end
