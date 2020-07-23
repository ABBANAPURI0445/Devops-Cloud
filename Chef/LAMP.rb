apt_update 'updatepackages' do
    action :update
end
apt_package 'apache2' do
    action :install
end
service 'apache2' do
    action :restart
end
['php','libapache2-mod-php','php-mysql'].each do |packages|
    package packages do
        action :install
    end
end
service 'apache2' do
    action :restart
end
cookbook_file '/var/www/html/info.php' do
    source 'info.php'
    action :create
end




