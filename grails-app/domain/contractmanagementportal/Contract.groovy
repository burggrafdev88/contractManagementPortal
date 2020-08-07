package contractmanagementportal

class Contract {
    String name
    String pointOfContactFName
    String pointOfContactLName
    String pointOfContactPhone
    String pointOfContactEmail
    Double spendCap
    Date   startDate
    Date   endDate
    Office office  //relationship type?
    BidTypeMasterAgreement bidType  //relationship type?
    ContractStatus contractStatus  //relationship type?

    static hasMany = [contractInvoices: ContractInvoice]
    static belongsTo = [contractor: Contractor]

    static constraints = {
    }
}
