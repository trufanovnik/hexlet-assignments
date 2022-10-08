# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  attr_accessor :url, :take_query, :params

  include Comparable

  extend Forwardable

  def initialize(url)
    @url = URI(url)
    @params = decode_query
  end

  def_delegators :@url, :host, :scheme, :to_s

  def <=>(other)
    to_s <=> other.to_s
  end

  def decode_query
    query = url.query || ''
    query.split('&').each_with_object({}) do |item, object|
      key, value = item.split('=')
      object[key.to_sym] = value
    end
  end

  def query_params
    params
  end

  def query_param(key, default = nil)
    params.fetch(key, default)
  end
end
# END
