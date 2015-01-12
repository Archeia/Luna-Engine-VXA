#==============================================================================
# ■ MenuLuna: Status Menu Lunatic Configuration
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# This section modifies the Status Menu Screen. This is meant to add features 
# that aren't available in the default config. This section requires minimal 
# programming knowledge, at least, the syntaxes/definitions used in RPG Maker.
#==============================================================================
#==============================================================================
# ■ Lunatic Instructions
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# ["IMPORT BLOCK NAME", [X, Y]]
# Use this on the lunatic configuration methods to import the custom elements 
# you added!
#==============================================================================
module MenuLuna
  module StatusMenu
    # should be aliased to get other import settings.
    class << self; alias dsm_import_status_text import_status_text; end
    def self.import_status_text(actor, contents)
      #--- get other imports ---
      import = dsm_import_status_text(actor, contents)
      
    # -----------------------------------------------------------------
    # This section handles the actor name section of the Status Menu
    # ----------------------------------------------------------------- 
      import["NAME BLOCK"] = []
      name = [
        # text
        "#{actor.name}", 
        # [offset x, offset y]
        [4, 0],
        # [text width, align]
        [112, 0], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles the class name section of the Status Menu
    # ----------------------------------------------------------------- 
      klass = [
        # text
        "#{actor.class.name}", 
        # [offset x, offset y]
        [128, 0],
        # [text width, align]
        [112, 0], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles the nickname section of the Status Menu
    # ----------------------------------------------------------------- 
      nickname = [
        # text
        "#{actor.nickname}", 
        # [offset x, offset y]
        [288, 0],
        # [text width, align]
        [180, 0], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This makes them display on the status menu.
    # ----------------------------------------------------------------- 
      import["NAME BLOCK"].push(name, klass, nickname)
      
      import["BASIC STATUS"] = []
    # -----------------------------------------------------------------
    # This section handles the faceset section of the Status Menu
    # ----------------------------------------------------------------- 
      face = [
        # bitmap location and name
        "$bitmap[Faces, #{actor.face_name}]",
        # [offset x, offset y]
        [8, 0],
        # opacity
        255,
        # rect
        [actor.face_index % 4 * 96, actor.face_index / 4 * 96, 96, 96]
      ]
    # -----------------------------------------------------------------
    # This section handles the actor level section of the Status Menu
    # ----------------------------------------------------------------- 
      level_a = [
        # text
        "#{Vocab::level_a}", 
        # [offset x, offset y]
        [136, 0],
        # [text width, align]
        [32, 0], 
        # [Red, Green, Blue, Alpha]
        [54, 157, 225, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
      level_n = [
        # text
        "#{actor.level}", 
        # [offset x, offset y]
        [168, 0],
        # [text width, align]
        [24, 2], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles the actor state/buff/debuff display of the Status Menu
    # ----------------------------------------------------------------- 
      (actor.state_icons + actor.buff_icons)[0, 4].each_with_index do |n, i|
        import["BASIC STATUS"].push([
          # bitmap location and name
          "$icon[#{n}]",
          # [offset x, offset y]
          [136 + i * 24, 24],
          # opacity
          255,
        ])
      end
    # -----------------------------------------------------------------
    # This section handles the HP BG for the Actor HP Bar seen in the Status Menu
    # ----------------------------------------------------------------- 
      hp_bar_back = [
        # horizontal gradient
        "$color[0, 0, 0]",
        # [offset x, offset y]
        [136, 24 * 3 - 8],
        # opacity
        255,
        # [width, height]
        [124, 6]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's HP Bar Gradient seen in the Status Menu
    # ----------------------------------------------------------------- 
      hp_bar_fill = [
        # horizontal gradient
        "$horgrad[168,38,21,240,55,30]",
        # [offset x, offset y]
        [136, 24 * 3 - 8],
        # opacity
        255,
        # [width, height]
        [actor.hp_rate * 124, 6]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's HP Text seen in the Status Menu
    # ----------------------------------------------------------------- 
      hp_a = [
        # text
        "#{Vocab::hp_a}", 
        # [offset x, offset y]
        [136, 24 * 2],
        # [text width, align]
        [30, 0], 
        # [Red, Green, Blue, Alpha]
        [54, 157, 225, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's HP Number Text seen in the Status Menu
    # ----------------------------------------------------------------- 
      hp_n = [
        # text
        "#{actor.hp}/#{actor.mhp}", 
        # [offset x, offset y]
        [136, 24 * 2],
        # [text width, align]
        [124, 2], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles the MP BG for the Actor MP Bar seen in the Status Menu
    # ----------------------------------------------------------------- 
      mp_bar_back = [
        # horizontal gradient
        "$color[0, 0, 0]",
        # [offset x, offset y]
        [136, 24 * 4 - 8],
        # opacity
        255,
        # [width, height]
        [124, 6]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's MP Bar Gradient seen in the Status Menu
    # ----------------------------------------------------------------- 
      mp_bar_fill = [
        # horizontal gradient
        "$horgrad[37,109,157,54,157,225]",
        # [offset x, offset y]
        [136, 24 * 4 - 8],
        # opacity
        255,
        # [width, height]
        [actor.mp_rate * 124, 6]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's MP Text seen in the Status Menu
    # ----------------------------------------------------------------- 
      mp_a = [
        # text
        "#{Vocab::mp_a}", 
        # [offset x, offset y]
        [136, 24 * 3],
        # [text width, align]
        [30, 0], 
        # [Red, Green, Blue, Alpha]
        [54, 157, 225, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section handles Actor's MP Number Text seen in the Status Menu
    # ----------------------------------------------------------------- 
      mp_n = [
        # text
        "#{actor.mp}/#{actor.mmp}", 
        # [offset x, offset y]
        [136, 24 * 3],
        # [text width, align]
        [124, 2], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section imports all settings to display them on the status menu.
    # ----------------------------------------------------------------- 
      import["BASIC STATUS"].push(face, level_n, level_a)
      import["BASIC STATUS"].push(hp_bar_back, hp_bar_fill, hp_a, hp_n)
      import["BASIC STATUS"].push(mp_bar_back, mp_bar_fill, mp_a, mp_n)
      
    # -----------------------------------------------------------------
    # This section displays the "EXPTotal" Vocab and "------" when the actor
    # is on max level.
    # ----------------------------------------------------------------- 
      import["EXP"] = []
      s1 = actor.max_level? ? "-------" : actor.exp
      s2 = actor.max_level? ? "-------" : actor.next_level_exp - actor.exp
      s_next = sprintf(Vocab::ExpNext, Vocab::level)
      exp_total_a = [
        # text
        "#{Vocab::ExpTotal}", 
        # [offset x, offset y]
        [0, 0],
        # [text width, align]
        [180, 0], 
        # [Red, Green, Blue, Alpha]
        [54, 157, 225, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section displays the actor's next EXP text to level up/
    # ----------------------------------------------------------------- 
      exp_next_a = [
        # text
        "#{s_next}", 
        # [offset x, offset y]
        [0, 48],
        # [text width, align]
        [180, 0], 
        # [Red, Green, Blue, Alpha]
        [54, 157, 225, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section displays the actor's total EXP accumulated text.
    # ----------------------------------------------------------------- 
      exp_total_n = [
        # text
        "#{s1}", 
        # [offset x, offset y]
        [0, 24],
        # [text width, align]
        [180, 2], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section displays the actor's next EXP requirement.
    # ----------------------------------------------------------------- 
      exp_next_n = [
        # text
        "#{s2}", 
        # [offset x, offset y]
        [0, 24 * 3],
        # [text width, align]
        [180, 2], 
        # [Red, Green, Blue, Alpha]
        [255, 255, 255, 255], 
        # [Font name, Font size, Bold, Italic]
        [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
      ]
    # -----------------------------------------------------------------
    # This section imports the settings to display on the status menu.
    # ----------------------------------------------------------------- 
      import["EXP"].push(exp_total_a, exp_next_a)
      import["EXP"].push(exp_total_n, exp_next_n)
      
    # -----------------------------------------------------------------
    # This section displays the vocab for the status parameters. 
    # e.x. ATK/DEF/...etc.
    # ----------------------------------------------------------------- 
      import["STATS"] = []
      6.times do |i|
        param_a = [
          # text
          "#{Vocab::param(i + 2)}", 
          # [offset x, offset y]
          [0, i * 24],
          # [text width, align]
          [120, 0], 
          # [Red, Green, Blue, Alpha]
          [54, 157, 225, 255], 
          # [Font name, Font size, Bold, Italic]
          [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
        ]
    # -----------------------------------------------------------------
    # This section displays all the stats of the actor.
    # ----------------------------------------------------------------- 
        param_n = [
          # text
          "#{actor.param(i + 2)}", 
          # [offset x, offset y]
          [120, i * 24],
          # [text width, align]
          [36, 2], 
          # [Red, Green, Blue, Alpha]
          [255, 255, 255, 255], 
          # [Font name, Font size, Bold, Italic]
          [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
        ]
    # -----------------------------------------------------------------
    # This section imports the settings to display on the status menu.
    # ----------------------------------------------------------------- 
        import["STATS"].push(param_a, param_n)
      end
      
      import["EQUIPMENT"] = []
    # -----------------------------------------------------------------
    # This section displays the actor's equipment icons.
    # ----------------------------------------------------------------- 
      actor.equips.each_with_index do |item, i|
        next unless item
        equip_i = [
          # bitmap location and name
          "$icon[#{item.icon_index}]",
          # [offset x, offset y]
          [0, 24 * i],
          # opacity
          255,
        ]
    # -----------------------------------------------------------------
    # This section displays the actor's equipment names.
    # ----------------------------------------------------------------- 
        equip_n = [
          # text
          "#{item.name}", 
          # [offset x, offset y]
          [26, i * 24],
          # [text width, align]
          [170, 0], 
          # [Red, Green, Blue, Alpha]
          [255, 255, 255, 255], 
          # [Font name, Font size, Bold, Italic]
          [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
        ]
    # -----------------------------------------------------------------
    # This section imports the settings to display on the status menu.
    # ----------------------------------------------------------------- 
        import["EQUIPMENT"].push(equip_i, equip_n)
      end
      
    # -----------------------------------------------------------------
    # This section displays the actor text description seen in the status menu.
    # ----------------------------------------------------------------- 
      import["DESCRIPTION"] = []
      actor.description.split(/[\r\n]+/).each_with_index do |line, i|
        description = [
          # text
          "#{line}", 
          # [offset x, offset y]
          [0, 24 * i],
          # [text width, align]
          [Graphics.width - 28, 0], 
          # [Red, Green, Blue, Alpha]
          [255, 255, 255, 255], 
          # [Font name, Font size, Bold, Italic]
          [Font.default_name, Font.default_size, Font.default_bold, Font.default_italic]
        ]
    # -----------------------------------------------------------------
    # This section imports the settings to display on the status menu.
    # ----------------------------------------------------------------- 
        import["DESCRIPTION"].push(description)
      end
      
      #--- return all imports ---
      import
    end
  end # StatusMenu  
end # MenuLuna