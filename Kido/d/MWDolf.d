BEGIN MWDOLF

IF ~Global("Kidopersonalquest","GLOBAL",3)~ THEN createtemp
SAY @0
IF ~~ THEN DO ~AddXPObject(Player1,4500)
AddXPObject(Player2,4500)
AddXPObject(Player3,4500)
AddXPObject(Player4,4500)
AddXPObject(Player5,4500)
AddXPObject(Player6,4500)
ReputationInc(-2)
SetGlobal("Kidopersonalquest","GLOBAL",4)
ClearAllActions()
FaceObject(Player1)~ GOTO createtemp2
END

IF ~~ THEN BEGIN createtemp2
SAY @1
IF ~~ THEN REPLY @2 DO ~SetGlobal("askquestionkpq","GLOBAL",1)~ GOTO createtemp3
IF ~~ THEN REPLY @3 GOTO createtemp4
END

IF ~~ THEN BEGIN createtemp3
SAY @4
IF ~~ THEN REPLY @5 GOTO createtemp4
END

IF ~~ THEN BEGIN createtemp4
SAY @6
IF ~~ THEN REPLY @7 GOTO createtemp12
IF ~!Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @8 GOTO createtemp5
IF ~Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @8 GOTO createtemp6
IF ~~ THEN REPLY @9 GOTO createtemp7
IF ~~ THEN REPLY @10 GOTO createtemp10
IF ~~ THEN REPLY @11 GOTO createtemp8
END

IF ~~ THEN BEGIN createtemp5
SAY @12
IF ~~ THEN REPLY @13 GOTO createtemp12
IF ~~ THEN REPLY @14 GOTO createtemp9
IF ~~ THEN REPLY @15 GOTO createtemp7
IF ~~ THEN REPLY @10 GOTO createtemp10
IF ~~ THEN REPLY @16 GOTO createtemp8
END

IF ~~ THEN BEGIN createtemp6
SAY @17
IF ~~ THEN REPLY @13 GOTO createtemp12
IF ~~ THEN REPLY @14 GOTO createtemp9
IF ~~ THEN REPLY @15 GOTO createtemp7
IF ~~ THEN REPLY @10 GOTO createtemp10
IF ~~ THEN REPLY @16 GOTO createtemp8
END

IF ~~ THEN BEGIN createtemp7
SAY @18
IF ~~ UNSOLVED_JOURNAL @19
EXIT
END

IF ~~ THEN BEGIN createtemp8
SAY @20
IF ~~ UNSOLVED_JOURNAL @21
EXIT
END

IF ~~ THEN BEGIN createtemp9
SAY @22
= @23
IF ~~ UNSOLVED_JOURNAL @24
EXIT
END

IF ~~ THEN BEGIN createtemp10
SAY @25
IF ~~ THEN REPLY @26 GOTO createtemp11
IF ~!Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @27 GOTO createtemp5
IF ~Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @27 GOTO createtemp6
IF ~~ THEN REPLY @28 GOTO createtemp8
END

IF ~~ THEN BEGIN createtemp11
SAY @29
IF ~~ THEN REPLY @30 GOTO createtemp14
IF ~!Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @31 GOTO createtemp5
IF ~Global("askquestionkpq","GLOBAL",1)~ THEN REPLY @32 GOTO createtemp6
IF ~~ THEN REPLY @33 GOTO createtemp8
END

IF ~~ THEN BEGIN createtemp12
SAY @34
IF ~~ THEN REPLY @35 GOTO createtemp8 
IF ~~ THEN REPLY @36 GOTO createtemp13
END

IF ~~ THEN BEGIN createtemp13
SAY @37
IF ~~ UNSOLVED_JOURNAL @38
EXIT
END

IF ~~ THEN BEGIN createtemp14
SAY @37
IF ~~ UNSOLVED_JOURNAL @39
EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",4) !PartyHasItem("MWChSacr")~ THEN BEGIN createtemp15
SAY @40
IF ~~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",4)
PartyHasItem("MWChSacr")~ THEN startcyricsacrifice
SAY @41
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",5)
TakePartyItem("MWChSacr")
AddXPObject(Player1,10500)
AddXPObject(Player2,10500)
AddXPObject(Player3,10500)
AddXPObject(Player4,10500)
AddXPObject(Player5,10500)
AddXPObject(Player6,10500)
ReputationInc(-1)
MoveToPointNoInterrupt([426.285])
ClearAllActions() 
StartCutSceneMode()
StartCutScene("MWCySacr")~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",7)~ THEN BEGIN createtemp16
SAY @42
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",8)~
UNSOLVED_JOURNAL @43 EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",9)~ THEN BEGIN createtemp17
SAY @44
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",10)~
UNSOLVED_JOURNAL @45
EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",8) !PartyHasItem("mwkdagg")~ THEN BEGIN createtemp18
SAY @46
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",11)~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",10) !PartyHasItem("mwkdagg")~ THEN BEGIN createtemp19
SAY @47
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",11)~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",11) !PartyHasItem("mwkdagg")~ THEN BEGIN createtemp20
SAY @48
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",12)~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",13)~ THEN BEGIN createtemp21
SAY @49
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",14)~ EXIT
END

IF ~Global("Dagger_Not_Ready","LOCALS",1)
PartyHasItem("mwkdagg")
InParty("MWKido") !Dead("MWKido")
LevelLT("MWKido",14)~ THEN Get_Lost
SAY @50 
IF ~~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",15)~ THEN BEGIN createtemp21
SAY @51
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",16)
ClearAllActions()
StartCutSceneMode()
StartCutScene("MWkdagRi")~ EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",17)~ THEN BEGIN createtemp22
SAY @52
IF ~~ THEN DO ~SetGlobal("Kidopersonalquest","GLOBAL",18)
EraseJournalEntry(@53)
EraseJournalEntry(@54)
EraseJournalEntry(@45)~
SOLVED_JOURNAL @55
EXIT
END

IF ~Global("Kidopersonalquest","GLOBAL",18)~ THEN BEGIN createtemp23
SAY @56
IF ~~ THEN REPLY @57 GOTO createtemp24
IF ~!Global("askaboutdectemple","GLOBAL",1)~ THEN REPLY @58 GOTO createtemp25
IF ~~ THEN REPLY @59 GOTO createtemp26
IF ~~ THEN REPLY @60 GOTO createtemp27
END

IF ~~ THEN BEGIN createtemp24
SAY @61
IF ~~ THEN DO ~StartStore("MWDolf",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN createtemp25
SAY @62
IF ~~ THEN REPLY @63 DO ~SetGlobal("askaboutdectemple","GLOBAL",1)~ GOTO createtemp24
IF ~~ THEN REPLY @64 DO ~SetGlobal("askaboutdectemple","GLOBAL",1)~ GOTO createtemp26
IF ~~ THEN REPLY @65 DO ~SetGlobal("askaboutdectemple","GLOBAL",1)~ GOTO createtemp27
END

IF ~~ THEN BEGIN createtemp26
SAY @66
IF ~~ THEN REPLY @67 GOTO createtemp24
IF ~~ THEN REPLY @68 GOTO createtemp27
END

IF ~~ THEN BEGIN createtemp27
SAY @69
IF ~~ THEN EXIT
END

CHAIN IF ~Global("preKidopersonalquest","GLOBAL",2)~ THEN MWDOLF givekidoquest
@70 DO ~SetGlobal("preKidopersonalquest","GLOBAL",3) SetGlobal("Kidopersonalquest","GLOBAL",1)~
== MWKIDJ @71
== MWDOLF @72
== MWKIDJ @73
== MWDOLF @74
== MWKIDJ @75
== MWDOLF @76
== MWKIDJ @77
== MWDOLF @78
== MWKIDJ @79 DO ~ActionOverride("MWDolf",EscapeArea())~
END 
IF ~~ UNSOLVED_JOURNAL @80 EXIT

I_C_T MWDOLF createtemp11 Korgan
== KORGANJ IF ~InParty("Korgan") See("Korgan")~ THEN @81
END

I_C_T MWDOLF createtemp5 Korgan2
== KORGANJ IF ~InParty("Korgan") See("Korgan")~ THEN @82
END

I_C_T MWDOLF createtemp5 Yoshi
== YOSHJ IF ~InParty("Yoshimo") See("Yoshimo")~ THEN @83
END

I_C_T MWDOLF createtemp5 Vicy
== VICONIJ IF ~InParty("Viconia") See("Viconia")~ THEN @84
END

I_C_T MWDOLF createtemp5 Minsc
== MINSCJ IF ~InParty("Minsc") See("Minsc")~ THEN @85
END