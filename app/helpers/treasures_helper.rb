module TreasuresHelper
  def toggle_tab(status)
    if status == safify(params[:status])
      'class=active'
    else
      ''
    end
  end

  def treasure_page_title
    unless params[:status].nil?
      "#{params[:status].humanize} Treasures"
    end
  end

  def treasure_label(status)
    case status
      when Treasure::OPEN
        "label-danger"
      when Treasure::ASSIGNED
        "label-warning"
      when Treasure::CLOSED
        "label-success"
    end
  end

  private
  def safify(value)
    value.nil? ? nil : value.upcase
  end
end
