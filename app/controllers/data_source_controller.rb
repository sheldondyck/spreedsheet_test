class DataSourceController < ApplicationController
  respond_to :json

  def gdp
    @country_abbrev = params[:country_abbrev]
    @year = params[:year]
    @row = params[:row]
    @col = params[:col]
    @gdp = GdpStatistic.by_abbreviation_and_year(@country_abbrev, @year)

    logger.debug "gdp: #{@gdp.to_yaml} class: #{@gdp.class}"
    logger.debug "country: #{@country_abbrev} year: #{@year} row: #{@row} col: #{@col}"

    sleep 1

    respond_to do |format|
      # TODO controller and format should be separate
      format.json { render :json => { :row => @row, :col => @col, :value => @gdp.value }}
    end
  end
end
