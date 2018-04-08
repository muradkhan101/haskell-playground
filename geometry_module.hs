module Geometry(
    sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidArea,
    cuboidVolume
) where

sphereVolume :: Float -> Float
sphereVolume r = (4.0 / 3.0) * pi * r ^ 3

sphereArea :: Float -> Float
sphereArea r = 4.0 * pi * r ^ 2

cubeVolume :: Float -> Float
cubeVolume s = cuboidVolume s s s

cubeArea :: Float -> Float
cubeArea s = cuboidArea s s s

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume l w h = l * w * h

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea l w h = 2 * w * h + 2 * w * l + 2 * l * h