class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :used_by_model
      t.string :model_id
      t.string :en
      t.string :fr
      t.string :jp
      t.string :roman, null: false, default: 'taitoru'

      t.index [:en, :used_by_model]
      t.index [:fr, :used_by_model]
      t.index [:jp, :used_by_model]
      t.index [:en, :fr, :jp]
      t.index :roman

      t.timestamps
    end
  end
end
