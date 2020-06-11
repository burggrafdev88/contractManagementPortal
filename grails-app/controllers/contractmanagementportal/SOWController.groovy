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
        println 'ID: ' + masterAgreementID
        println sowInstance.validate()
        SOWService.saveSOW(sowInstance)

        redirect(controller: "MasterAgreement", action: "show", id: masterAgreementID)
    }

    def edit(){
        println 'I made it to edit for SOW'
    }

    def update(Long id){
        println("I made it to update for SOW")
        def sowInstance = SOW.get(id)
        sowInstance.properties = params
        SOWService.saveSOW(sowInstance)

        render 'SOW saved.'
    }

    def show(){
        println 'I made to to show for SOW.'
    }
}
