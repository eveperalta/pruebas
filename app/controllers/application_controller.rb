class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check

	def check
		@tienda_config = Config.checkTiendaConfig
		@config_obj = Config.new
		@tiendas = Tienda.all.order(nombre: :asc)
	end
end
