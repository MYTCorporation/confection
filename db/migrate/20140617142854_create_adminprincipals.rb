class CreateAdminprincipals < ActiveRecord::Migration
  def change
    create_table :adminprincipals do |t|

      t.timestamps
    end
  end
end
