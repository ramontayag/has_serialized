module HasSerialized
  module ClassMethods
    extend ActiveSupport::Concern

    included do
      private

      # Creates the accessors so that you can assign values like so:
      # record.my_own_attribute = value
      # record.my_own_attribute # value
      def self.serialized_attr_accessor(serialized, accessors)
        accessors.keys.each do |k|
          define_method("#{k}") do
            self[serialized] && self[serialized][k]
          end
          define_method("#{k}=") do |value|
            self[serialized][k] = value
          end
        end
      end

      # Sets the default value of the serialized field
      def self.default_serialized_attr(serialized, accessors)
        method_name =  "set_default_#{serialized}"
        after_initialize method_name

        define_method(method_name) do
          self[serialized] = accessors if self[serialized].blank?
        end
      end
    end
  end
end
