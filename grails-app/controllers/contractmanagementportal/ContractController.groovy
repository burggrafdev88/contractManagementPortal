package contractmanagementportal

class ContractController {
    def contractService

    def index(){
        println 'I made it to index for Contracts.'
        def contractList = Contract.list(sort: "office", order: "asc")

        render(view: "index", model: [c: contractList])
    }

    def create(){
        println 'I made it to create for Contracts.'
        def contractorList = Contractor.getAll()
        def officeList = Office.getAll()
        def bidTypeList = BidTypeContract.getAll()

        render(view: "create", model: [contractorList: contractorList, officeList: officeList, bidTypeList: bidTypeList])
    }

    def save(){
        println 'I made it to save for Contracts.'

        def contractInstance = new Contract(params)
        contractService.saveContract(contractInstance)

        render(view: "show", model: [contract: contractInstance])
    }

    def show(Long id){
        println 'I made it to show for Contracts.'

        def contractInstance = Contract.get(id)
        def invList = contractInstance.getContractInvoices()
        println invList

        render(view: "show", model: [contract: contractInstance, invList: invList])
    }

    def edit(Long id){
        println 'I made it to edit for Contracts.'

        def contractInstance = Contract.get(id)
        def contractorList = Contractor.getAll()
        def officeList = Office.getAll()
        def bidTypeList = BidTypeContract.getAll()

        render(view: "edit", model: [contract: contractInstance, contractorList: contractorList, officeList: officeList, bidTypeList: bidTypeList])
    }

    def update(Long id){
        println 'I made it to update for Contracts.'

        def contractInstance = Contract.get(id)
        def invList = contractInstance.getContractInvoices()
        contractInstance.properties = params
        contractService.saveContract(contractInstance)

        render(view: "show", model: [contract: contractInstance, invList: invList])
    }

    def delete(Long id){
        println 'I made it to delete for Contracts.'

        def contractInstance = Contract.get(id)
        contractService.deleteContract(contractInstance)

        render(view: "index")
    }

}
