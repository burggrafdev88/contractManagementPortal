package contractmanagementportal

class TermsAndConditionsInvoice {
    String invoiceNumber
    Number amount

    static belongsTo = [termsAndConditions: TermsAndConditions]

    static constraints = {
    }
}
