class DataSourceController < ApplicationController
  def type_1
    @dt1 = DataSource.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @dt1 }
    end
  end
end
