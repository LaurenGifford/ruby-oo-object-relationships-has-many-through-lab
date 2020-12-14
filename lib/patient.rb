class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appt| appt.patient == self}
    end

    def doctors
        appointments.collect{|appt| appt.doctor}
    end
end

#1. instance method, `#doctors`, that iterates over
#   that patient's `Appointment`s and collects the doctor that belongs to each
#   `Appointment`.