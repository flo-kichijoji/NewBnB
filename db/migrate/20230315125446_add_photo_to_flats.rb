class AddPhotoToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :photo, :text
  end
end
