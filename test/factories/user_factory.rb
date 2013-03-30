class UserFactory

  class << self


    def jordan_user
      User.new( first_name: "Jordan", last_name: "Poulton", email: "j@j.com", profile_name: "jordan", password: 'Sesame01522', password_confirmation: 'Sesame01522')
    end

    def ed_user
      User.new( first_name: "Ed", last_name: "Poulton", email: "j@j.com", profile_name: "Edward", password: 'Sesame01522', password_confirmation: 'Sesame01522')
    end

  end
end
