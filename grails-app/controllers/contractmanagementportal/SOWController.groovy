package contractmanagementportal

class SOWController {

    def index() {

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
}
