package contractmanagementportal

class Contract {
    Number spendCap
    Office office  //relationship type?
    BidTypeMasterAgreement bidType  //relationship type?
    ContractStatus contractStatus  //relationship type?

    static hasMany = [contractInvoices: ContractInvoice]
    static belongsTo = [contractor: Contractor]

    static constraints = {
    }
}
