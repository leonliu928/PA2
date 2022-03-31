module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        css_class = column == sort_column ? "hilite" : nil
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end
end
