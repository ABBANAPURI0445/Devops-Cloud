apt_update 'update' do
    action :update
end
apt_package 'apache2' do
    action :install
end

apt_package 'apache2' do
    action :remove
end



