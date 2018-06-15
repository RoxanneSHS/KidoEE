BEGIN MWKID

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
  SAY @0 
  IF ~!Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @1 GOTO Disagree
  IF ~!Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @2 GOTO Agree
  IF ~!InParty("Keldorn") !Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @3 GOTO Greet
  IF ~InParty("Keldorn") !Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @3 EXTERN KELDORJ KelnlKi
  IF ~!Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @4 GOTO GoAway
  IF ~Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("noseeplay","GLOBAL",1)~ GOTO TellofBiff
  IF ~Global("HaerDalisFree","GLOBAL",1)~ THEN REPLY @6 DO ~SetGlobal("noseeplay","GLOBAL",1)~ GOTO TellofBiff
END

IF ~~ THEN BEGIN TellofBiff
  SAY @7
  IF ~~ THEN REPLY @8 GOTO Disagree
  IF ~~ THEN REPLY @9 GOTO Agree
  IF ~!InParty("Keldorn")~ THEN REPLY @3 GOTO Greet
  IF ~InParty("Keldorn")~ THEN REPLY @3 EXTERN KELDORJ KelnlKi
  IF ~~ THEN REPLY @4 GOTO GoAway
END

IF ~~ THEN BEGIN Disagree
  SAY @10
  IF ~~ THEN REPLY @11 GOTO Agree 
  IF ~!InParty("Keldorn")~ THEN REPLY @12 GOTO Greet
  IF ~InParty("Keldorn")~ THEN REPLY @12 EXTERN KELDORJ KelnlKi
  IF ~~ THEN REPLY @13 GOTO GoAway
END

IF ~~ THEN BEGIN Agree
  SAY @14
  IF ~~ THEN REPLY @15 GOTO Greet
  IF ~!InParty("Keldorn")~ THEN REPLY @16 GOTO Greet
  IF ~InParty("Keldorn")~ THEN REPLY @16 EXTERN KELDORJ KelnlKi
  IF ~~ THEN REPLY @17 GOTO Disappointed
END

IF ~~ THEN BEGIN Disappointed
  SAY @18
  IF ~!InParty("Keldorn")~ THEN REPLY @19 GOTO Greet
  IF ~InParty("Keldorn")~ THEN REPLY @19 EXTERN KELDORJ KelnlKi
  IF ~~ THEN REPLY @20 GOTO GoAway
END

IF ~~ THEN BEGIN Greet
  SAY @21
  IF ~~ THEN REPLY @22 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @23 GOTO Takearisk
  IF ~~ THEN REPLY @24 GOTO AbruptEnd
END

IF ~~ THEN BEGIN Takearisk 
  SAY @25
  IF ~~ THEN REPLY @26 DO ~SetGlobal("KidoJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @27 GOTO AbruptEnd
END

IF ~~ THEN BEGIN GoAway
  SAY @28
  IF ~Global("HaerDalisFree","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN AbruptEnd
  SAY @29
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN liftspirit
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO Nah
  IF ~~ THEN REPLY @32 GOTO Askaway 
  IF ~~ THEN REPLY @33 GOTO Leave
  IF ~Global("noseeplay","GLOBAL",1)~ THEN REPLY @34 GOTO Askaway
END

IF ~~ THEN BEGIN Nah
  SAY @35
  IF ~~ THEN REPLY @36 GOTO Nodebate
  IF ~CheckStatGT(PLAYER1,12,CHR)~ THEN REPLY @37 GOTO Pojoin
  IF ~~ THEN REPLY @38 GOTO Askaway
END

IF ~~ THEN BEGIN Pojoin
  SAY @39
  IF ~~ THEN REPLY @40 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @41 GOTO Turndown
END

IF ~~ THEN BEGIN Askaway
  SAY @42
  IF ~~ THEN REPLY @43 GOTO WaJoin
  IF ~~ THEN REPLY @44 GOTO Loveto
  IF ~~ THEN REPLY @45 GOTO AbruptEnd
END

IF ~~ THEN BEGIN WaJoin
  SAY @46 
  IF ~~ THEN REPLY @47 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @48 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @49 GOTO AbruptEnd
END

IF ~~ THEN BEGIN Loveto
  SAY @50 
  IF ~~ THEN REPLY @51 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Leave
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Nodebate
  SAY @53
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Turndown
  SAY @54
  IF ~~ THEN EXIT
END

APPEND KELDORJ
IF ~Global("KelnlKid","GLOBAL",0)
  See(Player1)
  !StateCheck(Player1,STATE_SLEEPING)~ THEN KelnlKi
 SAY @55
  IF ~~ THEN DO ~SetGlobal("KelnlKid","GLOBAL",1)~ EXTERN MWKID Greet
END
END