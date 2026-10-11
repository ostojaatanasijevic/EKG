#include <SPI.h>
#include <SD.h>

// Change to match your CS pin
const int chipSelect = 10; 

void setup() {
  Serial.begin(115200);
  
  // Wait for serial port to connect
  while (!Serial) {; }

  Serial.print("Initializing SD card...");

  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    return;
  }
  Serial.println("card initialized.");

  // Open the file for writing
  File dataFile = SD.open("datalog.txt", FILE_WRITE);

  if (dataFile) {
    dataFile.println("Hello ESP32-S3!");
    dataFile.close();
    Serial.println("Done writing.");
  } else {
    Serial.println("error opening datalog.txt");
  }
}

void loop() {
  // Nothing happens after setup
}
