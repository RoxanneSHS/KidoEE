BEGIN MWKIDJ25

IF ~Global("kidoknowbal","GLOBAL",1) OR(2) !InParty("HaerDalis") Dead("HaerDalis")~ THEN BEGIN Kidoknowbalt 
  SAY @0
IF ~~ THEN DO ~SetGlobal("kidoknowbal","GLOBAL",2)~ EXIT
END

IF ~Global("kidoknowbal","GLOBAL",1) InParty("HaerDalis") !Dead("HaerDalis")~ THEN BEGIN Kidoknowbalt2 
  SAY @0
IF ~~ THEN EXTERN HAERD25J HaerKidoBaltre
END

IF ~Global("kidohistory25","GLOBAL",1)~ THEN BEGIN needexplanation
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("kidohistory25","GLOBAL",2)~ GOTO trytoshort
  IF ~~ THEN REPLY @3 DO ~SetGlobal("kidohistory25","GLOBAL",2)~ GOTO trytoshort
  IF ~~ THEN REPLY @4 DO ~SetGlobal("kidohistory25","GLOBAL",2)~ GOTO tale
  IF ~~ THEN REPLY @5 DO ~SetGlobal("kidohistory25","GLOBAL",2)~ GOTO quickend
END

IF ~~ THEN BEGIN trytoshort
  SAY @6
  IF ~~ THEN REPLY @7 GOTO tale
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @8 GOTO extraversion
END

IF ~~ THEN BEGIN tale
  SAY @9
  =  @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extraversion
  SAY @11 
  IF ~~ THEN REPLY @12 DO ~SetGlobal("knowKihome","GLOBAL",1)~ GOTO conextraversion
END

IF ~~ THEN BEGIN conextraversion
  SAY @13
  IF ~~ THEN REPLY @14 GOTO tale
END

IF ~~ THEN BEGIN quickend
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Global("weareone25","GLOBAL",1)~ THEN BEGIN childofcyrica
  SAY @16 
  IF ~~ THEN REPLY @17 DO ~SetGlobal("weareone25","GLOBAL",2)~ GOTO difopinion
  IF ~~ THEN REPLY @18 DO ~SetGlobal("weareone25","GLOBAL",2)~ GOTO greypath
  IF ~~ THEN REPLY @19 DO ~SetGlobal("weareone25","GLOBAL",2)~ GOTO cheerus
  IF ~~ THEN REPLY @20 DO ~SetGlobal("weareone2","LOCALS",1)~ GOTO knowalot
  IF ~~ THEN REPLY @21 DO ~SetGlobal("weareone25","GLOBAL",2)~ GOTO childofcyric
END

IF ~~ THEN BEGIN knowalot
  SAY @22
  IF ~~ THEN REPLY @23 GOTO difopinion
  IF ~~ THEN REPLY @24 GOTO greypath
  IF ~~ THEN REPLY @25 GOTO cheerus
  IF ~~ THEN REPLY @26 GOTO childofcyric
END

IF ~~ THEN BEGIN difopinion
  SAY @27
  IF ~~ THEN REPLY @28 GOTO angryend
  IF ~~ THEN REPLY @29 GOTO greypath 
END

IF ~~ THEN BEGIN greypath
  SAY @30
  IF ~~ THEN REPLY @31 GOTO angryend
  IF ~~ THEN REPLY @32 GOTO comeback 
  IF ~~ THEN REPLY @33 GOTO cheerus
END

IF ~~ THEN BEGIN cheerus
  SAY @34
  IF ~~ THEN REPLY @35 GOTO happyend
  IF ~~ THEN REPLY @36 GOTO childofcyrice
END

IF ~~ THEN BEGIN childofcyric
  SAY @37
  IF ~~ THEN REPLY @38 GOTO difopinion
  IF ~~ THEN REPLY @39 GOTO greypath
  IF ~~ THEN REPLY @40 GOTO myfate
  IF ~~ THEN REPLY @41 GOTO happyend
  IF ~~ THEN REPLY @42 GOTO okayend
END

IF ~~ THEN BEGIN childofcyrice
  SAY @43
  IF ~~ THEN REPLY @44 GOTO okayend
  IF ~~ THEN REPLY @45 GOTO happyend
END

IF ~~ THEN BEGIN myfate
  SAY @46
  IF ~~ THEN REPLY @47 GOTO difopinion 
  IF ~~ THEN REPLY @48 GOTO greypath 
  IF ~~ THEN REPLY @49 GOTO okayend
  IF ~~ THEN REPLY @50 GOTO okayend
  IF ~~ THEN REPLY @51 GOTO happyend
  IF ~CheckStatGT(PLAYER1,12,INT)~ THEN REPLY @52 GOTO detail
END

IF ~~ THEN BEGIN detail
  SAY @53
  IF ~~ THEN REPLY @54 GOTO difopinion
  IF ~~ THEN REPLY @55 GOTO comeback
  IF ~~ THEN REPLY @56 GOTO okayend 
END

IF ~~ THEN BEGIN angryend
  SAY @57
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN comeback
  SAY @58
  IF ~~ THEN REPLY @59 DO ~SetGlobal("Undecided25","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN okayend
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN happyend
  SAY @61
  IF ~~ THEN EXIT
END

IF ~Global("secweareone25","GLOBAL",1)~ THEN BEGIN retryconvincepl
  SAY @62 
  IF ~~ THEN REPLY @63 DO ~SetGlobal("secweareone25","GLOBAL",2)~ GOTO difopinionnew
  IF ~~ THEN REPLY @64 DO ~SetGlobal("secweareone25","GLOBAL",2)~ GOTO kidoquit
  IF ~~ THEN REPLY @65 DO ~SetGlobal("secweareone25","GLOBAL",2)~ GOTO cheerus
END

IF ~~ THEN BEGIN difopinionnew
  SAY @66
  IF ~~ THEN REPLY @67 GOTO angryend
  IF ~~ THEN REPLY @68 GOTO kidoquit
  IF ~~ THEN REPLY @69 GOTO cheerus
END

IF ~~ THEN BEGIN kidoquit
  SAY @70
  IF ~~ THEN EXIT
END

IF ~Global("plansunfold25","GLOBAL",1)~ THEN BEGIN spoketomuch
  SAY @71 
  IF ~~ THEN REPLY @72 DO ~SetGlobal("plansunfold25","GLOBAL",2)~ GOTO rapidend
  IF ~~ THEN REPLY @73 DO ~SetGlobal("plansunfold25","GLOBAL",2)~ GOTO rapidend
  IF ~~ THEN REPLY @74 DO ~SetGlobal("plansunfold25","GLOBAL",2)~ GOTO nearlythere
  IF ~CheckStatGT(PLAYER1,12,INT)~ THEN REPLY @75 DO ~SetGlobal("plansunfold25","GLOBAL",2)~ GOTO examination
  IF ~Class(Player1,CLERIC)~ THEN REPLY @76 DO ~SetGlobal("plansunfold25","GLOBAL",2)~ GOTO clericpath
END

IF ~~ THEN BEGIN nearlythere 
  SAY @77
  IF ~~ THEN REPLY @78 GOTO pleasure
  IF ~~ THEN REPLY @79 GOTO unpleasant 
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @80 GOTO morethere
END

IF ~~ THEN BEGIN morethere
  SAY @81
  IF ~~ THEN REPLY @82 GOTO unpleasant 
  IF ~~ THEN REPLY @83 GOTO pleasure 
  IF ~~ THEN REPLY @84 GOTO nonono 
END

IF ~~ THEN BEGIN examination
  SAY @85
  IF ~~ THEN REPLY @86 GOTO murder
  IF ~~ THEN REPLY @87 GOTO murder
END

IF ~~ THEN BEGIN clericpath
  SAY @88
  IF ~~ THEN REPLY @89 GOTO murder
  IF ~~ THEN REPLY @90 GOTO kidoagenda
END

IF ~~ THEN BEGIN murder
  SAY @91
  IF ~~ THEN REPLY @92 GOTO kidoagenda
  IF ~~ THEN REPLY @93 GOTO kidoagenda
  IF ~~ THEN REPLY @94 GOTO diechild
END

IF ~~ THEN BEGIN kidoagenda
  SAY @95
  IF ~~ THEN REPLY @96 GOTO diechild
  IF ~~ THEN REPLY @97 GOTO diebhaal
  IF ~~ THEN REPLY @98 GOTO diebhaal
END

IF ~~ THEN BEGIN diebhaal
  SAY @99
  IF ~~ THEN REPLY @100 GOTO kidosad 
  IF ~~ THEN REPLY @101 GOTO kidohappy 
END

IF ~~ THEN BEGIN rapidend
  SAY @102
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pleasure
  SAY @103
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN unpleasant
  SAY @104
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nonono
  SAY @105
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN diechild
  SAY @106
  IF ~~ THEN DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN kidosad
  SAY @107
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kidohappy
  SAY @108
  IF ~~ THEN EXIT
END

IF ~Global("Kidoishome","GLOBAL",1)~ THEN BEGIN welcomeback1
  SAY @109
  IF ~Global("knowKihome","GLOBAL",1)~ THEN REPLY @110 DO ~SetGlobal("Kidoishome","GLOBAL",2)~ GOTO welcomeback2
  IF ~!Global("knowKihome","GLOBAL",1)~ THEN REPLY @111 DO ~SetGlobal("Kidoishome","GLOBAL",2)~ GOTO welcomeback3
  IF ~~ THEN REPLY @112 DO ~SetGlobal("Kidoishome","GLOBAL",2)~ GOTO welcomeback4
END

IF ~~ THEN BEGIN welcomeback2
  SAY @113
  IF ~~ THEN REPLY @114 EXIT
  IF ~~ THEN REPLY @115 GOTO welcomeback5 
  IF ~~ THEN REPLY @116 GOTO welcomeback4
END

IF ~~ THEN BEGIN welcomeback3
  SAY @117
  IF ~~ THEN REPLY @118 GOTO welcomeback6
  IF ~~ THEN REPLY @119 GOTO welcomeback2
  IF ~~ THEN REPLY @120 GOTO welcomeback4
END

IF ~~ THEN BEGIN welcomeback4
  SAY @121
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN welcomeback5
  SAY @122
  IF ~~ THEN REPLY @115 GOTO welcomeback7
  IF ~~ THEN REPLY @123 EXIT
  IF ~~ THEN REPLY @124 GOTO welcomeback7
END

IF ~~ THEN BEGIN welcomeback6
  SAY @125
  IF ~~ THEN REPLY @126 GOTO welcomeback5
  IF ~~ THEN REPLY @127 EXIT
  IF ~~ THEN REPLY @128 GOTO welcomeback5
END

IF ~~ THEN BEGIN welcomeback7
  SAY @129
  IF ~~ THEN REPLY @130 GOTO welcomeback4
  IF ~~ THEN REPLY @131 EXIT
  IF ~~ THEN REPLY @132 EXIT
  IF ~~ THEN REPLY @133 GOTO welcomeback4
END

IF ~Global("notsopitoresque","GLOBAL",1)~ THEN BEGIN kidotellsara
  SAY @134 
= @135
  IF ~~ THEN DO ~SetGlobal("notsopitoresque","GLOBAL",2)~ EXIT
END

IF ~Global("finalconKaAn25","GLOBAL",1)~ THEN BEGIN lastquabAnjo25
 SAY @136 
  IF ~~ THEN REPLY @137 DO ~SetGlobal("finalconKaAn25","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @138 DO ~SetGlobal("finalconKaAn25","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @139 DO ~SetGlobal("finalconKaAn25","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @140 DO ~SetGlobal("finalconKaAn25","GLOBAL",2)~ EXTERN MWKidP25 0
  IF ~!Gender(Player1,MALE)~ THEN REPLY @141 DO ~SetGlobal("finalconKaAn25","GLOBAL",2)~ GOTO dieplayer
END

IF ~~ THEN BEGIN dieplayer
  SAY @142
  IF ~~ THEN DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN ihearyaplay
  SAY @143
  IF ~~ THEN EXIT
END

IF ~InParty(Player1)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN notthatlore25
  SAY @144
  IF ~~ THEN REPLY @145 EXTERN GORMAD1 16
  IF ~~ THEN REPLY @146 EXTERN GORMAD1 16
  IF ~~ THEN REPLY @147 EXTERN GORMAD1 17
END

IF ~InParty(Player1)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN kidonotrustme
  SAY @148
  IF ~~ THEN EXTERN SARMEL01 17
END

IF ~InParty(Player1)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN kidonotrustme2
  SAY @149
  IF ~~ THEN EXTERN SARMEL01 17
END

EXTEND_TOP GORCAR 18 #3
IF ~InParty("MWKido") See("MWKido")~ 
THEN REPLY @150
EXTERN MWKIDJ25 notthatlore25
END

INTERJECT SARMEL01 16 whatisnew
 == MWKIDJ25 IF ~InParty("MWKido") !Dead("MWKido")~ THEN
 @151
END
 IF ~~ THEN REPLY @152 EXTERN SARMEL01 17
 IF ~~ THEN REPLY @153 EXTERN SARMEL01 17
 IF ~Gender(Player1,MALE)~ THEN REPLY @154 EXTERN MWKIDJ25 kidonotrustme
 IF ~!Gender(Player1,MALE)~ THEN REPLY @154 EXTERN MWKIDJ25 kidonotrustme2
 IF ~~ THEN REPLY @155 EXTERN SARMEL01 17

INTERJECT SARTRO03 0 gromniris
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido") !Race(Player1,HALFORC) !InParty("MWAriena")~ THEN
 @156
COPY_TRANS SARTRO03 1

I_C_T 25SPELL 21 notellhectan
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @157 DO ~SetGlobal("lazarusscroll","GLOBAL",1)~
END

I_C_T GORMAD1 8 scaryakkman25
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @158
 == GORMAD1
 @159 DO ~RunAwayFrom(LastTalkedToBy,30)~
 == MWKIDJ25
 @160
END

I_C_T GORCAR 4 Lumthemad25
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @161
END

EXTEND_BOTTOM SARVOLO 9 #7
IF ~InParty("MWKido")~ THEN REPLY @162 GOTO volokido
END

CHAIN SARVOLO volokido
@163
== MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN @164
EXTERN SARVOLO 9

INTERJECT AMTGEN01 0 hidege
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN 
 @165
 == AMTGEN01
 @166
 == MWKIDJ25
 @167
 == AMTGEN01
 @168 
END
 IF ~ReputationGT(Player1,14)~ THEN REPLY @169 EXTERN AMTGEN01 1
 IF ~~ THEN REPLY @170 EXTERN AMTGEN01 1
 IF ~~ THEN REPLY @171 EXTERN AMTGEN01 2
 IF ~~ THEN REPLY @172 EXTERN AMTGEN01 1
 IF ~ReputationLT(Player1,5)~ THEN REPLY @173 EXTERN AMTGEN01 1

I_C_T AMTGEN01 1 bydege
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @174
END

INTERJECT HGNYA01 25 betrayelfrse
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @175
 == HGNYA01
 @176
 =
 @177
COPY_TRANS HGNYA01 25

I_C_T AMCST04 4 Iknowoncaga
 == MWKIDJ25 IF ~Global("kidoknowbal","GLOBAL",2) !Global("Iknowoncaga2","LOCALS",1) !Global("Iknowoncaga3","LOCALS",1)~ THEN
 @178
END

I_C_T AMBAR01 10 Iknowoncaga2
 == MWKIDJ25 IF ~Global("kidoknowbal","GLOBAL",2) !Global("Iknowoncaga","LOCALS",1) !Global("Iknowoncaga3","LOCALS",1)~ THEN
 @178
END

I_C_T AMMAN01 1 Iknowoncag3
 == MWKIDJ25 IF ~Global("kidoknowbal","GLOBAL",2) !Global("Iknowoncaga","LOCALS",1) !Global("Iknowoncaga2","LOCALS",1)~ THEN
 @179
 == AMMAN01
 @180
 == MWKIDJ25
 @181
END

I_C_T AMCST04 4 Iknowoncaga4
 == MWKIDJ25 IF ~ OR(2) Global("Iknowoncaga2","LOCALS",1) Global("Iknowoncaga3","LOCALS",1)~ THEN
 @182
END

I_C_T AMMAN01 1 Iknowoncag5
 == MWKIDJ25 IF ~OR(2) Global("Iknowoncaga","LOCALS",1) Global("Iknowoncaga2","LOCALS",1)~ THEN
 @183
 == AMMAN01
 @180
 == MWKIDJ25
 @184
END

I_C_T AMBAR01 10 Iknowoncaga6
 == MWKIDJ25 IF ~ OR(2) Global("Iknowoncaga","LOCALS",1) Global("Iknowoncaga3","LOCALS",1)~ THEN
 @185
END

I_C_T AMBOY01 0 corruptamboy
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @186
 == AMBOY01
 @187
 == MWKIDJ25
 @188
 == AMBOY01
 @189
END

INTERJECT AMSAEMON 3 ahhacifohi
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @190
COPY_TRANS AMMERC01 2

INTERJECT AMSAEMON 6 useusagainhedid
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @191
COPY_TRANS AMMERC01 5

I_C_T2 CHALCY01 0 kidocyricid
 == CHALCY01 IF ~InParty("MWKido") See("MWKido")~ THEN
 @192
 == MWKIDJ25
 @193 DO ~SetGlobal("BeginChallenge4","GLOBAL",3)~
END

EXTEND_BOTTOM CHALCY01 2 #5
IF ~!Class(Player1,CLERIC_ALL) CheckStatGT(Player1,8,WIS) CheckStatGT(Player1,12,INT) InParty("MWKido")~ 
THEN REPLY @194 EXTERN CHALCY01 4
END

I_C_T2 FINSOL01 27 Kidosaynoascend
 == MWKIDJ25 IF ~InParty("MWKido") See("MWKido")~ THEN
 @195
 =
 @196
 == MWKIDJ25 IF ~Global("RiftGo","GLOBAL",1)~ THEN
 @197
 == MWKIDJ25 IF ~!Global("RiftGo","GLOBAL",1)~ THEN
 @198
 == MWKIDJ25 IF ~Alignment(Player1,MASK_GOOD)~ THEN
 @199
 == MWKIDJ25 IF ~!Alignment(Player1,MASK_GOOD)~ THEN
 @200
 == MWKIDJ25 IF ~Alignment(Player1,MASK_GOOD)~ THEN
 @201
 == MWKIDJ25 IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN
 @202
 == MWKIDJ25 IF ~Alignment(Player1,MASK_EVIL)~ THEN
 @203
END

APPEND HAERD25J
IF ~Global("kidoknowbal","GLOBAL",1)~ THEN BEGIN HaerKidoBaltre
SAY @204
IF ~~ THEN DO ~SetGlobal("kidoknowbal","GLOBAL",2)~ EXIT
END
END
