import serial
from datetime import datetime

daytime = datetime.now().strftime("%m%d%y_%H:%M:%S")
serial = serial.Serial("/dev/ttyAMA0", baudrate=9600)

code = ''

while True:
    data = serial.read()
    if data == '\r':
        logf = open("/mnt/usbdisk/rfid_logfile.txt", "a")
        logf.write(code + daytime + "\n")
        logf.close()
        print(code)
        code = ''
        
    else:
        code = code + data
        
