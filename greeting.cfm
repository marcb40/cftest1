<cffunction name="getFullName" output="false" access="public" returnType="string">
     <cfargument name="firstName" type="string" required="false" default="" />
     <cfargument name="lastName" type="string" required="false" default="" />

	<cfset var fullName = arguments.firstName & " " & arguments.lastname />
	
	<cfreturn fullName />
</cffunction>