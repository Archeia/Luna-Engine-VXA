#==============================================================================
# ■ MenuLuna: Shop Menu Configuration
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# This section modifies the Shop Menu Screen. The menu you see upon buying or
# selling items through events.
#==============================================================================
module MenuLuna
  module ShopMenu
    # -----------------------------------------------------------------
    # The Window Displayed when no command is chosen.
    # -----------------------------------------------------------------
    WINDOW_DUMMY = { 
      :enable       =>  true,  # Enable Dummy Window? True/False
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
      :width        =>  640, # Change the width of the window.
      :height       =>  296, # Change the height of the window.
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
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x and y. 
        # ----------------------------------------------------------------- 
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_DUMMY
    
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
      # This allows you to customize window commands.
      # ----------------------------------------------------------------- 
    WINDOW_COMMANDS = {
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
    } # End WINDOW_COMMANDS.
    
      # -----------------------------------------------------------------   
      # This section allows you to modify the Window_Category section.
      # The place in the menu that Buy/Sell/Quit
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
      :y      =>  120,
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
      :arrow      =>  true,   # Default arrow for long list.
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
      # Modify the Buy Window.
      # -----------------------------------------------------------------  
    WINDOW_ITEM_BUY = {
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
      :width        =>  320, # Change the width of the window.
      :height       =>  296, # Change the height of the window.
      :column       =>  1,      # Columns for displaying item list.
      :item_height  =>  24,     # Height of each items in the list.
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
      :arrow      =>  true,   # Default arrow for long list.
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
      # -----------------------------------------------------------------  
      # Customize Item Rect settings.
      # Item rect refers to the individual items listed in the Item list.
      # You can adjust the display over here.
      # ----------------------------------------------------------------- 
      :item_rect=>  {
        :custom =>  false,  # Enable custom item_rect or not? True/False
        :width  =>  64,     # Width of the item rect.
        :height =>  64,     # Height of the item rect.
        :spacing_ver => 8, # Spacing of each item vertically.
        :spacing_hor => 8, # Spacing of each item horizontally.
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
        :picture  =>  "", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_ITEM_BUY
    
      # -----------------------------------------------------------------   
      # Modify the Sell Window.
      # -----------------------------------------------------------------  
    WINDOW_ITEM_SELL = {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x            =>  0,
      :y            =>  168,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :z            =>  300,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :width        =>  640,    # Change the width of the window.
      :height       =>  248,    # Change the height of the window.
      :column       =>  2,      # Columns for displaying item list.
      :item_height  =>  24,     # Height of each items in the list.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding     => 12,
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
        :picture  =>  "", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_ITEM
    
    # -----------------------------------------------------------------   
    # This section modifies Window_Gold.
    # -----------------------------------------------------------------   
    WINDOW_GOLD = {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x      =>  480,
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
      :width  =>  160,  # Change the width of the window.
      :height  =>  48,   # Change the height of the window.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding =>  12,
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
      
      # BG Type 0 settings
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
        :color1   =>  [250,105,0, 128],
        :color2   =>  [250,105,0, 128],
        :vertical =>  false,     # Display the gradient vertically.
      },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "", # Graphics/System
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_GOLD.
    # -----------------------------------------------------------------   
    # This section modifies the area where the items are displayed.
    # -----------------------------------------------------------------      
    WINDOW_NUMBER = {
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
      :y      =>  120,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z       =>  300,
      :width   =>  320,   # Change the width of the window.
      :height  =>  296,   # Change the height of the display.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding => 12,
      # -----------------------------------------------------------------
      # :cursor enables or disable the default cursor display. If set to false 
      # It will remove the rectangle cursor.
      # -----------------------------------------------------------------
      :cursor =>  {
        :enable =>  true, # Enable Cursor? True/False
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
        :x      =>  160,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
        :y      =>  120,
        :width  =>  32,       # Change the width of the window.
        :height =>  24,       # Change the height of the window.
      },
      # -----------------------------------------------------------------
      # Modify Display
      # -----------------------------------------------------------------
      :options => {
        :hide_list  =>  true,   # Show sell/buy list when choosing quantity?
        :item_pos   =>  false,  # Set to true to show window base on item line 
                                # position.
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the item display 
        # without affecting its base x and y. Offset for :item_pos == true.
        # ----------------------------------------------------------------- 
        :offset_x   =>  0,
        :offset_y   =>  0,
      },
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
        :color1   =>  [250,105,0, 128],
        :color2   =>  [250,105,0, 128],
        :vertical =>  false,     # Display the gradient vertically.
      },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "",
        :opacity  =>  255,
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_NUMBER.
    
    # -----------------------------------------------------------------   
    # This section modifies the status window.
    # -----------------------------------------------------------------
    WINDOW_STATUS = {
      # -----------------------------------------------------------------
      # :x refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move to the left, while 
      # Positive values mean they would move to the right.
      # -----------------------------------------------------------------
      :x      =>  320,
      # -----------------------------------------------------------------
      # :y refers to the horizontal axis. Based on the Cartesian Plane. 
      # Negative values (e.g. -1) mean they would move up, while 
      # Positive values mean they would move to the down.
      # -----------------------------------------------------------------
      :y      =>  120,
      # -----------------------------------------------------------------
      # :z refers to the item’s display priority. Think of it as layers when 
      # you use an image program or when mapping in RPG Maker. The higher the 
      # value, the higher it will be drawn/drawn above other items.
      # -----------------------------------------------------------------
      :z       =>  500,
      :width   =>  320,       # Change the width of the window.
      :height  =>  296,       # Change the height of the window.
      # -----------------------------------------------------------------
      # This refers to the spacing between the window border and the contents.
      # ----------------------------------------------------------------- 
      :padding =>  12,
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
        :color1   =>  [250,105,0, 128],
        :color2   =>  [250,105,0, 128],
        :vertical =>  false,     # Display the gradient vertically.
      },
        
      # -----------------------------------------------------------------   
      # Type 2 settings (Picture Background)
      # :picture = Name of the Picture located in Graphics/System folder.
      # :opacity = Transparency of the picture. 0 = Transparent, 255 = Solid  
      # -----------------------------------------------------------------   
      :type_2     =>  {
        :picture  =>  "", # Graphics/System
        :opacity  =>  255,       # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid         
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_STATUS.
    
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
        :picture  =>  "",
        :opacity  =>  255,        # Change the transparency of the window.
                                 # 0 = Transparent, 255 = Solid
        # ----------------------------------------------------------------- 
        # Offset Values refer to how much you want to nudge the window display 
        # without affecting its base x and y. 
        # ----------------------------------------------------------------- 
        :offset_x =>  0,
        :offset_y =>  0,
      },
    } # End WINDOW_DESCRIPTION.

  end
end