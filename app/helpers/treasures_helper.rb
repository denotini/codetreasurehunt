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

  private
  def safify(value)
    value.nil? ? nil : value.upcase
  end
end
