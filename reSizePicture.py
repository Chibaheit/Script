#!/usr/bin/env python
# coding: utf-8

from PIL import Image, ImageFilter
import os, sys
import os.path

pictureType = { ".png", ".jpeg", ".jpg" }
pictureDir = "/Users/chibahan/Documents/tmpPicture/"
for now in os.listdir(pictureDir):
  f, e = os.path.splitext("/Users/chibahan/Pictures/db/" + now)
  if e.lower() in pictureType:
    outPath = pictureDir + now
    image = Image.open(outPath)
    w, h = image.size
    if h > 400:
      image.thumbnail((w * h // 400, 400))
    image.save(f + e.lower(), 'png')