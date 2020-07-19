package contractmanagementportal

class TermsAndConditionsInvoice {
    String invoiceNumber
    Double amount

    static belongsTo = [termsAndConditions: TermsAndConditions]  //will cascade on contractor or T&C delete

    static constraints = {
    }
}
