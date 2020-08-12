package contractmanagementportal

class ContractInvoiceController {
    def contractInvoiceService

    def index() { }

    def create(){
        println 'I made it to create for ContractInvoices.'
    }

    def edit(Long id){
        println 'I made it to edit for Contract Invoice'
        def contractInvoiceInstance = ContractInvoice.get(id)

        render(view: "edit", model: [contractInvoice: contractInvoiceInstance])
    }

    def save(){
        println 'I made it to save for contractInvoice.'

        def contractInvoiceInstance = new ContractInvoice(params)
        contractInvoiceService.saveContractInvoice(contractInvoiceInstance)
        redirect(controller: "contract", action: "show", id: contractInvoiceInstance.getContract().id)
    }

    def update(Long id){
        println 'I made it to update for Contract Invoice.'
        def contractInvoiceInstance = ContractInvoice.get(id)
        contractInvoiceInstance.properties = params
        contractInvoiceService.saveContractInvoice(contractInvoiceInstance)
        redirect(controller: "Contract", action: "show", id: contractInvoiceInstance.getContract().id)
    }

    def delete(Long id){
        println 'I made it to delete for Contract Invoice.'

        def contractInvoiceInstance = ContractInvoice.get(id)
        def contractInvoiceID = contractInvoiceInstance.getContract().id
        contractInvoiceService.deleteContractInvoice(contractInvoiceInstance)

        redirect(controller: "Contract", action: "show", id: contractInvoiceID)
    }

}
