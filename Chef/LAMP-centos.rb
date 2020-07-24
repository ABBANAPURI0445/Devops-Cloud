yum_package 'httpd' do
    action :install
end
#service 'httpd' do
 #   action :start
#end
service 'httpd' do
    action [ :start , :enable ]
  end

#yum_package 'php' do
 #   action :install
#end
#yum_package 'php-mysql' do
   # action :install
#end
['php','php-mysql'].each do |packages_centos|
    package packages_centos do
      action :install
    end
  end
service 'httpd' do
    action :restart
end
cookbook_file '/var/www/html/info.php' do
    source 'info.php'
    action :create
end





