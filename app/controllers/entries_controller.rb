class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def show

  end

  def new
    render :new
  end

  def create
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
