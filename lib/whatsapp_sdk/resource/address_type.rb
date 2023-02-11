# typed: strict
# frozen_string_literal: true

module WhatsappSdk
  module Resource
    class AddressType < T::Enum
      extend T::Sig

      enums do
        Home = new("Home")
        Work = new("Work")
      end
    end
  end
end
