class PagesController < ApplicationController
 
  def welcome
  end

  def volunteer
    @activities = Activity.all
    @shifts = Shift.all
  end

  def contact
  end

end
