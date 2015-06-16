class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
    @contact.con_boton_sitio = params[:motivo]
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver

        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to contacts_url, notice: 'Contact was successfully updated.' }
        format.json { render :index, status: :ok }  #, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mail_confirmation

    #@contact = Contact.find_by  con_mail: params[:mail]
    @contact = Contact.find(params[:id_usuario])

  end

  def post

    @post_titulo = params[:pst_titulo]
    @post_imagen01 = params[:pst_imagen01]
    @post_badge = params[:pst_badge]

    @post_subtit01a = params[:pst_subtit01a]
    @post_subtit01s = params[:pst_subtit01s]
    @post_subtit01b = params[:pst_subtit01b]

    # subtitulo 00

    @post_subtit00 = params[:pst_subtit00]

    @post_link00a1 = params[:pst_link00a1]
    @post_link00a2 = params[:pst_link00a2]
    @post_link00b1 = params[:pst_link00b1]
    @post_link00b2 = params[:pst_link00b2]
    @post_link00c1 = params[:pst_link00c1]
    @post_link00c2 = params[:pst_link00c2]
    @post_link00d1 = params[:pst_link00d1]
    @post_link00d2 = params[:pst_link00d2]
    @post_link00e1 = params[:pst_link00e1]
    @post_link00e2 = params[:pst_link00e2]

    # primer subtitulo

    @post_subtit02a = params[:pst_subtit02a]
    @post_subtit02s = params[:pst_subtit02s]
    @post_subtit02b = params[:pst_subtit02b]

    @post_texto02a = params[:pst_texto02a]
    @post_texto02a1 = params[:pst_texto02a1]
    @post_texto02a2 = params[:pst_texto02a2]
    @post_texto02a3 = params[:pst_texto02a3]
    @post_texto02a4 = params[:pst_texto02a4]
    @post_texto02a5 = params[:pst_texto02a5]

    @post_texto02b = params[:pst_texto02b]
    @post_texto02b1 = params[:pst_texto02b1]
    @post_texto02b2 = params[:pst_texto02b2]
    @post_texto02b3 = params[:pst_texto02b3]
    @post_texto02b4 = params[:pst_texto02b4]
    @post_texto02b5 = params[:pst_texto02b5]

    @post_texto02c = params[:pst_texto02c]
    @post_texto02c1 = params[:pst_texto02c1]
    @post_texto02c2 = params[:pst_texto02c2]
    @post_texto02c3 = params[:pst_texto02c3]
    @post_texto02c4 = params[:pst_texto02c4]
    @post_texto02c5 = params[:pst_texto02c5]

    @post_texto02d = params[:pst_texto02d]
    @post_texto02d1 = params[:pst_texto02d1]
    @post_texto02d2 = params[:pst_texto02d2]
    @post_texto02d3 = params[:pst_texto02d3]
    @post_texto02d4 = params[:pst_texto02d4]
    @post_texto02d5 = params[:pst_texto02d5]

    @post_texto02e = params[:pst_texto02e]
    @post_texto02e1 = params[:pst_texto02e1]
    @post_texto02e2 = params[:pst_texto02e2]
    @post_texto02e3 = params[:pst_texto02e3]
    @post_texto02e4 = params[:pst_texto02e4]
    @post_texto02e5 = params[:pst_texto02e5]

    @post_texto02f = params[:pst_texto02f]
    @post_texto02f1 = params[:pst_texto02f1]
    @post_texto02f2 = params[:pst_texto02f2]
    @post_texto02f3 = params[:pst_texto02f3]
    @post_texto02f4 = params[:pst_texto02f4]
    @post_texto02f5 = params[:pst_texto02f5]

    @post_texto02g = params[:pst_texto02g]
    @post_texto02g1 = params[:pst_texto02g1]
    @post_texto02g2 = params[:pst_texto02g2]
    @post_texto02g3 = params[:pst_texto02g3]
    @post_texto02g4 = params[:pst_texto02g4]
    @post_texto02g5 = params[:pst_texto02g5]

    # segundo subtitulo

    @post_subtit03a = params[:pst_subtit03a]
    @post_subtit03s = params[:pst_subtit03s]
    @post_subtit03b = params[:pst_subtit03b]

    @post_texto03a = params[:pst_texto03a]
    @post_texto03a1 = params[:pst_texto03a1]
    @post_texto03a2 = params[:pst_texto03a2]
    @post_texto03a3 = params[:pst_texto03a3]
    @post_texto03a4 = params[:pst_texto03a4]
    @post_texto03a5 = params[:pst_texto03a5]

    @post_texto03b = params[:pst_texto03b]
    @post_texto03b1 = params[:pst_texto03b1]
    @post_texto03b2 = params[:pst_texto03b2]
    @post_texto03b3 = params[:pst_texto03b3]
    @post_texto03b4 = params[:pst_texto03b4]
    @post_texto03b5 = params[:pst_texto03b5]

    @post_texto03c = params[:pst_texto03c]
    @post_texto03c1 = params[:pst_texto03c1]
    @post_texto03c2 = params[:pst_texto03c2]
    @post_texto03c3 = params[:pst_texto03c3]
    @post_texto03c4 = params[:pst_texto03c4]
    @post_texto03c5 = params[:pst_texto03c5]

    @post_texto03d = params[:pst_texto03d]
    @post_texto03d1 = params[:pst_texto03d1]
    @post_texto03d2 = params[:pst_texto03d2]
    @post_texto03d3 = params[:pst_texto03d3]
    @post_texto03d4 = params[:pst_texto03d4]
    @post_texto03d5 = params[:pst_texto03d5]

    @post_texto03e = params[:pst_texto03e]
    @post_texto03e1 = params[:pst_texto03e1]
    @post_texto03e2 = params[:pst_texto03e2]
    @post_texto03e3 = params[:pst_texto03e3]
    @post_texto03e4 = params[:pst_texto03e4]
    @post_texto03e5 = params[:pst_texto03e5]

    @post_texto03f = params[:pst_texto03f]
    @post_texto03f1 = params[:pst_texto03f1]
    @post_texto03f2 = params[:pst_texto03f2]
    @post_texto03f3 = params[:pst_texto03f3]
    @post_texto03f4 = params[:pst_texto03f4]
    @post_texto03f5 = params[:pst_texto03f5]

    @post_texto03g = params[:pst_texto03g]
    @post_texto03g1 = params[:pst_texto03g1]
    @post_texto03g2 = params[:pst_texto03g2]
    @post_texto03g3 = params[:pst_texto03g3]
    @post_texto03g4 = params[:pst_texto03g4]
    @post_texto03g5 = params[:pst_texto03g5]

    # cuarto subtitulo

    @post_subtit04a = params[:pst_subtit04a]
    @post_subtit04s = params[:pst_subtit04s]
    @post_subtit04b = params[:pst_subtit04b]

    @post_texto04a = params[:pst_texto04a]
    @post_texto04a1 = params[:pst_texto04a1]
    @post_texto04a2 = params[:pst_texto04a2]
    @post_texto04a3 = params[:pst_texto04a3]
    @post_texto04a4 = params[:pst_texto04a4]
    @post_texto04a5 = params[:pst_texto04a5]

    @post_texto04b = params[:pst_texto04b]
    @post_texto04b1 = params[:pst_texto04b1]
    @post_texto04b2 = params[:pst_texto04b2]
    @post_texto04b3 = params[:pst_texto04b3]
    @post_texto04b4 = params[:pst_texto04b4]
    @post_texto04b5 = params[:pst_texto04b5]

    @post_texto04c = params[:pst_texto04c]
    @post_texto04c1 = params[:pst_texto04c1]
    @post_texto04c2 = params[:pst_texto04c2]
    @post_texto04c3 = params[:pst_texto04c3]
    @post_texto04c4 = params[:pst_texto04c4]
    @post_texto04c5 = params[:pst_texto04c5]

    @post_texto04d = params[:pst_texto04d]
    @post_texto04d1 = params[:pst_texto04d1]
    @post_texto04d2 = params[:pst_texto04d2]
    @post_texto04d3 = params[:pst_texto04d3]
    @post_texto04d4 = params[:pst_texto04d4]
    @post_texto04d5 = params[:pst_texto04d5]

    @post_texto04e = params[:pst_texto04e]
    @post_texto04e1 = params[:pst_texto04e1]
    @post_texto04e2 = params[:pst_texto04e2]
    @post_texto04e3 = params[:pst_texto04e3]
    @post_texto04e4 = params[:pst_texto04e4]
    @post_texto04e5 = params[:pst_texto04e5]

    @post_texto04f = params[:pst_texto04f]
    @post_texto04f1 = params[:pst_texto04f1]
    @post_texto04f2 = params[:pst_texto04f2]
    @post_texto04f3 = params[:pst_texto04f3]
    @post_texto04f4 = params[:pst_texto04f4]
    @post_texto04f5 = params[:pst_texto04f5]

    @post_texto04g = params[:pst_texto04g]
    @post_texto04g1 = params[:pst_texto04g1]
    @post_texto04g2 = params[:pst_texto04g2]
    @post_texto04g3 = params[:pst_texto04g3]
    @post_texto04g4 = params[:pst_texto04g4]
    @post_texto04g5 = params[:pst_texto04g5]

    # quinto subtitulo

    @post_subtit05a = params[:pst_subtit05a]
    @post_subtit05s = params[:pst_subtit05s]
    @post_subtit05b = params[:pst_subtit05b]

    @post_texto05a = params[:pst_texto05a]
    @post_texto05a1 = params[:pst_texto05a1]
    @post_texto05a2 = params[:pst_texto05a2]
    @post_texto05a3 = params[:pst_texto05a3]
    @post_texto05a4 = params[:pst_texto05a4]
    @post_texto05a5 = params[:pst_texto05a5]

    @post_texto05b = params[:pst_texto05b]
    @post_texto05b1 = params[:pst_texto05b1]
    @post_texto05b2 = params[:pst_texto05b2]
    @post_texto05b3 = params[:pst_texto05b3]
    @post_texto05b4 = params[:pst_texto05b4]
    @post_texto05b5 = params[:pst_texto05b5]

    @post_texto05c = params[:pst_texto05c]
    @post_texto05c1 = params[:pst_texto05c1]
    @post_texto05c2 = params[:pst_texto05c2]
    @post_texto05c3 = params[:pst_texto05c3]
    @post_texto05c4 = params[:pst_texto05c4]
    @post_texto05c5 = params[:pst_texto05c5]

    @post_texto05d = params[:pst_texto05d]
    @post_texto05d1 = params[:pst_texto05d1]
    @post_texto05d2 = params[:pst_texto05d2]
    @post_texto05d3 = params[:pst_texto05d3]
    @post_texto05d4 = params[:pst_texto05d4]
    @post_texto05d5 = params[:pst_texto05d5]

    @post_texto05e = params[:pst_texto05e]
    @post_texto05e1 = params[:pst_texto05e1]
    @post_texto05e2 = params[:pst_texto05e2]
    @post_texto05e3 = params[:pst_texto05e3]
    @post_texto05e4 = params[:pst_texto05e4]
    @post_texto05e5 = params[:pst_texto05e5]

    @post_texto05f = params[:pst_texto05f]
    @post_texto05f1 = params[:pst_texto05f1]
    @post_texto05f2 = params[:pst_texto05f2]
    @post_texto05f3 = params[:pst_texto05f3]
    @post_texto05f4 = params[:pst_texto05f4]
    @post_texto05f5 = params[:pst_texto05f5]

    @post_texto05g = params[:pst_texto05g]
    @post_texto05g1 = params[:pst_texto05g1]
    @post_texto05g2 = params[:pst_texto05g2]
    @post_texto05g3 = params[:pst_texto05g3]
    @post_texto05g4 = params[:pst_texto05g4]
    @post_texto05g5 = params[:pst_texto05g5]

    # sexto subtitulo

    @post_subtit06a = params[:pst_subtit06a]
    @post_subtit06s = params[:pst_subtit06s]
    @post_subtit06b = params[:pst_subtit06b]

    @post_texto06a = params[:pst_texto06a]
    @post_texto06b = params[:pst_texto06b]
    @post_texto06c = params[:pst_texto06c]
    @post_texto06d = params[:pst_texto06d]
    @post_texto06e = params[:pst_texto06e]
    @post_texto06f = params[:pst_texto06f]
    @post_texto06g = params[:pst_texto06g]
    @post_texto06h = params[:pst_texto06h]

    # ultimo subtitulo

    @post_subtit99 = params[:pst_subtit99]

    @post_link99a1 = params[:pst_link99a1]
    @post_link99a2 = params[:pst_link99a2]
    @post_link99b1 = params[:pst_link99b1]
    @post_link99b2 = params[:pst_link99b2]
    @post_link99c1 = params[:pst_link99c1]
    @post_link99c2 = params[:pst_link99c2]
    @post_link99d1 = params[:pst_link99d1]
    @post_link99d2 = params[:pst_link99d2]
    @post_link99e1 = params[:pst_link99e1]
    @post_link99e2 = params[:pst_link99e2]
    @post_link99f1 = params[:pst_link99f1]
    @post_link99f2 = params[:pst_link99f2]
    @post_link99g1 = params[:pst_link99g1]
    @post_link99g2 = params[:pst_link99g2]
    @post_link99h1 = params[:pst_link99h1]
    @post_link99h2 = params[:pst_link99h2]

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:id, :con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_suscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id, :password, :password_confirmation)
    end
end
