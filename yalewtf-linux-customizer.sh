#!/bin/bash


#Ask User TO Download Theme or Not 

echo "Download Flat Remix GTK (y/n) ?"
read op
if [ $op == "y" ]
	then
	echo "Downloading FlatRemix GTK Theme.."
	#Download Theme Using Git Clone
	git clone https://github.com/daniruiz/flat-remix-gtk.git
	#Move Theme to Theme Folder
	mv ./flat-remix-gtk/* ~/.themes/
fi


echo "Download Flat Remix Gnome Theme (y/n) ?"
read op
if [ $op == "y" ]
	then
	echo "Downloading FlatRemix Gnome Theme"
	#Download Theme Using Git Clone
    git clone "https://github.com/daniruiz/flat-remix-gnome.git"
	#Move Theme to Theme Folder
	mv ./flat-remix-gnome/* ~/.themes/
fi

echo "Download Flat Remix Icon Theme (y/n) ?"
read op
if [ $op == "y" ]
	then
	echo "Downloading FlatRemix Icon Theme"
	#Download Theme Using Git Clone
    git clone "https://github.com/daniruiz/flat-remix.git"
	#Move Theme to Theme Folder
	mv ./flat-remix/* ~/.icons
fi




#Just Some variale Declaration
declare -a gnome
declare -a gtk
declare -a icon

gnome=(Flat-Remix-Dark-fullPanel Flat-Remix-Dark Flat-Remix-Darkest-fullPanel Flat-Remix-Miami-Dark-fullPanel Flat-Remix-Miami-fullPanel Flat-Remix-Miami Flat-Remix-fullPanel Flat-Remix)
gtk=(Flat-Remix-GTK-Blue-Dark-Solid Flat-Remix-GTK-Blue-Dark Flat-Remix-GTK-Blue-Darker=Solid Flat-Remix-GTK-Blue-Darkest-NoBorder Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder Flat-Remix-GTK-Blue-Darkest Flat-Remix-GTK-Blue-Solid Flat-Remix-GTK-Blue Flat-Remix-GTK-Green-Dark-Solid Flat-Remix-GTK-Green-Dark Flat-Remix-GTK-Green-Darker=Solid Flat-Remix-GTK-Green-Darkest-NoBorder Flat-Remix-GTK-Green-Darkest-Solid-NoBorder Flat-Remix-GTK-Green-Darkest Flat-Remix-GTK-Green-Solid Flat-Remix-GTK-Green Flat-Remix-GTK-Yellow-Dark-Solid Flat-Remix-GTK-Yellow-Dark Flat-Remix-GTK-Yellow-Darker=Solid Flat-Remix-GTK-Yellow-Darkest-NoBorder Flat-Remix-GTK-Yellow-Darkest-Solid-NoBorder Flat-Remix-GTK-Yellow-Darkest Flat-Remix-GTK-Yellow-Solid Flat-Remix-GTK-Yellow Flat-Remix-GTK-Red-Dark-Solid Flat-Remix-GTK-Red-Dark Flat-Remix-GTK-Red-Darker=Solid Flat-Remix-GTK-Red-Darkest-NoBorder Flat-Remix-GTK-Red-Darkest-Solid-NoBorder Flat-Remix-GTK-Red-Darkest Flat-Remix-GTK-Red-Solid Flat-Remix-GTK-Red)
icons=(Flat-Remix-Blue Flat-Remix-Blue-Dark Flat-Remix-Blue-Light Flat-Remix-Green Flat-Remix-Green-Dark Flat-Remix-Green-Light Flat-Remix-Red Flat-Remix-Red-Dark Flat-Remix-Red-Light Flat-Remix-Yellow Flat-Remix-Yellow-Dark Flat-Remix-Yellow-Light)
count=0

#Looping and displaying all available theme
for i in "${gnome[@]}"
do  count=$((count+1))
	echo $count $i
done

echo Select Gnome Theme : 
read gn
gn=$((gn-1))
echo Setting Gnome Shell Theme to ${gnome[$gn]}
gsettings set org.gnome.shell.extensions.user-theme name "${gnome[$gn]}" #Setting The Theme


count=0
#Looping and displaying all available theme
for i in "${gtk[@]}"
do  count=$((count+1))
	echo $count $i
done

echo Select GTK Theme : 
read gt
gt=$((gt-1))
echo Setting GTK application Theme to ${gtk[$gt]}
gsettings set org.gnome.desktop.interface gtk-theme "${gtk[$gt]}" #Setting The Theme


count=0
#Looping and displaying all available theme
for i in "${icons[@]}"
do  count=$((count+1))
	echo $count $i
done

echo Select Icon Theme : 
read gt
gt=$((gt-1))
echo Setting Icons Theme to ${icons[$gt]}
gsettings set org.gnome.desktop.interface icon-theme "${icons[$gt]}" #Setting The Theme
