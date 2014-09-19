#==============================================================================
# TSBS + Luna Engine Patch by Theo_Allen
#==============================================================================
# Remove Enemy Offset Add-On before adding this script.
# Make sure that TSBS is below all Luna Engine scripts!
# Put this script below TSBS.
#------------------------------------------------------------------------------
# Sprite_PopupLuna fix. Rename "update_move" to something else. Compatibility
# with Theo - Basic Modules.
#==============================================================================
class Sprite_PopupLuna < Sprite
  
  # Make alias name and delete the update_move 
  alias update_move_luna update_move
  def update_move
  end
  
  # Overwrites
  def update
    super
    update_zoom
    update_move_luna # Rename
    update_opacity
    update_effect
  end
  
end
#==============================================================================
# Enemy offset addon? No...!
#==============================================================================
class Game_Enemy < Game_Battler
  #----------------------------------------------------------------------------
  # Real position X (manually RE-make alias)
  # I use this as a REAL X axis of the battler
  #----------------------------------------------------------------------------
  def x
    @screen_x
  end
  #----------------------------------------------------------------------------
  # Real position Y (manually RE-make alias)
  # I use this as a REAL Y axis of the battler
  #----------------------------------------------------------------------------
  def y
    @screen_y
  end
  #----------------------------------------------------------------------------
  # Screen position X
  # It's in screen position of X axis. Replacement like battle camera need to
  # modify this method
  #----------------------------------------------------------------------------
  def screen_x
    @screen_x 
  end
  #----------------------------------------------------------------------------
  # Screen position Y
  # It's in screen position of Y axis. Replacement like battle camera need to
  # modify this method
  #----------------------------------------------------------------------------
  def screen_y
    @screen_y 
  end
end