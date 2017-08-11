# These are 'Stacks' in the UI
module Rancher
  module Api
    class Project
      include Her::Model
      include Helpers::Model

      has_many :machines
      has_many :hosts
      has_many :stacks
      has_many :services
    end
  end
end