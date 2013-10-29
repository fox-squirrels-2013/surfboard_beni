class CreateSurfboards < ActiveRecord::Migration
	def change
		create_table :surfboards do |t|
			t.string :model
			t.string :size
			t.string :shaper
			t.string :fin_number
			t.string :fin_systeme
			end
	end
end	