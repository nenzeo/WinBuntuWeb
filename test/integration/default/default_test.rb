if os.family == 'windows'
	describe file('c:\\inetpub\\wwwroot\\Default.htm') do
		its('size') { should > 2300 }
		its('size') { should < 3000 }
	end

	describe windows_feature('Web-Server') do
		it { should be_installed }
	end

	describe service 'w3svc' do
		it { should be_running }
	end

	describe command '(Invoke-WebRequest -UseBasicParsing localhost).StatusCode' do
		its('stdout') { should match /200/ }
	end

	
elsif os.family == 'debian'
	describe file('/var/www/html/index.html') do
		its('size') { should > 2300 }
		its('size') { should < 3000 }
	end

	describe package('apache2') do
		it { should be_installed }
	end

	describe service 'apache2' do
		it { should be_running }
	end

	
else 
	puts "Bra at du tester, men serveren er fortsatt ikke Windows eller Debian..."
end


