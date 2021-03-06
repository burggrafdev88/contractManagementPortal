package contractmanagementportal


class ContractorController {
    def contractorService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        println 'I made it to index for Contractors'
        def contractorList = Contractor.list(sort: "name", order: "asc")
        println contractorList
        render(view: "index", model: [c: contractorList])
    }

    def create(){
        println 'I made it to create for Contractors.'
        def paymentTypeList = PaymentType.getAll()
        println paymentTypeList

        render(view: "create", model: [p: paymentTypeList])
    }

    def save(){
        println 'I made it to save for Contractors.'

        def contractorInstance = new Contractor(params)
        contractorService.saveContractor(contractorInstance)

        redirect(action: "index")
    }

    /*Will probably want to delete this code later
    def listPaymentTypes(){
//        def paymentTypeList = PaymentType.findAll(sort: "name", order: "asc")
        def paymentTypeList = PaymentType.list()
        [p:paymentTypeList]
    }  */

    def edit(Long id){
        println 'I made it to edit for Contractors'
        def contractorInstance = Contractor.get(id)
        render(view: "edit", model: [contractor: contractorInstance])
    }

    def update(Long id){
        println("I made it to update for Contractors")
        def contractorInstance = Contractor.get(id)
        contractorInstance.properties = params

        contractorService.saveContractor(contractorInstance)
        redirect(action: "index")
    }

    def delete(Long id){
        println 'I made it to delete for Contractors'
        def contractorInstance = Contractor.get(id)
        contractorService.deleteContractor(contractorInstance)

        redirect(action: "index")
    }

}
