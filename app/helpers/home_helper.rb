require 'ruby-oci8'

module HomeHelper
	def connect
		oci=OCI8.new('hesun','092700Jimmy','oracle.cise.ufl.edu:1521/orcl')
		oci.exec('select name from country fetch first 10 rows only') do |record|
				puts record.join(',')
			end
	end
end
