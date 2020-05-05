package contractmanagementportal

class ContractorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        def contractorList = Contractor.list()
        render(view: "index", model: [c: contractorList])
    }

    def add(){
        println 'I made it to add.'
    }

    def save(){
        println 'I made it to save.'
        def contractorInstance = new Contractor(params)
        contractorInstance.save()
        render "succes!"
    }

    def show(){

    }

    def list(){
        //will list all the contractors
    }

    def edit(){
        render"Hello the edit page!"
    }
}
