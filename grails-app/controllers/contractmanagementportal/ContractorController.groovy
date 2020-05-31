package contractmanagementportal

class ContractorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        println 'I made it to index for Contractors'
        def contractorList = Contractor.list(sort: "name", order: "asc")
        render(view: "index", model: [c: contractorList])
    }

    def create(){
        println 'I made it to create for Contractors.'
//        [paymentTypes: PaymentType.list()]
    }

    def save(){
        println 'I made it to save for Contractors.'
        def contractorInstance = new Contractor(params)
        contractorInstance.save()
        redirect(action: "index")
    }

    /*Will probably want to delete this code later
    def listPaymentTypes(){
//        def paymentTypeList = PaymentType.findAll(sort: "name", order: "asc")
        def paymentTypeList = PaymentType.list()
        [p:paymentTypeList]
    }  */

    def edit(){
        println 'I made it to edit for Contractors'
        def id = params.id
        def name = params.name
        def street = params.street
        def city = params.city
        def state = params.state
        def zip = params.zip
        def paymentType = params.paymentType

        render(view: "edit")
    }

    def update(Long id){
        println("I made it to update for Contractors")
        def contractorInstance = Contractor.get(id)
        contractorInstance.properties = params
        contractorInstance.save()
        redirect(action: "index")
    }

}
