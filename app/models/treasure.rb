class Treasure < ActiveRecord::Base
  before_create :set_default_status

  OPEN = 'OPEN'
  ASSIGNED = 'ASSIGNED'
  CLOSED = 'CLOSED'

  def self.states
    { 'OPEN' => OPEN, 'ASSIGNED' => ASSIGNED, 'CLOSED' => CLOSED }
  end

  private  
  def set_default_status
    self.status = OPEN
  end
end
