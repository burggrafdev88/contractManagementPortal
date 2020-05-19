package contractmanagementportal

class MasterAgreement {
    String name
    String pointOfContactFName
    String pointOfContactLName
    String pointOfContactPhone
    String pointOfContactEmail
    Double spendCap
    Date   startDate
    Date   endDate
    Office office  //relationship type?
    BidType bidType  //relationship type?
    MasterAgreementStatus masterAgreementStatus  //relationship type?

    static hasMany = [sows: SOW]
    static belongsTo = [contractor: Contractor]  //will cascade on Contractor delete

    static constraints = {
    }
}
