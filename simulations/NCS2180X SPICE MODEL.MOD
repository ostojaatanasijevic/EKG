* ONSEMI NEXT GEN MODEL, 2SEP2021, VERSION0
* BEGIN MODEL NCS21802
* THIS VERSION DOES NOT HAVE SHUTDOWN
* MODEL FEATURES INCLUDE OUTPUT SWING, OUTPUT CURRENT
* THROUGH THE SUPPLY RAILS, RAIL-TO-RAIL OUTPUT STAGE,
* OUTPUT CURRENT LIMIT, SLEW RATE,
* OUTPUT SWING VERSUS CURRENT, OPEN LOOP GAIN AND
* PHASE WITH RL AND CL EFFECTS, OPEN LOOP OUTPUT
* IMPEDANCE VS FREQUENCY, POWER SUPPLY REJECTION
* WITH FREQUENCY EFFECTS, COMMON MODE REJECTION
* WITH FREQUENCY EFFECTS, INPUT VOLTAGE NOISE THAT
* VARIES WITH SUPPLY VOLTAGE, AND INCLUDES A PEAK
* AT 25 KHZ AND INCLUDES THE NARROW PEAK AT 100 KHZ
* THAT VARIES WITH SUPPLY VOLTAGE, INPUT CURRENT
* NOISE, INPUT BIAS CURRENT WITH TEMPERATURE EFFECTS,
* INPUT CM AND DIFF CAPACITANCE, INPUT COMMON MODE
* RANGE, OFFSET TEMPERATURE EFFECTS, INPUT AND OUTPUT
* CLAMPS TO THE RAILS, AND QUIESCENT CURRENT.
* MODEL TOTAL SUPPLY VOLTAGE RANGE IS 1.6 TO 5.5 V.
* MODEL TEMP RANGE IS -55 TO +150 DEG C.
* NOTE THAT MODEL IS FUNCTIONAL OVER THIS RANGE BUT
* NOT ALL PARAMETERS TRACK THOSE OF THE REAL PART.
*
* NOTE - FOR ACCURATE BIAS CURRENTS AT ROOM AND COLD
* SET THE SPICE ANALYSIS OPTIONS AS FOLLOWS :
* RELTOL 0.001 TO 0.00001 AND GMIN 1E-12 TO 1E-14.
* SET BOTH OF THESE OPTIONS AS SMALL AS WILL ALLOW
* CONVERGANCE ON YOUR SIMULATOR. IF YOU ARE USING
* LTSPICE17 ADD THE OPTIONS PLOTRELTOL=1E-4 AND
* PLOTVNTOL=1E-6 FOR MORE ACCURATE OUTPUT WAVEFORM
* PLOTTING.
* PINOUT  1    2    3    4    5
* PINOUT +IN  -IN  +V   -V   OUT
*
.SUBCKT NCS21802 1 2 3 4 5
*NEXT LINE IS OFFSET ADJ NOM -11.31E-6
V18 213 230 -11.31E-6
*NEXT LINE IS  TCVOS ADJ NOM   5.0E-6
E92 288 232 289 0 5.0E-6
*NEXT LINE SETS PHASE MARGIN NOM 3.4E-12
C23 235 115 3.4E-12
V187 6 4 1.0
Q20 195 196 112 Q
R3 197 198 2
R4 199 198 2
R10 196 200 1000
R11 201 202 1000
R12 203 3 1.0
R13 4 204 1.0
R17 205 110 1.0
R18 112 206 1.0
D7 207 0 DIN
D8 208 0 DIN
I8 0 207 12E-6
I9 0 208 12E-6
E2 112 0 4 0 1
E3 110 0 3 0 1
D9 209 0 DVN
D10 210 0 DVN
I10 0 209 0.2E-6
I11 0 210 0.2E-6
E4 211 212 209 210 0.035M
G2 213 2 214 215 5.6E-8
E5 216 0 110 0 1
E6 217 0 112 0 1
E7 218 0 VCM 0 1
R30 216 219 1E6
R31 217 220 1E6
R32 218 221 1E6
R33 0 219 100
R34 0 220 100
R35 0 221 100
E10 144 222 221 0 0.05U
R36 223 VCM 1E3
R37 VCM 224 1E3
C6 216 219 3E-12
C7 217 220 3E-12
C8 218 221 1E-12
E11 225 1 220 0 0.07
E12 213 225 219 0 0.03
E14 115 112 110 112 0.5
M1 226 113 204 204 NOUT L=3U W=825U
M2 227 228 203 203 POUT L=3U W=825U
M3 118 118 205 205 POUT L=3U W=825U
M4 229 230 197 197 HVP L=3U W=110U
M5 231 232 199 199 HVP L=3U W=110U
M8 119 119 206 206 NOUT L=3U W=825U
R43 111 228 300
R44 233 113 300
G3 234 115 235 115 3.333E-4
R45 115 234 1.8E8
R46 112 229 2100
R47 112 231 2100
C13 229 231 1F
C14 213 0 2.45E-12
C15 211 0 2.45E-12
C16 120 0 1E-12
D13 113 195 D
D14 236 228 D
Q15 236 201 110 QP
M19 237 238 239 239 PIN L=6U W=500U
E17 224 0 213 0 1
E18 223 0 2 0 1
M23 238 238 239 239 PIN L=6U W=500U
V21 237 240 0
R59 120 227 25
R60 226 120 25
J1 241 213 241 J
J2 241 211 241 J
J3 211 242 211 J
J4 213 242 213 J
C21 213 232 0.005P
E20 144 115 231 229 1
R62 222 235 1E4
C27 228 227 70F
C28 226 113 70F
R74 4 3 2.85E11
G12 3 4 243 0 -1E-3
I20 0 244 1E-3
D20 244 0 D
V24 244 194 0.71
R75 0 194 1E6
I21 3 4 1.0E-9
E25 245 0 120 0 1
C30 114 246 6.8E-12
R78 246 245 1
R81 114 245 2E11
I63 0 247 1E-3
D23 247 0 DD
R307 0 247 10E6
V81 247 248 1.798
R308 0 248 2E7
E52 249 0 248 0 -0.875
R309 0 249 1E7
R310 122 250 1E7
M52 122 123 0 0 NEN L=2U W=1000U
R311 250 123 1E7
M53 123 251 0 0 NEN L=2U W=1000U
R312 0 248 2E7
G14 238 112 122 0 70U
D24 252 253 DL
V142 253 0 3
R313 0 252 3.3E7
G51 2 0 252 0 1.26E-9
I64 2 0 20.0E-12
G52 213 0 252 0 1.23E-9
I65 213 0 16.0E-12
G56 118 119 122 0 55U
E56 254 115 122 0 300
E57 255 256 122 0 -300
V146 257 255 150
V147 258 254 -150
R329 254 115 1E12
R330 255 115 1E12
M59 256 258 115 259 PSW L=1.5U W=150U
M60 115 257 256 260 NSW L=1.5U W=150U
R331 259 115 1E12
R332 260 115 1E12
E58 261 120 262 0 30
E59 263 5 262 0 -30
V148 264 263 15
V149 265 261 -15
R333 261 115 1E12
R334 263 115 1E12
M61 5 265 120 266 PSW L=1.5U W=500U
M62 120 264 5 267 NSW L=1.5U W=500U
R335 266 115 1E12
R336 267 115 1E12
E60 262 0 VALUE={1-V(122)}
R337 0 262 1E8
M63 268 6 112 112 NEN L=3U W=300U
M64 269 268 112 112 NEN L=3U W=3000U
R338 268 270 1E4
R339 269 271 1E6
V151 271 112 1
M65 272 272 270 270 PEN L=6U W=60U
M66 6 272 270 270 PEN L=6U W=60U
I66 272 112 1E-9
C35 6 0 2E-12
E61 251 0 273 0 1
V152 269 274 0.5
R340 112 274 1E12
C36 270 268 2.2E-8
C37 271 269 3.3E-11
R342 0 251 1E9
R345 0 120 1E9
R346 234 256 1E11
E64 121 0 274 112 10
E65 273 0 VALUE={LIMIT(V(121),0,1)}
R348 0 121 1E9
R349 0 273 1E9
E66 275 276 122 0 300
E67 277 245 122 0 -300
V154 278 277 150
V155 279 275 -150
R350 275 115 1E12
R351 277 115 1E12
M67 245 279 276 280 PSW L=1.5U W=150U
M68 276 278 245 281 NSW L=1.5U W=150U
R352 280 115 1E12
R353 281 115 1E12
R354 114 276 1E4
S1 120 3 120 3 VSWC
S2 282 110 282 110 VSWC
S3 112 283 112 283 VSWC
S4 284 110 284 110 VSWC
S5 112 285 112 285 VSWC
S6 4 120 4 120 VSWC
E68 116 115 VALUE={LIMIT(V(114,115),-100,0)}
E69 117 115 VALUE={LIMIT(V(114,115),0,100)}
R355 115 116 1E9
R356 115 117 1E9
E70 110 111 VALUE={V(115,116)-V(118,110)}
R357 111 110 1E9
E71 233 112 VALUE={V(117,115)-V(112,119)}
R358 112 233 1E9
C39 123 0 7F
E72 200 112 204 112 18.5
E73 202 110 203 110 18.5
M69 252 262 0 0 NEN L=3U W=300U
V159 286 112 0.38
V160 110 287 0.38
V161 110 239 -1.85
E89 129 0 110 112 1
R403 0 129 1E7
R410 115 144 1E12
G58 3 4 262 0 3E-7
V170 250 0 1
V171 248 289 -1.15
E93 211 288 COUT 0 -10.0E-5
R413 0 COUT 1E9
D25 240 198 D
R417 0 289 1E12
R420 0 COUT 1E9
R430 V1 110 1E3
R431 290 V1 60E3
R432 V2 290 60E3
R433 112 V2 1E3
E97 VB1 0 VALUE={LIMIT(V(VC2),V(VC3),99)}
R434 0 VB1 1E9
E98 VB2 0 VALUE={LIMIT(V(VC1),-99,V(VC3))}
R435 0 VB2 1E9
E99 VC1 0 VALUE={1.1E-8*(V(V1A)-V(VCM))}
R436 0 VC1 1E9
E100 VC2 0 VALUE={1.1E-8*(V(V2A)-V(VCM))}
R437 0 VC2 1E9
E101 VC3 0 VALUE={V(VCM)*(2.75E-3)* 0.25}
R438 0 VC3 1E9
E102 VB3 0 VALUE={LIMIT(V(VC3),V(VB2),V(VB1))}
R439 0 VB3 1E9
E103 COUT 0 VALUE={V(VB1)+V(VB2)}
R440 0 COUT 1E9
E104 V1A 0 VALUE={(0.75+3.5E-10)* V(V1)}
R441 0 V1A 1E9
E105 V2A 0 VALUE={(0.75+3.5E-10)* V(V2)}
R442 0 V2A 1E9
S8 221 0 221 0 VSWI
S9 0 221 0 221 VSWI
R446 207 214 9.73E9
R447 0 214 1E12
R448 208 215 9.73E9
R449 0 215 1E12
E106 243 0 VALUE={((V(194)*0.215+0.0)+V(IVC))*V(122)}
R450 0 243 1E9
V179 284 114 0
V180 114 285 0
R454 120 5 1E12
E108 VOS 0 1 2 1
R455 0 VOS 3.3E7
E109 287 241 194 0 1
E110 242 286 194 0 1
S10 231 229 291 232 VSWV
S11 231 229 232 292 VSWV
S12 231 229 291 213 VSWV
S13 231 229 213 292 VSWV
V182 110 291 -0.108
R456 291 110 1E12
V183 292 112 -0.108
R457 112 292 1E12
E112 212 293 294 0 6.8
L3 0 294 4E-2
R460 0 294 7E3
C43 294 0 6E-10
R461 0 FLT 1E5
R462 0 FLT 1E5
C44 FLT 0 1E-10
G59 114 115 235 115 4.167E-5
G61 114 115 234 115 -0.032E-3
C46 234 245 1F
R465 234 245 1E10
R466 295 245 5
C47 234 295 48E-12
R467 115 114 4E7
E116 IVC 0 VALUE={(V(4,3)*0.004-0.063)}
R469 0 IVC 1E9
E117 296 293 VALUE={V(FLT)*1.48*(1.39/PWR(V(3,4),0.26))}
R470 293 296 1E9
E118 2 296 VALUE={V(CHP)*1.24*PWR((V(3,4)/1.6),1.27)}
R471 296 2 1E9
L4 0 CHP 1.262E-2
R472 0 CHP 3.5E5
C48 CHP 0 1.893E-10
V184 282 234 -122
V185 234 283 -122
R473 112 6 1E12
V186 270 112 3
I12 5 115 30E-12
.MODEL NEN NMOS KP=200U VTO=0.5 IS=1E-18 LAMBDA=1E-4
.MODEL PEN PMOS KP=200U VTO=-0.7 IS=1E-18 LAMBDA=1E-4
.MODEL NOUT NMOS KP=1150U VTO=0.5 IS=1E-18
.MODEL POUT PMOS KP=1150U VTO=-0.5 IS=1E-18
.MODEL PSW PMOS KP=200U VTO=-7.5 IS=1E-18
.MODEL NSW NMOS KP=200U VTO=7.5 IS=1E-18
.MODEL DVN D KF=1.45E-14 IS=1E-16 RS=2E5
.MODEL DIN D KF=1E-14
.MODEL PIN PMOS KP=200U VTO=-0.7
.MODEL NIN NMOS KP=200U VTO=0.7
.MODEL HVP PMOS KP=200U VTO=-0.5
.MODEL DL D IS=0.95E-12 N=1.2 XTI=3.5
.MODEL DD D CJO=0.1E-12 TT=10E-9 RS=10
.MODEL D D CJO=0.1E-12 TT=10E-9 RS=10
.MODEL J NJF VTO=-0.7 BETA=1E-4 CGS=0.03E-12
+ CGD=0.03E-12 RD=10 RS=10 IS=1E-18
.MODEL Q NPN
.MODEL QP PNP
.MODEL VSWV VSWITCH VON=-0.05 VOFF=0.05 RON=0.01 ROFF=1E9
.MODEL VSWC VSWITCH VON=0.71 VOFF=0.62 RON=10 ROFF=1E12
.MODEL VSWI VSWITCH VON=0.11 VOFF=0.02 RON=1 ROFF=1E11
.ENDS
* END MODEL NCS21802
