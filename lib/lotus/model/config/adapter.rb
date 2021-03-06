module Lotus
  module Model
    module Config
      # Configuration for the adapter
      #
      # Lotus::Model has its own global configuration that can be manipulated
      # via `Lotus::Model.configure`.
      #
      # New adapter configuration can be registered via `Lotus::Model.adapter`.
      #
      # @see Lotus::Model.adapter
      #
      # @example
      #   require 'lotus/model'
      #
      #   Lotus::Model.configure do
      #     adapter :sql, 'postgres://localhost/database'
      #   end
      #
      # Registered adapters can be retrieved via `Lotus::Model.adapters`
      #
      # @see Lotus::Model.adapters
      #
      # @example
      #   Lotus::Model.adapter[:sql]
      #   # => Lotus::Model::Config::Adapter(name: :sql, uri: 'postgres://localhost/database')
      #
      # @since 0.2.0
      class Adapter
        # @return name [Symbol] the unique adapter name
        #
        # @since 0.2.0
        #
        # @see Lotus::Config::Adapter#name
        attr_reader :name

        # @return uri [String] the adapter URI
        #
        # @since 0.2.0
        #
        # @see Lotus::Config::Adapter#uri
        attr_reader :uri

        # Initialize an adapter configuration instance
        #
        # @return [Lotus::Model::Config::Adapter] a new apdapter configuration's
        #   instance
        #
        # @since 0.2.0
        def initialize(name, uri)
          @name, @uri, @default = name, uri
        end
      end
    end
  end
end
