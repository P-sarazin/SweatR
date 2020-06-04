class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @next_bookings = @bookings.select{|booking| booking.lesson.appointment >= Time.now}.sort_by { |booking| booking.lesson.appointment }.reverse
    @previous_bookings = @bookings.select{|booking| booking.lesson.appointment < Time.now}.sort_by { |booking| booking.lesson.appointment }
  end
end
