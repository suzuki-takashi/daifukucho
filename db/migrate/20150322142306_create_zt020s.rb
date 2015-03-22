class CreateZt020s < ActiveRecord::Migration
  def change
    create_table :zt020s do |t|
      t.string :IDUSER
      t.string :TXNAME
      t.string :TXPASSWORD

      t.timestamps null: false
    end
  end
end
