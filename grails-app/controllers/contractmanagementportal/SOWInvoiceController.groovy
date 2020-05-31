package contractmanagementportal

class SOWInvoiceController {

    def index() {
        println 'I made it to index for SOWInvoice.'
    }

    def create(){
        println 'I made it to create for SOWInvoice.'
    }

    def save(){
        println 'I made it to save for SOWInvoice.'

        def sowInvoiceInstance = new SOWInvoice(params)
        sowInvoiceInstance.save()

        render 'SOWInvoice saved.'
    }

    def edit(){
        println 'I made it to edit for SOWInvoice'
    }

    def update(Long id){
        println("I made it to update for SOWInvoice")
        def SOWInvoiceInstance = SOWInvoice.get(id)
        SOWInvoiceInstance.properties = params
        SOWInvoiceInstance.save()
        redirect(action: "index")
    }

    def show(){
        println 'I made it to show for SOWInvoice'
    }
}
