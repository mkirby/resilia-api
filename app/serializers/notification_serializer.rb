class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :subject, :message
  belongs_to :user
end
