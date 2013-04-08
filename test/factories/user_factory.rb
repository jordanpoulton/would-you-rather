class UserFactory

  class << self


    def jordan_user
      User.create( first_name: "Jordan", last_name: "Poulton", email: "jordan@jordanpoulton.com", profile_name: "jordan123", password: 'Sesame01522', password_confirmation: 'Sesame01522')
    end

    def ed_user
      User.create( first_name: "Ed", last_name: "Poulton", email: "jordan@jordanpoulton.com", profile_name: "Edward456", password: 'Sesame01522', password_confirmation: 'Sesame01522')
    end

  end
end
