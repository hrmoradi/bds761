import sys
from PIL import Image

file_path = sys.argv[1]

print("from python:", file_path)

image = Image.open(file_path)

resized_image = image.resize((image.width//2, image.height//2))

resized_image.save(file_path.replace(".png","_resized.png"))

print("from python done!", file_path)

