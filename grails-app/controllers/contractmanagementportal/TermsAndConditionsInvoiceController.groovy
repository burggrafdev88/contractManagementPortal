package contractmanagementportal

class TermsAndConditionsInvoiceController {
    def TermsAndConditionsInvoiceService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
}
