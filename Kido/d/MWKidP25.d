BEGIN MWKIDP25

IF ~Global("Kido25Joined","LOCALS",1)~ THEN BEGIN KickOut25
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~!AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("Kido25Joined","LOCALS",0)~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("Kido25Joined","LOCALS",0) MoveToPointNoInterrupt([1450.1385])~ EXIT
END

IF ~Global("Kido25Joined","LOCALS",0)~ THEN BEGIN Rejoin25
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("Kido25Joined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @5 GOTO aksqswcg25
  IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN aksqswcg25
  SAY @7
  IF ~~ THEN REPLY @8 GOTO recite25
  IF ~~ THEN REPLY @9 GOTO duh25
  IF ~~ THEN REPLY @10 GOTO Imbackagain25
END

IF ~~ THEN BEGIN recite25
  SAY @11
  IF ~~ THEN REPLY @12 GOTO noofcy25
  IF ~~ THEN REPLY @13 GOTO nemeag25
  IF ~~ THEN REPLY @14 GOTO ofcoIjo25
END

IF ~~ THEN BEGIN duh25
  SAY @15
  IF ~~ THEN REPLY @16 GOTO toobasa25
  IF ~~ THEN REPLY @17 GOTO ofcoIjo25
END

IF ~~ THEN BEGIN nemeag25
  SAY @18
  IF ~~ THEN REPLY @19 GOTO toobasa25
  IF ~~ THEN REPLY @20 GOTO Imbackagain25
END


IF ~~ THEN BEGIN ofcoIjo25
  SAY @21
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN toobasa25
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN noofcy25
  SAY @23
  IF ~~ THEN DO ~Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN Imbackagain25
  SAY @24
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",1)~ EXIT
END