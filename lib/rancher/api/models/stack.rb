module Rancher
  module Api
    class Stack
      include Her::Model
      include Helpers::Model

      collection_path '/v2-beta/projects/:project_id/stacks'

      belongs_to :project
      has_many :services
    end
  end
end
