ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Posts" do
          ul do
           Post.all.map do |post|
              li do
                para "#{post.title}: #{post.description}"
              end
            end
          end
        end
      end

      column do
        panel "Recent Posts" do
          ul do
            Link.all.map do |link|
              li do
                para "#{link.name}: #{link.description}"
              end
            end
          end
        end
      end
    end
  end # content
end