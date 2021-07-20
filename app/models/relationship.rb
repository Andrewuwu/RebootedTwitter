class Relationship < ApplicationRecord
    belongs_to :follower, class_name: "Model"
    belongs_to :followed, class_name: "Model"
end
