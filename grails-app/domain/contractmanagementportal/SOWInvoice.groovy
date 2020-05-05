package contractmanagementportal

class SOWInvoice {
    String invoiceNumber
    Number amount

    static belongsTo = [sow: SOW]  //will cascade on contractor, master agreement, and/or SOW delete

    static constraints = {
    }
}
