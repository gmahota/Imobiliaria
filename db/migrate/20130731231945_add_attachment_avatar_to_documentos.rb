class AddAttachmentAvatarToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :documentos, :avatar
  end
end
