require 'singleton'

module FinacleApi
  # Class used to initialize configuration object.
  class Config
    include ::Singleton
    attr_accessor :customer_details_table

    @@orm = :active_record

    def initialize
      @customer_details_table = "customer_details"
    end

    # Evaluates given block to provide DSL configuration.
    # @example Initializer for Rails
    #   FinacleApi::Config.set do
    #     orm :active_record
    #     customer_details_table "customer_details"
    #   end
    def self.set &block
      b = Block.new
      b.instance_eval &block
      @@orm = b.orm unless b.orm.nil?
      instance
    end

    def self.orm(orm = nil)
      @@orm = (orm ? orm.to_sym : false) || @@orm
    end

    def self.orm=(orm = nil)
      orm(orm)
    end

    def orm(orm=nil)
      self.class.orm(orm)
    end

    # Provides simple DSL for the config block.
    class Block
      attr_reader :orm, :customer_details_table
      # @see Config#orm
      def orm(orm = nil)
        @orm = (orm ? orm.to_sym : false) || @orm
      end

      def customer_details_table(name = nil)
        FinacleApi.config.customer_table_name = name
      end
    end
  end
end
