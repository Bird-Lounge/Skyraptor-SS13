//hot (100F), thin atmosphere, but oxygen-rich.  maybe TOO oxygen-rich - it's above SS13 standard of 22mol.
#define PRAIRIE_GASMIX GAS_O2 + "=27;" + GAS_N2 + "=54;TEMP=310"
//it grows colder (32F) at night, making it thinner (yay mining!) but likely impossible to breathe and uncomfortable for some species
#define PRAIRIE_GASMIX_NIGHT GAS_O2 + "=27;" + GAS_N2 + "=54;TEMP=273"

//during plasma storms, the air grows thicker and significantly hotter (170F!!), but it's dense in plasma which you don't want to breathe in
#define PRAIRIE_GASMIX_STORM GAS_PLASMA + "=9;" + GAS_O2 + "=27;" + GAS_N2 + "=54;TEMP=350"
//plasma storms are particularly disastrous at night, pushing the oxygen and nitrogen out of the way for more plasma, and still hot enough (100F) to be uncomfy
#define PRAIRIE_GASMIX_NIGHT_STORM GAS_PLASMA + "=27;" + GAS_O2 + "=18;" + GAS_N2 + "=45;TEMP=310"

//a unique type for prairie lava- you don't want to stand near this stuff, it stinks AND burns!
#define PRAIRIE_GASMIX_LAVA GAS_PLASMA + "=36;" + GAS_O2 + "=6;" + GAS_N2 + "=54;TEMP=350"



#define LIGHT_COLOR_PRAIRIEWORLD "#eef2da"
#define LIGHT_COLOR_PRAIRIEWORLD_STORM "#e6cab8"
#define LIGHT_COLOR_PRAIRIEWORLD_LAVA "#f29da6"

#define NIGHT_COLOR_PRAIRIEWORLD "#76806c"
#define NIGHT_COLOR_PRAIRIEWORLD_STORM "#66524d"



#define ZTRAIT_PRAIRIE_PLASMASTORM "Weather_PlasmaStorm"
#define ZTRAIT_PRAIRIE_RUINS "Prairie Ruins"
