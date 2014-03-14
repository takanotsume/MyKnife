
package "locales" do
    action :install
end

execute "Update locale" do
    command "update-locale LANG=#{node[:locale][:lang]} LC_ALL=#{node[:locale][:lang]}"
end