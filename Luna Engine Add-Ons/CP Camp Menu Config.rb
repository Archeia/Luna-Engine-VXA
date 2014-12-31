##-----------------------------------------------------------------------------
## Luna Engine - Camp Menu Command Config v1.0
## Created by Neon Black - 12.30.2014
##
## CONFIG HALF
##   - Requires the core half v1.0+ below it to work.
##
## This script is the first half of a 2 part script that allows the user to
## modify the commands of the camp menu command window.  To use this script
## place the script anywhere below "▼ Materials" and above "▼ Main Process".
## When using the Luna Engine Menu script, both pieces must go BELOW the Luna
## Engine.
##
##  ▼ Materials
##   Yami's Luna Menu
##   CP's Luna Camp Menu Config
##   CP's Luna Camp Menu Core
##
##  ▼ Main Process
##-----------------------------------------------------------------------------


module CPLuna
  module CampMenu
    
    COMMAND_WINDOW ={
      
      ## All indented functions from :x to :col_max require :use_cp_settings to
      ## be set to true.  These options are added to give a little more control
      ## to the default window that basic Luna Engine only allows via lunatic.
      :use_cp_settings => true,
        :x          => 0,
        :y          => 0,
        :z          => 200,
        :width      => 160,
        :min_height => 48,
        :max_height => 480,
        
        :item_height      => 24,
        :standard_padding => 12,
        :col_max          => 1,
        
      ## The following are the font and text related settings.
      :font_name   => "VL Gothic",
      :font_size   => 24,
      :font_bold   => false,
      :font_italic => false,
      :font_align  => 0,
      :font_color  => [255, 255, 255],
      :font_outer  => [0,   0,   0],
      
      
      ## Below is an array containing all the commands to appear in the command
      ## window.  The first 9 settings on each are required, but the font
      ## commands are not required.  A detail of each setting follows.
      
      ##    :push       => This command is the option's priority in the menu.
      ##                   Lower numbers will appear higher in the list.
      ##                   Numbers may be skipped and do not need to be in
      ##                   order.
      ##    :name       => The name of the option to appear in the menu.
      ##                   This may be a "String" object or one of a few
      ##                   :symbol objects.  :symbol objects relate to the
      ##                   default system names from the database.  They are:
      ##                   :item, :skill, :equip, :status, :formation, :save
      ##                   :continue, and :game_end.
      ##    :icon       => The icon ID for the option.  Use nil if you want
      ##                   no icon to be displayed and no indent and 0 if you
      ##                   want no icon and a 24 pixel indent.
      ##    :type       => The type of function pressing the command will have.
      ##                   0 relates to the default use based on a symbol
      ##                   listed above (see :name).
      ##                   1 will perform a method in Scene_Menu when clicked.
      ##                   2 will go to the a scene when clicked.
      ##                   For values 1 and 2 use a symbol with the same name
      ##                   as the method or scene you want to call, for
      ##                   example, :Scene_Foo or :some_method.
      ##    :actor_sel  => Determines if an actor is selected before performing
      ##                   the designated action from :type.  :type will be
      ##                   called as soon as an actor is picked.
      ##    :nabl_type  => Determines the conditions to have the option enabled
      ##                   when the menu is opened.
      ##                   0 will cause the option to always be enabled.
      ##                   1 will cause the option to be enabled only when the
      ##                   party size is larger than :nabl_sym.
      ##                   2 will cause the option to be enabled only when
      ##                   the switch number listed in :nabl_sym is turned on.
      ##                   3 will cause the option to be enabled if the string
      ##                   in :nabl_sym evaluates true.
      ##                   If any other value is used, the option will never
      ##                   enable.
      ##    :nabl_sym   => Must be either a number or a string based on the
      ##                   setting of :nabl_type.  If :nabl_type is set to 3,
      ##                   it will require a string to test.
      ##    :appear     => This setting determines if the option shows in the
      ##                   menu and/or the requirements to cause it to appear.
      ##                   This may be set to true if you always want the
      ##                   command to appear or it may be set to a string to
      ##                   evaluate.  If it evaluates to a true value it will
      ##                   show up, while it will not appear in the menu if it
      ##                   evaluates false.  If anything but a "String" or true
      ##                   is used, an error will be raised.
      :commands =>[
        {   :push       => 1,
            :name       => :item,
            :icon       => 261,
            :type       => 0,  ## 0 - default command, 1 - method, 2 - scene
            :type_sym   => :item,
            :actor_sel  => false,
            :nabl_type  => 0,  ## 0 - always, 1 - party, 2 - switch, 3 - script
            :nabl_sym   => nil,
            :appear     => true,
            ## Font related tags may be used with each command, for example,
            ## we will modify the properties of the Item command.
            :font_name   => "Open Sans",
            :font_size   => 22,
            :font_bold   => true,
            :font_italic => true,
            :font_align  => 2,
            :font_color  => [255, 255, 0],
            :font_outer  => [0,   0,   255],
        },
        {   :push       => 2,
            :name       => :skill,
            :icon       => 143,
            :type       => 0,
            :type_sym   => :skill,
            :actor_sel  => true,
            :nabl_type  => 1,
            :nabl_sym   => 1,
            :appear     => true,
        },
        {   :push       => 3,
            :name       => :equip,
            :icon       => 115,
            :type       => 0,
            :type_sym   => :equip,
            :actor_sel  => true,
            :nabl_type  => 1,
            :nabl_sym   => 1,
            :appear     => true,
        },
        {   :push       => 4,
            :name       => :status,
            :icon       => 121,
            :type       => 0,
            :type_sym   => :status,
            :actor_sel  => true,
            :nabl_type  => 1,
            :nabl_sym   => 1,
            :appear     => true,
        },
        {   :push       => 5,
            :name       => :formation,
            :icon       => 12,
            :type       => 0,
            :type_sym   => :formation,
            :actor_sel  => false,
            :nabl_type  => 1,
            :nabl_sym   => 2,
            :appear     => true,
        },
        {   :push       => 6,
            :name       => :save,
            :icon       => 286,
            :type       => 0,
            :type_sym   => :save,
            :actor_sel  => false,
            :nabl_type  => 3,
            :nabl_sym   => "save_enabled",
            :appear     => true,
        },
        {   :push       => 7,
            :name       => :continue,
            :icon       => 117,
            :type       => 0,
            :type_sym   => :continue,
            :actor_sel  => false,
            :nabl_type  => 0,
            :nabl_sym   => nil,
            :appear     => true,
        },
        {   :push       => 8,
            :name       => :game_end,
            :icon       => 280,
            :type       => 0,
            :type_sym   => :game_end,
            :actor_sel  => false,
            :nabl_type  => 0,
            :nabl_sym   => nil,
            :appear     => true,
        },
        {   :push       => 9,
            :name       => "Back",
            :icon       => 495,
            :type       => 1,
            :type_sym   => :return_scene,
            :actor_sel  => false,
            :nabl_type  => 0,
            :nabl_sym   => nil,
            :appear     => true,
        },
        {   :push       => 0,
            :name       => "Debug",
            :icon       => 368,
            :type       => 2,
            :type_sym   => :Scene_Debug,
            :actor_sel  => false,
            :nabl_type  => 0,
            :nabl_nabl_sym  => nil,
            :appear     => "$TEST",
        },
      ],
      
      
      
    }## Command Window
  end
end