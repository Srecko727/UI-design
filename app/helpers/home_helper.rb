require 'ruby-oci8'
module HomeHelper
	def connect
		oci=OCI8.new('hesun','092700Jimmy','oracle.cise.ufl.edu:1521/orcl')
		oci.exec('SELECT * FROM "G.AGRAWAL"."LABOR_DATA"') do |record|
				concat record.join("\b\n")
			end
		oci.logoff
	end
end
