class AddDetailsToResponders < ActiveRecord::Migration
  def change
      change_column_null :responders, :on_duty, false
  end
end
