module Devise
  module Orm
    module MongoMapper
      module Hook
        def devise_modules_hook!
          extend Schema
          yield
          return unless Devise.apply_schema
          devise_modules.each { |m| send(m) if respond_to?(m, true) }
        end
      end

      module Schema
        include Devise::Schema

        # Tell how to apply schema methods
        def apply_devise_schema(name, type, options={})
          type = Time if type == DateTime
          key name, type, options
        end
      end
    end
  end
end

module MongoMapper
  module Devise
    extend ActiveSupport::Concern

    module ClassMethods
      include ::Devise::Models
      include ::Devise::Orm::MongoMapper::Hook

      def find(*args)
        if args.first == :first
          args.shift
          first(*args)
        else
          super
        end
      end
    end
  end
end
