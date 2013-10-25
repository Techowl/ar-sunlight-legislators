Class CreateSenators < ActiveRecord::Migration
  def change
    add_column :congresspeople do
      t.string :senate_class
    end
  end
end
