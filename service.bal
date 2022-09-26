import ballerinax/java.jdbc;
import ballerina/http;


# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + location - the input string location
    # + return - string name with hello message or error
  
    resource function post uploadFuelData(string location, boolean fuelAvailability = false) returns string|error {
        // Send a response back to the caller.
        if location is "" {
            return error("name should not be empty!");
        }
        jdbc:Client jdbcEp = check new (url = "");
        //jdbcEp.close();
        if location is "" {
            jdbc:Client jdbcEp1 = check new (url = "");
            return error("Sorry, Invalid pertol station!");
        } else {

        }
        return "Hello, " + location + "Thanks for your information";
    }
}
