class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|

      t.timestamps
    end
  end
end
