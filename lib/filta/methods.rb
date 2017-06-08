module Filta
  module Methods

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def filter(by)
        results = self.where(nil)

        by.each do |key, value|
          results = results.where("#{key}".to_sym => value) if value.present?
        end

        results
      end
    end

  end
end
