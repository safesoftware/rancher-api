module Rancher
  module Api
    class Registries
      include ::Her::Model
      include Helpers::Model

      belongs_to :project
    end
  end
end
