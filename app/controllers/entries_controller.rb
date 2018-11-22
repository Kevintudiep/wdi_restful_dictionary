class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
    @entry.word = params([:entry][:word])
    @entry.definition = params([:entry][:definition)
    @entry.language = params([:entry][:language])
    render :new
  end

  def create
    @entry = Entry.Create
    @entry = Entry.new
    @entry.word = params([:entry][:word])
    @entry.definition = params([:entry][:definition)
    @entry.language = params([:entry][:language])
    redirect_to entries_url
  end

  def edit
    render :edit
  end

  def update
    redirect_to entry_url(params:[:id])
  end

  def destroy
    redirect_to :index
  end

end
