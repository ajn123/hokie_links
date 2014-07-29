ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Recent Posts" do
          ul do
           Post.order('created_at DESC').each do |post|
              li do
                para "#{post.title}: #{post.description}"
              end
            end
          end
        end
      end

      column do
        panel "Recent Links" do
          ul do
            Link.order('created_at DESC').each do |link|
              li do
                a href: link.url do
                  link.url[0..30]
                end
                para "#{link.name}: #{link.description}"
              end
            end
          end
        end
      end
    end
  end # content
end
