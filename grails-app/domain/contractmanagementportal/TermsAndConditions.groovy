package contractmanagementportal

class TermsAndConditions {
    String name
    String pointOfContactFName
    String pointOfContactLName
    String pointOfContactPhone
    String pointOfContactEmail
    Double spendCap
    Date   startDate
    Date   endDate
    Office office  //relationship type?
    BidTypeTermsAndConditions bidType  //relationship type?
    TermsAndConditionsStatus termsAndConditionsStatus  //relationship type?

    static hasMany = [termsAndConditionsInvoices: TermsAndConditionsInvoice]
    static belongsTo = [contractor: Contractor]

    static constraints = {
    }
}
