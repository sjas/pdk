require 'pdk'
require 'pdk/cli/exec'

module PDK
  module Validate
    class PuppetParser
      def self.cmd
        'puppet-parser-validate'
      end

      def self.invoke(report = nil)
        PDK.logger.info("Running #{cmd}")
        result = PDK::CLI::Exec.execute(cmd)

        result
      end
    end
  end
end