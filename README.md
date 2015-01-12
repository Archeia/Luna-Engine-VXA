__END__

#==============================================================================
▼ WHAT IS THE LUNA ENGINE?
#==============================================================================
The Luna Engine allows you to modify the GUI elements of the RPG Maker menus.
While it _does_ provide some extra options, it doesn't mean that it will provide
_everything_ you need. That is impossible.

Due to its nature as a GUI script, it might conflict heavily with scripts that 
do numerous visual modifications. The Luna Engine works best for vanilla battle 
systems such as the Default Battle System.

However, it doesn't mean that it won't work with other technical systems. As we
have tested it in a majority of battle system scripts, they all seem to work 
properly. Just make sure to put Luna Engine below these scripts.

Most of Yanfly's scripts are officially supported. While we cannot promise that
we can make it compatible to all of them, but we will try. 

Due to Neonblack's involvement with this development, it should work with 
his CP Battle System. 

The Luna Engine should work with Sideview Graphical Enhancement Scripts like 
Yami's Battle Engine Symphony, Theo Allen's SBS and, Kread's Animated Battlers.

We are unsure if it will work with any of Victor's Scripts.

#==============================================================================
▼ BUG REPORTING RULES
#==============================================================================
If you would like to report bugs, please remember the following things:

> You are required to at least be familiar with RPG Maker’s default function. 
An example scenario would be, if your test character’s skills aren’t displaying, 
then check their levels, etc. We had instances where people thought it was 
Luna Engine’s fault. The Luna Engine is _NOT_ made for complete newbies. That's
not the point of this engine.

> Make sure to test the Luna scripts by itself in a _new_ project. This is to
make sure that the error is Luna Engine's fault.

> Just remember that if you are using any external menu script, the 
'incompatibilities' that may happen is not because of Luna's fault. It's more 
of that Luna doesn't have access to the unique properties that menu script might
have. If both of them share the default menu settings, there are large chances
that it will either crash, because the other menu script overwrites it. OR Luna
Engine modified the placement of certain windows and it might seem "broken."

Again, the purpose of this script is to modify the GUI elements, therefore, it
has a 'set' layout. That is what makes it look like it's "broken."

> Make sure to read this manual and/or reference it. Use CTRL+F or Find for any 
questions or about features you're uncertain of.

> You can ask for tech support at rmlunaengine@gmail.com. If this manual doesn’t 
answer your questions _or_ if you found a bug. Although it is much preferrable
if you can post in our support forums in RPG Maker Web instead.
(http://forums.rpgmakerweb.com/index.php?/forum/105-luna-engine-boards/)
	
> For further updates in regards to the Luna Engine, you can check our Github 
(https://github.com/Archeia/Luna-Engine) or check the Luna Engine tag in 
Division Heaven. (https://divisionheaven.wordpress.com/?s=Luna+Engine)

Failure to comply to these rules will result to your bug inquiry to be ignored.
		
#==============================================================================
▼ INSTALLATION
#==============================================================================

1. Copy Luna Engine Base and build your own project from there. The complete 
script list only holds all the scripts that you might need. It also displays
the correct order.

////////////////////////////////////_NOTE_/////////////////////////////////////
If you are copying scripts from Luna Engine Base to your game, stop right
there. There might be major conflicts and it will be hard to modify the GUI.
Therefore, it's safer to work with Luna Engine base first. 

Don't forget to copy TRGSSX.DLL from Luna Engine Base to your game folder.

If you are going to ignore this note, then you are responsible for any bugs that 
might happen. Make sure to read the ▼ Bug Reporting Rules section before sending 
us anything.
////////////////////////////////////_FIN_/////////////////////////////////////

2. Open the Script Editor (F11). 

////////////////////////////////////_NOTE_/////////////////////////////////////
Remember that CTRL+F only searches for items inside the present script. 
CTRL+SHIFT+F means it will search all scripts. If you saw some scripts that 
have #~ on them. Select all of them (CTRL+A) and then press CTRL+Q to enable all 
of them.
////////////////////////////////////_FIN_/////////////////////////////////////

3. The script order is very important in RPG Maker. Here are some pointers that
you need to know:

	* All technical scripts should be _above_ Luna Engine. This involves systems 
	that change how the game works. For example, Yanfly's FTB, Archeia's CTB, etc.
	
	* All Animated Battler scripts should be below the Luna engine. This includes
	but not limited to: Yami's Battle Engine Symphony, Theo Allen's SBS, Kread's
	Animated Battlers.
	
	* The Script Order:
		> Luna Utility Scripts
		> Requirements Scripts
		> Configuration Scripts
		> Lunatic Scripts
		> Lunatic Import Script s
		> Luna Engine Core Scripts
		> CP Materials Scripts
		> Luna Quest Menu Scripts
		> Luna Name Input Menu Scripts
		> Luna Menu Add-Ons Scripts
		> Luna Victory Menu Scripts
		> Luna Battle Add-Ons Scripts
		> Luna Victory Scripts
		> Compatibility Scripts

////////////////////////////////////_NOTE_/////////////////////////////////////
The only important ones are Requirements, Configuration, Lunatic and Core 
Scripts. The Script Add-Ons are optional! Only add them when you absolutely 
need them. Compatibility is needed if you are using the scripts they're making
Luna compatible with.
////////////////////////////////////_FIN_/////////////////////////////////////

4. I recommend using the following Text Editor/Script IDE for their convenience.
They have flexible features and it could help you fix anything wrong with your 
configuration. All of them have Code Folding which allows you to hide certain 
blocks of code. You'll thank me for this later.

> Gemini (Free)
Authors: ForeverZer0 & Zeus81
Type: RGSS/RGSS2/RGSS3 Script Editor
Website: http://forum.chaos-project.com/index.php?topic=10420.0
Description: 
Gemini, named after the Zodiac Twins (RMXP/RMVX)(and now VX Ace!), is a 
feature-rich script editor designed purposefully for the RPG Maker community.  
It can directly read and write archived Scripts.r*data files, which allows you 
to use the power of an external IDE without the trouble of importing/exporting 
scripts to and from the built-in editor.   

> Notepad++ (Free)
Authors: Don Ho
Type: Source Code Editor
Website: http://notepad-plus-plus.org/
Description: 
Notepad++ is a free source code editor and Notepad replacement that supports 
several languages. Running in the MS Windows environment, its use is governed  
by GPL License. Based on the powerful editing component Scintilla, Notepad++ is 
written in C++ and uses pure Win32 API and STL which ensures a higher execution 
speed and smaller program size. By optimizing as many routines as possible 
without losing user friendliness

> Sublime Text (Shareware)
Authors: Sublime HQ
Type: Source Code Editor
Website: http://www.sublimetext.com/
Description: 
Sublime Text is a sophisticated text editor for code, markup and prose.
You'll love the slick user interface, extraordinary features and amazing 
performance.
		
#==============================================================================
▼ THE BASICS
#==============================================================================
In order to use the Luna Engine efficiently, it’s important that you should know 
about Scenes and Windows. 

Imagine the Scenes as rooms of a huge building. The contents of the room varies 
depending on its purpose.  A window, on the other hand, reveals the contents of 
the room. How much of the room is revealed depends on its size. 

This is how RPG Maker displays the items that the player needs to see.
Basically, each menu has specific scenes (e.g. Scene_Equip, Scene_Status) and 
they all have their own windows while some have similar names for consistency. 

As long as you keep this in mind, you will be able to modify your game’s GUIs.
Rhyme has kindly provided us with a script that shows the name of the windows 
in a scene. It is named as Window_Identifier inside the game project. Just hold 
CTRL inside the game and you’ll be able to see the name of the Windows. 
Remember to search for the nearest name.
(e.g Status_Window could represent Window_MenuStatusLuna).

The Configuration scripts have been modified to give you a clue on what windows
you are configuring for that specific menu scene.

All your GUI resources should be located in the Graphics/System of your project 
folder. Everything else stays the same (e.g. Facesets still go to Facesets). 
You can name them however you want, there should be no issues.

#==============================================================================
▼ IMPORTANT THINGS TO REMEMBER
#==============================================================================
> If the game auto closes, don’t forget to add TRGSSX.dll in your game’s folder.

> Variable 1 is used by the Luna Engine scripts. Change :background_variable’s 
value to something else if you’re using it already.

> If you want to use Sideview Battle Systems, you should set animation_on_hud 
configuration to false.

> When using Yanfly’s Free Turn Battle (FTB) set :arrow_battler in 
YEA Compatibility to true and if use spin command, :all_dir to false.

> If you want to use the horizontal actor command, set :arrow_battler in YEA 
Compatibility to false.	

> If you want to change the battler options and it doesn’t work, try setting 
lunatic to false. If you are using lunatic, read the comments as you have to 
draw the names manually.

> If your controls aren’t working properly (e.g. Horizontal menu inputting up 
and down instead of left to right) try adjusting :col_max value. Remember that 
it has to be in synch with :limit_page.

> If you’re using lunatic for the character display in Main Menu Luna, make sure 
to enable :collapse for :main as true to enable grayscaling a dead actor’s 
portrait.

> If you want to have more than four party members, go to Adjust Party Size by 
Archeia. You can also use another script that modifies such values.
