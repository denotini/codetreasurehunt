class ChangeTreasureStatus < ActiveRecord::Migration
  def up
    Treasure.where(:status => 'DONE').update_all(:status => 'CLOSED')
  end

  def down
    Treasure.where(:status => 'CLOSED').update_all(:status => 'DONE')
  end
end
