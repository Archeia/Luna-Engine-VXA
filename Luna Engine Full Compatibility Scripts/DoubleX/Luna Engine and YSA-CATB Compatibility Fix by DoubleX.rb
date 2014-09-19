#==============================================================================
# ■ Luna Engine and YSA-CATB Compatibility Fix by DoubleX
#==============================================================================
#==============================================================================
# If you want to use YSA-CATB with Luna Engine, this script is
# a must-have. Please credit DoubleX!
#==============================================================================

#==============================================================================
# Editing anything past the engine's configuration script may potentially  
# result in causing computer damage, incontinence, explosion of user's head, 
# coma, death, and/or halitosis so edit at your own risk. 
# We're not liable for the risks you take should you pass this sacred grounds.
#==============================================================================

if $imported["YEA-BattleEngine"] && $imported["YSA-CATB"] && $imported["DoubleX RMVXA Bug Fixes to YSA-CATB"]

#------------------------------------------------------------------------------|

#------------------------------------------------------------------------------|
#  * Edit class: SpriteHUD                                                     |
#------------------------------------------------------------------------------|

class Spriteset_HUD

  #----------------------------------------------------------------------------|
  #  Alias method: create_bars                                                 |
  #----------------------------------------------------------------------------|
  alias fix_catb_create_bars create_bars
  def create_bars
    fix_catb_create_bars
    # This part is added by this snippet to draw atb bars
    atb_bar = SpriteHUD_Bar.new(@viewport, self, :atb_bar)
    @sprites.push(atb_bar)
    #
  end # create_bars

  if $imported["DoubleX RMVXA Percentage Addon to YSA-CATB"]
  #----------------------------------------------------------------------------|
  #  Alias method: create_numbers                                              |
  #----------------------------------------------------------------------------|
  alias fix_catb_create_numbers create_numbers
  def create_numbers
    fix_catb_create_numbers
    atb = SpriteHUD_Numbers.new(@viewport, self, :atb)
    action = SpriteHUD_Numbers.new(@viewport, self, :action)
    @sprites.push(atb, action)
  end # create_numbers
  end # if $imported["DoubleX RMVXA Percentage Addon to YSA-CATB"]

end # Spriteset_HUD

#------------------------------------------------------------------------------|
#  * Edit class: SpriteHUD_Bar                                                 |
#------------------------------------------------------------------------------|

class SpriteHUD_Bar < Sprite

  #----------------------------------------------------------------------------|
  #  Alias method: refresh_type0                                               |
  #----------------------------------------------------------------------------|
  alias fix_catb_refresh_type0 refresh_type0
  def refresh_type0
    # This part is rewritten by this snippet to handel refresh_type0 for atb bars
    return fix_catb_refresh_type0 if @symbol != :atb_bar
    self.bitmap ||= Bitmap.new(setting_type[:length], setting_type[:height])
    self.bitmap.clear
    rect = self.bitmap.rect
    if $imported["DoubleX RMVXA Cooldown Addon to YSA-CATB"] && @battler.cd_catb_value > 0
      symbol1 = :cooldown_color1
      symbol2 = :cooldown_color2
    elsif @battler.ct_catb_value > 0
      symbol1 = :charge_color1
      symbol2 = :charge_color2
    else
      symbol1 = :color1
      symbol2 = :color2
    end
    color1 = setting_type[symbol1]
    color1 = color1.is_a?(String) ? eval(color1) : Color.new(color1[0], color1[1], color1[2], color1[3])
    color2 = setting_type[symbol2]
    color2 = color2.is_a?(String) ? color2 = eval(color2) : Color.new(color2[0], color2[1], color2[2], color2[3])
    back_color = setting_type[:back_color]
    back_color = back_color.is_a?(String) ? eval(back_color) : Color.new(back_color[0], back_color[1], back_color[2], back_color[3])
    outline = setting_type[:outline]
    outline = outline.is_a?(String) ? eval(outline) : Color.new(outline[0], outline[1], outline[2], outline[3])
    self.bitmap.fill_rect(rect, outline)
    rect.x += 1; rect.y += 1; rect.width -= 2; rect.height -= 2
    self.bitmap.fill_rect(rect, back_color)
    if setting[:vertical]
      height = rect.height
      rect.height = rect.height * @rate
      rect.y      = height - rect.height
    else
      rect.width = rect.width * @rate
    end
    self.bitmap.gradient_fill_rect(rect, color1, color2)
    return if @text.bitmap
    type = setting_type
    color = type[:tcolor]
    out = type[:toutline]
    @text.bitmap = Bitmap.new(setting_type[:length], 32)
    @text.bitmap.font.name = type[:font]
    @text.bitmap.font.size = type[:size]
    @text.bitmap.font.bold = type[:bold]
    @text.bitmap.font.italic = type[:italic]
    @text.bitmap.font.color = color.is_a?(String) ? eval(color) : Color.new(color[0], color[1], color[2], color[3])
    @text.bitmap.font.out_color = out.is_a?(String) ? eval(out) : Color.new(out[0], out[1], out[2], out[3])
    @text.bitmap.draw_text(0, 0, @text.bitmap.width, @text.bitmap.height, type[:text], type[:align])
    #
  end # refresh_type0

  #----------------------------------------------------------------------------|
  #  Alias method: real_rate                                                   |
  #----------------------------------------------------------------------------|
  alias fix_catb_real_rate real_rate
  def real_rate
    # This part is rewritten by this snippet to handle atb bars real rate
    @symbol == :atb_bar ? atb_rate : fix_catb_real_rate
    #
  end # real_rate

  #----------------------------------------------------------------------------|
  #  New method: atb_rate                                                      |
  #----------------------------------------------------------------------------|
  def atb_rate
    $imported["DoubleX RMVXA Cooldown Addon to YSA-CATB"] && @battler.cd_catb_value > 0 ? @battler.catb_cd_filled_rate : @battler.ct_catb_value > 0 ? @battler.catb_ct_filled_rate : @battler.catb_filled_rate
  end # atb_rate

end # SpriteHUD_Bar

#------------------------------------------------------------------------------|
#  * Edit class: SpriteHUD_Numbers                                             |
#------------------------------------------------------------------------------|

class SpriteHUD_Numbers < Sprite

  #----------------------------------------------------------------------------|
  #  Alias method: update_rate                                                 |
  #----------------------------------------------------------------------------|
  alias fix_catb_update_rate update_rate
  def update_rate
    # This part is rewritten by this snippet to update atb rate or action points
    return fix_catb_update_rate if ![:atb, :action].include?(@symbol)
    rate = (@symbol == :atb ? atb_rate : @battler.catb_action_times) * setting[:ani_rate]
    max = @battler.catb_action_times
    rate = [(@number.to_i - real_number.to_i).abs, rate.to_i].min
    @number += @number > real_number ? -rate : rate
    refresh if rate > 0
    return if !setting[:action]
    refresh if max != @max_number
    #
  end # update_rate

  #----------------------------------------------------------------------------|
  #  Alias method: refresh_type0                                               |
  #----------------------------------------------------------------------------|
  alias fix_catb_refresh_type0 refresh_type0
  def refresh_type0
    # This part is rewritten by this snippet to handel refresh_type0 for atb numbers
    return fix_catb_refresh_type0 if @symbol != :atb
    @max_number = @battler.catb_action_times
    self.bitmap ||= Bitmap.new(setting_type[:width], setting_type[:height])
    self.bitmap.clear
    type = setting_type
    color = type[:color]
    out = type[:outline]
    if setting[:text]
      str = sprintf(setting[:text], @number, @max_number)
      str = setting[:action] ? str : @number
    else
      str = @number
    end
    self.bitmap = Bitmap.new(type[:width], type[:height])
    self.bitmap.font.name = type[:font]
    self.bitmap.font.size = type[:size]
    self.bitmap.font.bold = type[:bold]
    self.bitmap.font.italic = type[:italic]
    bitmap.font.color = color.is_a?(String) ? eval(color) : Color.new(color[0], color[1], color[2], color[3])
    bitmap.font.out_color = out.is_a?(String) ? eval(out) : Color.new(out[0], out[1], out[2], out[3])
    self.bitmap.draw_text(0, 0, self.bitmap.width, self.bitmap.height, str, type[:align])
    #
  end # refresh_type0

  #----------------------------------------------------------------------------|
  #  Alias method: real_number                                                 |
  #----------------------------------------------------------------------------|
  alias fix_catb_real_number real_number
  def real_number
    # This part is rewritten by this snippet to return @catb_value or @catb_action_times
    @symbol == :atb ? atb_rate : @symbol == :action ? @battler.catb_action_times : fix_catb_real_number
    #
  end # real_number

  #----------------------------------------------------------------------------|
  #  Alias method: setting                                                     |
  #----------------------------------------------------------------------------|
  alias fix_catb_setting setting
  def setting
    # This part is rewritten by this snippet to handle atb texts setting
    @symbol == :atb ? BattleLuna::HUD::BATTLER_HUD[:atb_num] : @symbol == :action ? BattleLuna::HUD::BATTLER_HUD[:action_num] : fix_catb_setting
    #
  end # setting

  #----------------------------------------------------------------------------|
  #  New method: atb_rate                                                      |
  #----------------------------------------------------------------------------|
  def atb_rate
    ($imported["DoubleX RMVXA Cooldown Addon to YSA-CATB"] && @battler.cd_catb_value > 0 ? @battler.catb_cd_filled_rate : @battler.ct_catb_value > 0 ? @battler.catb_ct_filled_rate : @battler.catb_filled_rate) * 100.0
  end # atb_rate

end # SpriteHUD_Numbers

#------------------------------------------------------------------------------|
#  * Edit class: Window_BattleStatus                                           |
#------------------------------------------------------------------------------|

class Window_BattleStatus < Window_Selectable

  #----------------------------------------------------------------------------|
  #  Rewrite method: draw_actor_catb                                           |
  #----------------------------------------------------------------------------|
  def draw_actor_catb(actor, dx, dy, width = 124)
    # This part is rewritten by this snippet to disable this method
    #
  end # draw_actor_catb

end # Window_BattleStatus

#------------------------------------------------------------------------------|

end # if $imported["YEA-BattleEngine"] && $imported["YSA-CATB"] && $imported["DoubleX RMVXA Bug Fixes to YSA-CATB"]