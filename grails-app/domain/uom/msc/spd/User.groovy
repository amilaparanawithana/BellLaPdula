package uom.msc.spd

class User {

    String username
    String password
    String maxSecurityLevel
    String currentSecurityLevel

    static constraints = {
        maxSecurityLevel nullable: true
        currentSecurityLevel nullable: true
    }
}
