#==============================================================================|
#  *DoubleX RMVXA Bug Fixes v1.00a for Yanfly Engine Ace - Buff & State Manager|
#------------------------------------------------------------------------------|
#  * Changelog                                                                 |
#    v1.00a (GMT 1200 6-1-2014):                                               |
#    - 1st version of this script finished                                     |
#------------------------------------------------------------------------------|
#  * Author                                                                    |
#    This script: DoubleX                                                      |
#    Yanfly Engine Ace - Buff & State Manager: Yanfly                          |
#------------------------------------------------------------------------------|
#  * Terms of use                                                              |
#    Same as that of Yanfly Engine Ace - Buff & State Manager except that you  |
#    must also give Yanfly credit(you should do this anyway) if you give       |
#    DoubleX or his alias credit                                               |
#------------------------------------------------------------------------------|
#  * Prerequisites                                                             |
#    Scripts:                                                                  |
#    - Yanfly Engine Ace - Buff & State Manager                                |
#    Knowledge:                                                                |
#    - That of using the script Yanfly Engine Ace - Buff & State Manager       |
#------------------------------------------------------------------------------|
#  * Functions                                                                 |
#    - Tries to fix bugs I've found in Yanfly Engine Ace - Buff & State Manager|
#    - Fixing compatibility issues isn't this script's aim                     |
#------------------------------------------------------------------------------|
#  * Manual                                                                    |
#    To use this script, open the script editor and put this script into an    |
#    open slot between the script Yanfly Engine Ace - Buff & State Manager and |
#    ▼ Main. Save to take effect.                                              |
#------------------------------------------------------------------------------|
#  * Compatibility                                                             |
#    - Same as that of Yanfly Engine Ace - Buff & State Manager                |
#==============================================================================|

#==============================================================================|
#  ** Fixes                                                                    |
#------------------------------------------------------------------------------|
#  * REAPPLY_STATE_RULES = 0 bug(REAPPLY_STATE_RULES_Bug):                     |
#    - Rewritten method add_state under class Game_Battler                     |
#------------------------------------------------------------------------------|

$imported = {} if $imported.nil?
$imported["DoubleX RMVXA Bug Fixes for YEA-Buff&StateManager"] = true

#==============================================================================|
#  ** You need not edit this part as it's about how this script works          |
#------------------------------------------------------------------------------|

if $imported["YEA-Buff&StateManager"]

#------------------------------------------------------------------------------|
#  * Fixes:                                                                    |
#    - REAPPLY_STATE_RULES = 0 bug                                             |
#------------------------------------------------------------------------------|
class Game_Battler < Game_BattlerBase

  #----------------------------------------------------------------------------|
  #  Rewrite method: add_state                                                 |
  #----------------------------------------------------------------------------|
  def add_state(state_id)
    return if $data_states[state_id].nil?
    state_rules = $data_states[state_id].state_reapply_rules
    return if state_rules == 0 && state?(state_id)
    if state_addable?(state_id)
      add_new_state(state_id) unless state?(state_id)
      # This part is rewritten by this script to fix REAPPLY_STATE_RULES = 0 bug
      reset_state_counts(state_id) if state_rules == 0 || state_rules == 1
      # REAPPLY_STATE_RULES_Bug
      total_state_counts(state_id) if state_rules == 2
      @result.added_states.push(state_id).uniq!
    end
  end # add_state

end # Game_Battler

end # if $imported["YEA-Buff&StateManager"]

#==============================================================================|