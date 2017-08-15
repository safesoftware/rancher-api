module Rancher
  module Api
    class Schema
      include ::Her::Model
      include Helpers::Model

      belongs_to :project
    end
  end
end
