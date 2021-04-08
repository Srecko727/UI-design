require 'oci8'
module HomeHelper
	def connect
		#username and password needs to be edited to yours
		oci=OCI8.new('username','password','oracle.cise.ufl.edu:1521/orcl')
		oci.exec('select name,code from country fetch first 10 rows only') do |record|
				concat record.join("\b\n")
			end
		oci.logoff
	end
end

	end
end
