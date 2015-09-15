class Treasure < ActiveRecord::Base
  before_create :set_default_status

  DONE = 'DONE'
  CLOSED = 'CLOSED'
  PENDING = 'PENDING'

  def self.states
    { 'DONE' => DONE, 'PENDING' => PENDING, 'CLOSED' => CLOSED }
  end

  private  
  def set_default_status
    self.status = PENDING
  end
end
