class CreateZt010s < ActiveRecord::Migration
  def change
    create_table :zt010s do |t|
      t.string :IDVARIANT
      t.string :TXNAME
      t.string :TXTYPE
      t.string :TXVALUE
      t.string :TXREMARKS

      t.timestamps null: false
    end
  end
end
