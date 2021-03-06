module FormProtector
  module ViewHelpers
    # Include the required Javascript libraries
    def javascript_include_form_protector
      javascript_include_tag 'form_protector/FormProtector'
    end

    # Protect the form with the <tt>dom_id</tt> by prompting the user
    # before they nagivate away from the page.
    def protect_form(dom_id, options={})
      javascript_tag("var #{dom_id}_protector = new FormProtector('#{dom_id}')")
    end
  end
end

