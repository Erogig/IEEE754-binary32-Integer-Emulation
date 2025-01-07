## Purpose
This project only exists for me to learn more about float values and is not finished. (Turns out it's harder to find information about float emulation than I thought)

## Current problems
Due to constraints with using Minecraft Datapacks this project only actually uses 31 bits instead of 32. The datapack is also very imprecise thanks to the large amount of truncation used and the abstracted nature of using mcfunction. Not having direct access to individual bits makes the entire project more complex. 

## Why mcfunction?
I have had an interest in mcfunction for a couple years now thanks to the many limitations it has; therefore requiring more complex and technical solutions. In large part I started this project because i was under the impression that it would be possible to access the underlying memory of floats using the casting available through the execute store command. Turns out that isn't true ): and now I've come so far i might as well follow through.
