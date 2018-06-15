BEGIN MWBKID

CHAIN
  IF ~Global("MWBKKL1","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BKELDOR MWConKKL1
  @0
DO ~SetGlobal("MWBKKL1","GLOBAL",1)~
 == MWBKID
 @1
 == BKELDOR
 @2
 == MWBKID
 @3
 == BKELDOR
 @4  
END
 IF ~~ THEN REPLY @5 EXTERN MWBKID MWConKKL1a
 IF ~~ THEN REPLY @6 EXTERN BKELDOR MWConKKL1b

CHAIN IF ~Global("MWBKKL1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN MWBKID MWConKKL1a
@7
DO ~ SetGlobal("MWBKKL1","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
	 
APPEND BKELDOR
IF ~Global("MWBKKL1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN MWConKKL1b
SAY @8
IF ~~ THEN DO ~SetGlobal("MWBKKL1","GLOBAL",3) LeaveParty() 
EscapeArea()~ EXIT
END
END

CHAIN IF ~Global("MWBKMI1","GLOBAL",0)
  InParty("Minsc")
  See("Minsc")
  !StateCheck("Minsc",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKMI1
  @9
DO ~SetGlobal("MWBKMI1","GLOBAL",1)~
 == BMINSC @10
 == MWBKID @11
 == BMINSC @12 
 == MWBKID @13
EXIT

CHAIN IF ~Global("MWBKMI2","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKMI1","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BMINSC MWConKMI2
  @14 DO ~SetGlobal("MWBKMI2","GLOBAL",1)~
 == MWBKID @15
 == BMINSC @16
 == MWBKID @17
 == BMINSC @18
EXIT

CHAIN IF ~Global("MWBKMI3","LOCALS",0)
  InParty("Minsc")
  See("Minsc")
  Global("MWBKMI2","GLOBAL",1)
  !StateCheck("Minsc",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKMI3
  @19 DO ~SetGlobal("MWBKMI3","LOCALS",1)~
 == BMINSC @20 
 == MWBKID @21
 END
 IF ~~ THEN REPLY @22 EXTERN MWBKID anyway
 IF ~~ THEN REPLY @23 EXTERN MWBKID anyway
 IF ~~ THEN REPLY @24 EXTERN MWBKID anyway

CHAIN IF ~Global("MWBKMI3","LOCALS",1)
  InParty("Minsc")
  See("Minsc")
  Global("MWBKMI2","GLOBAL",1)
  !StateCheck("Minsc",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID anyway
 @25 DO ~SetGlobal("MWBKMI3","LOCALS",2)~
 = @26
 = @27
 == BMINSC @28
 == MWBKID @29
 == BMINSC @30
 == MWBKID @31
EXIT

CHAIN IF ~Global("MWBKJH1","GLOBAL",0)
  InParty("Jaheira")
  See("Jaheira")
  !StateCheck("Jaheira",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKJH1
  @32
DO ~SetGlobal("MWBKJH1","GLOBAL",1)~
 == BJAHEIR @33
 == MWBKID @34
 == BJAHEIR @35
 == MWBKID @36
 == BJAHEIR @37
 == MWBKID @38
 == BJAHEIR @39
 == MWBKID @40
 == BJAHEIR @41
 == MWBKID @42
EXIT

CHAIN   IF ~Global("MWBKJH2","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKJH1","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BJAHEIR MWConKJH2
  @43
DO ~SetGlobal("MWBKJH2","GLOBAL",1)~
 == MWBKID @44
 == BJAHEIR @45
 == MWBKID @46
 == BJAHEIR @47
 == MWBKID @48
 == BJAHEIR @49
 == MWBKID @50
 == BJAHEIR @51
 == MWBKID @52
 == BJAHEIR @53
 == MWBKID @54
EXIT

CHAIN IF ~Global("MWBKIM1","GLOBAL",0)
  InParty("Imoen2")
  See("Imoen2")
  !StateCheck("Imoen2",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKIM1
  @55 DO ~SetGlobal("MWBKIM1","GLOBAL",1)~
 == IMOEN2J @56
 == MWBKID @57
 == IMOEN2J @58
 == MWBKID @59
 == IMOEN2J @60
EXIT

CHAIN IF ~Global("MWBKIM2","LOCALS",0)
  InParty("Imoen2")
  See("Imoen2")
  Global("MWBKIM1","GLOBAL",1)
  !StateCheck("Imoen2",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKIM2
  @61
DO ~SetGlobal("MWBKIM2","LOCALS",1)~
 == IMOEN2J @62
 == MWBKID @63
 == IMOEN2J @64
 == MWBKID @65
 == IMOEN2J @66
 == MWBKID @67
EXIT

CHAIN IF ~Global("MWBKY1","LOCALS",0)
  InParty("Yoshimo")
  See("Yoshimo")
  !StateCheck("Yoshimo",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKY1
  @68
DO ~SetGlobal("MWBKY1","LOCALS",1)~
 == BYOSHIM @69
 == MWBKID @70
 == BYOSHIM @71
 == MWBKID @72
EXIT

CHAIN  IF ~Global("MWBKY2","LOCALS",0)
  InParty("Yoshimo")
  See("Yoshimo")
  Global("MWBKY1","LOCALS",1)
  !StateCheck("Yoshimo",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKY2
  @73 DO ~SetGlobal("MWBKY2","LOCALS",1)~
 == BYOSHIM @74
 == MWBKID @75
 == BYOSHIM @76
 == MWBKID @77
 == BYOSHIM @78
 == MWBKID @79
 == BYOSHIM @80
EXIT

CHAIN  IF ~Global("MWBKY3","LOCALS",0)
  InParty("Yoshimo")
  See("Yoshimo")
  Global("MWBKY2","LOCALS",1)
  !StateCheck("Yoshimo",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKY3
  @81 DO ~SetGlobal("MWBKY3","LOCALS",1)~
 == BYOSHIM @82
 == MWBKID @83
 == BYOSHIM @84
 == MWBKID @85
 == BYOSHIM @86
 == MWBKID @87
 == BYOSHIM @88
EXIT

CHAIN IF ~Global("MWBKAE1","GLOBAL",0)
  InParty("Aerie")
  See("Aerie")
  !StateCheck("Aerie",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKAE1
  @89
DO ~SetGlobal("MWBKAE1","GLOBAL",1)~
== BAERIE @90
 == MWBKID @91
 == BAERIE @92
 == MWBKID @93
 == BAERIE @94
 END
 IF ~~ THEN REPLY @95 EXIT
 IF ~~ THEN REPLY @96 EXIT
 IF ~~ THEN REPLY @97 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT

CHAIN  IF ~Global("MWBKAE2","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKAE1","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BAERIE MWConKAE2
  @98DO ~SetGlobal("MWBKAE2","GLOBAL",1)~
 == MWBKID @99
 == BAERIE @100
 == MWBKID @101
 == BAERIE @102
 == MWBKID @103
 == BAERIE @104
 == MWBKID @105
EXIT

CHAIN IF ~Global("MWBKAE3","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKAE1","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKAE3
  @106
DO ~SetGlobal("MWBKAE3","GLOBAL",1)~
 == BAERIE @107
 == MWBKID @108
 = @109
 == BAERIE @110
 == MWBKID @111
= @112
= @113
 == BAERIE @114
 == MWBKID @115
 == BAERIE @116
 == MWBKID @117
EXIT

CHAIN  IF ~Global("MWBKKO1","GLOBAL",0)
  InParty("Korgan")
  See("Korgan")
  !StateCheck("Korgan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKKO1
  @118 DO ~SetGlobal("MWBKKO1","GLOBAL",1)~
 == BKORGAN @119
 == MWBKID @120
 == BKORGAN @121
 == MWBKID
 @122
 =
 @123
 == BKORGAN @124
EXIT

CHAIN  IF ~Global("MWBKKO2","GLOBAL",0)
  InParty("Korgan")
  See("Korgan")
  Global("MWBKKO1","GLOBAL",1)
  !StateCheck("Korgan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKKO2
  @55 DO ~SetGlobal("MWBKKO2","GLOBAL",1)~
 == BKORGAN  @125
 == MWBKID @126
 == BKORGAN @127
 == MWBKID @128
 == BKORGAN @129
 == MWBKID @130
 == BKORGAN @131
EXIT

CHAIN  IF ~Global("MWBKKO3","GLOBAL",0)
  InParty("Korgan")
  See("Korgan")
  Global("MWBKKO2","GLOBAL",1)
  !StateCheck("Korgan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKKO3
  @132 DO ~SetGlobal("MWBKKO3","GLOBAL",1)~
 == BKORGAN @133
 END
 IF ~~ THEN REPLY @134 EXTERN BKORGAN MWConKKO3a
 IF ~~ THEN REPLY @135 EXTERN BKORGAN MWConKKO3a
 IF ~~ THEN REPLY @136 DO ~SetGlobal("KorMDKKid","GLOBAL",1)~ EXTERN BKORGAN MWConKKO3a

APPEND BKORGAN
 IF ~Global("MWBKKO3","GLOBAL",1)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BEGIN MWConKKO3a
 SAY @137
 IF ~~ THEN DO ~SetGlobal("MWBKKO3","GLOBAL",2)~ EXIT
END
END

APPEND KORGANJ
 IF ~Global("KorMDKKid","GLOBAL",2)
  Dead("MWKido")~ THEN BEGIN MWConKKO3b
 SAY @138
  IF ~~ THEN REPLY @139 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO getnewslave
  IF ~~ THEN REPLY @140 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO nolawhere
  IF ~~ THEN REPLY @141 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO getnewslave
  IF ~~ THEN REPLY @142 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO doneanddone
  IF ~~ THEN REPLY @143 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO doneanddone
  IF ~Dead("korshaq")~ THEN REPLY @144 DO ~SetGlobal("KorMDKKid","GLOBAL",3) AddXPObject("Korgan",5000)~ GOTO h2oinveins
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN getnewslave
 SAY @145
  IF ~~ THEN REPLY @146 GOTO willkillhim
  IF ~~ THEN REPLY @147 GOTO willkillhim
  IF ~PartyGoldGT(999)~ THEN REPLY @148 GOTO takeshare
  IF ~PartyGoldLT(999)~ THEN REPLY @148 GOTO simplyleave
  IF ~~ THEN REPLY @149 GOTO doneanddone
  IF ~~ THEN REPLY @150 GOTO doneanddone
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN nolawhere
 SAY @151
  IF ~PartyGoldGT(999)~ THEN REPLY @152 GOTO takeshare
  IF ~PartyGoldLT(999)~ THEN REPLY @152 GOTO simplyleave
  IF ~~ THEN REPLY @153 GOTO willkillhim
  IF ~~ THEN REPLY @154 GOTO doneanddone
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN willkillhim
 SAY @155
  IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @156 GOTO nokormdkkid
  IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @156 GOTO simplyleave
  IF ~~ THEN REPLY @157 GOTO doneanddone
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN takeshare
 SAY @158
  IF ~~ THEN DO ~TakePartyGold("1000") LeaveParty() EscapeArea() SetGlobal("KorMDKKid","GLOBAL",4) RestParty()~ EXIT
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN simplyleave
 SAY @159
  IF ~~ THEN DO ~LeaveParty() EscapeArea() SetGlobal("KorMDKKid","GLOBAL",4) RestParty()~ EXIT
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN doneanddone
 SAY @160
  IF ~~ THEN DO ~ActionOverride("MWKido",LeaveParty()) SetGlobal("KorMDKKid","GLOBAL",5) ReputationInc(-1) RestParty()~ EXIT
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN h2oinveins
 SAY @161 
  IF ~~ THEN DO ~LeaveParty() SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",950,1867,14)  SetGlobal("KorMDKKid","GLOBAL",4) RestParty()~ EXIT
END

IF ~Global("KorMDKKid","GLOBAL",3)~ THEN BEGIN nokormdkkid
 SAY @162
=
@163
  IF ~~ THEN DO ~SetGlobal("KorMDKKid","GLOBAL",4) RestParty()~ EXIT
END
END

CHAIN
  IF ~Global("MWBKJ1","LOCALS",0)
  InParty("Jan")
  See("Jan")
  !StateCheck("Jan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKJ1
  @164
DO ~SetGlobal("MWBKJ1","LOCALS",1)~
 == BJAN
 @165
 == MWBKID
 @166
 == BJAN
 @167
 == MWBKID
 @168
EXIT

CHAIN
  IF ~Global("MWBKJ2","GLOBAL",0)
  InParty("Jan")
  See("Jan")
  Global("MWBKJ1","LOCALS",1)
  !StateCheck("Jan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKJ2
  @169
DO ~SetGlobal("MWBKJ2","GLOBAL",1)~
 == BJAN
 @170
 == MWBKID
 @171
 == BJAN
 @172
 == MWBKID
 @173
 == BJAN
 @174
 == MWBKID
 @175
 == BJAN
 @176
EXIT

CHAIN
  IF ~Global("MWBKJ3","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKJ2","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BJAN MWConKJ3
  @177
DO ~SetGlobal("MWConKJ3","GLOBAL",1)~
 == MWBKID
 @178
 == BJAN
 @179
 == MWBKID
 @180
 == BJAN
 @181
 == MWBKID
 @182
EXIT

CHAIN
  IF ~Global("MWBKV1","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BVICONI MWConKV1
  @183
DO ~SetGlobal("MWBKV1","GLOBAL",1)~
 == MWBKID
 @184
 == BVICONI
 @185
 == MWBKID
 @186
 == BVICONI
 @187
EXIT

CHAIN
  IF ~Global("MWBKV2","LOCALS",0)
  InParty("Viconia")
  See("Viconia")
  Global("MWBKV1","GLOBAL",1)
  !StateCheck("Viconia",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKV2
  @188
DO ~SetGlobal("MWBKV2","LOCALS",1)~
 == BVICONI
 @189
 == MWBKID
 @190
 == BVICONI
 @191
 == MWBKID
 @192
 == BVICONI
 @58
 == MWBKID
 @193
 == BVICONI
 @194
 == MWBKID
 @195
EXIT

CHAIN
  IF ~Global("MWBKV3","LOCALS",0)
  InParty("Viconia")
  See("Viconia")
  Global("MWBKV2","LOCALS",1)
  !StateCheck("Viconia",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKV3
  @196
DO ~SetGlobal("MWBKV3","LOCALS",1)~
 == BVICONI
 @197
 == MWBKID
 @198
 == BVICONI
 @199
 == MWBKID
 @200
 == BVICONI
 @201
EXIT

CHAIN
  IF ~Global("MWBKH1","LOCALS",0)
  InParty("HaerDalis")
  See("HaerDalis")
  !StateCheck("HaerDalis",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKH1
  @202
DO ~SetGlobal("MWBKH1","LOCALS",1)~
 == BHAERDA
 @203
 == MWBKID
 @204
 == BHAERDA
 @205
 == MWBKID
 @206
 == BHAERDA
 @207
 == MWBKID
 @208
 == BHAERDA
 @209
 == MWBKID
 @210
EXIT

CHAIN
  IF ~Global("MWBKH2","LOCALS",0)
  InParty("HaerDalis")
  See("HaerDalis")
  Global("MWBKH1","LOCALS",1)
  !StateCheck("HaerDalis",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKH2
  @211
DO ~SetGlobal("MWBKH2","LOCALS",1)~
 == BHAERDA
 @212
 == MWBKID
 @213
 == BHAERDA
 @214
 == MWBKID
 @215
 == BHAERDA
 @216
 == MWBKID
 @217
 == BHAERDA
 @218
 == MWBKID
 @219
 == BHAERDA
 @220
 == MWBKID
 @221
 == BHAERDA
 @222
 == MWBKID
 @223
 == BHAERDA
 @224
EXIT

CHAIN
  IF ~Global("MWBKH3","LOCALS",0)
  InParty("HaerDalis")
  See("HaerDalis")
  Global("MWBKH2","LOCALS",1)
  !Global("EnteredThePortal","AR0510",1)
  !StateCheck("HaerDalis",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKH3
  @225
DO ~SetGlobal("MWBKH3","LOCALS",1)~
 == BHAERDA
 @226
 == MWBKID
 @227
 == BHAERDA
 @228
 == MWBKID
 @229
 == BHAERDA
 @230
 == MWBKID
 @231
 == BHAERDA
 @232
EXIT

CHAIN
  IF ~Global("MWBKE1","LOCALS",0)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKE1
  @233
DO ~SetGlobal("MWBKE1","LOCALS",1)~
 == BEDWIN
 @234
 == MWBKID
 @235
 == BEDWIN
 @236
 == MWBKID
 @237
 == BEDWIN
 @238
 == MWBKID
 @239
 == BEDWIN
 @240
 == MWBKID
 @241
 == BEDWIN
 @242
 == MWBKID
 @243
EXIT

CHAIN
  IF ~Global("MWBKE2","LOCALS",0)
  InParty("Edwin")
  See("Edwin")
  Global("MWBKE1","LOCALS",1)
  !StateCheck("Edwin",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKE2
  @244
DO ~SetGlobal("MWBKE2","LOCALS",1)~
 == BEDWIN
 @245
 == MWBKID
 @246
 == BEDWIN
 @247
 == MWBKID
 @248
EXIT

CHAIN
  IF ~Global("MWBKE3","LOCALS",0)
  InParty("Edwin")
  See("Edwin")
  Global("MWBKE2","LOCALS",1)
  !StateCheck("Edwin",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKE3
  @249
DO ~SetGlobal("MWBKE3","LOCALS",1)~
 == BEDWIN
 @250
 == MWBKID
 @251
 == BEDWIN
 @252
 == MWBKID
 @253
 == BEDWIN
 @254
 =
 @255
 == MWBKID
 @256
 == BEDWIN
 @257
 == MWBKID
 @258
 == BEDWIN
 @259
 == MWBKID
 @260
 == BEDWIN
 @261
EXIT

CHAIN
  IF ~Global("MWBKE4","LOCALS",0)
  InParty("Edwin")
  See("Edwin")
  Gender("Edwin",FEMALE)
  !StateCheck("Edwin",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKE4
  @262
DO ~SetGlobal("MWBKE4","LOCALS",1)~
 == BEDWIN
 @263
 == MWBKID
 @264
 == BEDWIN
 @265
EXIT

CHAIN
  IF ~Global("MWBKMA1","LOCALS",0)
  InParty("Mazzy")
  See("Mazzy")
  !StateCheck("Mazzy",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKMA1
  @266
DO ~SetGlobal("MWBKMA1","LOCALS",1)~
 == BMAZZY
 @267
 == MWBKID
 @268
 == BNALIA IF ~InParty("Nalia")~ THEN 
 @269
 == BMAZZY
 @270
 == MWBKID
 @271
 == BMAZZY
 @272
 == MWBKID
 @273
 == BMAZZY
 @274
 == MWBKID
 @275
 == BMAZZY
 @276
EXIT

CHAIN
  IF ~Global("MWBKMA2","LOCALS",0)
  InParty("Mazzy")
  See("Mazzy")
  Global("MWBKMA1","LOCALS",1)
  !StateCheck("Mazzy",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKMA2
  @277
DO ~SetGlobal("MWBKMA2","LOCALS",1)~
 == BMAZZY
 @278
 == MWBKID
 @279
 == BMAZZY
 @280
 == MWBKID
 @281
 == BMAZZY
 @282
 == MWBKID
 @283
 == BMAZZY
 @284
 == MWBKID
 @285
 == BMAZZY
 @286
 == MWBKID
 @287
 == BMAZZY
 @288
EXIT

CHAIN
  IF ~Global("MWBKC1","LOCALS",0)
  InParty("Cernd")
  See("Cernd")
  !StateCheck("Cernd",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKC1
  @289
DO ~SetGlobal("MWBKC1","LOCALS",1)~
 == BCERND
 @290
 == MWBKID
 @291
 == BCERND
 @292
 == MWBKID
 @293
EXIT

CHAIN
  IF ~Global("MWBKC2","LOCALS",0)
  InParty("Cernd")
  See("Cernd")
  Global("CerndPlot","GLOBAL",1)
  Global("MWBKC1","LOCALS",1)
  !StateCheck("Cernd",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKC2
  @294
DO ~SetGlobal("MWBKC2","LOCALS",1)~
 == BCERND
 @295
 == MWBKID
 @296
 == BCERND
 @297
 == MWBKID
 @298
 == BCERND
 @299
EXIT

CHAIN
  IF ~Global("MWBKC3","LOCALS",0)
  InParty("Cernd")
  See("Cernd")
  Global("MWBKC1","LOCALS",1)
  !StateCheck("Cernd",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKC3
  @300
DO ~SetGlobal("MWBKC3","LOCALS",1)~
 == BCERND
 @78
 == MWBKID
 @301
 == BCERND
 @302
 == MWBKID
 @303
EXIT

CHAIN
  IF ~Global("MWBKAN1","LOCALS",0)
  InParty("Anomen")
  See("Anomen")
  !StateCheck("Anomen",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKAN1
  @304
DO ~SetGlobal("MWBKAN1","LOCALS",1)~
 == BANOMEN
 @305
 == MWBKID
 @306
 == BANOMEN
 @307
 == MWBKID
 @308
 == BANOMEN
 @309
 == MWBKID
 @310
 == BANOMEN
 @311
 == MWBKID
 @312
 == BANOMEN
 @313
 == MWBKID
 @314
EXIT

CHAIN
  IF ~Global("MWBKAN2","LOCALS",0)
  InParty("Anomen")
  See("Anomen")
  Global("MWBKAN1","LOCALS",1)
  !StateCheck("Anomen",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKAN2
  @315
DO ~SetGlobal("MWBKAN2","LOCALS",1)~
 == BANOMEN
 @316
 == MWBKID
 @317
 == BANOMEN
 @318
 == MWBKID
 @319
 == BANOMEN
 @320
 == MWBKID
 @321
 == BANOMEN
 @322
 == MWBKID
 @323
 == BANOMEN
 @324
EXIT

CHAIN
  IF ~Global("KandAcombat","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("AnomenIsKnight","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BANOMEN MWConKANC
  @325
DO ~SetGlobal("KandAcombat","GLOBAL",1)~
 == MWBKID
 @326
 == BANOMEN
 @327
 == MWBKID
 @328
 == BANOMEN
 @329 DO ~ClearAllActions() ActionOverride("Anomen",Attack("MWKido")) ActionOverride("MWKido",Attack("Anomen"))~
EXIT

APPEND ANOMENJ
IF ~Global("finalconAak","GLOBAL",1)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat","GLOBAL",1)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BEGIN lastquabkijo
 SAY @330
  IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @331 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO iundnow
  IF ~~ THEN REPLY @332 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO iundnow
  IF ~~ THEN REPLY @333 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO iundnow
  IF ~~ THEN REPLY @334 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO iundnow
  IF ~~ THEN REPLY @335 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO Anogoaway
  IF ~~ THEN REPLY @336 DO ~SetGlobal("finalconAak","GLOBAL",2)~ GOTO fightpla1
END

IF ~Global("Anofightplay","GLOBAL",0)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat","GLOBAL",1)
  Global("finalconAak","GLOBAL",2)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  ~ THEN BEGIN fightpla1
 SAY @337
  IF ~~ THEN DO ~SetGlobal("Anofightplay","GLOBAL",1) ClearAllActions() Attack(Player1)~ EXIT
END

IF ~Global("Anomundnow","GLOBAL",0)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat","GLOBAL",1)
  Global("finalconAak","GLOBAL",2)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN Anogoaway
 SAY @338
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("Anomundnow","GLOBAL",0)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat","GLOBAL",1)
  Global("finalconAak","GLOBAL",2)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN iundnow
 SAY @339
  IF ~~ THEN DO ~SetGlobal("Anomundnow","GLOBAL",1)~ EXIT
END
END

CHAIN
  IF ~Global("MWBKAN3","LOCALS",0)
  InParty("Anomen")
  See("Anomen")
  Global("AnomenIsNotKnight","GLOBAL",1)
  !StateCheck("Anomen",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKAN3
  @340
DO ~SetGlobal("MWBKAN3","LOCALS",1)~
 == BANOMEN
 @341
 == MWBKID
 @342
 == BANOMEN
 @343
 == MWBKID
 @344
EXIT

CHAIN
  IF ~Global("MWBKVA1","GLOBAL",0)
  InParty("Valygar")
  See("Valygar")
  !StateCheck("Valygar",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID MWConKVA1
  @345
DO ~SetGlobal("MWBKVA1","GLOBAL",1)~
 == BVALYGA
 @346
 == MWBKID
 @347
 == BVALYGA
 @348
 == MWBKID
 @349
 == BVALYGA
 @350
 == MWBKID
 @351
EXIT

CHAIN
  IF ~Global("MWBKVA2","GLOBAL",0)
  InParty("Valygar")
  See("Valygar")
  Global("MWBKVA1","GLOBAL",1)
  !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN MWBKID MWConKVA2
@352 DO ~SetGlobal("MWBKVA2","GLOBAL",1)~
= @353
=@354
= @355
= @356
= @357
= @358
EXIT

CHAIN
  IF ~Global("MWBKVA3","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKVA2","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BVALYGA MWConKVA3
  @359
DO ~SetGlobal("MWBKVA3","GLOBAL",1)~
 == MWBKID
 @360
 == BVALYGA
 @361
 == MWBKID
 @362
 == BVALYGA
 @363
 == MWBKID
 @364
 == BVALYGA
 @365
 == MWBKID
 @366
 EXIT

CHAIN
  IF ~Global("MWBKN1","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BNALIA MWConKN1
  @367
DO ~SetGlobal("MWBKN1","GLOBAL",1)~
 == MWBKID
 @368
 == BNALIA
 @369
 == MWBKID
 @370
 == BNALIA
 @371
 == MWBKID
 @372
 == BNALIA
 @373
EXIT

CHAIN
  IF ~Global("MWBKN2","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKN1","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BNALIA MWConKN2
  @374
DO ~SetGlobal("MWBKN2","GLOBAL",1)~
 == MWBKID
 @375
 == BNALIA
 @376
 == MWBKID
 @377
 == BNALIA
 @378
 == BJAHEIR IF ~InParty("Jaheira")~ THEN 
 @379
 == MWBKID
 @380
EXIT
