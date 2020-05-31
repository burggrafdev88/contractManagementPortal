package contractmanagementportal

class SOWController {

    def index() {
        println 'I made it to index for SOW.'
    }

    def create(){
        println 'I made it to create for SOW.'
    }

    def save(){
        println 'I made it to save for SOW.'

        def sowInstance = new SOW(params)
        sowInstance.save()

        render 'SOW saved.'
    }

    def edit(){
        println 'I made it to edit for SOW'
    }

    def update(Long id){
        println("I made it to update for SOW")
        def SOWInstance = SOW.get(id)
        SOWInstance.properties = params
        SOWInstance.save()
        redirect(action: "index")
    }

    def show(){
        println 'I made to to show for SOW.'
    }
}
