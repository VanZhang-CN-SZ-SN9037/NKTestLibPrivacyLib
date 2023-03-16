# Uncomment the next line to define a global platform for your project
source "git@gitee.com:LuckyVan_admin/nkmobile-paa-sspecs.git"

platform :ios, '14.0'

use_frameworks! :linkage => :static
use_modular_headers!


install! 'cocoapods',
      :deterministic_uuids => false,
      :lock_pod_sources => false,
      :disable_input_output_paths => true,
      :generate_multiple_pod_projects => true,
      :preserve_pod_file_structure => true

inhibit_all_warnings!

post_install do | installer |
      installer.pods_project.targets.each do |target|
         target.build_configurations.each do |config|
            puts target.name
         end
      end
     aggregate_target = installer.aggregate_targets[0]
     aggregate_build_settings_by_config = aggregate_target.xcconfigs.collect { |k, v| [k, v.to_hash] }.to_h
     puts aggregate_build_settings_by_config
     installer.pod_target_subprojects.each do |pod_subproject|
       pod_subproject.native_targets.each do |pod_native_target|
         puts pod_native_target
         pod_native_target.build_configurations.each do |build_configuration|
           aggregate_build_settings = aggregate_build_settings_by_config[build_configuration.name]
           build_configuration.build_settings['HEADER_SEARCH_PATHS'] = "${PODS_ROOT}/Headers/Public"
           build_configuration.build_settings['FRAMEWORK_SEARCH_PATHS'] = aggregate_build_settings['FRAMEWORK_SEARCH_PATHS']
           build_configuration.build_settings['LIBRARY_SEARCH_PATHS'] = aggregate_build_settings['LIBRARY_SEARCH_PATHS']
         end
       end
     end
end


target 'NKTestLibPrivacyLib-Example' do
#   pod 'NKTestLibPrivacyLib', :path => '/Users/VZha33/GitHub/Temp/NKTestLibPrivacyLib/NKTestLibPrivacyLib.podspec'
#   ,:subspecs => ['CommerceUI']
   pod 'NKTestLibPrivacyLib',:subspecs => ['CommerceUI']
end

