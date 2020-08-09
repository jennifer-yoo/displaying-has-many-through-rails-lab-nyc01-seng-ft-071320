class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def display_appt
        appt = self.appointment_datetime
        self.appointment_datetime = "#{appt.strftime('%B')} #{appt.strftime('%e')}, #{appt.year} at #{appt.strftime('%k:%M')}"
    end
end
