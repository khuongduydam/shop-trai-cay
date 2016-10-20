class AddAttachmentAvatarToTintucs < ActiveRecord::Migration
  def self.up
    change_table :tintucs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :tintucs, :avatar
  end
end
