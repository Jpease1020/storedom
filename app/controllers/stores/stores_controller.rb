class Stores::StoresController < ApplicationController
  before_action :store_not_found

  helper_method :current_store

  def current_store
    @current_store ||= Store.find_by(url: params[:store])
  end

  def store_not_found
    # if there is a store, go on
    # if not, redirect to the root path
    redirect_to root_path if current_store.nil?
  end

end
