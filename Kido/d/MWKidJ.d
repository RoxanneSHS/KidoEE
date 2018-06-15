BEGIN MWKIDJ

IF ~Global("Kiwantsdoquest","GLOBAL",2)~ THEN BEGIN wanttodomypq
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Kiwantsdoquest","GLOBAL",3)~ GOTO wedomyqnow
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @2 DO ~SetGlobal("Kiwantsdoquest","GLOBAL",3)~ GOTO kidowillwait
  IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @2 DO ~SetGlobal("Kiwantsdoquest","GLOBAL",3)~ GOTO medarepqalone
  IF ~~ THEN REPLY @3 DO ~SetGlobal("Kiwantsdoquest","GLOBAL",3)~ GOTO medopqalone
END

IF ~~ THEN BEGIN wedomyqnow
  SAY @4
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kidowillwait
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN medarepqalone
  SAY @6
  IF ~~ THEN REPLY @7 GOTO wedomyqnow
  IF ~~ THEN REPLY @8 GOTO medopqalone
END

IF ~~ THEN BEGIN medopqalone
  SAY @9
  IF ~~ THEN DO ~LeaveParty() EscapeArea() DestroySelf() SetGlobal("Kiwantsdoquest","GLOBAL",4)~ EXIT
END

IF ~Global("Kiwantsdoquest","GLOBAL",6)~ THEN BEGIN youliedokpq
  SAY @10
  IF ~~ THEN DO ~LeaveParty() EscapeArea() DestroySelf() SetGlobal("Kiwantsdoquest","GLOBAL",4)~ EXIT
END

IF ~Global("kidohistory","GLOBAL",1)~ THEN BEGIN needexplanation
  SAY @11 
  IF ~~ THEN REPLY @12 DO ~SetGlobal("kidohistory","GLOBAL",2)~ GOTO trytoshort
  IF ~~ THEN REPLY @13 DO ~SetGlobal("kidohistory","GLOBAL",2)~ GOTO trytoshort
  IF ~~ THEN REPLY @14 DO ~SetGlobal("kidohistory","GLOBAL",2)~ GOTO tale
  IF ~~ THEN REPLY @15 DO ~SetGlobal("kidohistory","GLOBAL",2)~ GOTO quickend
END

IF ~~ THEN BEGIN trytoshort
  SAY @16
  IF ~~ THEN REPLY @17 GOTO tale
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @18 GOTO extraversion
END

IF ~~ THEN BEGIN tale
  SAY @19
  =   @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN extraversion
  SAY @21 
  IF ~~ THEN REPLY @22 DO ~SetGlobal("knowKihome","GLOBAL",1)~ GOTO conextraversion
END

IF ~~ THEN BEGIN conextraversion
  SAY @23
  IF ~~ THEN REPLY @24 GOTO tale
END

IF ~~ THEN BEGIN quickend
  SAY @25
  IF ~~ THEN EXIT
END

IF ~Global("weareone","GLOBAL",1)~ THEN BEGIN childofcyrica
  SAY @26 
  IF ~~ THEN REPLY @27 DO ~SetGlobal("weareone","GLOBAL",2)~ GOTO difopinion
  IF ~~ THEN REPLY @28 DO ~SetGlobal("weareone","GLOBAL",2)~ GOTO greypath
  IF ~~ THEN REPLY @29 DO ~SetGlobal("weareone","GLOBAL",2)~ GOTO cheerus
  IF ~~ THEN REPLY @30 DO ~SetGlobal("weareone","LOCALS",1)~ GOTO knowalot
  IF ~~ THEN REPLY @31 DO ~SetGlobal("weareone","GLOBAL",2)~ GOTO childofcyric
END

IF ~~ THEN BEGIN knowalot
  SAY @32
  IF ~~ THEN REPLY @33 GOTO difopinion
  IF ~~ THEN REPLY @34 GOTO greypath
  IF ~~ THEN REPLY @35 GOTO cheerus
  IF ~~ THEN REPLY @36 GOTO childofcyric
END

IF ~~ THEN BEGIN difopinion
  SAY @37
  IF ~~ THEN REPLY @38 GOTO angryend
  IF ~~ THEN REPLY @39 GOTO greypath 
END

IF ~~ THEN BEGIN greypath
  SAY @40
  IF ~~ THEN REPLY @41 GOTO angryend
  IF ~~ THEN REPLY @42 GOTO comeback 
  IF ~~ THEN REPLY @43 GOTO cheerus
END

IF ~~ THEN BEGIN cheerus
  SAY @44
  IF ~~ THEN REPLY @45 GOTO happyend
  IF ~~ THEN REPLY @46 GOTO childofcyrice
END

IF ~~ THEN BEGIN childofcyric
  SAY @47
  IF ~~ THEN REPLY @48 GOTO difopinion
  IF ~~ THEN REPLY @49 GOTO greypath
  IF ~~ THEN REPLY @50 GOTO myfate
  IF ~~ THEN REPLY @51 GOTO happyend
  IF ~~ THEN REPLY @52 GOTO okayend
END

IF ~~ THEN BEGIN childofcyrice
  SAY @53
  IF ~~ THEN REPLY @54 GOTO okayend
  IF ~~ THEN REPLY @55 GOTO happyend
END

IF ~~ THEN BEGIN myfate
  SAY @56
  IF ~~ THEN REPLY @57 GOTO difopinion 
  IF ~~ THEN REPLY @58 GOTO greypath 
  IF ~~ THEN REPLY @59 GOTO okayend
  IF ~~ THEN REPLY @60 GOTO okayend
  IF ~~ THEN REPLY @61 GOTO happyend
  IF ~CheckStatGT(PLAYER1,12,INT)~ THEN REPLY @62 GOTO detail
END

IF ~~ THEN BEGIN detail
  SAY @63
  IF ~~ THEN REPLY @64 GOTO difopinion
  IF ~~ THEN REPLY @65 GOTO comeback
  IF ~~ THEN REPLY @66 GOTO okayend 
END

IF ~~ THEN BEGIN angryend
  SAY @67
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN comeback
  SAY @68
  IF ~~ THEN REPLY @69 DO ~SetGlobal("Undecided","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN okayend
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN happyend
  SAY @71
  IF ~~ THEN EXIT
END

IF ~Global("secweareone","GLOBAL",1)~ THEN BEGIN retryconvincepl
  SAY @72 
  IF ~~ THEN REPLY @73 DO ~SetGlobal("secweareone","GLOBAL",2)~ GOTO difopinionnew
  IF ~~ THEN REPLY @74 DO ~SetGlobal("secweareone","GLOBAL",2)~ GOTO kidoquit
  IF ~~ THEN REPLY @75 DO ~SetGlobal("secweareone","GLOBAL",2)~ GOTO cheerus
END

IF ~~ THEN BEGIN difopinionnew
  SAY @76
  IF ~~ THEN REPLY @77 GOTO angryend
  IF ~~ THEN REPLY @78 GOTO kidoquit
  IF ~~ THEN REPLY @79 GOTO cheerus
END

IF ~~ THEN BEGIN kidoquit
  SAY @80
  IF ~~ THEN EXIT
END

IF ~Global("plansunfold","GLOBAL",1)~ THEN BEGIN spoketomuch
  SAY @81 
  IF ~~ THEN REPLY @82 DO ~SetGlobal("plansunfold","GLOBAL",2)~ GOTO rapidend
  IF ~~ THEN REPLY @83 DO ~SetGlobal("plansunfold","GLOBAL",2)~ GOTO rapidend
  IF ~~ THEN REPLY @84 DO ~SetGlobal("plansunfold","GLOBAL",2)~ GOTO nearlythere
  IF ~CheckStatGT(PLAYER1,12,INT)~ THEN REPLY @85 DO ~SetGlobal("plansunfold","GLOBAL",2)~ GOTO examination
  IF ~Class(Player1,CLERIC)~ THEN REPLY @86 DO ~SetGlobal("plansunfold","GLOBAL",2)~ GOTO clericpath
END

IF ~~ THEN BEGIN nearlythere 
  SAY @87
  IF ~~ THEN REPLY @88 GOTO pleasure
  IF ~~ THEN REPLY @89 GOTO unpleasant 
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @90 GOTO morethere
END

IF ~~ THEN BEGIN morethere
  SAY @91
  IF ~~ THEN REPLY @92 GOTO unpleasant 
  IF ~~ THEN REPLY @93 GOTO pleasure 
  IF ~~ THEN REPLY @94 GOTO nonono 
END

IF ~~ THEN BEGIN examination
  SAY @95
  IF ~~ THEN REPLY @96 GOTO murder
  IF ~~ THEN REPLY @97 GOTO murder
END

IF ~~ THEN BEGIN clericpath
  SAY @98
  IF ~~ THEN REPLY @99 GOTO murder
  IF ~~ THEN REPLY @100 GOTO kidoagenda
END

IF ~~ THEN BEGIN murder
  SAY @101
  IF ~~ THEN REPLY @102 GOTO kidoagenda
  IF ~~ THEN REPLY @103 GOTO kidoagenda
  IF ~~ THEN REPLY @104 GOTO diechild
END

IF ~~ THEN BEGIN kidoagenda
  SAY @105
  IF ~~ THEN REPLY @106 GOTO diechild
  IF ~~ THEN REPLY @107 GOTO diebhaal
  IF ~~ THEN REPLY @108 GOTO diebhaal
END

IF ~~ THEN BEGIN diebhaal
  SAY @109
  IF ~~ THEN REPLY @110 GOTO kidosad 
  IF ~~ THEN REPLY @111 GOTO kidohappy 
END

IF ~~ THEN BEGIN rapidend
  SAY @112
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN pleasure
  SAY @113
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN unpleasant
  SAY @114
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN nonono
  SAY @115
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN diechild
  SAY @116
  IF ~~ THEN DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN kidosad
  SAY @117 
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN kidohappy
  SAY @118
  IF ~~ THEN EXIT
END

IF ~Global("finalconKaAn","GLOBAL",1)~ THEN BEGIN lastquabAnjo
 SAY @119 
  IF ~~ THEN REPLY @120 DO ~SetGlobal("finalconKaAn","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @121 DO ~SetGlobal("finalconKaAn","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @122 DO ~SetGlobal("finalconKaAn","GLOBAL",2)~ GOTO ihearyaplay
  IF ~~ THEN REPLY @123 DO ~SetGlobal("finalconKaAn","GLOBAL",2)~ EXTERN MWKidP 0
  IF ~!Gender(Player1,MALE) Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @124 DO ~SetGlobal("finalconKaAn","GLOBAL",2)~ GOTO dieplayer
END

IF ~~ THEN BEGIN dieplayer
  SAY @125
  IF ~~ THEN DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN ihearyaplay
  SAY @126
  IF ~~ THEN EXIT
END

IF ~Dead("MWKICHC") Global("Kido_Ladies","GLOBAL",1)~ THEN Epitaph
SAY @127
IF ~~ THEN REPLY @128 DO ~SetGlobal("Kido_Ladies","GLOBAL",2)~ GOTO freeofenc
IF ~~ THEN REPLY @129 DO ~SetGlobal("Kido_Ladies","GLOBAL",2)~ GOTO litlowpro
IF ~~ THEN REPLY @130 DO ~SetGlobal("Kido_Ladies","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @131 DO ~SetGlobal("Kido_Ladies","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @132 DO ~SetGlobal("Kido_Ladies","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN litlowpro
  SAY @133
  IF ~~ THEN REPLY @134 GOTO freeofenc
  IF ~~ THEN REPLY @135 EXIT
  IF ~~ THEN REPLY @136 EXIT
END

IF ~~ THEN BEGIN freeofenc
  SAY @137
  IF ~~ THEN REPLY @138 GOTO litlowpro
  IF ~~ THEN REPLY @135 EXIT
  IF ~~ THEN REPLY @139 EXIT
END

CHAIN IF ~AreaCheck("AR0901") Global("KidocommentHelm","GLOBAL",1)~ THEN MWKIDJ KicomHelmTem
@140
DO ~SetGlobal("KidocommentHelm","GLOBAL",2)~
== BANOMEN IF ~InParty("Anomen") !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @141
== MWKIDJ IF ~InParty("Anomen") !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @142
END
IF ~Class(Player1,PALADIN) !Global("KidocommentLath","GLOBAL",4)~ THEN REPLY @143 EXTERN MWKIDJ kikiforhelmco
IF ~Class(Player1,PALADIN) !Global("KidocommentLath","GLOBAL",4)~ THEN REPLY @144 EXTERN MWKIDJ fokiforhelmco
IF ~Class(Player1,PALADIN)~ THEN REPLY @145 EXTERN MWKIDJ leckiforhelmco
IF ~Kit(Player1,GODHELM)~ THEN REPLY @146 EXTERN MWKIDJ kikiforhelmco
IF ~Kit(Player1,GODHELM)~ THEN REPLY @147 EXTERN MWKIDJ fokiforhelmco
IF ~OR(2) Global("KidocommentLath","GLOBAL",5) Global("KidocommentTalos","GLOBAL",5)~ THEN REPLY @148 EXTERN MWKIDJ sekiawforhelmco
IF ~Class(Player1,CLERIC_ALL) !Kit(Player1,GODTALOS) !Kit(Player1,GODLATHANDER)~ THEN REPLY @145 EXTERN MWKIDJ leckiforhelmco
IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC_ALL)~ THEN REPLY @149 EXTERN MWKIDJ leckiforhelmco
IF ~InParty("Anomen") !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN REPLY @150 EXTERN MWKIDJ leckiforhelmco
IF ~~ THEN REPLY @151 EXTERN MWKIDJ leckiforhelmco
IF ~~ THEN REPLY @152 EXIT
IF ~~ THEN REPLY @153 EXIT

CHAIN IF ~AreaCheck("AR0901") Global("KidocommentHelm","GLOBAL",2)~ THEN MWKIDJ kikiforhelmco
@154 
DO ~SetGlobal("KidocommentHelm","GLOBAL",3) LeaveParty() Enemy() Attack(Player1)~
EXIT

CHAIN IF ~AreaCheck("AR0901") Global("KidocommentHelm","GLOBAL",2)~ THEN MWKIDJ fokiforhelmco
@155
DO ~SetGlobal("KidocommentHelm","GLOBAL",4)~
EXIT

CHAIN IF ~AreaCheck("AR0901") Global("KidocommentHelm","GLOBAL",2)~ THEN MWKIDJ leckiforhelmco
@156
END
IF ~~ THEN REPLY @157 DO ~SetGlobal("KidocommentHelm","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY @158 DO ~SetGlobal("KidocommentHelm","GLOBAL",6)~ EXIT

CHAIN IF ~AreaCheck("AR0901") Global("KidocommentHelm","GLOBAL",2)~ THEN MWKIDJ sekiawforhelmco
@159
= @160
DO ~SetGlobal("KidocommentHelm","GLOBAL",7) LeaveParty() EscapeAreaMove("AR0400",2361,2251,14)~
EXIT

CHAIN IF ~AreaCheck("AR0902") Global("KidocommentLath","GLOBAL",1)~ THEN MWKIDJ KicomLathTem 
@161
DO ~SetGlobal("KidocommentLath","GLOBAL",2)~
END
IF ~Class(Player1,PALADIN) !Global("KidocommentHelm","GLOBAL",4)~ THEN REPLY @162 EXTERN MWKIDJ kikiforlathco
IF ~Class(Player1,PALADIN) !Global("KidocommentHelm","GLOBAL",4)~ THEN REPLY @163 EXTERN MWKIDJ fokiforlathco
IF ~Class(Player1,PALADIN)~ THEN REPLY @164 EXTERN MWKIDJ leckiforlathco
IF ~Kit(Player1,GODLATHANDER)~ THEN REPLY @165 EXTERN MWKIDJ kikiforlathco
IF ~Kit(Player1,GODLATHANDER)~ THEN REPLY @166 EXTERN MWKIDJ leckiforlathco
IF ~Global("KidocommentHelm","GLOBAL",5)~ THEN REPLY @167 EXTERN MWKIDJ sekiawforlathco
IF ~Class(Player1,CLERIC_ALL) !Kit(Player1,GODHELM) !Kit(Player1,GODLATHANDER) !Alignment(Player1,MASK_EVIL)~ THEN REPLY @164 EXTERN MWKIDJ leckiforlathco
IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC_ALL) !Alignment(Player1,MASK_EVIL)~ THEN REPLY @168 EXTERN MWKIDJ leckiforlathco
IF ~~ THEN REPLY @169 EXTERN MWKIDJ leckiforlathco
IF ~~ THEN REPLY @170 EXIT
IF ~~ THEN REPLY @171 EXIT

CHAIN IF ~AreaCheck("AR0902") Global("KidocommentLath","GLOBAL",2)~ THEN MWKIDJ kikiforlathco
@172 
DO ~SetGlobal("KidocommentLath","GLOBAL",3) LeaveParty() Enemy() Attack(Player1)~
EXIT

CHAIN IF ~AreaCheck("AR0902") Global("KidocommentLath","GLOBAL",2)~ THEN MWKIDJ fokiforlathco
@173
DO ~SetGlobal("KidocommentLath","GLOBAL",4)~
EXIT

CHAIN IF ~AreaCheck("AR0902") Global("KidocommentLath","GLOBAL",2)~ THEN MWKIDJ leckiforlathco
@174
END
IF ~~ THEN REPLY @175 DO ~SetGlobal("KidocommentLath","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY @176 DO ~SetGlobal("KidocommentLath","GLOBAL",6)~ EXIT

CHAIN IF ~AreaCheck("AR0902") Global("KidocommentLath","GLOBAL",2)~ THEN MWKIDJ sekiawforlathco
@159
= @160
DO ~SetGlobal("KidocommentLath","GLOBAL",7) LeaveParty() EscapeAreaMove("AR0400",2361,2251,14)~
EXIT

CHAIN IF ~AreaCheck("AR0904") Global("KidocommentTalos","GLOBAL",1)~ THEN MWKIDJ KicomTalosTem 
@177
DO ~SetGlobal("KidocommentTalos","GLOBAL",2)~
END
IF ~Kit(Player1,GODTALOS)~ THEN REPLY @178 EXTERN MWKIDJ kikifortalosco
IF ~Kit(Player1,GODTALOS)~ THEN REPLY @179 EXTERN MWKIDJ fokifortalosco
IF ~Global("KidocommentHelm","GLOBAL",5)~ THEN REPLY @167 EXTERN MWKIDJ sekiawfortalosco
IF ~Class(Player1,CLERIC_ALL) !Kit(Player1,GODHELM) !Kit(Player1,GODLATHANDER)~ THEN REPLY @180 EXTERN MWKIDJ leckifortalosco
IF ~!Class(Player1,CLERIC_ALL)~ THEN REPLY @181 EXTERN MWKIDJ leckifortalosco
IF ~~ THEN REPLY @182 EXTERN MWKIDJ leckifortalosco
IF ~~ THEN REPLY @183 EXIT
IF ~~ THEN REPLY @184 EXIT

CHAIN IF ~AreaCheck("AR0904") Global("KidocommentTalos","GLOBAL",2)~ THEN MWKIDJ kikifortalosco
@185 
DO ~SetGlobal("KidocommentTalos","GLOBAL",3) LeaveParty() Enemy() Attack(Player1)~
EXIT

CHAIN IF ~AreaCheck("AR0904") Global("KidocommentTalos","GLOBAL",2)~ THEN MWKIDJ fokifortalosco
@186
DO ~SetGlobal("KidocommentTalos","GLOBAL",4)~
EXIT

CHAIN IF ~AreaCheck("AR0904") Global("KidocommentLath","GLOBAL",2)~ THEN MWKIDJ leckifortalosco
@187
END
IF ~~ THEN REPLY @188 DO ~SetGlobal("KidocommentTalos","GLOBAL",5)~ EXIT
IF ~~ THEN REPLY @189 DO ~SetGlobal("KidocommentTalos","GLOBAL",5)~ EXIT

CHAIN IF ~AreaCheck("AR0904") Global("KidocommentTalos","GLOBAL",2)~ THEN MWKIDJ sekiawfortalosco
@159
= @160
DO ~SetGlobal("KidocommentTalos","GLOBAL",6) LeaveParty() EscapeAreaMove("AR0400",2361,2251,14)~
EXIT

CHAIN IF ~AreaCheck("AR0405") Global("KidoSCyClencounter","GLOBAL",1)~ THEN MWKIDJ KinodismisCyCl 
@190
DO ~SetGlobal("KidoSCyClencounter","GLOBAL",2)~
END
IF ~~ THEN REPLY @191 EXIT
IF ~~ THEN REPLY @192 EXIT
IF ~~ THEN REPLY @193 EXTERN MWKIDJ noloytoyou

CHAIN IF ~Global("KidoSCyClencounter","GLOBAL",2)~ THEN MWKIDJ noloytoyou
@194
DO ~SetGlobal("KidoSCyClencounter","GLOBAL",3)~
EXIT

CHAIN IF ~See("mvpries") Global("KidochallMVCyCl","LOCALS",1)~ THEN MWKIDJ mvpries1
 @195 DO ~SetGlobal("KidochallMVCyCl","LOCALS",2)~
 == MVGUARD1 @196
 == MWKIDJ @197
= @198
 == MAEVAR  @199
 == MWKIDJ  @200
EXIT

CHAIN
IF ~See("Quayle") Global("KidoQuayle","LOCALS",1) InParty("Aerie") See("Aerie")~
THEN MWKIDJ quayle1
 @201 DO ~SetGlobal("KidoQuayle","LOCALS",2)~
 == QUAYLE @202
 == MWKIDJ @203
= @204
 == AERIEJ  @205
 == MWKIDJ @206
 == QUAYLE @207
 == MWKIDJ @208 DO ~MovetoPoint([355.498])~
EXIT

CHAIN
IF ~See("Quayle") Global("KidoQuayle","LOCALS",1) !InParty("Aerie")~
THEN MWKIDJ quayle1
 @201 DO ~SetGlobal("KidoQuayle","LOCALS",2)~
 == QUAYLE @209
 == MWKIDJ @210
EXIT

INTERJECT DCLERIC 0 HiDolf
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @211 DO ~SetGlobal("Kidopersonalquest","GLOBAL",1)~
== DCLERIC IF ~InParty("MWKido") !Dead("MWKido")~ THEN @212
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @213
== DCLERIC IF ~InParty("MWKido") !Dead("MWKido")~ THEN @214
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @215
== DCLERIC IF ~InParty("MWKido") !Dead("MWKido")~ THEN @216
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @217
== DCLERIC IF ~InParty("MWKido") !Dead("MWKido")~ THEN @218
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @219 DO ~ActionOverride("DCleric",EscapeArea())~
END
IF ~~ UNSOLVED_JOURNAL @220 EXIT

I_C_T SCJERLIA 0 Penagainstore
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @221
END

I_C_T FFCUST06 0 Justtobesure
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @222
 == FFCUST06 IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @223
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @224
END

I_C_T FFBART 0 BurpsaysbyeKido
 == FFBART IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @225
 =  @226
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @227
 == FFBART IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @228
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @229
 == FFBART IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @230
END

EXTEND_BOTTOM RAELIS 37
IF ~InParty("MWKido") See("MWKido")~ THEN EXTERN MWKIDJ nowishrefund
END

CHAIN IF ~InParty("MWKido") !Dead("MWKido")~ THEN MWKIDJ nowishrefund
 @231
 == RAELIS IF ~InParty("MWKido") !Dead("MWKido")~ THEN @232
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @233
 == RAELIS IF ~InParty("MWKido") !Dead("MWKido")~ THEN @234
END
 IF ~OR(3) !Global("QuayleJob","GLOBAL",1) !InParty("Aerie") !See("Aerie")~ THEN REPLY @235 EXTERN RAELIS 38
 IF ~OR(3) !Global("QuayleJob","GLOBAL",1) !InParty("Aerie") !See("Aerie")~ THEN REPLY @236 EXTERN RAELIS 39
 IF ~Global("QuayleJob","GLOBAL",1) !Dead("quaylem") !Dead("quayle") InParty("Aerie") See("Aerie")~ THEN REPLY @237 EXTERN AERIEJ 209
 IF ~Global("QuayleJob","GLOBAL",1) OR(2) Dead("quaylem") Dead("quayle") InParty("Aerie") See("Aerie")~ THEN REPLY @237 EXTERN AERIEJ 210

I_C_T FFBIFF01 9 cheerupbiff
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @238 DO ~ SetGlobal("Bifftalk","LOCALS",2)~
 == FFBIFF01 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @239
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @240
 == FFBIFF01 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @241
END

I_C_T RUMAR 0 Kscarsrumar
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @242
 == RUMAR IF ~InParty("MWKido") !Dead("MWKido")~ THEN @243
END

INTERJECT TIANA 0 KspillsofR
 == MWKIDJ IF ~Global("Kscarsrumar","GLOBAL",1) InParty("MWKido") !Dead("MWKido")~ THEN  @244
COPY_TRANS TIANA 5

I_C_T2 RUMAR 10 itsnotenough
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @245
END

I_C_T2 PRISS 7 Kfoundfun
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @246
END

I_C_T2 NEB 5 Kidoreactneb
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @247
END

INTERJECT SEVBAR01 18 nomagebardinhere
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @248
 == VICONIJ IF ~InParty("Viconia") !Dead("Viconia")~ THEN @249
 == MWKIDJ IF ~InParty("Viconia") !Dead("Viconia")~ THEN  @250
 == EDWINJ IF ~InParty("Viconia") !Dead("Viconia") InParty("Edwin")~ THEN @251
 == SEVDRU01 @252
COPY_TRANS SEVBAR01 19

I_C_T MAEVAR 13 kidolikemaevar
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @253
END

I_C_T UHMAN01 0 Itisawitch
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @254
 == UHMAY01 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @255
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @256
 == UHMAN01 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @257
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @258
END

I_C_T UHMAY01 18 stwiumar
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @259
END

I_C_T UHKID01 3 funwithyoung
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @260
= @261
END

I_C_T2 FIRTRL01 1 Notfoodtoday
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @262
END

I_C_T FIRKRA02 21 Iamagainstafight
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @263
END

INTERJECT AELOTUS 3 Loveforlotus
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @264
 =  @265
 == AESOLD IF ~InParty("MWKido") !Dead("MWKido")~ THEN @266
COPY_TRANS AESOLD 4

INTERJECT GARRICK 10 reallypathetic
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @267
COPY_TRANS TCADRIL 6

INTERJECT GARRICK 15 againpathetic
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @268
 == GARRICK IF ~InParty("MWKido") !Dead("MWKido")~ THEN @269
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @270
 == GARRICK IF ~InParty("MWKido") !Dead("MWKido")~ THEN @271
COPY_TRANS TCADRIL 8

INTERJECT GARRICK 17 whisperofdisapproval
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @272
COPY_TRANS TCYRANDO 9

I_C_T2 TCYRANDO 11 byeCANDG
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @273
END

I_C_T2 VVMADMAN 6 explainVV
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @274
END

INTERJECT ANOMENJ 232 roflol
 == MWKIDJ IF ~ IfValidForPartyDialog("MWKido") !InParty("Jan") !InParty("Yoshimo") !InParty("Korgan")~ THEN  @275 DO ~PlayDead(15)~
COPY_TRANS ANOMENJ 234

I_C_T ANOMENJ 234 noroflol
 == MWKIDJ IF ~Global("roflol","LOCALS",0) IfValidForPartyDialog("MWKido")~ THEN  @276
END

INTERJECT BHOISIG 16 labiel
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @277
 == BHOISIG IF ~InParty("MWKido") !Dead("MWKido")~ THEN @278
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @279
 == BHOISIG IF ~InParty("MWKido") !Dead("MWKido")~ THEN @280
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @281
COPY_TRANS BHOISIG 17

I_C_T ACOLYTE1 0 Whichisthebestgod
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @282
 == ACOLYTE1 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @283
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @284
 == ACOLYTE1 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @285
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @286
 =  @287
 == ACOLYTE1 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @288
 ==  MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @289
END

I_C_T SPOILED1 5 afrnottod
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @290
END

INTERJECT WELLYN 3 Unexpectednice
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @291
COPY_TRANS WELLYN 7

I_C_T2 WELLYN 9 Givingbackbear
 == MWKIDJ IF ~PartyHasItem("MISC5L") InParty("MWKido") !Dead("MWKido")~ THEN  @292
END

I_C_T2 MOURNER6 6 YeahokayIguess
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @293
END

APPEND SLILMAT
IF WEIGHT #-999 ~Global("TellPlKidoDead","GLOBAL",1)~ tellkpqfailed
SAY @294
IF ~~ THEN REPLY @295 DO ~SetGlobal("TellPlKidoDead","GLOBAL",2)~ GOTO kikillbygua
END

IF ~~ THEN BEGIN kikillbygua
SAY @296
= @297
= @298
IF ~~ THEN REPLY @299 EXIT
IF ~~ THEN REPLY @300 EXIT
IF ~~ THEN REPLY @301 EXIT
END
END

INTERJECT DLOST 0 ChildforKPQ1
== MWKIDJ IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN @302
END
IF ~InParty("MWKido") Global("KidoPersonalquest","GLOBAL",4)~ THEN REPLY @303 EXTERN MWKIDJ Kidnap1
COPY_TRANS DLOST 0

INTERJECT GIRL2 1 ChildforKPQ2
== MWKIDJ IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN @304
= @305
END
IF ~InParty("MWKido") Global("KidoPersonalquest","GLOBAL",4)~ THEN REPLY @306 EXTERN MWKIDJ Kidnap2
COPY_TRANS GIRL2 1

INTERJECT ARENTHIS 0 ChildforKPQ3
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN @307
COPY_TRANS ARENTHIS 0

INTERJECT ARENTHIS 2 ChildforKPQ4
== MWKIDJ IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN
@308
END ARENTHIS Fooled_Ya

CHAIN IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN ARENTHIS Fooled_Ya
 @309
== MOURNER7 @310 DO ~SetGlobal("kidoprtward","GLOBAL",1) ActionOverride("Risa",Formation("MWKido",[-1.-1])~
EXIT

INTERJECT ARENTHIS 3 ChildforKPQ5
== MWKIDJ IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ THEN
@311
END ARENTHIS Kidnappers

CHAIN ARENTHIS Kidnappers
@312
== MWKIDJ IF ~InParty("MWKido") Global("Kidopersonalquest","GLOBAL",4)~ 
THEN  @313
== ARENTHIS IF ~InParty("MWKido")~ THEN @314 DO ~ActionOverride("Risa",DestroySelf()) GiveItemCreate("MWChSacr",Player1,1,1,0) ForceSpell(Player1,CLERIC_HOLD_PERSON) Enemy()~
EXIT

APPEND MWKIDJ
IF ~~ THEN BEGIN Kidnap1
SAY @315
IF ~~ DO ~ActionOverride("dlost",DestroySelf()) GiveItemCreate("MWChSacr",Player1,1,1,0)~ EXIT
END

IF ~~ THEN BEGIN Kidnap2
SAY @315
IF ~~ DO ~ActionOverride("girl2",DestroySelf()) GiveItemCreate("MWChSacr",Player1,1,1,0)~ EXIT
END
END

I_C_T NEEBER 6 firstfrustration
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @316
END

I_C_T NEEBER 7 secfrustration
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @317
END

I_C_T NEEBER 12 thirdfrustration
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @318
END

I_C_T NEEBER 15 lastfrustration
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @319 DO ~ActionOverride("MWKido",Attack("neeber"))~
END

INTERJECT PPSAEM 58 displpow
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @320
COPY_TRANS PPSAEM 59

INTERJECT PPDUELC 0 ohgoodaduel
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @321
 == KORGANJ IF ~InParty("Korgan") !Dead("Korgan")~ THEN  @322
COPY_TRANS PPDUEL1 2 

EXTEND_TOP PPDESH 12 #3
IF ~InParty("MWKido") !Dead("MWKido") InParty("Yoshimo")~ THEN REPLY @323 EXTERN MWKIDJ yoshtryrecon
END

EXTEND_TOP PPDESH 19 #3
IF ~InParty("MWKido") !Dead("MWKido") InParty("Yoshimo")~ THEN REPLY @324 EXTERN MWKIDJ yoshtryrecon
END

CHAIN
IF ~InParty(Player1)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN MWKIDJ yoshtryrecon
  @325
 == YOSHJ @326
END
 IF ~~ THEN REPLY @327 EXTERN MWKIDJ kidogotgridea
 IF ~~ THEN REPLY @328 EXTERN YOSHJ 121

EXTEND_TOP PPDESH 12 #3
IF ~InParty("MWKido") !Dead("MWKido") !InParty("Yoshimo")~
THEN REPLY @323 EXTERN MWKIDJ kidogotgridea
END

EXTEND_TOP PPDESH 19 #3
IF ~InParty("MWKido") !Dead("MWKido") !InParty("Yoshimo")~
THEN REPLY @324 EXTERN MWKIDJ kidogotgridea
END

CHAIN IF ~InParty(Player1)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN MWKIDJ kidogotgridea
@329
= @330
= @331
== PPDESH  @332
== MWKIDJ  @333
== PPDESH  @334
== MWKIDJ  @335
END PPDESH 17

I_C_T PPCOWLED 1 nothimself
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @336
END

I_C_T PPAPHRIL 12 pillarofskulls
== MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @337
=  @338
=  @339
END

I_C_T PPAPHRIL 8 sheseesSigil
== MWKIDJ @340
== HAERDAJ @341
END

I_C_T PPAPHRIL 8 sheseesSigil2
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido") !InParty("HaerDalis")~ THEN @342
END

I_C_T PPAPHRIL 5 niceburgaler
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @343
END

I_C_T PPNALJ 1 missinterpetnalj
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @344
END 

I_C_T PPDILI 4 niceandscary
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @345
 =  @346
END 

I_C_T PPIRENI2 31 lovelymadnot
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @347
END

INTERJECT LYROS 11 kidocousinxzar
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @348 DO ~SetGlobal("TalkedToLyros","GLOBAL",1)~
 == JAHEIRAJ IF ~InParty("Jaheira") !Dead("Jaheira") InParty("MWKido") !Dead("MWKido")~ THEN  @349
 == EDWINJ IF ~InParty("MWKido") !Dead("MWKido") InParty("Edwin") !Dead("Edwin")~ THEN @350
 == LYROS IF ~InParty("MWKido") !Dead("MWKido")~ THEN @351
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @352
 == LYROS IF ~InParty("MWKido") !Dead("MWKido")~ THEN @353
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @354
END LYROS 19

INTERJECT LUSETTE 0 kidoreactxzarmurder
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @355 
END LUSETTE 3


INTERJECT LUSETTE 12 kidoreactxzarmurder2
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @355
 == LUSETTE @356
 == MWKIDJ  @357
END LUSETTE 13

INTERJECT LUSETTE 16 kidoreactxzarmurder3
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @355
 == LUSETTE  @356
 == MWKIDJ  @357 
END LUSETTE 13

I_C_T UDDROW09 1 heisadeaddrow
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @358 
END

I_C_T VICONIJ 134 actuallymorenames
 == MWKIDJ IF ~ IfValidForPartyDialog("MWKido")~ THEN @359
 == VICONIJ IF ~IfValidForPartyDialog("MWKido")~ THEN @360
 == MWKIDJ IF ~IfValidForPartyDialog("MWKido")~ THEN @361
END

I_C_T SAHPR1 1 whynotdeadyet
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido") !InParty("Viconia")~ THEN  @362 
END

I_C_T SAHPR1 53 madisntbad
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @363 
END

INTERJECT UDSOLA01 25 calledillithid
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido") !Gender(Player1,FEMALE)~ THEN  @364
 == UDSOLA01  @365
COPY_TRANS UDSOLA01 30

INTERJECT UDSOLA01 25 calledillithid2
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido") Gender(Player1,FEMALE)~ THEN  @364
 == UDSOLA01  @366
 == VICONIJ IF ~InParty("Viconia")~ THEN @367
 == MWKIDJ IF ~InParty("Viconia")~ THEN  @368
 == UDSOLA01 IF ~InParty("Viconia")~ THEN  @369
 == UDSOLA01  @370
 =  @371
COPY_TRANS UDSOLA01 30

I_C_T HELLJON 7 Lastperformance
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @372 
END

I_C_T HELLJON 8 Lastperformance
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @372
END

I_C_T HELLJON 9 Lastperformance
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @372
END

I_C_T HELLJON 10 Lastperformance
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @372
END

I_C_T BODHI 11 Niceofferithink
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @373
END

I_C_T IMOEN2 22 Funturnofevents
 == MWKIDJ IF ~IfValidForPartyDialog("MWKido")~ THEN  @374
END

I_C_T YOSHJ 113 Knewit
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @375
END

I_C_T GORMAD1 8 scaryakkman
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @376
 == GORMAD1 IF ~InParty("MWKido") !Dead("MWKido")~ THEN @377 DO ~RunAwayFrom(LastTalkedToBy,30)~
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN @378
END

I_C_T2 GORCAR 4 Lumthemad
 == MWKIDJ IF ~InParty("MWKido") !Dead("MWKido")~ THEN  @379
END

I_C_T PLAYER1 16 Aintover
 == MWKIDJ IF ~IfValidForPartyDialog("MWKido")~ THEN  @380
END

I_C_T PLAYER1 25 KiinHell
== MWKIDJ IF ~IfValidForPartyDialog("MWKido")~ THEN @381 
END

I_C_T PLAYER1 5 KidoComSlayChange
== MWKIDJ IF ~IfValidForPartyDialog("MWKido")~ THEN @382
END

EXTEND_BOTTOM PLAYER1 33
IF ~ IfValidForPartyDialog("MWKido") Global("AskKidoalong","GLOBAL",0)~ THEN DO ~SetGlobal("AskKidoalong","GLOBAL",1)~ GOTO PlayeraskKido
END

APPEND PLAYER1
IF ~~ PlayeraskKido
SAY @383
IF ~~ THEN REPLY @384 EXTERN MWKIDJ ascommanded 
IF ~~ THEN REPLY @385 EXTERN MWKIDJ nomissfinal 
IF ~~ THEN REPLY @386 EXTERN MWKIDJ noprobplay
END
END

APPEND MWKIDJ
IF ~~ THEN BEGIN ascommanded
SAY @387
IF ~~ GOTO endofirenicus
END

IF ~~ THEN BEGIN nomissfinal
SAY @388
IF ~~ GOTO endofirenicus
END

IF ~~ THEN BEGIN noprobplay
SAY @389
IF ~~ GOTO endofirenicus
END

IF ~~ THEN BEGIN endofirenicus
SAY @390
COPY_TRANS PLAYER1 33
END
END

EXTEND_TOP SLILMAT 0 #3
IF ~InParty("MWKido") !Dead("MWKido") AreaCheck("AR0408") Global("Kidopersonalquest","GLOBAL",1)~ 
THEN REPLY @391 DO ~ActionOverride("MWKiQuC",Enemy()) Attack("MWKiQuC")~ EXIT
END

APPEND MWKIDJ
IF ~InParty(Player1)
  See(Player1)
  !StateCheck(Player1,CD_STATE_NOTVALID)
Global("notthatlore","GLOBAL",1)~ THEN BEGIN notthatlore
  SAY @392
  IF ~~ THEN REPLY @393 DO ~SetGlobal("notthatlore","GLOBAL",2)~ EXTERN GORCAR 16
  IF ~~ THEN REPLY @394 DO ~SetGlobal("notthatlore","GLOBAL",2)~ EXTERN GORCAR 16
  IF ~~ THEN REPLY @395 DO ~SetGlobal("notthatlore","GLOBAL",2)~ EXTERN GORCAR 17
END
END

EXTEND_TOP GORCAR 18 #3
IF ~InParty("MWKido") See("MWKido")~ 
THEN REPLY @396 DO ~SetGlobal("notthatlore","GLOBAL",1)~ EXTERN MWKIDJ notthatlore
END