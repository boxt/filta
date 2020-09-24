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
          next if value.blank?

          results = results.where(key.to_s.to_sym => value)
        end

        results
      end
    end
  end
end
