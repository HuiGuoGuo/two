# -*- encoding : utf-8 -*-
class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|

      t.string :appointment_things
      t.string :appointment_time
      t.string :appointment_space
      t.string :appointment_type
      t.string :appointment_people
      t.string :appointment_description
      t.belongs_to :user
      t.date :date

      t.timestamps
    end
  end
end
