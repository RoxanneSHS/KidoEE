BEGIN MWBKID25

CHAIN
  IF ~Global("MWBKKL251","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BKELDO25 MWConKKL251
  @0
DO ~SetGlobal("MWBKKL251","GLOBAL",1)~
 == MWBKID25
 @1
 == bkeldo25
 @2
 == MWBKID25
 @3
 == bkeldo25
 @4  
END
 IF ~~ THEN REPLY @5 EXTERN MWBKID25 Kiwilepa25
 IF ~~ THEN REPLY @6 EXTERN bkeldo25 Kewilepa25

CHAIN IF ~Global("MWBKKL251","GLOBAL",1)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN MWBKID25 Kiwilepa25
@7
DO ~ SetGlobal("MWBKKL251","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
	 
APPEND bkeldo25
IF ~Global("MWBKKL251","GLOBAL",1)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN Kewilepa25
SAY @8
IF ~~ THEN DO ~SetGlobal("MWBKKL251","GLOBAL",3) LeaveParty() 
EscapeArea()~ EXIT
END
END

CHAIN
  IF ~Global("MWBKMI25","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BMINSC25 MWConKMI25
  @9
DO ~SetGlobal("MWBKMI25","GLOBAL",1)~
 == MWBKID25
 @10
 == BMINSC25
 @11
 == MWBKID25
 @12
 == BMINSC25
 @13
 == MWBKID25
 @14
EXIT

CHAIN
  IF ~Global("MWBKIM25","LOCALS",0)
  InParty("Imoen2")
  See("Imoen2")
  !StateCheck("Imoen2",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKIM25
  @15
DO ~SetGlobal("MWBKIM25","LOCALS",1)~
 == BIMOEN25
 @16
 == MWBKID25
 @17
 == BIMOEN25
 @18
 == MWBKID25
 @19
 == BIMOEN25
 @20
 == MWBKID25
 @21
 == BIMOEN25
 @22
 == MWBKID25
 @23
EXIT

CHAIN
  IF ~Global("MWBKJH25","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BJAHEI25 MWConKJH25
  @24
DO ~SetGlobal("MWBKJH25","GLOBAL",1)~
 == MWBKID25
 @25
 == BJAHEI25
 @26
 == MWBKID25
 @27
 == BJAHEI25
 @28
 == MWBKID25
 @29
EXIT

CHAIN
  IF ~Global("MWBKS251","LOCALS",0)
  InParty("Sarevok")
  See("Sarevok")
  Alignment("Sarevolk",CHAOTIC_GOOD)
  !StateCheck("Sarevok",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKS251
  @30 DO ~SetGlobal("MWBKS251","LOCALS",1)~
 == BSAREV25
 @31
 == MWBKID25
 @32
 == BSAREV25
 @33
 == MWBKID25
 @34
EXIT

CHAIN
  IF ~Global("MWBKS252","LOCALS",0)
  InParty("Sarevok")
  See("Sarevok")
  !StateCheck("Sarevok",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKS252
  @35
DO ~SetGlobal("MWBKS252","LOCALS",1)~
 == BSAREV25
 @36
 == MWBKID25
 @37
 == BSAREV25
 @38
 == MWBKID25
 @39
 == BSAREV25
 @40
 == MWBKID25
 @41
 == BSAREV25
 @42
 == MWBKID25
 @43
EXIT

CHAIN
  IF ~Global("MWBKS253","LOCALS",0)
  InParty("Sarevok")
  See("Sarevok")
  Global("MWBKS252","LOCALS",1)
  !StateCheck("Sarevok",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKS253
  @44
DO ~SetGlobal("MWBKS253","LOCALS",1)~
 == BSAREV25
 @45
 == MWBKID25
 @46
 == BSAREV25
 @47
 == MWBKID25
 @48
 == BSAREV25
 @49
 == MWBKID25
 @50
 == BSAREV25
 @51
EXIT

CHAIN
  IF ~Global("MWBKS254","LOCALS",0)
  InParty("Sarevok")
  See("Sarevok")
  InParty("Imoen2")
  See("Imoen2")
  Global("MWBKS253","LOCALS",1)
  !Global("MWBKS255","LOCALS",1)
  !StateCheck("Sarevok",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKS254
  @52
DO ~SetGlobal("MWBKS254","LOCALS",1)~
 == BSAREV25
 @53
 == MWBKID25
 @54
 == BSAREV25
 @55
 == MWBKID25
 @56
 == BIMOEN25
 @57
 == BSAREV25
 @58 
EXIT

CHAIN
  IF ~Global("MWBKS255","LOCALS",0)
  InParty("Sarevok")
  See("Sarevok")
  !InParty("Imoen2")
  Global("MWBKS253","LOCALS",1)
  !Global("MWBKS254","LOCALS",1)
  !StateCheck("Sarevok",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKS255
  @52
DO ~SetGlobal("MWConKS255","LOCALS",1)~
 == BSAREV25
 @53
 == MWBKID25
 @59
 == BSAREV25
 @60
 == MWBKID25
 @56
 == BSAREV25 
 @61
 == MWBKID25
 @62
EXIT

CHAIN
  IF ~Global("MWBKAE25","LOCALS",0)
  InParty("Aerie")
  See("Aerie")
  !StateCheck("Aerie",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKAE25
  @63
DO ~SetGlobal("MWBKAE25","LOCALS",1)~
 == BAERIE25
 @64
 == MWBKID25
 @65
 == BAERIE25
 @66
 == MWBKID25
 @67
 == BAERIE25
 @68
 == MWBKID25
 @69
EXIT

CHAIN
  IF ~Global("MWBKKO25","GLOBAL",0)
  InParty("Korgan")
  See("Korgan")
  !StateCheck("Korgan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKKO25
  @70
DO ~SetGlobal("MWBKKO25","GLOBAL",1)~
 == BKORGA25
 @71
 == MWBKID25
 @72
 == BKORGA25
 @73
 == MWBKID25
 @74
 =
 @75
 =
 @76
=
 @77
 == BKORGA25
 @78
 == MWBKID25
 @79
EXIT

CHAIN
  IF ~Global("MWBKJ25","LOCALS",0)
  InParty("Jan")
  See("Jan")
  !StateCheck("Jan",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKJ25
  @80
DO ~SetGlobal("MWBKJ25","LOCALS",1)~
 == BJAN25
 @81
 == MWBKID25
 @82
 == BJAN25
 @83
 == MWBKID25
 @84
== BJAN25
@85
EXIT

CHAIN
  IF ~Global("MWBKV25","LOCALS",0)
  InParty("Viconia")
  See("Viconia")
  !StateCheck("Viconia",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKV25
  @86
DO ~SetGlobal("MWBKV25","LOCALS",1)~
 == BVICON25
 @87
 == MWBKID25
 @88
 == BVICON25
 @89
 == MWBKID25
 @90
 == BVICON25
 @91
 == MWBKID25
 @92
EXIT

CHAIN
  IF ~Global("MWBKH251","LOCALS",0)
  InParty("HaerDalis")
  See("HaerDalis")
  !StateCheck("HaerDalis",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKH251
  @93
DO ~SetGlobal("MWBKH251","LOCALS",1)~
 == BHAERD25
 @94
 == MWBKID25
 @95
 == BHAERD25
 @96
 == MWBKID25
 @97
 == BHAERD25
 @98
 == MWBKID25
 @99
 == BHAERD25
 @100
 == MWBKID25
 @101
 == BHAERD25
 @102
 == MWBKID25
 @103
 == BHAERD25
 @104
EXIT

CHAIN
  IF ~Global("MWBKH252","LOCALS",0)
  Global("MWBKH251","LOCALS",1)
  InParty("HaerDalis")
  See("HaerDalis")
  !StateCheck("HaerDalis",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKH252
  @105
DO ~SetGlobal("MWBKH252","LOCALS",1)~
 == BHAERD25
 @106
 == MWBKID25
 @107
 == BHAERD25
 @108
 == MWBKID25
 @109
 == BHAERD25
 @110
 == MWBKID25
 @111
 == BHAERD25
 @112
EXIT

CHAIN
  IF ~Global("MWBKE25","LOCALS",0)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKE25
  @113
DO ~SetGlobal("MWBKE25","LOCALS",1)~
 == BEDWIN25
 @114
 == MWBKID25
 @115
 == BEDWIN25
 @116
 == MWBKID25
 @117
EXIT

CHAIN
  IF ~Global("MWBKMA25","LOCALS",0)
  InParty("Mazzy")
  See("Mazzy")
  !StateCheck("Mazzy",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKMA25
  @118
DO ~SetGlobal("MWBKMA25","LOCALS",1)~
 == BMAZZY25
 @119
 == MWBKID25
 @120
 == BMAZZY25
 @121
 == MWBKID25
 @122
 == BMAZZY25
 @123
 == MWBKID25
 @124
 == BMAZZY25
 @125
 == MWBKID25
 @126
 == BMAZZY25
 @127
 == MWBKID25
 @128
EXIT

CHAIN
  IF ~Global("MWBKC25","LOCALS",0)
  InParty("Cernd")
  See("Cernd")
  !StateCheck("Cernd",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKC25
  @129
DO ~SetGlobal("MWBKC25","LOCALS",1)~
 == BCERND25
 @130
 == MWBKID25
 @131
 == BCERND25
 @132
 == MWBKID25
 @133
 == BCERND25
 @134
 == MWBKID25
 @135
 == BCERND25
 @136
 == MWBKID25
 @137
 == BCERND25
 @138
 == MWBKID25
 @139
EXIT

CHAIN
  IF ~Global("MWBKAN25","LOCALS",0)
  InParty("Anomen")
  See("Anomen")
  Global("AnomenIsNotKnight","GLOBAL",1)
  !StateCheck("Anomen",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKAN25
  @140
DO ~SetGlobal("MWBKAN25","LOCALS",1)~
 == BANOME25
 @141
 == MWBKID25
 @142
 == BANOME25
 @143
 == MWBKID25
 @144
 == BANOME25
 @145
 == MWBKID25
 @146
EXIT

CHAIN
  IF ~Global("KandAcombat25","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("AnomenIsKnight","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BANOME25 MWBKANC25
  @147
DO ~SetGlobal("KandAcombat25","GLOBAL",1)~
 == MWBKID25
 @148
 == BANOME25
 @149
 == MWBKID25
 @150
 == BANOME25
 @151 DO ~ClearAllActions() ActionOverride("Anomen",Attack("MWKido")) ActionOverride("MWKido",Attack("Anomen"))~
EXIT

APPEND ANOME25J
IF ~Global("finalconAak25","GLOBAL",1)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat25","GLOBAL",1)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN lastquabkijo25
 SAY @152
  IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @153 DO ~SetGlobal("finalconAak25","GLOBAL",2)~ GOTO iundnow25
  IF ~~ THEN REPLY @154 DO ~SetGlobal("finalconAak25","GLOBAL",2)~ GOTO iundnow25
  IF ~~ THEN REPLY @155 DO ~SetGlobal("finalconAak25","GLOBAL",2)~ GOTO iundnow25
  IF ~~ THEN REPLY @156 DO ~SetGlobal("finalconAak25","GLOBAL",2)~ GOTO iundnow25
  IF ~~ THEN REPLY @157 DO ~SetGlobal("finalconAak25","GLOBAL",2)~ GOTO fightpla125
END

IF ~Global("Anofightplay25","GLOBAL",0)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat25","GLOBAL",1)
  Global("finalconAak25","GLOBAL",2)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN fightpla125
 SAY @158  IF ~~ THEN DO ~SetGlobal("Anofightplay25","GLOBAL",1) ClearAllActions() Attack(Player1)~ EXIT
END

IF ~Global("Anomundnow25","GLOBAL",0)
  See(Player1)
  Dead("MWKido")
  Global("KandAcombat25","GLOBAL",1)
  Global("finalconAak25","GLOBAL",2)
  !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN BEGIN iundnow25
 SAY @159
  IF ~~ THEN DO ~SetGlobal("Anomundnow25","GLOBAL",1)~ EXIT
END
END

CHAIN
  IF ~Global("MWBKVA25","LOCALS",0)
  InParty("Valygar")
  See("Valygar")
  !StateCheck("MWKido",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKVA25
  @160
DO ~SetGlobal("MWBKVA25","LOCALS",1)~
 == BVALYG25
 @161
 == MWBKID25
 @162
 == BVALYG25
 @163
 == MWBKID25
 @164
 == BVALYG25
 @165
EXIT

CHAIN
  IF ~Global("MWBKN251","GLOBAL",0)
  InParty("Nalia")
  See("Nalia")
  !StateCheck("Nalia",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKN251
  @166
DO ~SetGlobal("MWBKN251","GLOBAL",1)~
 == BNALIA25
 @167
 == MWBKID25
 @168
 == BNALIA25
 @169
 == MWBKID25
 @170 
 == BNALIA25
 @171
 == MWBKID25
 @172
 == BNALIA25
 @173
EXIT

CHAIN
  IF ~Global("MWBKN252","GLOBAL",0)
  InParty("Nalia")
  See("Nalia")
  Global("MWBKN2","GLOBAL",1)
  Global("MWBKN251","GLOBAL",1)
  !StateCheck("Nalia",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN MWBKID25 MWConKN252
  @174
DO ~SetGlobal("MWBKN252","GLOBAL",1)~
 == BNALIA25
 @175
 == MWBKID25
 @176
 == BNALIA25
 @177
 == MWBKID25
 @178
 =
 @179
 == BNALIA25
 @180
 END
 IF ~~ THEN REPLY @181 EXTERN BNALIA25 corrupted
 IF ~~ THEN REPLY @182 EXTERN BNALIA25 corrupted
 IF ~~ THEN REPLY @183 EXTERN BNALIA25 notcorrupted

APPEND BNALIA25
IF ~Global("Nalcor","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKN252","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN BEGIN corrupted
 SAY @184
 IF ~~ THEN DO ~SetGlobal("Nalcor","GLOBAL",1) ChangeAlignment("NALIA",CHAOTIC_NEUTRAL)~ EXIT
END

IF ~Global("Nalnocor","GLOBAL",0)
  InParty("MWKido")
  See("MWKido")
  Global("MWBKN252","GLOBAL",1)
  !StateCheck("MWKido",CD_STATE_NOTVALID)~ THEN BEGIN notcorrupted
 SAY @185
 IF ~~ THEN DO ~SetGlobal("Nalnocor","GLOBAL",1)~ EXIT
END
END
