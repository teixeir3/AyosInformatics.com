class PagesController < ApplicationController
  include HighVoltage::StaticPage
  
  before_filter :set_downloads, :set_observances, only: [:root]
  
  def root
    render :root
  end

  def resources
    render :resources
  end  
end
