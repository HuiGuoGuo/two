# -*- encoding : utf-8 -*-
class AppointmentsController < ApplicationController
  before_filter :set_appointment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @appointments = Appointment.all
    respond_with(@appointments)
  end

  def show
  end

  def view 
  end

  def new
    @appointment = Appointment.new
    @date = params[:date]
    render :partial => "form"
  end

  def edit
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.date = params[:date]
    @appointment.user_id = current_user.id
    @appointment.save
    respond_to do |format|
      format.html {redirect_to fullcalendar_appointments_path,:notice => "保存成功!"}
    end
  end

  def update
    @appointment.update_attributes(params[:appointment])
    respond_with(@appointment)
  end

  def destroy
    @appointment.destroy
    respond_with(@appointment)
  end
  def fullcalendar 
    @appointments = Appointment.all
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end
end
