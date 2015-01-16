# -*- encoding : utf-8 -*-
class Appointment < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessible :appointment_time, :appointment_things, :appointment_space, :date ,:appointment_type, :appointment_people, :appointment_description, :user_id

   APPOINTMENT_TYPES = {"sports" => "运动", "eating" => "用餐", "traveling" => "旅游", "appointment" => "约会","reading" => "看书", "else"=> "其它"}

  def self.get_appointment_types
    APPOINTMENT_TYPES.invert.to_a
  end

end
