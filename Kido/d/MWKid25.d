EXTEND_TOP FATESP 6 #4
  IF ~!Dead("MWKido")
!InMyArea("MWKido")
Global("KidoSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("MWKido25",[1999.1228],0)
SetGlobal("KidoSummoned","GLOBAL",1)~ GOTO 8
END

BEGIN MWKID25

IF ~Global("KidoSummoned","GLOBAL",1)~ THEN BEGIN Ksummon
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("KidoSummoned","GLOBAL",2)~ GOTO timetofight
  IF ~~ THEN REPLY @3 DO ~SetGlobal("KidoSummoned","GLOBAL",2)~ GOTO timetokill
  IF ~~ THEN REPLY @4 DO ~SetGlobal("KidoSummoned","GLOBAL",2)~ GOTO loyalcyric 
  IF ~~ THEN REPLY @5 DO ~SetGlobal("KidoSummoned","GLOBAL",2)~ GOTO leavealready
END

IF ~~ THEN BEGIN timetofight
  SAY @6
  IF ~~ THEN REPLY @7 GOTO onward  
  IF ~~ THEN REPLY @8 GOTO onward 
  IF ~~ THEN REPLY @9 GOTO pity 
END

IF ~~ THEN BEGIN timetokill
  SAY @10
  IF ~~ THEN REPLY @11 GOTO onward
  IF ~~ THEN REPLY @12 GOTO waitasec 
END

IF ~~ THEN BEGIN loyalcyric
  SAY @13
  IF ~~ THEN REPLY @14 GOTO missionofk
  IF ~~ THEN REPLY @15 GOTO leavealready
END

IF ~~ THEN BEGIN missionofk
  SAY @16
  IF ~~ THEN REPLY @17 GOTO explainmission 
  IF ~~ THEN REPLY @18 GOTO leavealready   
END

IF ~~ THEN BEGIN explainmission
  SAY @19
  IF ~~ THEN REPLY @20 GOTO onward  
  IF ~~ THEN REPLY @21 GOTO leavealready 
END

IF ~~ THEN BEGIN waitasec
  SAY @22
  IF ~~ THEN REPLY @23 GOTO nogo
END

IF ~~ THEN BEGIN onward 
  SAY @24
  IF ~~ THEN REPLY @25 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @26 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @27 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT

END

IF ~~ THEN BEGIN leavealready
  SAY @28
  IF ~~ THEN REPLY @29 DO ~MoveToPointNoInterrupt([1450.1385])~ EXIT
END

IF ~~ THEN BEGIN pity
  SAY @30
  IF ~~ THEN REPLY @31 DO ~MoveToPointNoInterrupt([1450.1385])~ EXIT
END

IF ~~ THEN BEGIN nogo
  SAY @32
  IF ~~ THEN REPLY @33 DO ~MoveToPointNoInterrupt([1450.1385])~ EXIT
END

IF ~Global("KidoSummoned","GLOBAL",2)~ THEN BEGIN Ksummon2
  SAY @34 
  IF ~~ THEN REPLY @35 GOTO Iamin
  IF ~~ THEN REPLY @36 GOTO pityfory
  IF ~~ THEN REPLY @37 GOTO simplyno  
END

IF ~~ THEN BEGIN Iamin
  SAY @38
  IF ~~ THEN REPLY @39 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @40 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN pityfory
  SAY @41
  IF ~~ THEN REPLY @42 EXIT
END

IF ~~ THEN BEGIN simplyno
  SAY @43
  IF ~~ THEN REPLY @44 GOTO notellthat
  IF ~~ THEN REPLY @45 GOTO pityfory
END

IF ~~ THEN BEGIN notellthat
  SAY @46
  IF ~~ THEN REPLY @47 GOTO forcyric
  IF ~~ THEN REPLY @48 GOTO Iamin
END

IF ~~ THEN BEGIN forcyric
  SAY @49
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END
