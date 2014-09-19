#==============================================================================
# ■ Luna Engine and YSA-CATB Compatibility Settings by DoubleX
#==============================================================================
# Add this below BATTLER_HUD hash in Battle Luna Configuration.
#==============================================================================
# ATB Bar Settings:
#==============================================================================
# :cooldown_color1 and :cooldown_color2 needs DoubleX RMVXA Cooldown Addon to 
# YSA Battle System: Classical ATB to work.
#==============================================================================
# To make the compatibility fix work with DoubleX RMVXA Countdown Addon 
# to YSA Battle System: Classical ATB, YEA - Buff and State Manager Compatibility 
# by DoubleX is needed as well.
#==============================================================================

      # ATB Bar settings
      :atb_bar     =>  {
        :enable   =>  true,
        :offset_x =>  0,
        :offset_y =>  60,
        :offset_z =>  15,
        :type     =>  0,    # 0 - Default bar; 1 - Custom bar.
                            # 2 - Custom frame-based bar.
        :vertical =>  false,# Works for type 0 and 1.
        :ani_rate =>  0.02, # Max is 1.00
        #---
        :type_0   =>  {
          :back_color =>  [0, 0, 0, 255],
          :color1     =>  [127, 127, 127, 255],
          :color2     =>  [127, 127, 127, 255],
          :charge_color1 => [255, 0, 255, 255],
          :charge_color2 => [255, 0, 255, 255],
          :cooldown_color1 => [255, 0, 255, 255],
          :cooldown_color2 => [255, 0, 255, 255],
          :outline    =>  [0, 0, 0, 255],
          :length     =>  96,
          :height     =>  12,
          #--- Text setting ---
          # Offset is not related to above state offset
          :offset_x =>  2,
          :offset_y =>  51,
          :offset_z =>  16,
          :tcolor    =>  [255, 255, 255, 255],
          :toutline  =>  [0, 0, 0, 255],
          :bold     =>  false,
          :italic   =>  false,
          :align    =>  0,
          :font     =>  "VL Gothic",
          :size     =>  18,
          :text     =>  "AP",
        },
        #---
        :type_1   =>  {
          :filename =>  "Skin_ATB",
        },
        #---
        :type_2   =>  {
          :filename =>  "Skin_ATB",
          :frames   =>  17,
        },
      }, # End atb_bar.

    # ATB Numbers settings
      :atb_num     =>  {
        :enable   =>  true,
        :offset_x =>  0,
        :offset_y =>  55,
        :offset_z =>  20,
        :type     =>  0,    # 0 - Default font; 1 - Custom number.
        :ani_rate =>  0.05, # Set by Max Number
        #--- START 2013.09.02
        :action   =>  true, # Set to true to show action points in this sprite.
                            # Currently only works with type 0.
        :text     =>  "%d/%d", # Only available for :action == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  92,
          :height   =>  24,
          :color    =>  [255, 255, 255, 255],
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  false,
          :italic   =>  false,
          :align    =>  2,
          :font     =>  "VL Gothic",
          :size     =>  18,
        },
        #---
        :type_1   =>  {
          :width    =>  80, # Use for align
          :filename =>  "Skin_NumSmall",
          :spacing  =>  -2,
          :align    =>  2,
        },
      }, # End atb_num.

    # Action Numbers settings
      :action_num =>  {
        :enable   =>  false,
        :offset_x =>  76,
        :offset_y =>  44,
        :offset_z =>  5,
        :type     =>  0,    # 0 - Default font; 1 - Custom number.
        :ani_rate =>  0.05, # Set by Max Number
        #---
        :type_0   =>  {
          :width    =>  76,
          :height   =>  24,
          :color    =>  [255, 255, 255, 255],
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  true,
          :italic   =>  false,
          :align    =>  2,
          :font     =>  "Times New Roman",
          :size     =>  16,
        },
        #---
        :type_1   =>  {
          :width    =>  76, # Use for align
          :filename =>  "Btskin_numbers",
          :spacing  =>  -2,
          :align    =>  2,
        },
      }, # End action_num.
