# Part 1

I encourage you to look through this entire file before doing anything else.
You will not be able to learn all of Elixir in a few days, so focusing on what's
here is likely best.

Here are some links to things that should help you:

https://elixir-lang.org/getting-started/introduction.html

https://hexdocs.pm/elixir/List.html#content

https://tio.run/#elixir

https://hexdocs.pm/iex/IEx.html

https://elixir-lang.org/install.html

The work can be done in tio, you need not go through installing if
you're not inclined.


# Part 2

Your first tasks is to learn about and try to use recursion. How it works
in Elixir can be found here:

https://elixir-lang.org/getting-started/recursion.html

The single most important fact about Elixir is:

data structures in Elixir are immutable

Once you create something, it cannot be changed, mutated. It can be used to
create something new, and this is done through copying or linking (although
neither are explicit, just a side effect of the datatypes being used.

For example, if you start with list `a = [1,2,3]` and you use
the cons operator `|`, you can create `b = [ 5 | a ]` which will be
`[5, 1, 2, 3]` and the `b` list will be a new cell ` [ 5 ] ` that links to
a's `[ 1, 2, 3 ]`.

# Program 1

Using input_data1.txt, complete the code in file program1.exs

You can install Elixir on a machine you work on, or you can
use https://tio.run/#elixir or something similar.
tio has an `input` section where you can paste in the input data.

# Program 2

Extending the technique of Program 1, write a program that
given 3 lists, selects the greatest even value at each iteration and
adds it to an accumulator. For example:

[ 5, 8, 9, 2, 4, 7 ]
[ 9, 1, 6, 7, 9, 6 ]
[ 4, 4, 8, 6, 2, 4 ]

sums the list:

[ 4, 8, 8, 6, 4, 6 ]

and a sum of 36

The lists to use are:

[184, 89, 960, 133, 239, 413, 425, 355, 636, 519, 430, 562, 296, 175, 471, 260,
 279, 934, 667, 804, 954, 274, 833, 428, 912, 789, 76, 805, 522, 692, 139, 598,
 943, 309, 954, 265, 958, 559, 722, 910, 388, 996, 716, 706, 291, 236, 593, 154,
 103, 8, 319, 722, 863, 493, 384, 206, 696, 563, 276, 422, 642, 163, 926, 823,
 608, 193, 713, 119, 141, 297, 99, 321, 976, 972, 46, 34, 719, 186, 446, 563,
 139, 887, 729, 319, 679, 734, 565, 531, 210, 275, 113, 409, 384, 872, 442, 364,
 757, 44, 332, 802, 389, 626, 15, 376, 143, 450, 362, 31, 847, 935, 103, 856,
 700, 78, 904, 697, 453, 995, 420, 426, 1000, 264, 88, 384, 323, 322, 289, 383,
 916, 460, 350, 29, 384, 421, 869, 462, 156, 362, 162, 757, 31, 450, 85, 850,
 344, 864]

[112, 348, 854, 848, 27, 435, 103, 625, 477, 203, 513, 736, 638, 229, 517, 580,
 476, 692, 124, 136, 257, 785, 415, 5, 332, 366, 124, 108, 864, 362, 272, 331,
 20, 612, 532, 18, 487, 524, 266, 973, 642, 46, 174, 256, 37, 416, 424, 749,
 532, 922, 279, 537, 268, 148, 981, 141, 334, 603, 570, 400, 4, 24, 789, 416,
 475, 442, 485, 636, 151, 736, 162, 528, 52, 804, 793, 183, 734, 365, 595, 922,
 187, 48, 365, 164, 47, 467, 63, 325, 250, 980, 970, 853, 716, 639, 382, 482,
 241, 377, 753, 689, 108, 240, 261, 48, 478, 922, 648, 468, 33, 71, 670, 421,
 727, 780, 873, 648, 416, 661, 655, 202, 745, 177, 264, 175, 284, 49, 333, 727,
 668, 323, 593, 408, 693, 98, 332, 148, 634, 739, 703, 157, 359, 346, 90]

[915, 576, 254, 844, 744, 656, 149, 46, 883, 902, 636, 545, 978, 972, 572, 686,
 927, 781, 463, 384, 450, 690, 322, 454, 686, 309, 56, 152, 622, 94, 579, 395,
 964, 787, 886, 336, 606, 286, 880, 248, 337, 425, 590, 342, 980, 731, 541, 941,
 788, 481, 753, 912, 100, 306, 414, 736, 360, 454, 52, 984, 420, 750, 839, 173,
 450, 260, 189, 929, 659, 349, 664, 989, 219, 62, 566, 346, 150, 446, 838, 880,
 644, 898, 662, 610, 688, 225, 519, 655, 489, 63, 492, 916, 762, 990, 273, 241,
 925, 259, 138, 929, 769, 991, 981, 298, 437, 120, 627, 636, 107, 505, 80, 781,
 13, 924, 901, 905, 507, 559, 48, 778, 444, 65, 312, 287, 804, 960, 573, 533,
 52, 763, 188, 379, 709, 820, 334, 519, 992, 218, 550, 253, 812, 83, 620, 539,
 404, 317, 966, 657, 630] 
