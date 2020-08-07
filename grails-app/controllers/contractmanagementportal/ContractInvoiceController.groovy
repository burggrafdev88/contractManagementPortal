package contractmanagementportal

class ContractInvoiceController {
    def contractInvoiceService

    def index() { }

    def create(){
        println 'I made it to create for ContractInvoices.'
    }

    def save(){
        println 'I made it to save for contractInvoice.'
        def contractInvoiceInstance = new ContractInvoice(params)
        contractInvoiceService.saveContractInvoice(contractInvoiceInstance)

//        TermsAndConditionsInvoiceService.saveTermsAndConditionsInvoice(termsAndConditionsInvoiceInstance)
        println 'next line...'
        println contractInvoiceInstance.getContract().id

        render 'test'

//        redirect(controller: "Contract", action: "show", id: contractInvoiceInstance.getContract().id)
    }
}
