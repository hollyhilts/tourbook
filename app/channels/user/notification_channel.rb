class User::NotificationChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for current_user
  end
end
