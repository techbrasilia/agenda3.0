class EmpregadosController < ApplicationController
  before_action :set_empregado, only: [:show, :edit, :update, :destroy, :comp]

  # GET /empregados
  # GET /empregados.json
  def index
    @empregados = Empregado.all
  end

  # GET /empregados/1
  # GET /empregados/1.json
  def show
  end

  def comps
    @empregado = Empregado.find(params[:id])
    # @compromisso = EmpregadoCompromisso.find("empregado_id": params[:id])
    
    render "compromissos_empgdos" 
  end
 
  # GET /empregados/new
  def new
    @empresas = Empresa.all 
    @compromissos = Compromisso.all
    @empregado = Empregado.new
  end

  # GET /empregados/1/edit
  def edit
    @empresas = Empresa.all 
    @compromissos = Compromisso.all
  end

  def map
  end  

  # POST /empregados
  # POST /empregados.json
  def create
    @empregado = Empregado.new(empregado_params)
    @empresas = Empresa.all 
    @compromissos = Compromisso.all
    @compromisso = Compromisso.find(params[:compromissos_id])

    #@comps = Compromisso.find(@empregado.compromisso_id)

    
    respond_to do |format|
      if @empregado.save
        
        @empregado.compromissos << @compromisso
        #EmpregadoCompromisso.new({empregado_params.empregado_id, empregado_params.compromisso_id})
        format.html { redirect_to @empregado, notice: 'Empregado was successfully created.' }
        format.json { render :show, status: :created, location: @empregado }
      else
        format.html { render :new }
        format.json { render json: @empregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empregados/1
  # PATCH/PUT /empregados/1.json
  def update
    respond_to do |format|
      if @empregado.update(empregado_params)
        format.html { redirect_to @empregado, notice: 'Empregado was successfully updated.' }
        format.json { render :show, status: :ok, location: @empregado }
      else
        format.html { render :edit }
        format.json { render json: @empregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empregados/1
  # DELETE /empregados/1.json
  def destroy
    @empregado.destroy
    respond_to do |format|
      format.html { redirect_to empregados_url, notice: 'Empregado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empregado
      @empregado = Empregado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empregado_params
      params.require(:empregado).permit(:nome, :cpf, :email, :empresa_id,:compromissos)
    end
end
