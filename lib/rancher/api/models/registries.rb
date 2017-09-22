module Rancher
  module Api
    class Registry
      include Her::Model
      include Helpers::Model

      collection_path '/v2-beta/projects/:project_id/registries'

      belongs_to :project
    end
  end
end
