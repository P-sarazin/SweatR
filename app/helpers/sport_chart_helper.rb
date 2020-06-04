module SportChartHelper
  def total_booking_json
    details_booking = {}
    total_booking = 0
    specialties = Specialty.all
    specialties.each do |specialty|
      details_booking[specialty.name] = booking_per_specialty(specialty)
      total_booking += booking_per_specialty(specialty)
    end
    details_booking.to_json
  end

  def booking_per_specialty(specialty)
    coaches = Coach.where("specialty_id = ?", specialty.id)
    coach_ids = []
    coaches.each do |coach|
      coach_ids << coach.id
    end
    lessons = Lesson.where("coach_id IN (?)", coach_ids)
    lesson_ids = []
    lessons.each do |lesson|
      lesson_ids << lesson.id
    end
    bookings = Booking.where("user_id = ? AND lesson_id IN (?)", current_user.id, lesson_ids)
    bookings.count
  end
end
