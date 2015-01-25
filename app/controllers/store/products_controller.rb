class Store::ProductsController < ApplicationController
  respond_to :html, :json

  def show
    respond_with resource
  end
  
  private
  
  helper_method def collection
    @products ||= EssentialSelling::Product.includes(:photos, :variants, taxons: :translations, extras: :translations)
  end
  
  helper_method def resource
    @product ||= collection.where(slug: params[:id]).first!
  end
end
