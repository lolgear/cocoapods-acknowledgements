require 'cocoapods_acknowledgements/markdown_parser'
require 'cocoapods_acknowledgements/generator'

module CocoaPodsAcknowledgements
  class HTMLGenerator
    class << self
      def generate_specs(target_description, sandbox, excluded, root_specs)
        # specs_metadata = [header]
        # root_specs.each do |spec|
        #   pod_root = sandbox.pod_dir(spec.name)
        #   platform = Pod::Platform.new(target_description.platform_name)
        #   file_accessor = file_accessor(spec, platform, sandbox)
        #   license_text = license_text(spec, file_accessor)

        #   spec_metadata = {
        #     "Title" => spec.name,
        #     "Type" => "PSGroupSpecifier",
        #     "FooterText" => license_text
        #   }
        #   specs_metadata << spec_metadata
        # end

        # specs_metadata << footer
        # metadata = {
        #   "PreferenceSpecifiers" => specs_metadata,
        #   "Title" => "Acknowledgements",
        #   "StringsTable" => "Acknowledgements"
        # }
      end
    end
  end
end