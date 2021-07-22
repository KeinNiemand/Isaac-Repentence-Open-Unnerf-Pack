# Isaac-Repentence-Open-Unnerf-Pack
A mod for The Binding of Isaac Repentance that combines diffrent unnerf mods into a single mod.
Steam Workshop link: https://steamcommunity.com/sharedfiles/filedetails/?id=2554325871

# Unnerfs Currently Included
- Maw of the Void Unnerf
- Orbital Unnerf
- Stomp Immunity Unnerf
- Soul Hearth Generator Unnerf
  - Dark Bum Unnerf
  - Relic Unnerf
  - Blue Fires (hard mode) Unnerf
  - (disabled in code) Nail Unnerf
  - (disabled in code) Satanic Bible Unnerf 

# What this mods tries to do
This mod tries to unnerf things(items, mechanics, ...) that have been nerfed in the Binding of Isaac Repentence and make them work like before they got nerfed. It does so by loading other mods included in this mod.

# Suggestions/Bug Reports
If you want to suggest new unnerfs, improvements or report bugs please create an Issue.

# How this mod is structured/works
Individual lua mods/unnerfs are located in a sub folder in the Mods folder, they are then loaded in main.lua using require().
main.lua should only be used for loading individual mods or handling stuff that affects all mods like config.
Non lua mods should be where they have to be.

# Contributing
If you want contribute to this unnerf pack by adding more unnerfs, fixing bugs or improving this mod in any other mods feel free to create pull requsts. Please follow the struce above. Do not add your unnerf directly into main.lua it should instead be added to a new folder inside the Mods folder then loading in main.lua using require().
