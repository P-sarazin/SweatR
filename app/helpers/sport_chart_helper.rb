module SportChartHelper
  def total_booking_json
    details_booking = {}
    total_booking = 0
    specialties = Specialty.all
    specialties.each do |specialty|
      details_booking[specialty] = booking_per_specialty(specialty)
      total_booking += booking_per_specialty(specialty)
    end
    return details_booking
  end

  def booking_per_specialty(specialty)
    bookings = @bookings.joins(:lesson).joins(:coach).where("coaches.specialty = ?", specialty)
    return bookings.count
  end
end
