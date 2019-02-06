require 'cocoapods_acknowledgements/auxiliaries'
module CocoaPodsAcknowledgements
  class Generator
    class << self
      include Auxiliaries

      def generate_specs(target_description, sandbox, excluded, root_specs)
        []
      end

      def generate(target_description, sandbox, excluded)
        root_specs = target_description.specs.map(&:root).uniq.reject {|spec| excluded.include?(spec.name)}
        return nil if root_specs.empty?
        generate_specs(target_description, sandbox, excluded, root_specs)
      end
    end
  end
end

module CocoaPodsAcknowledgements
  class Generator
    class SpecObject
      attr_accessor :name, :version, :authors, :socialMedialURL, :summary,
                    :description, :licenseType, :licenseText, :homepage
      def initialize(options)
        @name = options["name"]
        @version = options["version"]
        @authors = options["authors"]
        @socialMediaURL = options["socialMediaURL"]
        @summary = options["summary"]
        @description = options["description"]
        @licenseType = options["licenseType"]
        @licenseText = options["licenseText"]
        @homepage = options["homepage"]
      end
    end
  end
end