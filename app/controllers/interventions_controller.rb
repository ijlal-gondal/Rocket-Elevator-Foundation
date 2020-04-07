class InterventionController < ApplicationController
    def new
      @intervention = Intervention.new
    end
  end