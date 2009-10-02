module FormProtector
  module ViewHelpers
    def javascript_include_form_protector
      javascript_include_tag 'form_protector/FormProtector'
    end
    
    def protect_form(dom_id, options={})
      javascript_tag("var #{dom_id}_protector = new FormProtector('#{dom_id}')")
    end
  end
end

