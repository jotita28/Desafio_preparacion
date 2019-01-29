class ProductsController < ApplicationController
    def index 
    @products = Product.all
    @product = Product.new
    end

    def create
        product = Product.new(product_params)

        product.save

        if product.save
            redirect_to products_show_path, notice: 'El producto fue ingresado con éxito'
            else
            redirect_to products_show_path, alert: 'Error al ingresar el producto. Intente nuevamente...'
            end
    end

    def show
        @product = Product.last
    end

    def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, notice: 'El recurso fue eliminado'
    
    end





    private
    def  product_params
    params.require(:product).permit(:name, :price, :description)
    end

end
