module ApplicationHelper

  def flash_class(type)
    case type
    when :alert
      "alert-error"
    when :notice
      "aler-success"
    else
      ""
    end
  end
end
