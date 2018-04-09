module Geometry.Cuboid (
    volume,
    area
) where

volume :: Float -> Float -> Float -> Float
volume l w h = l * w * h

area :: Float -> Float -> Float -> Float
area l w h = 2 * rectArea w h + 2 * rectArea w l + 2 * rectArea l h

rectArea :: Float -> Float -> Float
rectArea l w = l * w