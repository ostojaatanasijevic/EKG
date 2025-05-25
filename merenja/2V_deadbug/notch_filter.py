from scipy import signal
import matplotlib.pyplot as plt
import numpy as np
import sys


data = np.load(sys.argv[1], allow_pickle=True)[()]
ch = data["CHAN1"][1]
timestep = data["CHAN1"][0]["xincrement"]
time = np.linspace(0, timestep*len(ch), len(ch))

D = 50
ch = signal.decimate(ch, D)
time = signal.decimate(time, D)

fs = 1 / timestep  # Sample frequency (Hz)
f0 = 50.0  # Frequency to be removed from signal (Hz)
Q = 2  # Quality factor
# Design notch filter
b, a = signal.iirdesign([45, 55], [49,51], 5, 80, fs=fs)
#b, a = signal.iirdesign(38, 48, 1, 60, fs=fs)
print(b)
print(a)

## Frequency response
freq, h = signal.freqz(b, a, fs=fs)
# Plot
fig, ax = plt.subplots(2, 1, figsize=(8, 6))
ax[0].plot(freq, 20*np.log10(abs(h)), color='blue')
ax[0].set_title("Frequency Response")
ax[0].set_ylabel("Amplitude [dB]", color='blue')
ax[0].set_xlim([0, 100])
ax[0].set_ylim([-100, 10])
ax[0].grid(True)
ax[1].plot(freq, np.unwrap(np.angle(h))*180/np.pi, color='green')
ax[1].set_ylabel("Phase [deg]", color='green')
ax[1].set_xlabel("Frequency [Hz]")
ax[1].set_xlim([0, 100])
ax[1].set_yticks([-90, -60, -30, 0, 30, 60, 90])
ax[1].set_ylim([-90, 90])
ax[1].grid(True)
plt.show()


fig, ax = plt.subplots(2, 1, figsize=(8, 6))
ax[0].plot(time, ch, color='blue')
ch = signal.lfilter(b,a, ch)
ax[1].plot(time,ch , color='green')
plt.show()
