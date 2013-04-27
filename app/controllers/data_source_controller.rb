class DataSourceController < ApplicationController
  respond_to :json

  def type_1
    @dt1 = DataSource.find(params[:id])
    @row = params[:row]
    @col = params[:col]
    logger.debug "row: #{@row} col: #{@col}"

    sleep 1

    respond_to do |format|
      format.html
      # TODO controller and format should be seperate
      format.json { render :json => { :row => @row, :col => @col, :name => @dt1.name, :value => @dt1.value }}
    end
  end
end
