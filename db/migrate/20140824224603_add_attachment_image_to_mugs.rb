class AddAttachmentImageToMugs < ActiveRecord::Migration
  def self.up
    change_table :mugs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mugs, :image
  end
end
