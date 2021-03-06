class MontessoriTraining < ApplicationRecord
  # validates :name, :location, :diploma, :degree, :degree_date, presence: true
  belongs_to :application

  def pretty_date(date)
    if date
      date.strftime("%m/%d/%Y")
    end
  end
end
