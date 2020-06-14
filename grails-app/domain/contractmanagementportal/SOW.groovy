package contractmanagementportal

class SOW {
    String name
    Double spendCap


    static hasMany = [sowInvoices: SOWInvoice]
    static belongsTo = [masterAgreement: MasterAgreement]  //will cascade on Contractor and/or MasterAgreement delete

    static constraints = {

    }
}
