##joiner class##

class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date_string, patient, doctor)
        @date = date_string
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end
