class AddDefaultValuesToResponder < ActiveRecord::Migration
  def change
      change_column_default :responders, :emergency_code, nil
      change_column_default :responders, :on_duty, false 
  end
end
