class AddAttachmentProfilePhotoToProfiles < ActiveRecord::Migration[5.1]
  def create
    add_attachment :profile, :profile_photo
  end
end
