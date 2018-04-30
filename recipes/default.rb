if node['platform_family'] == 'windows'
	powershell_script 'Install IIS' do
		code 'Add-WindowsFeature Web-Server'
		guard_interpreter :powershell_script
		not_if '(Get-WindowsFeature -Name Web-Server).Installed'
	end

	service 'w3svc' do
		action [:enable, :start]
	end

	include_recipe 'WinBuntuWeb::winweb'
	
elsif node['platform_family'] == 'debian'
	apt_update 'Update the apt cache daily' do
		frequency 86_400
		action :periodic
	end

	apt_package 'apache2' do
	end

	service 'apache2' do
		supports status: true
		action [:enable, :start]
	end
  
	include_recipe 'WinBuntuWeb::debweb'
	
else
	puts "Denne serveren er ikke Windows eller Debian, vennligst bruk en annen kokebok!"
end

