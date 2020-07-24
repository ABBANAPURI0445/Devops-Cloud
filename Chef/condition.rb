if platform?('debian', 'ubuntu')
   apt_package 'apache2' do
       action :install
   end
   
  else
    yum_package 'httpd' do
        action :install
    end
    
  end 

  package 'package_name' do
    case node['platform']
    when 'centos', 'redhat', 'fedora', 'suse'
      package_name 'httpd'
    when 'debian', 'ubuntu'
      package_name 'apache2'
    when 'arch'
      package_name 'apache'
    end
    action :install
  end