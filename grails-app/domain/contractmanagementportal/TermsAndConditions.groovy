package contractmanagementportal

class TermsAndConditions {
    Number spendCap
    Office office  //relationship type?
    BidType bidType  //relationship type?
    TermsAndConditionsStatus termsAndConditionsStatus  //relationship type?

    static hasMany = [termsAndConditionsInvoices: TermsAndConditionsInvoice]
    static belongsTo = [contractor: Contractor]

    static constraints = {
    }
}
