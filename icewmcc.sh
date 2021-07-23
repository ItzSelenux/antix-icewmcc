#! /bin/bash
# File Name: icewmcc.sh
# Purpose: all-in-one control centre for IceWM in antiX
# Authors: OU812 and minor modifications by anticapitalista
# Latest Change: 24 October 2013 by anticapitalista. Function for ICONS. New look.
# Latest Change: 16 October 2018 by anticapitalista. Use set gtk icons

TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=icewmcc.sh
# Options
#ICONS=/usr/share/icons/antiX

Taskbar=$"Taskbar" Applets=$"Applets" Workspaces=$"Workspaces" Windows=$"Windows"

export IceWMCC=$(cat <<End_of_Text
<window title="`gettext $"IceWM control centre"`" icon="gnome-control-center" window-position="1">

<vbox>
  
  <notebook tab-pos="0" labels="$Taskbar|$Applets|$Workspaces|$Windows"> 
  
  <vbox>
    <frame>
	<hbox>
	  <vbox>
                <hbox>
		  <button>
		  <input file icon="preferences-desktop-wallpaper"></input>
		  <action>/usr/local/bin/icewmcc/icewmccshtb.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show or Hide Taskbar"`"</label>
		  </text>
		</hbox>
                 <hbox>
		  <button>
		  <input file icon="computer"></input>
		  <action>/usr/local/bin/icewmcc/icewmcctbpos.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Taskbar Position"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file icon="gnome-settings-default-applications"></input>
		  <action>/usr/local/bin/icewmcc/icewmcctbheight.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Double-Height Taskbar"`"</label>
		  </text>
		</hbox>
              </vbox>
	</hbox>
    </frame>
  </vbox>
  
  <vbox>
     <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file icon="utilities-system-monitor"></input>
		  <action>/usr/local/bin/icewmcc/icewmcccpumon.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle CPU Monitor"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file icon="gnome-session"></input>
		  <action>/usr/local/bin/icewmcc/icewmccnetmon.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Network Monitor"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file icon="mail"></input>
		  <action>/usr/local/bin/icewmcc/icewmccmail.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Mailbox Status"`"</label>
		  </text>
		</hbox>
             </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
     <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file icon="printer"></input>
		  <action>/usr/local/bin/icewmcc/icewmccshowwkspaces.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show or Hide Workspaces"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file icon="video-display"></input>
		  <action>/usr/local/bin/icewmcc/icewmccwkspaces.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Number of Workspaces"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file icon="preferences-desktop-theme"></input>
		  <action>/usr/local/bin/icewmcc/icewmccwinlist.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Toggle Window List Button"`"</label>
		  </text>
		</hbox>
             </vbox>
	</hbox>
	</frame>
  </vbox>

  <vbox>
    <frame>
	<hbox>
	  <vbox>
                 <hbox>
		  <button>
		  <input file icon="cs-desktop-effects"></input>
		  <action>/usr/local/bin/icewmcc/icewmccmovestat.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Show Move Status"`"</label>
		  </text>
		</hbox> 
                <hbox>
		  <button>
		  <input file icon="computer"></input>
		  <action>/usr/local/bin/icewmcc/icewmccopmove.sh &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Enable Opaque Move"`"</label>
		  </text>
		</hbox>
                <hbox>
                  <button>
                  <input file icon="gparted"></input>
                  <action>/usr/local/bin/icewmcc/icewmccopresize.sh &</action>
                  </button>
                  <text use-markup="true" width-chars="25">
                  <label>"`gettext $"Enable Opaque Resize"`"</label>
                  </text>
                </hbox>      
	  </vbox>
	</hbox>
    </frame>
  </vbox>
 </notebook>
  <hbox>
	<button>
	<label>"Close"</label>
	<input file icon="exit"></input>
	<action>EXIT:close</action>
	</button>
  </hbox>
</vbox>
</window>
End_of_Text
)

gtkdialog --program=IceWMCC
unset IceWMCC
