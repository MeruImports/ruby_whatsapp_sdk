# frozen_string_literal: true
# typed: true

module WhatsappSdk
  module Resource
    class Org
      extend T::Sig

      sig { returns(String) }
      attr_accessor :company

      sig { returns(String) }
      attr_accessor :department

      sig { returns(String) }
      attr_accessor :title

      sig { params(company: String, department: String, title: String).void }
      def initialize(company:, department:, title:)
        @company = company
        @department = department
        @title = title
      end

      sig { returns(Hash) }
      def to_h
        {
          company: @company,
          department: @department,
          title: @title
        }
      end
    end
  end
end
