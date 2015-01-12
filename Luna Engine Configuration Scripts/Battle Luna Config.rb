#==============================================================================
# ■ Battle Luna Configuration
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# This customizes the Battle GUI.
#==============================================================================

module BattleLuna
  module HUD
    
    # -----------------------------------------------------------------
    # This section adds a background beneath the Actor/Battler UI.
    # -----------------------------------------------------------------
    BACKGROUND_WINDOW = {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x          =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y          =>  296,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z          =>  300,
      :width      =>  640, # Change the width of the window.
      :height     =>  120, # Change the height of the window.
      
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
      :type       =>  0,    # 0 - Window Default; 1 - Gradient; 2 - Picture
      
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :skin     => "Window",  # Name of the Windowskin
        :opacity  => 255,       # Change the transparency of the window.
                                # 0 = Transparent, 255 = Solid      
      },
      
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------  
      :type_1     =>  {
        :color1   =>  [0, 0, 0, 128],
        :color2   =>  [0, 0, 0, 128],
        :vertical =>  false,  # Display the gradient vertically.
      },
      
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "Help_Window",
        :opacity  =>  255,        # Change the transparency of the window.
                                  # 0 = Transparent, 255 = Solid  
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End BACKGROUND_WINDOW.
    
    # -----------------------------------------------------------------   
    # Battler Status involves modifying the window where the actor status is 
    # shown. Use this to increase or decrease the limit the amount of actors 
    # displayed.
    # -----------------------------------------------------------------     
    BATTLER_HUD   = {
      # Sizes settings
      :width      =>  96,     # Change the width of the window.
      :height     =>  96 ,    # Change the height of the display.
      :max_width  =>  640,    # Used for centering horizontal HUD
      :max_height =>  96,     # Used for centering vertical HUD
      :vertical   =>  false,  # Display vertically? True/False
      # -----------------------------------------------------------------
      # Modify Cursor Position
      # -----------------------------------------------------------------
      :cursor     =>  true, # Enable default selection.
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
      :cursor_offset_x => -12,
      :cursor_offset_y => 0,
      
      # Position Settings
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x          =>  0,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :y          =>  308,
      # -----------------------------------------------------------------
      # These offsets can only be used string for eval.
      # It converts the uoted string into a function with its values that can 
      # be called up to be used/applied.  Offset Values refer to how much you 
      # want to nudge the window display without affecting its base x and y. 
      # -----------------------------------------------------------------
      :z          =>  350,
      # -----------------------------------------------------------------
      # These offsets can only be used string for eval.
      # It converts the uoted string into a function with its values that can 
      # be called up to be used/applied.  Offset Values refer to how much you 
      # want to nudge the window display without affecting its base x and y. 
      # -----------------------------------------------------------------
      :offset_x   =>  "0", # index is actor index in party
      :offset_y   =>  0,
      # -----------------------------------------------------------------
      # This function is the distance between the objects. 
      # Can be negative or positive values.
      # -----------------------------------------------------------------
      :spacing    =>  8,
      # -----------------------------------------------------------------
      # Enable centering for the Battler/Actor/Player UI?
      # -----------------------------------------------------------------
      :center     =>  true,
      # -----------------------------------------------------------------
      # The main settings is for the battler UI. This allows you to add a
      # custom picture background for it.
      # -----------------------------------------------------------------
      :main       =>  {
        :enable   =>  false,      # Enable main settings? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
        :offset_x =>  12,
        :offset_y =>  66,
        :offset_z =>  10,
        :filename =>  "Skin_Main", # Picture Filename.
        :collapse =>  false,       # Enable collapse options?
        :collapse_type => 1,       # 0 - Like Battler; 1 - Grey out.
        :highlight  =>  true,    # Highlight when selected.
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Actor ID/Index.
      # filename + "_ActorID" (Example: MainHUD_1)
      # -----------------------------------------------------------------
        :base_actor =>  false,
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Class ID/Index.
      # filename + "_ActorID_ClassID" (Example: MainHUD_1_1)
      # -----------------------------------------------------------------
        :base_class =>  false,
      }, # End main.
      
      # -----------------------------------------------------------------
      # The select settings is if you want to add a picture graphic
      # when selecting an actor/battler.
      # -----------------------------------------------------------------    
        :select     =>  {
        :enable   =>  false,  # Enable select settings? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
        :offset_x =>  12,
        :offset_y =>  66,
        :offset_z =>  10,
        :filename =>  "Skin_Select",# Picture Filename.
        :frame    =>  1,            # How many frames does the picture have?
        :fps      =>  4,            # Wait time Frames Per Second.
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Actor ID/Index.
      # filename + "_ActorID" (Example: MainHUD_1)
      # -----------------------------------------------------------------
        :base_actor =>  false,
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Class ID/Index.
      # filename + "_ActorID_ClassID" (Example: MainHUD_1_1)
      # -----------------------------------------------------------------
        :base_class =>  false,
      }, # End select.
      
      # -----------------------------------------------------------------
      # Face Settings allows you to set a faceset/bust shot/custom picture
      # for the battlers/actors displayed in the menu.
      # -----------------------------------------------------------------   
      :face       =>  {
        :enable   =>  true,  # Enable face settings? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
        :offset_x      =>  0,
        :offset_y      =>  0,
        :offset_z      =>  0,
        :collapse      =>  true,  # Allow collapse effects? True/False
        :collapse_type =>  1,     # 0 - Like Battler; 1 - Grey out.
        :highlight     =>  true,  # Highlight when selected.
      # -----------------------------------------------------------------
      # Type allows you to set the type of face graphic you want to use.
      # 0 - Default faceset; 1 - Custom face graphic.
      # 2 - Custom face based on database settings. FaceName_FaceIndex
      # Example for Eric: Actor4_0
      # -----------------------------------------------------------------
        :type     =>  0,    
        :type_1   =>  {
          :filename   =>  "Btskin_face", # Put image in Graphics/Faces
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Actor ID/Index.
      # filename + "_ActorID" (Example: FaceHUD_1)
      # -----------------------------------------------------------------
          :base_actor =>  true,
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Class ID/Index.
      # filename + "_ActorID_ClassID" (Example: FaceHUD_1_1)
      # -----------------------------------------------------------------
          :base_class =>  false,
        },
      }, # End face.

      # -----------------------------------------------------------------
      # This section allows you to customize name settings for actors.
      # -----------------------------------------------------------------  
      :name       =>  {
        :enable   =>  false, # Enable name display? True/False
        :width    =>  120,  # Change the width of the name rect.
        :height   =>  24,   # Change the height of the name rect.
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  108,
        :offset_y =>  12,
        :offset_z =>  0,
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------         
        :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
        :outline  =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
        :align    =>  0,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
      }, # End name.
      
      # -----------------------------------------------------------------
      # This section allows you to customize HP Bar settings for actors.
      # -----------------------------------------------------------------  
      :hp_bar     =>  {
        :enable   =>  true, # Enable HP Bars? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------     
        :offset_x =>  0,
        :offset_y =>  72,
        :offset_z =>  15,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
        # -----------------------------------------------------------------
        :type     =>  0,
        :vertical =>  false, # Display vertically? True/False 
                             # Works for type 0 and 1.
        :ani_rate =>  0.02,  # Max is 1.00. Refers to animate speed/rate.
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
          :length     =>  96, # Width/Length of the bar.
          :height     =>  12,  # Height of the bar.
        # ----------------------------------------------------------------- 
        # This section allows you to customize the "HP" Vocab display.
        # -----------------------------------------------------------------  
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  2,
          :offset_y =>  63,
          :offset_z =>  16,
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
          :font     =>  "VL Gothic",    # Set Font type.
          :size     =>  18,             # Set Font Size
          :text     =>  "HP",           # Change "HP" Vocab.
        },
        #---
        :type_1   =>  {
          :filename =>  "physbar-fill", # Custom HP Bar Filename.
        },
        #---
        :type_2   =>  {
          :filename =>  "Btskin_hp",    # Custom Frame-based HP Bar Filename.
          :frames   =>  10,             # Amount of animation frames.
        },
      }, # End hp_bar.   
      # -----------------------------------------------------------------
      # This section allows you to customize MP Bar settings for actors.
      # -----------------------------------------------------------------  
      :mp_bar     =>  {
        :enable   =>  true, # Enable MP Bars? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------   
        :offset_x =>  0,
        :offset_y =>  84,
        :offset_z =>  15,
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
          :color1     =>  [16, 16, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :color2     =>  [64, 64, 255, 255],
          :outline    =>  [0, 0, 0, 255],     
          :length     =>  48,                 # Width/Length of the bar.
          :height     =>  12,                 # Height of the bar.
        # ----------------------------------------------------------------- 
        # This section allows you to customize the "MP" Vocab display.
        # -----------------------------------------------------------------  
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  2,
          :offset_y =>  75,
          :offset_z =>  16,
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------   
          :tcolor    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :toutline  =>  [0, 0, 0, 255],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  0,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  18,          # Set Font Size
          :text     =>  "MP",        # Change "MP" Vocab.
        },
        #---
        :type_1   =>  {
          :filename =>  "Skin_MP",    # Custom MP Bar Filename.
        },
        #---
        :type_2   =>  {
          :filename =>  "Btskin_mp", # Custom Frame-based MP Bar Filename.
          :frames   =>  10,          # Amount of animation frames.
        },
      }, # End mp_bar.
      
      # -----------------------------------------------------------------
      # This section allows you to customize TP Bar settings for actors.
      # -----------------------------------------------------------------  
      :tp_bar     =>  {
        :enable   =>  true, # Enable TP Bars? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------  
        :offset_x =>  48,
        :offset_y =>  84,
        :offset_z =>  15,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
        # -----------------------------------------------------------------   
        :type     =>  2,
        :vertical =>  false, # Display vertically? True/False 
                             # Works for type 0 and 1.
        :ani_rate =>  0.02,  # Max is 1.00. Refers to animate speed/rate.
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
          :color1     =>  [16, 255, 16, 255],
          :color2     =>  [64, 255, 64, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline    =>  [0, 0, 0, 255],
          :length     =>  48, # Width/Length of the bar.
          :height     =>  12, # Height of the bar.
        # ----------------------------------------------------------------- 
        # This section allows you to customize the "TP" Vocab display.
        # -----------------------------------------------------------------  
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  50,
          :offset_y =>  75,
          :offset_z =>  16,
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------   
          :tcolor    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :toutline  =>  [0, 0, 0, 255],
          :bold     =>  false,  # Enable Bold? True/False
          :italic   =>  false,  # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # ----------------------------------------------------------------- 
          :align    =>  0,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  18,          # Set Font Size
          :text     =>  "TP",        # Change "TP" Vocab.
        },
        #---
        :type_1   =>  {
          :filename =>  "Btskin_tp", # Custom TP Bar Filename.
        },
        #---
        :type_2   =>  {
          :filename =>  "Skin_TP",   # Custom Frame-based TP Bar Filename.
          :frames   =>  17,          # Amount of animation frames.
        },
      }, # End tp_bar.
      
      # -----------------------------------------------------------------
      # This section allows you to customize HP Number settings for actors.
      # -----------------------------------------------------------------  
      :hp_num     =>  {
        :enable   =>  true, # Enable HP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------     
        :offset_x =>  0,
        :offset_y =>  67,
        :offset_z =>  20,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  false, # Set to true to show max value in this sprite.
                             # Only works with type 0.
        :text     =>  "%d/%d", # Only available  for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  92,  # Change the width of the number rect.
          :height   =>  24,  # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  18,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  80,              # Change the width of the number rect. 
                                         # Use for adjusting alignment.
          :filename =>  "Skin_NumSmall", # Picture Filename.
          :spacing  =>  -2,              # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        },
      }, # End hp_num.
      
      # -----------------------------------------------------------------
      # This section allows you to customize MP Number settings for actors.
      # -----------------------------------------------------------------  
      :mp_num     =>  {
        :enable   =>  true, # Enable MP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  0,
        :offset_y =>  79,
        :offset_z =>  20,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,    
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  false, # Set to true to show Max MP Numbers in this sprite.
                             # Only works with type 0.
        :text     =>  "%d/%d", # Only available for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  46,   # Change the width of the number rect.
          :height   =>  24,   # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  18,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  80,              # Change the width of the number rect. 
                                         # Use for adjusting alignment.
          :filename =>  "Skin_NumSmall", # Picture Filename.
          :spacing  =>  -2,              # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        },
      }, # End mp_num.
      
      # -----------------------------------------------------------------
      # This section allows you to customize TP Number settings for actors.
      # -----------------------------------------------------------------  
      :tp_num     =>  {
        :enable   =>  true, # Enable TP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  48,
        :offset_y =>  79,
        :offset_z =>  20,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  false, # Set to true to show max value in this sprite.
                            # Currently only works with type 0.
        :text     =>  "%d/%d", # Only available for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  46,    # Change the width of the number rect.
          :height   =>  24,    # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  false,   # Enable Bold? True/False
          :italic   =>  false,    # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  18,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  30,          # Change the width of the number rect. 
                                     # Use for adjusting alignment.
          :filename =>  "Skin_NumSmall", # Picture Filename.
          :spacing  =>  -2,              # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  1,
        },
      }, # End tp_num.
      
      # -----------------------------------------------------------------
      # This section allows you to customize Max HP Number settings for actors.
      # -----------------------------------------------------------------  
      :hp_max_num =>  {
        :enable   =>  false, # Enable Max HP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------     
        :offset_x =>  76,
        :offset_y =>  56,
        :offset_z =>  5,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #---
        :type_0   =>  {
          :width    =>  76,  # Change the width of the number rect.
          :height   =>  24,   # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  true, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,           
          :font     =>  "Times New Roman", # Set Font type.
          :size     =>  16,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  76,               # Change the width of the number rect. 
                                          # Use for adjusting alignment.
          :filename =>  "Btskin_numbers", # Picture Filename.
          :spacing  =>  -2,               # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        },
      }, # End hp_max_num.
      
      # -----------------------------------------------------------------
      # This section allows you to customize Max MP Number settings for actors.
      # -----------------------------------------------------------------  
      :mp_max_num =>  {
        :enable   =>  false, # Enable Max MP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  76,
        :offset_y =>  70,
        :offset_z =>  5,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #---
        :type_0   =>  {
          :width    =>  76,  # Change the width of the number rect.
          :height   =>  24,   # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  true,  # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "Times New Roman", # Set Font type.
          :size     =>  16,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  76,               # Change the width of the number rect. 
                                          # Use for adjusting alignment.
          :filename =>  "Btskin_numbers", # Picture Filename.
          :spacing  =>  -2,               # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        },
      }, # End mp_max_num.
      
      # -----------------------------------------------------------------
      # This section allows you to customize Max TP Number settings for actors.
      # -----------------------------------------------------------------  
      :tp_max_num     =>  {
        :enable   =>  false, # Enable Max TP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  76,
        :offset_y =>  84,
        :offset_z =>  5,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,    
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #---
        :type_0   =>  {
          :width    =>  76, # Change the width of the number rect.
          :height   =>  24, # Change the height of the number rect.
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------  
          :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :outline  =>  [0, 0, 0, 255],
          :bold     =>  true,    # Enable Bold? True/False
          :italic   =>  false,   # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "Open Sans", # Set Font type.
          :size     =>  16,          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  76,               # Change the width of the number rect. 
                                          # Use for adjusting alignment.
          :filename =>  "Btskin_numbers", # Picture Filename.
          :spacing  =>  -2,               # Add spacing
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        },
      }, # End tp_max_num.
      
        # ----------------------------------------------------------------- 
        # This allows you to customize the states display.
        # -----------------------------------------------------------------   
      :states       =>  {
        :enable   =>  true, # Enable State Display? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  108,
        :offset_y =>  72,
        :offset_z =>  1,
        # -----------------------------------------------------------------
        # Type allows you to set the type of state display you want to use.
        # # 0 - Default states; 1 - Scrolling states
        # -----------------------------------------------------------------
        :type     =>  0,    
        # ----------------------------------------------------------------- 
        # This allows you to set a background image for state display.
        # -----------------------------------------------------------------  
        :back     =>  { # Offset is not related to above state offset
          :enable   =>  false, # Enable custom background? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  2,
          :offset_y =>  2,
          :offset_z =>  19,
          :filename =>  "Skin_State", # Filename for the background picture for states.
        },
        #---
        :type_0   =>  {
          :max      =>  4,  # Max amount of states displayed.
          :spacing  =>  1,  # Spacing between states.
        },
        :type_1   =>  {
          :rate     =>  90, # Wait time before changing to the next state.
        },
      }, # End states
      
    } # End BATTLER_HUD.
    
  end # End HUD
  
  module WINDOWS
    # -----------------------------------------------------------------
    # This section modifies the window related to the commands.
    # -----------------------------------------------------------------
    WINDOW_COMMANDS = {
    # -----------------------------------------------------------------
    # Party Commands is where Fight/Escape are displayed.
    # -----------------------------------------------------------------
      :party_commands =>  {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
        :x      =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
        :y      =>  0,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
        :z      =>  300,
        :width  =>  640,        # Change the width of the window.
      # -----------------------------------------------------------------
      # Change the height of the window.
      # By default: max lines shown is (height - 24) / 24
      # -----------------------------------------------------------------
        :height =>  48,
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding    =>  12,
      # ----------------------------------------------------------------- 
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------   
        :align      =>  1,
        :vertical   =>  false,  # Display vertically? True/False 
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
        :back_type  =>  0,
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------     
      :background_variable => 1,
       
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :skin     => "Window",   # Name of the Windowskin
        :opacity  => 255,        # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid    
      },
        
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # ----------------------------------------------------------------- 
        :type_1     =>  {
          :color1   =>  [0, 0, 0, 128],
          :color2   =>  [0, 0, 0, 128],
          :vertical =>  false,
        },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
        :type_2     =>  {
          :picture  =>  "Party_Commands", # Graphics/System
          :opacity  =>  255,
          :offset_x =>  0,
          :offset_y =>  0,
        },
      }, # End party_commands
      
    # -----------------------------------------------------------------
    # Actor Commands is where the meat of the commands for battle are displayed.
    # If you want a Ring Menu, use the Actor Commands script in Battle Luna
    # Add-on section. There's also an add-on called Horizontal Commands.
    # -----------------------------------------------------------------     
      :actor_commands =>  {
      # -----------------------------------------------------------------
      # This will be offset if pos_type == 1 or pos_type == 2
      # String can be used for eval
      # Example: :x => "aindex * 24" (aindex is actor index in party)
      # -----------------------------------------------------------------
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
        :x      =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
        :y      =>  -132,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
        :z      =>  300,
        # Sizes
        :width  =>  128,          # Change the width of the window.
      # -----------------------------------------------------------------
      # Change the height of the window.
      # By default: max lines shown is (height - 24) / 24
      # -----------------------------------------------------------------
        :height =>  120, 
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding    =>  12,
        #---
      # ----------------------------------------------------------------- 
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------   
        :align      =>  0,
        :vertical   =>  true, # Display vertically? True/False 
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
        :back_type  =>  0, 
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------     
        :background_variable => 1,
      # ----------------------------------------------------------------- 
      # Set the command window position. 
      # 0 - Fixed position; 1 - Above Actor HUD; 2 - Above Actor Battle Sprite
      # -----------------------------------------------------------------     
        :pos_type   =>  1,                  
        :hide_select => true,  # Hide the window when a command is selected.
        
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :skin     => "Window",   # Name of the Windowskin
        :opacity  => 255,        # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid    
        },
        
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # ----------------------------------------------------------------- 
        :type_1     =>  {
          :color1   =>  [0, 0, 0, 128],
          :color2   =>  [0, 0, 0, 128],
          :vertical =>  false,
        },
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
        :type_2     =>  {
          :picture  =>  "Spin40", # Graphics/System
          :opacity  =>  255,
          :offset_x =>  24,
          :offset_y =>  24,
        },
      }, # End actor_commands
    } # End WINDOW_COMMANDS.
    
    # -----------------------------------------------------------------
    # This section handles the GUI elements of the battle system.
    # -----------------------------------------------------------------       
    WINDOW_GUI = {
    # -----------------------------------------------------------------
    # This section modifies the help window.
    # -----------------------------------------------------------------       
      :help_window  =>  {
     # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x            =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y            =>  0,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z            =>  300,
      :width        =>  640, # Change the width of the window.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding    =>  12,
      # -----------------------------------------------------------------
      # Refers to the amount of lines displayed. By default it's 2 lines.
      # If you wish to have more and fit in the database, use the 
      # Notetag Descriptions script.
      # -----------------------------------------------------------------
      :line_number  =>  2,
      :height_buff  =>  0, # Spacing between the lines vertically.
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
      :back_type    =>  0, 
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------    
      :background_variable => 1,
      
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :opacity  => 255,       # Change the transparency of the window.
                                # 0 = Transparent, 255 = Solid      
      },
        
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # -----------------------------------------------------------------  
      :type_1     =>  {
        :color1   =>  [0, 0, 0, 128],
        :color2   =>  [0, 0, 0, 128],
        :vertical =>  false,  # Display the gradient vertically.
      },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "Help_Window",
        :opacity  =>  255,        # Change the transparency of the window.
                                  # 0 = Transparent, 255 = Solid  
        :offset_x =>  0,
        :offset_y =>  0,
        },
      }, # End help_window
      
    # -----------------------------------------------------------------
    # This section modifies the skill window.
    # -----------------------------------------------------------------   
      :skill_window  =>  {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
        :x      =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
        :y      =>  72,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
        :z      =>  300,  
        :width        =>  640,         # Change the width of the window.
        :height       =>  72,          # Change the height of the window.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding      =>  12,
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
        :back_type    =>  0,
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------   
        :background_variable => 1,
        :hide_select  =>  true,   # Hide the window when selecting a target.
        
      # Type 0 settings (Windowskin)
       :type_0     =>  { 
        :opacity  => 255,      # Change the transparency of the window.
                               # 0 = Transparent, 255 = Solid    
      },
        
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # ----------------------------------------------------------------- 
        :type_1     =>  {
          :color1   =>  [0, 0, 0, 128],
          :color2   =>  [0, 0, 0, 128],
          :vertical =>  false,
        },  
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
        :type_2     =>  {
      # -----------------------------------------------------------------
      # # Name of the Picture located in Graphics/System folder.
      # -----------------------------------------------------------------
          :picture  =>  "Actor_Commands", 
      # -----------------------------------------------------------------
      # When enabled, you can set custom graphics based on Skill Type.
      # picture + "_SkillTypeName" (Example: SkillBG_Special)
      # -----------------------------------------------------------------
          :base_st  =>  false, 
          :opacity  =>  255,     # Change the transparency of the picture.
                                 # 0 = Transparent, 255 = Solid   
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x and y.
      # -----------------------------------------------------------------
          :offset_x =>  0,
          :offset_y =>  0,
        },
      }, # End skill_window
      
    # -----------------------------------------------------------------
    # This section modifies the item window.
    # -----------------------------------------------------------------         
      :item_window  =>  {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
        :x      =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
        :y      =>  999,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
        :z        =>  300,
        :width    =>  640,  # Change the width of the window.
        :height   =>  72,   # Change the height of the window.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding  =>  12,
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
        :back_type  =>  0, 
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------     
        :background_variable => 1, # Set a Variable to change Window
        :hide_select => true,  # Hide the window when a command is selected.
        
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :opacity  => 255,        # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid    
      },
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # ----------------------------------------------------------------- 
        :type_1     =>  {
          :color1   =>  [0, 0, 0, 128],
          :color2   =>  [0, 0, 0, 128],
          :vertical =>  false,     # Display the gradient vertically.
        },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
        :type_2     =>  {
          :picture  =>  "Actor_Commands",
          :opacity  =>  255,
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x and y. 
        # ----------------------------------------------------------------- 
          :offset_x =>  0,
          :offset_y =>  0,
        },
      }, # End item_window
      
    # -----------------------------------------------------------------
    # This section modifies the battlelog display.
    # -----------------------------------------------------------------             
        :battlelog_window  =>  {
        :enable       =>  true, # Enable battlelog? True/False.
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x            =>  0,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y            =>  0,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z            =>  300,
      :width        =>  640, # Change the width of the window.
      # -----------------------------------------------------------------
      # Refers to the amount of lines displayed. By default it's 2 lines.
      # If you wish to have more and fit in the database, use the 
      # Notetag Descriptions script.
      # -----------------------------------------------------------------
        :line_number  =>  4,
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
        :padding      =>  12,
        :height_buff  =>  0,   # Spacing between the lines vertically.
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture; 
      # 3 - Default Dim for each line.
      # -----------------------------------------------------------------
        :back_type    =>  3,
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------   
        :background_variable => 1, # Set a Variable to change Window
      # -----------------------------------------------------------------  
      # Enables or disable log display BG.
      # Set to false to show it even when there is no line.
      # -----------------------------------------------------------------  
        :show_no_line =>  true, 
        
      # Type 0 settings (Windowskin)
      :type_0     =>  { 
        :opacity  => 255,      # Change the transparency of the window.
                               # 0 = Transparent, 255 = Solid    
      },
        
      # -----------------------------------------------------------------   
      # Type 1 settings (Gradient Background)
      # color1 = refers to the first color of the gradient. ([R,G,B,A])
      # color2 = refers to the second color of the gradient. ([R,G,B,A])
      # normal_color refers to the color of your default windowskin.
      # ----------------------------------------------------------------- 
      :type_1     =>  {
        :color1   =>  [0, 0, 0, 128],
        :color2   =>  [0, 0, 0, 128],
        :vertical =>  false,
      },

      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      # BG Type 2 settings
      :type_2     =>  {
        :picture  =>  "", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    }, # End battlelog_window
      
  } # End WINDOW_GUI.
    
  end # End WINDOWS
    # -----------------------------------------------------------------
    # This section handles the animation and message system settings 
    # and how it'll affect the Battle GUI by default.
    # ----------------------------------------------------------------- 
  module CORE
    
    VISUAL = {
      # -----------------------------------------------------------------
      # Enemies default attack animation ID.
      # First Attack Animation and Second Attack Animation can be defined by
      # notetags <atk ani 1: x> and <atk ani 2: x> respectively.
      # Always disable :animation_on_hud when using a sideview script.
      # -----------------------------------------------------------------
      :enemy_attack_animation =>  1,
      :animation_on_hud       =>  true,
      
      # -----------------------------------------------------------------
      # Below settings are used for display animation on HUD.
      # This allows you to set offsets on where the animation displays on
      # parts of the Actor HUD.
      # -----------------------------------------------------------------
      :ani_offset_x           =>  64,
      :ani_offset_y           =>  0,
      # -----------------------------------------------------------------
      # This section hides the Battle Status and Actor GUI when a message
      # is displayed. Set to False to make it permanent.
      # -----------------------------------------------------------------
      :status_close_msg       =>  true,  # Status close when show message
    } # End VISUAL
    
  end # End CORE
end # End BattleLuna