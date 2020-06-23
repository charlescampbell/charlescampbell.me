# frozen_string_literal: true

module LinkHelper
  def active_link?(page)
    return 'active' if request.original_url.to_s.include?(page)

    ''
  end

  def active_home?
    return 'active' if request.original_url.to_s == root_url

    ''
  end

  def add_tag_link(education)
    link_to "<i class='fa fa-tag' aria-hidden='true'></i>".html_safe,
            new_tag_path(education),
            {
              remote: true,
              'data-toggle': 'modal',
              'data-target': '#modal-window',
              class: 'focused-link-success'
            }
  end

  def add_link_for(data); end

  def edit_link_for(data); end

  def remove_link_for(data); end
end
