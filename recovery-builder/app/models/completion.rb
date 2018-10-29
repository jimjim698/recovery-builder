class Completion < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal


  def complete_goal
    if self.goal.name == "Get Job"
      employment_goal
    elsif self.goal.name == "Assignment 1"
      assignment_1_goal
    elsif self.goal.name == "Assignment 2"
      assignment_2_goal
    else
      complete
    end
  end

  def complete
    points = self.user.points + self.goal.point_value
    self.user.update(points: points)
    "Great Job!"
  end

  def employment_goal
    if self.user.employed
      "Sorry you cannot complete this goal twice"
    else
      self.user.employed = true
      complete
    end
  end

  def assignment_1_goal
    if self.user.assignment_1
      "Sorry you cannot complete this goal twice"
    else
      self.user.assignment_1 = true
      complete
    end
  end



  def assignment_2_goal
    if self.user.assignment_2
      "Sorry you cannot complete this goal twice"
    else
      self.user.assignment_2 = true
      complete
    end
  end



end
