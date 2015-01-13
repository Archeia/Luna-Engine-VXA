#==============================================================================
# ■ MenuLuna: Equipment Menu Lunatic Configuration
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# This section modifies the Equipment Menu Screen. This is meant to add features 
# that aren't available in the default config. This section requires minimal 
# programming knowledge, at least, the syntaxes/definitions used in RPG Maker.
#==============================================================================

module MenuLuna
  module EquipMenu
#==============================================================================
# ■ Lunatic Instructions
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# You need to use a _return array_ which contains all text and bitmap data.
# For example as seen in Lunatic Status Configuration: 
# result = [
#		["NAME BLOCK", [0, 0]],
#	]	
# There are many different kinds of array. To learn more about them, either
# consult the RPG Maker help file or learn programming basics.
#
#	To Display Text:	
# [Text/"Text", [X, Y], [Width, Align], [FONT R, G, B(, A)], 
#		[FontName, FontSize, FontBold, FontItalic], [OUTLINE R, G, B(, A)]],	
#	
# Display Text Example:
# ["Description", [2, 33], [200, 200], [255, 255, 255, 255], 
#   ["VLGothic", 24, true, false], [0, 0, 0, 0]],
#	
# You can also use commands like Font.default settings instead of setting them.
# 
# You can also display bitmap/images. This setting is very flexible!
# You can set a folder to find the image you wanted to display. For example,
# $bitmap[System, GoldIcon] will search for Graphics/System/GoldIcon.png
# 
# In order to display the bitmap, this is the command: 
# ["$bitmap[Folder, FileName]", [X, Y], Opacity, offset_x, offset_y, width, height]
# 
# You can either draw (display) it like these:
# ["$bitmap[System, GoldIcon]", [128, 0], 255, [0, 0, "bw * 0.5", "bh"]]
# ["$bitmap[System, GoldIcon]", [128, 0], 255, [0, 0, 128, 42]]
# 
# If you want to display a solid color, replace the $bitmap[Folder, "Filename"]
# part with $color[R, G, B]. It should look like this: 
# [$color[R, G, B], [X, Y], Opacity, offset_x, offset_y, width, height]
# 
# If you want to display a horizontal gradient image, this is how you'll do it.
# [$horgrad[R1, G1, B1, R2, G2, B2], [X, Y], Opacity, offset_x, offset_y, width, height]
# 
# If you want to display a vertical gradient image, this is how you'll do it.
# [$vergrad[R1, G1, B1, R2, G2, B2], [X, Y], Opacity, offset_x, offset_y, width, height]
# 
# If you want to display icons, this is how you'll do it:
# ["$icon[Index]", [X, Y], Opacity]
# An example usage would look like this: ["$icon[10]", [128, 0], 255]
# To find the index of an icon, you can check it in the RPG Maker Database 
# while selecting an icon for a skill/item/etc.
# 
# If you see "contents" this refers to the window's bitmap contents.
# You can use the example below to draw custom things on window.
#
# result = [ANYTHING HERE]
# if index == 0
#   result.push(ANYTHING HERE)
# end
#
# You can even do a contents.clear to erase all the items and replace it 
# completely with your own configurations.
# 
# If you are a programmer, you can use Lunatic Common to create your own settings.
# That's all you need to know for Lunatic Configurations!
# 
#==============================================================================
    # -----------------------------------------------------------------
    # This method allows you to modify the Categories Window
    # -----------------------------------------------------------------
    def self.user_command_text(index, contents, item_rect, enable, select)
		# Do your magic here!
    end
    # -----------------------------------------------------------------
    # This method allows you to modify the Item List Window
    # -----------------------------------------------------------------
    def self.user_item_text(item, contents, item_rect, enable, select)
		# Do your magic here!
    end
    # -----------------------------------------------------------------
    # This method allows you to modify Window Slot
    # -----------------------------------------------------------------
    def self.user_slot_text(index, item, contents, item_rect, enable, select)
		# Do your magic here!
    end
    # -----------------------------------------------------------------
    # This method allows you to modify Window_Status
    # -----------------------------------------------------------------
    def self.user_status_text(actor, temp_actor, contents)
		# Do your magic here!
    end
    # -----------------------------------------------------------------
    # This method allows you to modify the Window_Description
    # -----------------------------------------------------------------
    def self.user_description_text(item, contents)
		# Do your magic here!
    end
  end
end