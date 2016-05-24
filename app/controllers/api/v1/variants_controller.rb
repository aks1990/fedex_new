class API::V1::VariantsController < ApplicationController
	def create
		@variant = Variant.new(variant_params)
		respond_to do |format|
	      if @variant.save
	        format.json { render :json => @variant }
	      else
	        format.json { render :json => @variant.errors, status: :unprocessable_entity }
	      end
    	end
	end

	private

	def variant_params
		params.require(:variant).permit(:actual_price, :type, :type_price, :variant_id)
	end
end
