##-----------------------------------------------------------------------------
## Luna Engine - Camp Menu Command Core v1.0
## Created by Neon Black - 12.30.2014
##
## CORE HALF
##   - Requires the config half v1.0+ below it to work.
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


class Window_MenuCommand < Window_Command
  ## Alias all methods created by Yami.  These values are ignored if CP's
  ## settings are used instead.
  alias_method :cp_luna_camp_window_width,      :window_width
  alias_method :cp_luna_camp_window_height,     :window_height
  alias_method :cp_luna_camp_init_screen_x,     :init_screen_x
  alias_method :cp_luna_camp_init_screen_y,     :init_screen_y
  alias_method :cp_luna_camp_init_screen_z,     :init_screen_z
  alias_method :cp_luna_camp_standard_padding,  :standard_padding
  alias_method :cp_luna_camp_item_height,       :item_height
  alias_method :cp_luna_camp_col_max,           :col_max
  alias_method :cp_luna_camp_alignment,         :alignment
  
  def window_width(*args)
    return cp_luna_camp_window_width(*args) unless use_cp_setting
    return [camp_setting[:width], standard_padding * 2 + line_height].max
  end
  
  def window_height(*args)
    return cp_luna_camp_window_height(*args) unless use_cp_setting
    return cp_camp_height
  end
  
  def cp_camp_height
    return 0 unless use_cp_setting
    full = fitting_height(row_max)
    [[camp_setting[:max_height], full].min, camp_setting[:min_height]].max
  end
  
  def init_screen_x(*args)
    return cp_luna_camp_init_screen_x(*args) unless use_cp_setting
    return camp_setting[:x]
  end
  
  def init_screen_y(*args)
    return cp_luna_camp_init_screen_y(*args) unless use_cp_setting
    return camp_setting[:y]
  end
  
  def init_screen_z(*args)
    return cp_luna_camp_init_screen_z(*args) unless use_cp_setting
    return camp_setting[:z]
  end
  
  def standard_padding(*args)
    return cp_luna_camp_standard_padding(*args) unless use_cp_setting
    return camp_setting[:standard_padding]
  end
  
  def item_height(*args)
    return cp_luna_camp_item_height(*args) unless use_cp_setting
    return camp_setting[:item_height]
  end
  
  def col_max(*args)
    return cp_luna_camp_col_max(*args) unless use_cp_setting
    return camp_setting[:col_max]
  end
  
  def alignment(*args)
    return cp_luna_camp_alignment(*args) unless use_cp_setting
    return camp_setting[:font_align]
  end
  
  ## Literally overwrite this command just for the following method.
  def make_command_list
    luna_camp_commands
  end
  
  ## Gets all commands, sorts them, gets the name, creates the symbol used by
  ## the window, determines if the command is enabled, then adds the command
  ## to the list.
  def luna_camp_commands
    commands = camp_setting[:commands].select { |com| check_com_appear(com) }
    commands.sort!{ |a,b| a[:push] <=> b[:push] }
    commands.each do |com|
      name = com[:name].is_a?(Symbol) ? eval("Vocab::#{com[:name].to_s}") :
             com[:name]
      sym  = com[:type] == 0 ? com[:type_sym] : "#{com[:name]}#{com[:type_sym]}"
      nabl = com[:nabl_type] == 1 ? $game_party.members.size >= com[:nabl_sym] :
             com[:nabl_type] == 2 ? $game_switches[com[:nabl_sym]] :
             com[:nabl_type] == 3 ? eval(com[:nabl_sym]) :
             com[:nabl_type] == 0 ? true : false
      ext  = com
      add_command(name, sym.to_sym, nabl, ext)
    end
  end
  
  ## Checks if the command should be added to the first step above.
  def check_com_appear(command)
    begin
      command[:appear] == true || eval(command[:appear])
    rescue => e
      name = command[:name].is_a?(Symbol) ? eval("Vocab::#{command[:name].to_s}") :
             command[:name]
      /convert (.+) into string/i =~ e.to_s
      raise "There was an error with the Luna configuration for the camp menu command window.\n\nThe :appear value for the #{name} command is incorrectly set to #{$1.to_s}.\n\nPlease set it to true or a \"string value\" and try again."
      ##------
      ## If you were sent here, it is because there was an error with one of
      ## your settings in the config portion of this script.  Please double
      ## check that all the :appear settings are set to true or a string value
      ## and try again.
      ##------
    end
  end
  
  ## A modified version of the draw scene.  This overwrites Yami's alias.
  ## It is sadly quite jumbled.  It creates a new item, gets the x and y
  ## positions, and sends it to draw_item_name to properly draw a name and icon.
  def menu_luna_draw_item(index)
    ext = @list[index][:ext]
    set_text_options(ext)
    rect = item_rect_for_text(index)
    item = RPG::BaseItem.new
    item.icon_index = ext[:icon] || 0
    item.name = command_name(index)
    ic = (ext[:icon] && (item.icon_index >= 0)) ? 24 : 0
    bit = Bitmap.new(rect.width - ic, rect.height)
    x = (rect.width - bit.text_size(item.name).width - ic) / 2
    y = (rect.height - contents.font.size) / 2
    align = ext[:font_align] || alignment
    draw_item_name(item,   rect.x + x * align - 24 + ic,   rect.y + y,
                   command_enabled?(index),   rect.width - ic)
  end
  
  ## Sets the font options for the selected command.  Used above.
  def set_text_options(ext)
    contents.font.name   = ext[:font_name]   || camp_setting[:font_name]
    contents.font.size   = ext[:font_size]   || camp_setting[:font_size]
    contents.font.bold   = ext[:font_bold]   || camp_setting[:font_bold]
    contents.font.italic = ext[:font_italic] || camp_setting[:font_italic]
    contents.font.color      = Color.new(*(ext[:font_color] || camp_setting[:font_color]))
    contents.font.out_color  = Color.new(*(ext[:font_outer] || camp_setting[:font_outer]))
  end
  
  ## Settings used by the script above.
  def use_cp_setting
    camp_setting[:use_cp_settings]
  end
  
  def camp_setting
    CPLuna::CampMenu::COMMAND_WINDOW
  end
end


class Scene_Menu < Scene_MenuBase
  ## Creates the command window and gives it the proper method to call based
  ## on the :type setting.  Also has a new variable called @after_personal to
  ## store the method to call in case an actor needs to be selected.
  alias_method :cp_luna_camp_create_command_window, :create_command_window
  def create_command_window(*args)
    cp_luna_camp_create_command_window(*args)
    @after_personal = {}
    camp_setting[:commands].each do |com|
      sym  = com[:type] == 0 ? com[:type_sym] : "#{com[:name]}#{com[:type_sym]}"
      meth = scene = nil
      case com[:type]
      when 0
        meth, scene = get_type_0_method(com)
      when 1
        meth = com[:type_sym]
      when 2
        meth, scene = :cp_camp_open_scene, com[:type_sym]
      else
        next
      end
      if com[:actor_sel]
        @command_window.set_handler(sym.to_sym, method(:command_personal))
        add_after_personal_command(com, sym, scene, meth)
      else
        @command_window.set_handler(sym.to_sym, method(meth))
        add_after_personal_command(com, sym, scene, meth)
      end
    end
  end
  
  ## Adds a command to the after personal hash.
  def add_after_personal_command(command, sym = nil, scene = nil, meth = nil)
    return unless sym
    @after_personal[sym.to_sym] = meth ? [scene, meth] : [scene, command[:type_sym]]
  end
  
  ## Adds a default method.
  def get_type_0_method(command)
    sym  = command[:type_sym]
    meth = :cp_camp_open_scene
    scene = nil
    case sym
    when :item;      meth  = :command_item
    when :skill;     scene = :Scene_Skill
    when :equip;     scene = :Scene_Equip
    when :status;    scene = :Scene_Status
    when :formation; meth  = :command_formation
    when :save;      meth  = :command_save
    when :continue;  scene = :Scene_Load
    when :game_end;  meth  = :command_game_end
    else meth = nil
    end
    return [meth, scene]
  end
  
  ## Calls a method after an actor is selected.
  def on_personal_ok
    begin
      set = @after_personal[@command_window.current_symbol]
      if set[0]
        cp_camp_open_scene(set[0])
      else
        method(set[1]).call
      end
    rescue
      nil
    end
  end
  
  ## A method for opening a scene.
  def cp_camp_open_scene(symbol = nil)
    symbol = @after_personal[@command_window.current_symbol][0] unless symbol
    SceneManager.call(Kernel.const_get(symbol))
  end
  
  ## More setting options.
  def camp_setting
    CPLuna::CampMenu::COMMAND_WINDOW
  end
end