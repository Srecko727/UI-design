
require 'ruby-oci8'
module HomeHelper
	def connect
		#username and password needs to be edited to yours
		oci=OCI8.new('hesun','092700Jimmy','oracle.cise.ufl.edu:1521/orcl')
		oci.exec('SELECT L.LABOR_FORCE, D.D_YEAR, D.D_MONTH
				FROM "G.AGRAWAL"."LABOR_DATA" L, "G.AGRAWAL"."DATEVALUES" D
				WHERE L.D_ID=D.D_ID') do |record|
				concat record.join("\b\n")
			end
		oci.logoff
	end
end
