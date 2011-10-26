class PizzasController < ApplicationController
  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizzas }
    end
  end

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
    @pizza = Pizza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizza }
    end
  end

  # GET /pizzas/new
  # GET /pizzas/new.json
  def new
    @pizza = Pizza.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizza }
    end
  end

  # GET /pizzas/1/edit
  def edit
    @pizza = Pizza.find(params[:id])
  end

  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(params[:pizza])

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'Pizza was successfully created.' }
        format.json { render json: @pizza, status: :created, location: @pizza }
      else
        format.html { render action: "new" }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizzas/1
  # PUT /pizzas/1.json
  def update
    @pizza = Pizza.find(params[:id])

    respond_to do |format|
      if @pizza.update_attributes(params[:pizza])
        format.html { redirect_to @pizza, notice: 'Pizza was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy

    respond_to do |format|
      format.html { redirect_to pizzas_url }
      format.json { head :ok }
    end
  end
end
