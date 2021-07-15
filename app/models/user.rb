class User < ApplicationRecord
  include FeatureFlagger::Model
end
