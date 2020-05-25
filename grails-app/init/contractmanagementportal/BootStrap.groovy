package contractmanagementportal

class BootStrap {

    def init = { servletContext ->
        new PaymentType(name: "ACH").save()
        new PaymentType(name: "Credit Card").save()

        new BidType(name: "Competitive - Formal - RFP").save()
        new BidType(name: "Competitive - Informal").save()
        new BidType(name: "No Bid").save()
        new BidType(name: "Sole Source").save()
        new BidType(name: "Exception to Bid").save()

        new ContractStatus(status: "Active").save()
        new ContractStatus(status: "Inactive").save()

        new ContractorStatus(status: "Active").save()
        new ContractorStatus(status: "Inactive").save()

        new Office(name: "District").save()
        new Office(name: "Kansas City").save()
        new Office(name: "Denver").save()
        new Office(name: "Oklahoma City").save()
        new Office(name: "Omaha").save()

        new MasterAgreementStatus(status: "Active").save()
        new MasterAgreementStatus(status: "Inactive").save()

//        new Contractor(name: "Moore Engineering", street: "1800 Southwest Boulevard", city: "Kansas City", state: "MO",
//        zip: "64108", payment_type_id: 1).save()

    }
    def destroy = {
    }
}
