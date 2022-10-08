# frozen_string_literal: true

# BEGIN
require 'date'

module Model

  def self.included(klass)
    klass.extend(ClassMethods)
  end

  def initialize(names = {})
    @params ||= {}
    self.class.attr_sample.each do |name, options|
      if names.has_key?(name)
        @params[name] = self.class.transform_value(names[name], options[:type])
      else
        @params[name] = self.class.transform_value(options[:default], options[:type])
      end
    end
  end

  module ClassMethods
    def transform_value(value, type)
      return if value.nil?
      case type
      when :integer
        value.to_i
      when :string
        value.to_s
      when :datetime
        DateTime.parse(value)
      when :boolean
        !!value
      else
        value
      end
    end
    
    def attribute(name, options = {})
      @attr_sample ||= {}
      @attr_sample[name] = options
      define_method name do
        @params[name]
      end
      define_method "#{name}=" do |value|
        @params[name] = self.class.transform_value(value, options[:type])
      end
    end
    attr_reader :attr_sample
  end

  def attributes
    @params
  end
end

# END





