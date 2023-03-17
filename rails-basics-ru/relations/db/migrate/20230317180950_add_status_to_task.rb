class AddStatusToTask < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
        t.string :status_id

    end
  end
end
