module ApplicationHelper
  def svg_icon(name, options = {})
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    return nil unless File.exist?(file_path)

    file = File.read(file_path).html_safe
    doc = Nokogiri::HTML::DocumentFragment.parse(file)
    svg = doc.at_css('svg')

    options.each { |attr, value| svg[attr.to_s] = value } if svg

    doc.to_html.html_safe
  end
end
