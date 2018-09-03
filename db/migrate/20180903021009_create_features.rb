class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|

    	t.references :project
    	t.string :code
    	t.string :title
    	t.string :description
    	t.string :estimate
    	t.string :priority
    	t.string :dependant_on_code
    	t.boolean :is_complete
    	t.string :time_spent
    	t.string :git_merge_path

      t.timestamps
    end
  end
end
