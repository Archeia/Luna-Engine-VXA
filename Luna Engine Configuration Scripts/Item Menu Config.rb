#==============================================================================
# ■ MenuLuna: Item Menu Configuration
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# This section modifies the Item Menu Screen. The menu you see upon opening the
# items tab in the Main Menu.
#==============================================================================
module MenuLuna
  module ItemMenu
    # -----------------------------------------------------------------
    # This section modifies the help window.
    # -----------------------------------------------------------------
    WINDOW_HELP = {
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
    } # End WINDOW_HELP
    
      # -----------------------------------------------------------------   
      # This section allows you to modify the Window_Category section.
      # The place in the menu that says Items/Weapons/Armors/Key Items
      # -----------------------------------------------------------------    
    WINDOW_CATEGORY = {
      :enable =>  true,   # Enable Window Category? True/False
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
      :width  =>  640,         # Change the width of the window.
      # -----------------------------------------------------------------
      # Change the height of the window.
      # By default: max lines shown is (height - 24) / 24
      # -----------------------------------------------------------------
      :height =>  48,
      :item_height => 24,      # Height of each command.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding     => 12,
      # -----------------------------------------------------------------
      # :cursor enables or disable the default cursor display. If set to false 
      # It will remove the rectangle cursor.
      # -----------------------------------------------------------------
      :cursor      => true,
      # -----------------------------------------------------------------
      # Enable scrolling arrows display when long lists are shown.
      # -----------------------------------------------------------------
      :arrow      =>  true,    # Default arrow for long list.
      # ----------------------------------------------------------------- 
      # Set alignment settings.
      # 0 = Left/Default, 1 = Center, 2 = Right
      # -----------------------------------------------------------------   
      :align      =>  1,
      :vertical   =>  false,   # Display vertically? True/False 
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
        :skin     => "Window", # Name of the Windowskin
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
        :picture  =>  "commandpane", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_CATEGORY.
    
      # -----------------------------------------------------------------   
      # This modifies the Window Item List. Where all the items in the 
      # inventory is displayed.
      # -----------------------------------------------------------------    
    WINDOW_ITEM = {
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
      :y            =>  120,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z            =>  300,
      :width        =>  640,    # Change the width of the window.
      :height       =>  296,    # Change the height of the window.
      :column       =>  2,      # Columns for displaying item list.
      :item_height  =>  24,     # Height of each items in the list.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding      =>  12,
      # -----------------------------------------------------------------
      # :cursor enables or disable the default cursor display. If set to false 
      # It will remove the rectangle cursor.
      # -----------------------------------------------------------------
      :cursor       =>  true,
      # -----------------------------------------------------------------
      # Enable scrolling arrows display when long lists are shown.
      # -----------------------------------------------------------------
      :arrow        =>  true,   # Default arrow for long list.
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
      :background_variable => 1, # Set a Variable to change Window
      # -----------------------------------------------------------------  
      # Customize Item Rect settings.
      # Item rect refers to the individual items listed in the Item list.
      # You can adjust the display over here.
      # -----------------------------------------------------------------  
      :item_rect=>  {
        :custom =>  false,  # Enable custom item_rect or not? True/False
        :width  =>  64,     # Width of the item rect.
        :height =>  64,     # Height of the item rect.
        :spacing_ver =>  8, # Spacing of each item vertically.
        :spacing_hor =>  8, # Spacing of each item horizontally.
      },
        
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
        :vertical =>  false,    # Display the gradient vertically.
      },
       
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # ----------------------------------------------------------------- 
      :type_2     =>  {
        :picture  =>  "Actor_Commands", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_ITEM
    
      # -----------------------------------------------------------------   
      # This section allows you to use the Status in Status Menu Add-on
      # If you want it to display a current actor for any aesthetic or 
      # mechanic reason.
      # -----------------------------------------------------------------   
    STATUS_WINDOW = {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x          =>  160,       
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y          =>  0,         
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z          =>  200,       
      :width      =>  480,       # Change the width of the window.
      :height     =>  416,       # Change the height of the window.
      # -----------------------------------------------------------------
      # :cursor enables or disable the default cursor display. If set to false 
      # It will remove the rectangle cursor.
      # -----------------------------------------------------------------
      :cursor     =>  true,      
      # -----------------------------------------------------------------
      # Enable scrolling arrows display when long lists are shown.
      # -----------------------------------------------------------------
      :arrow      =>  true,   
      # -----------------------------------------------------------------  
      # Settings for Lunatic Mode. 
      # Also referenced to configure the default cursor.
      # -----------------------------------------------------------------
      :lunatic    =>  {         
        :autoselect => false,    # Auto select index 0.
        :refresh    => false,    # Refresh all contents each time index changes.
        :formation  => true,     # Enable the default formation background.
        :vertical   =>  true,    # Display the status vertically? True or False
        # -----------------------------------------------------------------
        # This refers to the spacing between the window border and the contents.
        # ----------------------------------------------------------------- 
        :padding   =>  12,       
        # -----------------------------------------------------------------
        # This function is the distance between the objects. 
        # Can be negative or positive values.
        # -----------------------------------------------------------------
        :spacing   =>  32,      
        :scroll    =>  true,     # Enable Scrolling.
        # -----------------------------------------------------------------
        # Set a maximum amount of columns.
        # Scrolling is available if vertical = false.
        # Make sure that :col_max and :limit_page have the same values.
        # -----------------------------------------------------------------
        :col_max   =>  1,        # Set Column numbers for your menu.
        # -----------------------------------------------------------------
        # :item_rect determines the positions of commands in 
        # selectable windows. As well as the position of the cursor. It 
        # calculates the position based on the index of said window and 
        # gives you an X/Y value or both the cursor & command position.
        # -----------------------------------------------------------------                    
        :item_rect =>  { 
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x and y. 
        # ----------------------------------------------------------------- 
          :x      =>  0, 
          :y      =>  0,
        # ----------------------------------------------------------------- 
        # The size of the rectangle.
        # ----------------------------------------------------------------- 
          :width  =>  456,
          :height =>  98,
        },
      }, # End Lunatic.
       # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
      :back_type       =>  0,    
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
        :color1   =>  normal_color, 
        :color2   =>  normal_color, 
        :vertical =>  false,     # Display the gradient vertically.
      },
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "BattleHUD", 
        :opacity  =>  255,       # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid           
        :offset_x =>  0, 
        :offset_y =>  0, 
      },
    } # End STATUS_WINDOW.
    # -----------------------------------------------------------------   
    # Battler Status involves modifying the window where the actor status is 
    # shown. Use this to increase or decrease the limit the amount of actors 
    # displayed.
    # -----------------------------------------------------------------   
    BATTLER_STATUS   = {
      # Sizes settings
      :width      =>  456,  # Change the width of the window.
      :height     =>  98,   # Change the height of the display.
      :max_width  =>  456,  # Used for centering horizontal HUD
      :max_height =>  392,  # Used for centering vertical HUD
      :vertical   =>  true, 
      # ----------------------------------------------------------------- 
      # :lunatic = set to true to enable lunatic mode. The settings below 
      # won't be applied except for STATUS_WINDOW settings.
      # ----------------------------------------------------------------- 
      :lunatic    =>  false,
      # -----------------------------------------------------------------
      # The amount of actors displayed on the menu.
      # Scrolling is available if vertical = false.
      # Make sure that :col_max and :limit_page have the same values.
      # -----------------------------------------------------------------
      :limit_page =>  4,                 
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x          =>  172,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y          =>  12,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z          =>  350, 
      # -----------------------------------------------------------------
      # These offsets can only be used string for eval.
      # It converts the uoted string into a function with its values that can 
      # be called up to be used/applied.  Offset Values refer to how much you 
      # want to nudge the window display without affecting its base x and y. 
      # -----------------------------------------------------------------
      :offset_x   =>  "0",  # index is actor index in party
      :offset_y   =>  0,
      # -----------------------------------------------------------------
      # This function is the distance between the objects. 
      # Can be negative or positive values.
      # -----------------------------------------------------------------
      :spacing    =>  0,
      # -----------------------------------------------------------------
      # Enable centering for the Battler/Actor/Player UI?
      # -----------------------------------------------------------------
      :center     =>  false,
      
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
        :collapse =>  false,   # Enable collapse options?
        :collapse_type => 1,   # 0 - Like Battler; 1 - Grey out.
        :highlight  =>  false, # Highlight when selected.
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
      # when selecting an item
      # -----------------------------------------------------------------      
      :select     =>  {
        :enable   =>  false,  # Enable select settings? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
        :offset_x =>  0,
        :offset_y =>  0,
        :offset_z =>  0,
        :filename =>  "Select Bar", # Picture Filename.
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
      # Face settings
      :face       =>  {
        :enable   =>  true, # Enable face settings? True/False
      # -----------------------------------------------------------------
      # Offset Values refer to how much you want to nudge the window
      # display without affecting its base x, y, and z. 
      # -----------------------------------------------------------------
        :offset_x =>  1,
        :offset_y =>  1,
        :offset_z =>  0,
        :collapse =>  true, # Allow collapse effects? True/False
        :collapse_type => 1,   # 0 - Like Battler; 1 - Grey out.
        :highlight =>  false, # Highlight when selected.
      # -----------------------------------------------------------------
      # Type allows you to set the type of face graphic you want to use.
      # 0 - Default faceset; 1 - Custom face graphic.
      # 2 - Custom face based on database settings. FaceName_FaceIndex
      # Example for Eric: Actor4_0
      # -----------------------------------------------------------------
        :type     =>  0,    
        :type_1   =>  {
          :filename   =>  "Actor", # Put image in Graphics/Faces
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
        :enable   =>  true, # Enable name display? True/False
        :width    =>  160,  # Change the width of the name rect.
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
      # This section allows you to customize level settings for actors.
      # -----------------------------------------------------------------  
      :level       =>  {
        :enable   =>  true, # Enable level display? True/False
        :width    =>  160,  # Change the width of the level rect.
        :height   =>  24,   # Change the height of the name rect.
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------         
        :offset_x =>  108,
        :offset_y =>  36,
        :offset_z =>  0,
        # ----------------------------------------------------------------- 
        # Set the color for the level display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------         
        :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the level display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
        :outline  =>  [0, 0, 0, 128],
        :bold     =>  false,        # Enable Bold? True/False
        :italic   =>  false,        # Enable Italic? True/False
        :font     =>  "VL Gothic",  # Set Font type.
        :size     =>  24,           # Set Font Size
        :vocab    =>  "Lv %d",      # Change Level Vocab %d refers to number.
      }, # End level.
      
      # -----------------------------------------------------------------
      # This section allows you to customize class name settings for actors.
      # -----------------------------------------------------------------  
      :class       =>  {
        :enable   =>  true, # Enable class name display? True/False
        :width    =>  160,  # Change the width of the class name rect.
        :height   =>  24,   # Change the height of the class name rect.
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------         
        :offset_x =>  228,
        :offset_y =>  12,
        :offset_z =>  0,
        # ----------------------------------------------------------------- 
        # Set the color for the class name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------      
        :color    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the class name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
        :outline  =>  [0, 0, 0, 128],
        :bold     =>  false, # Enable Bold? True/False
        :italic   =>  false, # Enable Italic? True/False
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
        :vocab    =>  "%s",        # Set a new vocab for class name. 
                                   # %s is default.
      }, # End class.
      
      # -----------------------------------------------------------------
      # This section allows you to customize HP Bar settings for actors.
      # -----------------------------------------------------------------  
      :hp_bar     =>  {
        :enable   =>  true, # Enable HP Bars? True/False
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
        # This section allows you to customize the "HP" Vocab display.
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
          :text     =>  "HP",        # Change "HP" Vocab.
        },
        #---
        :type_1   =>  {
          :filename =>  "HP_Bar",    # Custom HP Bar Filename.
        },
        #---
        :type_2   =>  {
          :filename =>  "Btskin_hp", # Custom Frame-based HP Bar Filename.
          :frames   =>  10,          # Amount of animation frames.
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
        :offset_x =>  228,
        :offset_y =>  72,
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
          :color1     =>  [74, 115, 185, 255],
          :color2     =>  [128, 157, 206, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline    =>  [0, 0, 0, 255],
          :length     =>  220, # Width/Length of the bar.
          :height     =>  12,  # Height of the bar.
        # ----------------------------------------------------------------- 
        # This section allows you to customize the "HP" Vocab display.
        # -----------------------------------------------------------------  
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  232,
          :offset_y =>  56,
          :offset_z =>  1,
        # ----------------------------------------------------------------- 
        # Set the color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default font color.
        # -----------------------------------------------------------------      
          :tcolor    =>  [255, 255, 255, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # ----------------------------------------------------------------- 
          :toutline  =>  [0, 0, 0, 128],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  0,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  24,          # Set Font Size
          :text     =>  "MP",        # Change "MP" Vocab.
        },
        #---
        :type_1   =>  {
          :filename =>  "MP_Bar",    # Custom MP Bar Filename.
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
        :enable   =>  false, # Enable TP Bars? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # -----------------------------------------------------------------       
        :offset_x =>  0,
        :offset_y =>  76,
        :offset_z =>  0,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # 0 - Default bar; 1 - Custom bar; 2 - Custom animated bar.
        # -----------------------------------------------------------------   
        :type     =>  2,
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
          :color1     =>  [16, 255, 16, 255],
          :color2     =>  [64, 255, 64, 255],
        # ----------------------------------------------------------------- 
        # Set the outline color for the name display. [R,G,B,A]
        # You can also use normal_color to use the default outline color.
        # -----------------------------------------------------------------   
          :outline    =>  [0, 0, 0, 255],
          :length     =>  76, # Width/Length of the bar.
          :height     =>  12, # Height of the bar.
        # ----------------------------------------------------------------- 
        # This section allows you to customize the "TP" Vocab display.
        # -----------------------------------------------------------------  
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
          :offset_x =>  380,
          :offset_y =>  -14,
          :offset_z =>  5,
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
          :bold     =>  true,  # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  0,
          :font     =>  "Open Sans", # Set Font type.
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
        :offset_x =>  232,
        :offset_y =>  34,
        :offset_z =>  20,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,    
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  true, # Set to true to show Max HP Numbers in this sprite.
                            # Only works with type 0.
        :text     =>  "%d/%d", # Only available for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  212,  # Change the width of the number rect.
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
          :outline  =>  [0, 0, 0, 128],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
        :font     =>  "VL Gothic", # Set Font type.
        :size     =>  24,          # Set Font Size
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
        :offset_x =>  232,
        :offset_y =>  58,
        :offset_z =>  1,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0, 
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  true, # Set to true to show Max MP Numbers in this sprite.
                            # Only works with type 0.
        :text     =>  "%d/%d", # Only available for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  212,  # Change the width of the number rect.
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
          :outline  =>  [0, 0, 0, 128],
          :bold     =>  false, # Enable Bold? True/False
          :italic   =>  false, # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "VL Gothic", # Set Font type.
          :size     =>  24,          # Set Font Size
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
        :enable   =>  false, # Enable TP Numbers? True/False
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x, y and z. 
        # ----------------------------------------------------------------- 
        :offset_x =>  -8,
        :offset_y =>  90,
        :offset_z =>  5,
        # -----------------------------------------------------------------
        # Type allows you to set the type of graphic you want to use.
        # # 0 - Default font; 1 - Custom number picture sheet;
        # -----------------------------------------------------------------
        :type     =>  0,
        :ani_rate =>  0.05, # Max is 1.00. Refers to animate speed/rate.
        #--- START 2013.09.02
        :with_max =>  false,   # Set to true to show Max MP Numbers in this sprite.
                               # Only works with type 0.
        :text     =>  "%d/%d", # Only available for :with_max == true
        #--- END 2013.09.02
        :type_0   =>  {
          :width    =>  76,    # Change the width of the number rect.
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
          :bold     =>  true,   # Enable Bold? True/False
          :italic   =>  false,  # Enable Italic? True/False
        # ----------------------------------------------------------------- 
        # Set alignment settings.
        # 0 = Left/Default, 1 = Center, 2 = Right
        # -----------------------------------------------------------------   
          :align    =>  2,
          :font     =>  "Franklin Gothic Demi Cond", # Set Font type.
          :size     =>  32,                          # Set Font Size
        },
        #---
        :type_1   =>  {
          :width    =>  30,              # Change the width of the number rect. 
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
          :filename =>  "", # Filename for the background picture for states.
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
      
    } # End BATTLER_STATUS.
    
    # -----------------------------------------------------------------   
    # This is an extra window just in case you want to display more things.
    # Use Lunatic to make use of this section!
    # -----------------------------------------------------------------    
    WINDOW_DESCRIPTION = {
      :enable =>  false,     # Enable Window Description? True/False
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
      :padding  => 0,
      # -----------------------------------------------------------------
      # Set a Background Display Type:
      # 0 - Windowskin; 1 - Gradient Background; 2 - Picture
      # -----------------------------------------------------------------
      :back_type  =>  1, 
      # ----------------------------------------------------------------- 
      # This allows you to set a variable to change the skin of this particular    
      # section of the menu. The default is Variable 1. Remember that it reads 
      # it as a string (e.g. $game_variables[1] = “Menu_Green”).
      # -----------------------------------------------------------------     
      :background_variable => 1, # Set a Variable to change Window
      
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
        :color1   =>  [243, 134, 48, 255],
        :color2   =>  [243, 134, 48, 255],
        :vertical =>  false,     # Display the gradient vertically.
      },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "commandpane",
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_DESCRIPTION.

  end # End ItemMenu
end # End MenuLuna