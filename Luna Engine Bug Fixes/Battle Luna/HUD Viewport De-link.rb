##------
## HUD Viewport De-link
## Created by Neon Black
##
## Put this snippet below "Battle Luna" aka "YEL-BattleLuna".
## This snippet separates the battle HUD from the battle viewport.  This
## prevents the battle HUD from tinting with the screen and allows the HUD to
## in general be moved around using the Z position like the rest of the
## elements on screen.
##------


class Spriteset_HUD
  alias_method :cp_hud_init_10262014, :initialize
  def initialize(*args)
    cp_hud_init_10262014(*args)
    @battle_viewport = args[0]
    @viewport = nil
  end
  
  alias_method :cp_hud_screen_x_10262014, :screen_x
  def screen_x(*args)
    cp_hud_screen_x_10262014(*args) - battle_viewport_x
  end
  
  def battle_viewport_x  ## Why toss it down here?  Potential bugs, that's why.
    return 0
    return 0 unless @battle_viewport
    return @battle_viewport.ox
  end
end

class Scene_Battle < Scene_Base
  alias_method :cp_create_info_viewport_10262014, :create_info_viewport
  def create_info_viewport(*args)
    cp_create_info_viewport_10262014(*args)
    @status_window.viewport = nil
  end
end