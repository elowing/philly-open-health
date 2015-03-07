class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.string      :title
      t.text        :description
      t.references  :data_source
      t.string      :date_published
      t.string      :collection_date_range
      t.string      :geographic_detail

      t.timestamps
    end
  end
end
