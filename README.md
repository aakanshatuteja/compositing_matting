# compositing_matting
Analysis the effect of compositing and matting

Selects two square 2Cx2C pictures P1 and P2 and display them.
Generate an alpha image in the following way: All pixels with a distance from the center of the image equal to less than C/2 are equal to 1. All pixels with a distance from the center of the image equal to more than C are equal to 0. All pixels in between have a decreasing value from 1 to 0 as the distance from the center of the image increases. Plot the alpha image.
Use P1, P2 and the alpha image to show the effect of compositing and matting
