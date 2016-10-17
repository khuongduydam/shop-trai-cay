class AddAttachmentAvatarToInformation < ActiveRecord::Migration
  def self.up
    change_table :information do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :information, :avatar
  end
end
