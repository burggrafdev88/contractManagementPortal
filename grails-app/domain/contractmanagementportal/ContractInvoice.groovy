package contractmanagementportal

class ContractInvoice {
    String invoiceNumber
    Number amount

    static belongsTo = [contract: Contract]

    static constraints = {
    }
}
