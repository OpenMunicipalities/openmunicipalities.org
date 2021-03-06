class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end



  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])
    respond_to do |format|
      if verify_recaptcha(:private_key => '6LcW3tMSAAAAAETBFhP6-G3t7ySkxbulNJs8a9uL',:message => "Please fill captcha code correctly.") && @contact.save
        format.html { redirect_to root_path, notice: 'Thankyou for contacting us. We will soon respond back to you.' }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

 

  # DELETE /contacts/1
  # DELETE /contacts/1.json


  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end

end
