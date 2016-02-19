class RenameColumnToClips < ActiveRecord::Migration
  def change
    rename_column :clips, :artile_id, :article_id
  end
end
