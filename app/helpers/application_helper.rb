module ApplicationHelper
    def flash_message(message, klass)
        content_tag(:div, class: "alert alert-#{klass}") do
            concat content_tag(:button, 'x', class: 'close', date: {dismiss: 'alart'})
            concat raw(message)
        end
    end
end

