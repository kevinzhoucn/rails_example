class Rails3way::Comment < ActiveRecord::Base
  attr_accessible :title
  belongs_to :subject, :polymorphic => true
end
