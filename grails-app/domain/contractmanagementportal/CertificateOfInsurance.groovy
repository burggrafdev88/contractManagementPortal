package contractmanagementportal

class CertificateOfInsurance {
    Date expirationDate
    //String location

    static belongsTo = [contractor: Contractor]

    static constraints = {
    }
}
