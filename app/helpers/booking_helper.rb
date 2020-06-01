module BookingHelper
  def booking_chart_json
    months = [Date.current - 3.months, Date.current - 2.months, Date.current - 1.months, Date.current]
    number_booking = []
    months.each do |month|
      number_booking << booking_per_month(month)
    end
    return number_booking
  end

  def booking_per_month(date)
    first_day_of_month = date.beginning_of_month.beginning_of_day
    last_day_of_month = date.end_of_month.end_of_day
    month_booking = @bookings.joins(:lesson).where("lessons.appointment BETWEEN ? AND ?", first_day_of_month, last_day_of_month)
    return month_booking.count
  end
end
