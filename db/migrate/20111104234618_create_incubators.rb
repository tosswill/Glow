class CreateIncubators < ActiveRecord::Migration
  def change
    create_table :incubators do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :website
      t.text :body
      t.string :avg_investment

      t.timestamps
    end
  end
end
