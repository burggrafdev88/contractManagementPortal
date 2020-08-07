package contractmanagementportal

class TermsAndConditionsInvoiceController {
    def TermsAndConditionsInvoiceService

    static allowedMethods = [save: "POST", update: "POST"]

    def index() {

    }

    def create(){
        println 'I made it to create for TermsAndConditionsInvoice.'
    }

    def save(){
        println 'I made it to save for TermsAndConditionsInvoice.'
        def termsAndConditionsInvoiceInstance = new TermsAndConditionsInvoice(params)
        TermsAndConditionsInvoiceService.saveTermsAndConditionsInvoice(termsAndConditionsInvoiceInstance)
        println 'next line...'
        println termsAndConditionsInvoiceInstance.getTermsAndConditions().id

        redirect(controller: "TermsAndConditions", action: "show", id: termsAndConditionsInvoiceInstance.getTermsAndConditions().id)
    }

    def edit(Long id, Long termsAndConditionsID){
        println 'I made it to edit for termsAndConditionsInvoice.'
        def termsAndConditionsInvoiceInstance = TermsAndConditionsInvoice.get(id)
        println termsAndConditionsInvoiceInstance.invoiceNumber

        render (view: "edit", model: [termsAndConditionsInvoice: termsAndConditionsInvoiceInstance])
    }

    def update(Long id){
        println 'I made it to update for termsAndConditionsInvoice.'
        def termsAndConditionsInvoiceInstance = TermsAndConditionsInvoice.get(id)
        termsAndConditionsInvoiceInstance.properties = params
        TermsAndConditionsInvoiceService.saveTermsAndConditionsInvoice(termsAndConditionsInvoiceInstance)
        redirect(controller: "TermsAndConditions", action: "show", id: termsAndConditionsInvoiceInstance.getTermsAndConditions().id)
    }

    def delete(Long id){
        println 'I made it to delete for termsAndConditionsInvoice'

        def termsAndConditionsInvoiceInstance = TermsAndConditionsInvoice.get(id)
        def termsAndConditionsID = termsAndConditionsInvoiceInstance.getTermsAndConditionsId()
        TermsAndConditionsInvoiceService.deleteTermsAndConditionsInvoice(termsAndConditionsInvoiceInstance)

        redirect(controller: "TermsAndConditions", action: "show", id: termsAndConditionsID)
    }
}
