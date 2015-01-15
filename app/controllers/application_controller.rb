# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base

  protect_from_forgery
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      if User.count == 1
        resource.add_role 'admin'
      end
      resource
    end
    root_path
  end

  def to_date(date)
    unless date==nil
      to_date=date.strftime('%Y-%m-%d')
    end
  end

end
