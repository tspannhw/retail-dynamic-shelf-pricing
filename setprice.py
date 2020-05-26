import argparse
import json
import os
import os.path
import socket
import time
import uuid
from time import gmtime, strftime
import datetime
import psutil
from PIL import Image, ImageDraw, ImageFont
from font_fredoka_one import FredokaOne
from inky import InkyPHAT
import socket
import minifiutil

def main():
    
        # yyyy-mm-dd hh:mm:ss
        currenttime = strftime("%Y-%m-%d %H:%M:%S", gmtime())

        # Write text with weather values to the canvas
        inkydatetime = strftime("%d/%m %H:%M")

        # IoT Host Name
        host = os.uname()[1]

        # - start timing
        starttime = datetime.datetime.now().strftime('%m/%d/%Y %H:%M:%S')
        start = time.time()

        # Ip address
        ipaddress = minifiutil.IP_address()

        parser = argparse.ArgumentParser()
        parser.add_argument(
            '--price', help='price to be recognized.', required=True)
        args = parser.parse_args()


        # end of processing
        end = time.time()

        # Output JSON
        row = {}
        uuid2 = '{0}_{1}'.format(strftime("%Y%m%d%H%M%S", gmtime()), uuid.uuid4())
        cpuTemp = int(float(minifiutil.getCPUtemperature()))
        usage = psutil.disk_usage("/")

        # Format Fields
        row['host'] = os.uname()[1]
        row['cputemp'] = str(round(cpuTemp, 2))
        row['ipaddress'] = str(ipaddress)
        row['endtime'] = '{0:.2f}'.format(end)
        row['runtime'] = '{0:.2f}'.format(end - start)
        row['systemtime'] = datetime.datetime.now().strftime('%m/%d/%Y %H:%M:%S')
        row['starttime'] = str(starttime)
        row['diskfree'] = "{:.1f}".format(float(usage.free) / 1024 / 1024)
        row['memory'] = str(psutil.virtual_memory().percent)
        row['uuid'] = str(uuid2)
        row['price'] = str(args.price)

        # Output JSON
        json_string = json.dumps(row)
        print(json_string)

        # Set up the display
        inky_display = InkyPHAT("red")
        inky_display.set_border(inky_display.BLACK)

        # Create a new canvas to draw on
        # 212x104
        img = Image.new("P", (inky_display.WIDTH, inky_display.HEIGHT))
        draw = ImageDraw.Draw(img)

        # Load the FredokaOne font
        font = ImageFont.truetype(FredokaOne, 22)

        # draw data
        draw.text((0, 0), "{}".format('Cloudera Mug'), inky_display.BLACK, font=font)
        draw.text((0, 32), "Price: $ {}".format(args.price), inky_display.RED, font=font)

        # Display the data on Inky pHAT
        inky_display.set_image(img)
        inky_display.show()


if __name__ == '__main__':
    main()
