package contractmanagementportal

class MasterAgreementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        println 'I made it to index for Master Agreements'
        def masterAgreementList = MasterAgreement.list(sort: "office", order: "asc")
        render(view: "index", model: [m: masterAgreementList])
    }

    def create(){
        println 'I made it to create for Master Agreements.'
    }

    def save(){
        println 'I made it to save for Master Agreements'
        def masterAgreementInstance = new MasterAgreement(params)
        masterAgreementInstance.save()
        redirect(action: "index")
    }

    def edit(){
        println 'I made it to edit for Master Agreements'
    }

    def update(Long id){
        println("I made it to update for Master Agreements")
        def masterAgreementInstance = MasterAgreement.get(id)
        masterAgreementInstance.properties = params
        masterAgreementInstance.save()
        redirect(action: "index")
    }

    def show(Long id){


    }

}
