class PagesController < ApplicationController
  include HighVoltage::StaticPage
  
  before_filter :set_articles, only: [:root, :home]
  
  def root
    render :root
  end

  def resources
    render :resources
  end  
end
