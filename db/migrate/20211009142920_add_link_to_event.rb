class AddLinkToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :link, :string
  end
end
