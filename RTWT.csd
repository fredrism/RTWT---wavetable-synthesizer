<Cabbage>
form caption("RTWT") size(800, 600), colour(40,40,40), pluginID("def1")
keyboard bounds(10, 500, 580, 90)
;csoundoutput bounds(10, 280, 300, 200), channel("CS")

;Oscillator 1
groupbox bounds(10, 10, 300, 280), text("Osc 1")
gentable bounds(20, 60, 280, 100), tablenumber(1), amprange(-1, 1, 1, 0.01), identchannel("table"), samplerange(0, 1024)
rslider bounds(20, 160, 50, 50), text("level"), channel("Level"), range(-1, 1, 1, 1, 0.01)
rslider bounds(20, 210, 50, 50), text("Stretch"), channel("Stretch"), range(0, 5, 0, 1, 0.001)
rslider bounds(70, 210, 50, 50), text("Shift"), channel("Shift"), range(0.3, 6, 1, 0.32, 0.001)
rslider bounds(70, 160, 50, 50), text("Rectify"), channel("Rect"), range(1, 10, 1, 1, 0.001)
rslider bounds(140, 160, 50, 50), text("Freq"), channel("Freq"), range(0.5, 2, 1, 1, 0.01)
rslider bounds(130, 210, 70, 50), text("Pitch Coarse"), channel("PitchC"), range(-12, 12, 0, 1, 1)
rslider bounds(210, 160, 70, 50), text("Double"), channel("uVoice"), range(0, 1, 0, 1, 1)
rslider bounds(210, 210, 70, 50), text("Unis Detune"), channel("uDetune"), range(0, 1, 0, 1, 0.01)
button bounds(220, 35, 80, 20), channel("FM"), text("FM->B"), latched(1), colour:1("green")

;Oscillator 2
groupbox bounds(320, 10, 300, 280), text("Osc 2")
gentable bounds(330, 60, 280, 100), tablenumber(2), amprange(-1, 1, 2, 0.01), identchannel("table2"), samplerange(0, 1024)
rslider bounds(330, 160, 50, 50), text("level"), channel("Level2"), range(-1, 1, 1, 1, 0.01)
rslider bounds(330, 210, 50, 50), text("Stretch"), channel("Stretch2"), range(0, 5, 0, 1, 0.001)
rslider bounds(380, 210, 50, 50), text("Shift"), channel("Shift2"), range(0.3, 6, 1, 0.32, 0.001)
rslider bounds(380, 160, 50, 50), text("Rectify"), channel("Rect2"), range(1, 10, 1, 1, 0.001)
rslider bounds(450, 160, 50, 50), text("Freq"), channel("Freq2"), range(0.5, 2, 1, 1, 0.01)
rslider bounds(440, 210, 70, 50), text("Pitch Coarse"), channel("PitchC2"), range(-12, 12, 0, 1, 1)
rslider bounds(520, 160, 70, 50), text("Double"), channel("uVoice2"), range(0, 1, 0, 1, 1)
rslider bounds(520, 210, 70, 50), text("Unis Detune"), channel("uDetune2"), range(0, 1, 0, 1, 0.01)

;SubOsc
groupbox bounds(630, 10, 160, 150), text("Sub Osc")
combobox bounds(670, 35, 80, 20), items("Sine", "Saw", "Square", "Triangle"), channel("Wave3")
rslider bounds(640, 55, 60, 60), text("level"), channel("Level3"), range(0, 1, 1, 1, 0.01)
rslider bounds(720, 55, 60, 60), text("oct"), channel("Suboct"), range(1, 4, 0, 1, 1)
button bounds(660, 120, 100, 30), text("filter"), channel ("SubFilter"), latched(1), colour:1("green")

;Panning
groupbox bounds(630, 160, 160, 130), text("Panning")
rslider bounds(670, 200, 80, 80), channel("PD"), text("LFO"), range(0, 1, 0, 1, 0.001)

;Filter
groupbox bounds(630, 300, 160, 170), text("Filter")
rslider bounds(640, 330, 60, 60), channel("Cutoff"), text("Cutoff"), range(30, 20000, 10000, 0.5, 1)
rslider bounds(720, 330, 60, 60), channel("Q"), text("Reso."), range(0.01, 0.99, 0.5, 0.6, 0.1)
rslider bounds(640, 390, 60, 60), channel("fEnv"), text("Env."), range(0, 1, 0, 1, 0.01)
rslider bounds(720, 390, 60, 60), channel("fLFO"), text("LFO"), range(0, 1, 0, 1, 0.01)

;Amp Envelope
groupbox bounds(10, 300, 197, 130), text("Amp ADSR")
rslider bounds(20, 330, 60, 60), channel("aA"), text("A"), range(0.01, 3, 0.01, 1, 0.01)
rslider bounds(60, 360, 60, 60), channel("aD"), text("D"), range(0.01, 3, 0.01, 1, 0.01)
rslider bounds(100, 330, 60, 60), channel("aS"), text("S"), range(0, 1, 1, 1, 0.01)
rslider bounds(140, 360, 60, 60), channel("aR"), text("R"), range(0.01, 3, 0.01, 1, 0.01)
;Filter Envelope
groupbox bounds(217, 300, 197, 130), text("Filter ADSR")
rslider bounds(227, 330, 60, 60), channel("fA"), text("A"), range(0.01, 3, 0.01, 1, 0.01)
rslider bounds(267, 360, 60, 60), channel("fD"), text("D"), range(0.01, 3, 0.01, 1, 0.01)
rslider bounds(307, 330, 60, 60), channel("fS"), text("S"), range(0, 1, 1, 1, 0.01)
rslider bounds(347, 360, 60, 60), channel("fR"), text("R"), range(0.01, 3, 0.01, 1, 0.01)

;Modulasjon
groupbox bounds(423, 300, 197, 170), text("Modulation")
combobox bounds(443, 330, 153, 20), channel("PShape"), items("Sine", "Saw", "Square", "Triangle")
rslider bounds(443, 360, 50, 50), channel("LFORate"), text("LFO Rate"), range(0.1, 30, 1, 0.6, 0.1)
rslider bounds(443, 410, 50, 50), channel("rStr"), text("Stretch"), range(0, 30, 0, 1, 0.1)
rslider bounds(533, 360, 50, 50), channel("rShft"), text("Shift"), range(0, 1, 0, 1, 0.01)
rslider bounds(533, 410, 50, 50), channel("rRect"), text("Rect"), range(0, 1, 0, 1, 0.01)



</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 8
nchnls = 2
0dbfs = 1

;opcode for å beregne iAmp*sin(2*pi*indx)
opcode SineGen, i, ii
iAmp, indx xin
iOut = sin(2*$M_PI*indx)*iAmp
xout iOut 
endop

;Wavetable til oscillator 1 og 2
giWave1 ftgen 1, 0, 1024, -2, 0
giWave2 ftgen 2, 0, 1024, -2, 0

instr 1
;Hent Envelope variabler fra Cabbage
iA chnget "aA" 
iD chnget "aD" 
iS chnget "aS" 
iR chnget "aR" 

;Lag Envelope
aEnv	madsr iA, iD, iS, iR

;Sett opp to Master-kanaler
aMasterL = 0
aMasterR = 0

;Hent variabler relatert til stemme-deling, tuning og FM
kDetune chnget "uDetune" 
iVoices chnget "uVoice" 
iCoarse chnget "PitchC" 
iFM chnget "FM" 

;Les og skaler pitch-bend
kPitchBend pchbend 0, 1
kPitchBend *= 12

;Generer Random verdier som styrer mengden detune
iRand1 random 0.5, 1
iRand2 random 0.5, 1
iRand3 random 0.5, 1
iRand4 random 0.5, 1

;Generer signal for oscillator 1,2 basert på utregnet bølge, velocity, pitch og variabler som endrer pitch
aOsc1 oscili p5, p4*semitone(iCoarse+kDetune*(iVoices)*iRand1 + kPitchBend), giWave1
aOsc2 oscili p5, p4*semitone(iCoarse-kDetune*(iVoices)*iRand2 + kPitchBend), giWave1

;Legg til oscillator 1 og 2 på begge kanaler dersom ikke FM-knappen er inne og panorert dersom begge oscillatorene er i bruk
aMasterL += (aOsc1*(1 - iVoices) + aOsc2*iVoices)*(1-iFM)
aMasterR += (aOsc1*1)*(1-iFM)

;Dersom FM-er aktiv, sett aMod1-2 til oscillator 1 og 2, ellers 1
if(iFM == 1) then
aMod1 = aOsc1
aMod2 = aOsc2
else
aMod1 = 1
aMod2 = 1
endif

;Samme som oscillator 1 og 2 men med input for FM
kDetune2 chnget "uDetune2" 
iVoices2 chnget "uVoice2" 
iCoarse2 chnget "PitchC2" 

aOsc3 oscili p5, p4*semitone(iCoarse2+kDetune2*(iVoices2)*iRand3 + kPitchBend) * aMod1, giWave2
aOsc4 oscili p5, p4*semitone(iCoarse2-kDetune2*(iVoices2)*iRand4 + kPitchBend) * aMod2, giWave2

aMasterL += aOsc3*(1 - iVoices2) + aOsc4*iVoices2
aMasterR += aOsc3*1

;Skaler signal med Envelope
aMasterL *= aEnv
aMasterR *= aEnv

;####### SubOsc
;Hent subosc variabler fra Cabbage
iSubWave chnget "Wave3"
iSubLevel chnget "Level3"
iSubFilter chnget "SubFilter"
iSubOct chnget "Suboct"

;lag enkel envelope for å unngå knepping 
aSubEnv madsr 0.01, 0.01, 1, 0.01
;If-statements for å velge bølgeform, frekvens skalert med oktav-bryter og pitch-bend
if (iSubWave == 1) then
aSub oscil iSubLevel, ((p4*iSubOct*semitone(kPitchBend))/2)/2
elseif (iSubWave == 2) then
aSub vco2 iSubLevel, ((p4*iSubOct*semitone(kPitchBend))/2)/2, 8
elseif (iSubWave == 3) then
aSub vco2 iSubLevel, ((p4*iSubOct*semitone(kPitchBend))/2)/2, 10
elseif (iSubWave == 4) then
aSub vco2 iSubLevel, ((p4*iSubOct*semitone(kPitchBend))/2)/2, 12
endif
;skaler med envelope
aSub *= aSubEnv
;########Modulasjon
;Hent LFO variabler fra Cabbage
kLFORate chnget "LFORate"
kPShape chnget "PShape"

;Velg bølgeform
if (kPShape == 1) then
aLFO oscil 1, kLFORate
elseif (kPShape == 2) then
aLFO vco2 1, kLFORate, 8
elseif (kPShape == 3) then
aLFO vco2 1, kLFORate, 10
elseif (kPShape == 4) then
aLFO vco2 1, kLFORate, 12
endif

;########FILTER
;Hent filtervariabler fra cabbage
ifA chnget "fA"
ifD chnget "fD"
ifS chnget "fS"
ifR chnget "fR"
ifLFO chnget "fLFO"
ifReso chnget "Q"
ifEnv. chnget "fEnv"
kfCutoff chnget "Cutoff"

;Lag Envelope
kFiltEnv madsr ifA, ifD, ifS, ifR
;Sett slik at Envelopen legger seg rundt Sustain-level
kFiltEnv -= ifS
;Regn ut filterfrekvens
kFiltFreq = kfCutoff+(kFiltEnv*kfCutoff*ifEnv) + aLFO*ifLFO*kfCutoff

;Filtrer masterkanaler og legg til Sub-oscillator dersom den skal filtreres
aMasterL	lpf18 aMasterL+aSub*iSubFilter, kFiltFreq, ifReso, 1
aMasterR	lpf18 aMasterR+aSub*iSubFilter, kFiltFreq, ifReso, 1

;#######PAN
;Hent variabel fra Cabbage og Panorer (se rapport for detaljer)
kPD chnget ("PD")
aMasterL = (aMasterL+aSub*(1-iSubFilter))*((aLFO*kPD*0.5) + 1 - (kPD*0.5))
aMasterR = (aMasterR+aSub*(1-iSubFilter))*((-aLFO*kPD*0.5) + 1 - (kPD*0.5))

;Send ut Masterkanaler
outs aMasterL*0.5, aMasterR*0.5

endin

;instr 6 er alltid på
instr 6
;hent variabler fra cabbage
kStr chnget "rStr"
kShft chnget "rShft"
kRect chnget "rRect"
;generer tilfeldige verdier og filtrer resultat (se rapport)
aRand5 random -10, 10
aRand6 random -10, 10
aRand7 random -10, 10
aRand5 lowpass2 aRand5, 2, 10
kRand5 = aRand5*kStr*2
aRand6 lowpass2 aRand6, 2, 10
kRand6 = aRand6*kShft*2
aRand7 lowpass2 aRand7, 2, 10
kRand7 = aRand6*kRect*2

;Hent variabler relatert til oscillator 1 - 2
kLevel chnget "Level"
kStretch chnget "Stretch"
kShift chnget "Shift"
kRect chnget "Rect"
kFreq chnget "Freq"
;trigge instrument 7 dersom noen av variablene endrer seg
kTrig changed kLevel, kStretch+kRand5, kShift+kRand6, kRect+kRand7, kFreq
schedkwhen kTrig, 0, 1, 7, 0, 0.1, kLevel, kStretch+kRand5, kShift+kRand6, kRect+kRand7, kFreq

;Hent variabler relatert til oscillator 3 - 4
kLevel2 chnget "Level2"
kStretch2 chnget "Stretch2"
kShift2 chnget "Shift2"
kRect2 chnget "Rect2"
kFreq2 chnget "Freq2"

;trigge instrument 8 dersom noen av variablene endrer seg
kTrig2 changed kLevel2, kStretch2, kShift2, kRect2, kFreq2
schedkwhen kTrig2, 0, 1, 8, 0, 0.1, kLevel2, kStretch2, kShift2, kRect2, kFreq2
endin

;regner ut bølgeform og skriver til table for oscillator 1 og 2, se rapport for utregning
instr 7
indx = 0
loop:
iTmpIndx = (indx/1024)*p8
iTmpIndx2 pow iTmpIndx, p6
iTmpIndx3 = (1-0.25*p5)*(iTmpIndx2-0.5) + p5*(iTmpIndx2-0.5)*(iTmpIndx2-0.5)*(iTmpIndx2-0.5) 
iTmpSample SineGen 1, -iTmpIndx3
iTmpSample = tanh(iTmpSample*p7)*p4
tablew iTmpSample, indx, giWave1
loop_lt indx, 1, 1024, loop
;oppdater display
chnset "tablenumber(1)", "table"
endin

;Samme som instrument 7 men skriver til giWave2
instr 8
indx = 0
loop:
iTmpIndx = (indx/1024)*p8
iTmpIndx2 pow iTmpIndx, p6
iTmpIndx3 = (1-0.25*p5)*(iTmpIndx2-0.5) + p5*(iTmpIndx2-0.5)*(iTmpIndx2-0.5)*(iTmpIndx2-0.5) 
iTmpSample SineGen 1, -iTmpIndx3
iTmpSample = tanh(iTmpSample*p7)*p4
tablew iTmpSample, indx, giWave2
loop_lt indx, 1, 1024, loop
chnset "tablenumber(2)", "table2"
endin
</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
i6 0 3600*24*7 0
</CsScore>
</CsoundSynthesizer>
