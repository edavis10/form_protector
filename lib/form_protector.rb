# FormProtector
require 'form_protector/view_helpers'

# install files
unless File.exists?(RAILS_ROOT + '/public/javascripts/form_protector/FormProtector.js')
  source = File.dirname(__FILE__) + "/../assets/javascripts/FormProtector.js"
  dest = RAILS_ROOT + '/public/javascripts/form_protector/'
  FileUtils.mkdir_p(dest)
  FileUtils.cp(source, dest + 'FormProtector.js')
end

# Hooks
ActionView::Base.send :include, FormProtector::ViewHelpers
