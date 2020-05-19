package contractmanagementportal

class Contractor {
    String name
    String street
    String city
    String state
    String zip
    PaymentType paymentType  //relationship type?
//    ContractorStatus contractorStatus  //relationship type?
//  CertificateOfInsurance certificateOfInsurance  //unidirectional unique one to one relationship
//    ContractorStatus

    static hasMany = [masteragreements: MasterAgreement, contracts: Contract, termsAndConditions: TermsAndConditions]

    static constraints = {
//        certificateOfInsurance unique: true
//        certificateOfInsurance nullable: true

        /*remove nullable: true for those below once fields are added to form
        paymentType nullable: true
        contractorStatus nullable: true*/

    }
}


