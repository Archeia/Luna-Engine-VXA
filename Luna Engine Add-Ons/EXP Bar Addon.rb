#==============================================================================
# ■ MenuLuna: EXP Bar Configuration
#==============================================================================

module MenuLuna
  module MainMenu
    BATTLER_STATUS[:exp_bar] = {
      :enable   =>  true, # Enable EXP Bars? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
      :offset_x =>  228,
      :offset_y =>  55,
      :offset_z =>  0,
      # -----------------------------------------------------------------
      # Type allows you to set the type of graphic you want to use.
      # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
      # -----------------------------------------------------------------
      :type     =>  0,
      :vertical =>  false,# Display vertically? True/False
                          # Works for type 0 and 1.
      :ani_rate =>  0.02, # Max is 1.00. Refers to animate speed/rate.
      #---
      :type_0   =>  {
      # -----------------------------------------------------------------
      # Set the color for the bar background. [R,G,B,A]
      # You can also use normal_color to use the default windowskin colors.
      # -----------------------------------------------------------------
        :back_color =>  [0, 0, 0, 255],
      # -----------------------------------------------------------------
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------
        :color1     =>  [7, 101, 58, 255],
        :color2     =>  [84, 194, 144, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :outline    =>  [0, 0, 0, 255],
        :length     =>  220, # Width/Length of the bar.
        :height     =>  12,  # Height of the bar.

      # -----------------------------------------------------------------
      # This section allows you to customize the "EXP" Vocab display.
      # -----------------------------------------------------------------
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
        :offset_x =>  232,
        :offset_y =>  32,
        :offset_z =>  1,
      # -----------------------------------------------------------------
      # Set the color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default font color.
      # -----------------------------------------------------------------
        :tcolor   =>  [255, 255, 255, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :toutline =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
      # -----------------------------------------------------------------
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------
        :align    =>  0,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
        :text     =>  "EXP",        # Change "EXP" Vocab.
      },
      #---
      :type_1   =>  {
        :filename =>  "EXP_Bar",    # Custom EXP Bar Filename.
      },
      #---
      :type_2   =>  {
        :filename =>  "Btskin_EXP", # Custom Frame-based EXP Bar Filename.
        :frames   =>  10,          # Amount of animation frames.
      },
    } # End exp_bar.
  end

  module ItemMenu
    BATTLER_STATUS[:exp_bar] = {
      :enable   =>  false, # Enable EXP Bars? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
      :offset_x =>  228,
      :offset_y =>  48,
      :offset_z =>  0,
      # -----------------------------------------------------------------
      # Type allows you to set the type of graphic you want to use.
      # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
      # -----------------------------------------------------------------
      :type     =>  0,
      :vertical =>  false,# Display vertically? True/False
                          # Works for type 0 and 1.
      :ani_rate =>  0.02, # Max is 1.00. Refers to animate speed/rate.
      #---
      :type_0   =>  {
      # -----------------------------------------------------------------
      # Set the color for the bar background. [R,G,B,A]
      # You can also use normal_color to use the default windowskin colors.
      # -----------------------------------------------------------------
        :back_color =>  [0, 0, 0, 255],
      # -----------------------------------------------------------------
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------
        :color1     =>  [7, 101, 58, 255],
        :color2     =>  [84, 194, 144, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :outline    =>  [0, 0, 0, 255],
        :length     =>  220, # Width/Length of the bar.
        :height     =>  12,  # Height of the bar.

      # -----------------------------------------------------------------
      # This section allows you to customize the "EXP" Vocab display.
      # -----------------------------------------------------------------
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
        :offset_x =>  232,
        :offset_y =>  32,
        :offset_z =>  1,
      # -----------------------------------------------------------------
      # Set the color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default font color.
      # -----------------------------------------------------------------
        :tcolor   =>  [255, 255, 255, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :toutline =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
      # -----------------------------------------------------------------
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------
        :align    =>  0,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
        :text     =>  "EXP",        # Change "EXP" Vocab.
      },
      #---
      :type_1   =>  {
        :filename =>  "EXP_Bar",    # Custom EXP Bar Filename.
      },
      #---
      :type_2   =>  {
        :filename =>  "Btskin_EXP", # Custom Frame-based EXP Bar Filename.
        :frames   =>  10,          # Amount of animation frames.
      },
    } # End exp_bar.
  end

  module SkillMenu
    BATTLER_STATUS[:exp_bar] = {
      :enable   =>  false, # Enable EXP Bars? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
      :offset_x =>  228,
      :offset_y =>  48,
      :offset_z =>  0,
      # -----------------------------------------------------------------
      # Type allows you to set the type of graphic you want to use.
      # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
      # -----------------------------------------------------------------
      :type     =>  0,
      :vertical =>  false,# Display vertically? True/False
                          # Works for type 0 and 1.
      :ani_rate =>  0.02, # Max is 1.00. Refers to animate speed/rate.
      #---
      :type_0   =>  {
      # -----------------------------------------------------------------
      # Set the color for the bar background. [R,G,B,A]
      # You can also use normal_color to use the default windowskin colors.
      # -----------------------------------------------------------------
        :back_color =>  [0, 0, 0, 255],
      # -----------------------------------------------------------------
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------
        :color1     =>  [7, 101, 58, 255],
        :color2     =>  [84, 194, 144, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :outline    =>  [0, 0, 0, 255],
        :length     =>  220, # Width/Length of the bar.
        :height     =>  12,  # Height of the bar.

      # -----------------------------------------------------------------
      # This section allows you to customize the "EXP" Vocab display.
      # -----------------------------------------------------------------
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
        :offset_x =>  232,
        :offset_y =>  32,
        :offset_z =>  1,
      # -----------------------------------------------------------------
      # Set the color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default font color.
      # -----------------------------------------------------------------
        :tcolor   =>  [255, 255, 255, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :toutline =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
      # -----------------------------------------------------------------
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------
        :align    =>  0,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
        :text     =>  "EXP",        # Change "EXP" Vocab.
      },
      #---
      :type_1   =>  {
        :filename =>  "EXP_Bar",    # Custom EXP Bar Filename.
      },
      #---
      :type_2   =>  {
        :filename =>  "Btskin_EXP", # Custom Frame-based EXP Bar Filename.
        :frames   =>  10,          # Amount of animation frames.
      },
    } # End exp_bar.

    CURRENT_ACTOR_STATUS[:exp_bar] = {
      :enable   =>  true, # Enable EXP Bars? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
      :offset_x =>  228,
      :offset_y =>  48,
      :offset_z =>  0,
      # -----------------------------------------------------------------
      # Type allows you to set the type of graphic you want to use.
      # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
      # -----------------------------------------------------------------
      :type     =>  0,
      :vertical =>  false,# Display vertically? True/False
                          # Works for type 0 and 1.
      :ani_rate =>  0.02, # Max is 1.00. Refers to animate speed/rate.
      #---
      :type_0   =>  {
      # -----------------------------------------------------------------
      # Set the color for the bar background. [R,G,B,A]
      # You can also use normal_color to use the default windowskin colors.
      # -----------------------------------------------------------------
        :back_color =>  [0, 0, 0, 255],
      # -----------------------------------------------------------------
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------
        :color1     =>  [7, 101, 58, 255],
        :color2     =>  [84, 194, 144, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :outline    =>  [0, 0, 0, 255],
        :length     =>  220, # Width/Length of the bar.
        :height     =>  12,  # Height of the bar.

      # -----------------------------------------------------------------
      # This section allows you to customize the "EXP" Vocab display.
      # -----------------------------------------------------------------
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window display
      # without affecting its base x, y and z.
      # -----------------------------------------------------------------
        :offset_x =>  232,
        :offset_y =>  32,
        :offset_z =>  1,
      # -----------------------------------------------------------------
      # Set the color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default font color.
      # -----------------------------------------------------------------
        :tcolor   =>  [255, 255, 255, 255],
      # -----------------------------------------------------------------
      # Set the outline color for the name display. [R,G,B,A]
      # You can also use normal_color to use the default outline color.
      # -----------------------------------------------------------------
        :toutline =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
      # -----------------------------------------------------------------
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------
        :align    =>  0,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
        :text     =>  "EXP",        # Change "EXP" Vocab.
      },
      #---
      :type_1   =>  {
        :filename =>  "EXP_Bar",    # Custom EXP Bar Filename.
      },
      #---
      :type_2   =>  {
        :filename =>  "Btskin_EXP", # Custom Frame-based HP Bar Filename.
        :frames   =>  10,          # Amount of animation frames.
      },
    } # End exp_bar.
  end
end

#==============================================================================
# ■ SpriteMenu_Bar
#==============================================================================

class SpriteMenu_Bar < Sprite

  #--------------------------------------------------------------------------
  # alias method: real_rate
  #--------------------------------------------------------------------------
  alias luna_exp_bar_real_rate real_rate
  def real_rate
    case @symbol
    when :exp_bar
      return exp_rate
    else
      return luna_exp_bar_real_rate
    end
  end

  #--------------------------------------------------------------------------
  # exp_rate
  #--------------------------------------------------------------------------
  def exp_rate
    floor_exp = @battler.exp - @battler.current_level_exp
    ceil_exp  = @battler.next_level_exp - @battler.current_level_exp
    return floor_exp.to_f / ceil_exp.to_f
  end

end # SpriteMenu_Bar

#==============================================================================
# ■ Spriteset_MenuStatus
#==============================================================================

class Spriteset_MenuStatus

  #--------------------------------------------------------------------------
  # alias method: create_bars
  #--------------------------------------------------------------------------
  alias luna_exp_bar_create_bars create_bars
  def create_bars
    luna_exp_bar_create_bars
    exp_bar = SpriteMenu_Bar.new(@viewport, self, :exp_bar, @setting)
    @sprites.push(exp_bar)
  end

end # Spriteset_MenuStatus
