require 'oci8'
module HomeHelper
	def connect
		#username and password needs to be edited to yours
		con=OCI8.new('username','password','oracle.cise.ufl.edu:1521/orcl')
		
		cursor = con.exec("select name from country
		fetch first 10 rows only")
		while r = cursor.fetch()
			p r.join(',')
		end
		cursor.close
		con.logoff
		return r
	end
end
