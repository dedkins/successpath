class AddFieldsToMember < ActiveRecord::Migration
  def change
    add_column :members, :actionquote, :text
    add_column :members, :financialstatementquote, :text
    add_column :members, :desiredassets, :decimal
    add_column :members, :actualassets, :decimal
    add_column :members, :desiredcf, :decimal
    add_column :members, :actualcf, :decimal
    add_column :members, :mainlifequote, :text
    add_column :members, :mainlifetitle, :string
    add_column :members, :actiontitle, :string
  end
end
