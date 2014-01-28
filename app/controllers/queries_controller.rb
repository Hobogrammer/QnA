class QueriesController < ApplicationController
  before_action :set_query, only: [:show, :edit, :update, :destroy]

  def index
    @queries = Query.all
  end

  def show
  end

  def new
    @query = Query.new
  end

  def edit
  end

  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to @query, notice: 'Query was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @query.update(query_params)
      redirect_to @query, notice: 'Query was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    if @query.destroy
      redirect_to queries_url, notice: 'Query destroyed'
    else
      redirect_to queries_url, notice: 'Could not destroy query'
    end
  end

  private
    def set_query
      @query = Query.find(params[:id])
    end

    def query_params
      params.require(:query).permit(:question, :answer)
    end
end
