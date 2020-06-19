package contractmanagementportal

class SOWController {

    def SOWService

    def index() {
        println 'I made it to index for SOW.'
    }

    def create(){
        println 'I made it to create for SOW.'
    }

    def save(){
        println 'I made it to save for SOW.'
        def sowInstance = new SOW(params)
        def masterAgreementID = params.masterAgreement
        println sowInstance.validate()
        SOWService.saveSOW(sowInstance)

        redirect(controller: "MasterAgreement", action: "show", id: masterAgreementID)
    }

    def edit(Long id){
        println 'I made it to edit for SOW'
        def sowInstance = SOW.get(id)
        render(view: "edit", model: [sow: sowInstance])
    }

    def update(Long id){
        println("I made it to update for SOW")
        def sowInstance = SOW.get(id)
        sowInstance.properties = params
        SOWService.saveSOW(sowInstance)

        redirect(action: "show", id: sowInstance.id)
    }

    def show(Long id){
        println 'I made it to show for SOW.'
        def sowInstance = SOW.get(id)
        def invList = sowInstance.getSowInvoices()
        println invList

        render(view: "show", model: [sow: sowInstance, inv: invList])
    }

    def list(){
        def sowList = SOW.list(sort: "name", order: "asc")
        return sowList
    }

    def delete(Long id){
        println 'I made it to delete for SOW'
        def sowInstance = SOW.get(id)
        def masterAgreementID = sowInstance.getMasterAgreement().id
        SOWService.deleteSOW(sowInstance)

        redirect(controller: "masterAgreement", action: "show", id: masterAgreementID)
    }

    def invoiceList(Long id){
        println 'I made it to invoiceList for SOW'
        def sowInstance = SOW.get(id)
        return sowInstance.getSowInvoices()
    }
}
