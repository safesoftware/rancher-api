module Rancher
  module Api
    class Setting
      include Her::Model
      include Helpers::Model

      belongs_to :project
    end
  end
end
