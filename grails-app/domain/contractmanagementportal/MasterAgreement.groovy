package contractmanagementportal

class MasterAgreement {
    String pointOfContactFName
    String pointOfContactLName
    String pointOfContactPhoneNumber
    Number spendCap
    Date   beginDate
    Date   endDate
    Office office  //relationship type?
    BidType bidType  //relationship type?
    MasterAgreementStatus masterAgreementStatus  //relationship type?

    static hasMany = [sows: SOW]
    static belongsTo = [contractor: Contractor]  //will cascade on Contractor delete

    static constraints = {
    }
}
