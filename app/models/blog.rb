# -*- encoding : utf-8 -*-
class Blog < ActiveRecord::Base
  attr_accessible :context, :title
end
