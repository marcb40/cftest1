component {
    public string function getFullName (String firstName, String lastName) {
        var fullName = arguments.firstName & " " & arguments.lastName;
        return fullName;
    }

    public string function getGreeting (String firstName, String lastName) {

        var fullName = getFullName(argumentCollection=arguments);
        var greeting = "Hello, " & fullName;

        return greeting;
    }
}