package contractmanagementportal

class ContractInvoice {
    String invoiceNumber
    Double amount

    static belongsTo = [contract: Contract]    //will cascade on contractor or Contract delete

    static constraints = {
    }
}
