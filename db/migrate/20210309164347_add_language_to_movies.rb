class AddLanguageToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :language, :text
  end
end
