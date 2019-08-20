# frozen_string_literal: true

module Filta
  module Methods
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def filta(by)
        results = where(nil)

        by.each do |key, value|
          next unless value.present?

          results = results.where(key.to_s.to_sym => value)
        end

        results
      end

      # TODO: This method is now deprecated and should be removed at a later date
      def filter(by)
        filta(by)
      end
    end
  end
end
