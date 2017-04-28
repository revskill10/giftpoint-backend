class CampaignCostReportQuery < ApplicationQuery
  def initialize(date1 = nil, date2 = nil)
  	@date1 = date1
  	@date2 = date2
  	@query = SqlQuery.new(:campaign_cost_report, date1: date1, date2: date2, has_dates_filter: has_dates_filter)
  end

  private

  attr_accessor :date1, :date2

  def has_dates_filter
  	@has_date_filter ||= date1.present? && date2.present?
  end
end