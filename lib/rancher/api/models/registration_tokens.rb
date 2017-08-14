module Rancher
  module Api
    class Registrationtokens
      include Her::Model
      include Helpers::Model

      belongs_to :project
    end
  end
end