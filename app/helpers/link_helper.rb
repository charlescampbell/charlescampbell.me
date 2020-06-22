# frozen_string_literal: true

module LinkHelper
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
end
