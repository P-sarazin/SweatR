class LessonChannel < ApplicationCable::Channel

  def subscribed
    # lesson = Lesson.find(params[:lesson_id])
    # stream_for lesson
    stream_from "session_channel"
  end
end
