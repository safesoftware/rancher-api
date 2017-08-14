module Rancher
  module Api
    class Host
      include Her::Model
      include Helpers::Model

      belongs_to :project
    end
  end
end
