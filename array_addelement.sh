#!/bin/bash

Fruits=(Apple Mango Orange Banana Grapes Watermelon);
echo "Enter a new fruit: "
read fruit
Fruits=(${Fruits[@]} $fruit)
echo "Now your fruits are: "
echo "${Fruits[@]}"
