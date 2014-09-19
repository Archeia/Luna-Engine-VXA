#==============================================================================
# ■ YEA - Buff and State Manager Compatibility by DoubleX
#==============================================================================
#==============================================================================
# If you want to use Buff & State Manager with Luna engine, this script is
# a must-have. This script requires DoubleX RMVXA Bug Fixes for YEA - Buff & 
# State Manager. Please credit DoubleX!
#==============================================================================

#==============================================================================
# Editing anything past the engine's configuration script may potentially  
# result in causing computer damage, incontinence, explosion of user's head, 
# coma, death, and/or halitosis so edit at your own risk. 
# We're not liable for the risks you take should you pass this sacred grounds.
#==============================================================================

($imported ||= {})["YEL-BattleLuna YEA-Buff&StateManager Compatible"] = true

if $imported["YEA-Buff&StateManager"] && $imported["DoubleX RMVXA Bug Fixes for YEA-Buff&StateManager"]

#------------------------------------------------------------------------------|

#------------------------------------------------------------------------------|
#  * Edit class: Game_Battler                                                  |
#------------------------------------------------------------------------------|

class Game_Battler < Game_BattlerBase

  #----------------------------------------------------------------------------|
  #  New public instance variables                                             |
  #----------------------------------------------------------------------------|
  attr_accessor :turn_end
  attr_reader :buffs

  #----------------------------------------------------------------------------|
  #  Alias method: on_turn_end                                                 |
  #----------------------------------------------------------------------------|
  alias game_battler_on_turn_end_bsm on_turn_end
  def on_turn_end
    game_battler_on_turn_end_bsm
    # This part is added by this snippet to mark the use of this method
    @turn_end = true
    #
  end # on_turn_end

end # Game_Battler

#------------------------------------------------------------------------------|
#  * Edit class: SpriteHUD_States                                              |
#------------------------------------------------------------------------------|

class SpriteHUD_States < Sprite

  #----------------------------------------------------------------------------|
  #  Alias method: refresh_type0                                               |
  #----------------------------------------------------------------------------|
  alias spriteset_states_refresh_type0_bsm refresh_type0
  def refresh_type0
    spriteset_states_refresh_type0_bsm
    # This part is added by this snippet to draw buff and state turns
    states = @battler.states.collect { |state| state.id }
    buffs_states = states + @battler.buffs.select {|buff| buff != 0 }
    w = 24 + setting_type[:spacing]
    self.bitmap.font.size = YEA::BUFF_STATE_MANAGER::TURNS_REMAINING_SIZE
    self.bitmap.font.out_color.set(0, 0, 0, 255)
    buffs_states.each_with_index { |id, i| self.bitmap.draw_text(i * w, YEA::BUFF_STATE_MANAGER::TURNS_REMAINING_Y, 24, 24, i < states.size ? @battler.state_turns(id) : @battler.buff_turns(id), 2) }
    #
  end # refresh_type0

  #----------------------------------------------------------------------------|
  #  Alias method: refresh_type1                                               |
  #----------------------------------------------------------------------------|
  alias spriteset_states_refresh_type1_bsm refresh_type1
  def refresh_type1
    spriteset_states_refresh_type1_bsm
    # This part is added by this snippet to draw buff and state turns
    states = @battler.states.collect { |state| state.id }
    buffs_states = states + @battler.buffs.select {|buff| buff != 0 }
    buff_state = buffs_states[@index]
    self.bitmap.font.size = YEA::BUFF_STATE_MANAGER::TURNS_REMAINING_SIZE
    self.bitmap.font.out_color.set(0, 0, 0, 255)
    self.bitmap.draw_text(0, YEA::BUFF_STATE_MANAGER::TURNS_REMAINING_Y, 24, 24, @index < states.size ? @battler.state_turns(buff_state) : @battler.buff_turns(buff_state), 2)
    #
  end # refresh_type1

  #----------------------------------------------------------------------------|
  #  Alias method: states_change?                                              |
  #----------------------------------------------------------------------------|
  alias spriteset_states_states_change_bsm? states_change?
  def states_change?
    # This part is added by this snippet to mark state change upon turn end
    if @battler.turn_end
      @battler.turn_end = false
      return true
    end
    #
    spriteset_states_states_change_bsm?
  end # states_change?

end # SpriteHUD_States

#------------------------------------------------------------------------------|

end # $imported["YEA-Buff&StateManager"] && $imported["DoubleX RMVXA Bug Fixes for YEA-Buff&StateManager"]