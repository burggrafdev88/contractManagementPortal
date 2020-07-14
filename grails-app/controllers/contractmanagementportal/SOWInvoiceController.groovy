package contractmanagementportal

class SOWInvoiceController {
    def SOWInvoiceService

    def index() {
        println 'I made it to index for SOWInvoice.'
    }

    def create(){
        println 'I made it to create for SOWInvoice.'
    }

    def save(){
        println 'I made it to save for SOWInvoice.'
        def sowInvoiceInstance = new SOWInvoice(params)
        SOWInvoiceService.saveSOWInvoice(sowInvoiceInstance)
        println 'next line...'
        println sowInvoiceInstance.sow.id

        redirect(controller: "SOW", action: "show", id: sowInvoiceInstance.sow.id)
    }

    def edit(Long id){
        println 'I made it to edit for SOWInvoice'
        def sowInvoiceInstance = SOWInvoice.get(id)
        println sowInvoiceInstance.invoiceNumber

        render(view: "edit", model: [sowInvoice: sowInvoiceInstance])
    }

    def update(Long id){
        println("I made it to update for SOWInvoice")
        def sowInvoiceInstance = SOWInvoice.get(id)
        sowInvoiceInstance.properties = params
        SOWInvoiceService.saveSOWInvoice(sowInvoiceInstance)

        def sowID = sowInvoiceInstance.getSow().id

        redirect(controller: "SOW", action: "show", id: sowID)
    }

    def show(){
        println 'I made it to show for SOWInvoice'
    }

    def delete(Long id){
        println 'I made it to delete for sowInvoice.'
        def sowInvoiceInstance = SOWInvoice.get(id)
        def sowID = sowInvoiceInstance.getSow().id
        SOWInvoiceService.deleteSOWInvoice(sowInvoiceInstance)

        redirect(controller: "SOW", action: "show", id: sowID)
    }

    def deleteFromMasterAgreementShowView(Long id, Long masterAgreementID){
        println 'I made it to delete for sowInvoice.'
        def sowInvoiceInstance = SOWInvoice.get(id)
        def idForMasterAgreement = masterAgreementID
        println 'Master Agreement ID' + idForMasterAgreement
        SOWInvoiceService.deleteSOWInvoice(sowInvoiceInstance)

        redirect(controller: "MasterAgreement", action: "show", id: idForMasterAgreement)
    }
}
