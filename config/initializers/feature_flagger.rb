require 'redis-namespace'
require 'feature_flagger'

FeatureFlagger.configure do |config|
  redis = Redis.new(host: ENV['REDIS_HOST'])
  namespaced = Redis::Namespace.new('feature_flagger', redis: redis)
  config.storage = FeatureFlagger::Storage::Redis.new(namespaced)
end
