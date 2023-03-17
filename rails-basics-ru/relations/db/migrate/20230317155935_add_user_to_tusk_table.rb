class AddUserToTuskTable < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
      t.string :user_id

    end
  end
end
