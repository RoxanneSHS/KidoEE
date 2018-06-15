BEGIN MWKIDP

IF ~Global("KidoJoined","LOCALS",1)~ THEN BEGIN KickOut
  SAY @0
  IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @2 GOTO whdywme
END

IF ~~ THEN BEGIN whdywme
  SAY @3
  IF ~~ THEN REPLY @4 GOTO fogooltisa
  IF ~~ THEN REPLY @5 GOTO Iamfreeman
END

IF ~~ THEN BEGIN fogooltisa
  SAY @6
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN Iamfreeman
  SAY @7
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",0) EscapeAreaMove("AR0400",2361,2251,14)~ EXIT
END

IF ~Global("KidoJoined","LOCALS",0)~ THEN BEGIN Rejoin
  SAY @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("KidoJoined","LOCALS",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @10 GOTO aksqswcg
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ THEN BEGIN aksqswcg
  SAY @12
  IF ~AreaCheck("AR0400")~ THEN REPLY @13 GOTO seemisery
  IF ~!AreaCheck("AR0400")~ THEN REPLY @14 GOTO recite
  IF ~~ THEN REPLY @15 GOTO duh
  IF ~~ THEN REPLY @16 GOTO Imbackagain
END

IF ~~ THEN BEGIN seemisery
  SAY @17
  IF ~~ THEN REPLY @18 GOTO suitis
  IF ~~ THEN REPLY @19 GOTO duh
END

IF ~~ THEN BEGIN recite
  SAY @20
  IF ~~ THEN REPLY @21 GOTO noofcy
  IF ~~ THEN REPLY @22 GOTO nemeag
  IF ~~ THEN REPLY @23 GOTO ofcoIjo
END

IF ~~ THEN BEGIN duh
  SAY @24
  IF ~~ THEN REPLY @25 GOTO toobasa
  IF ~~ THEN REPLY @26 GOTO ofcoIjo
END

IF ~~ THEN BEGIN nemeag
  SAY @27
  IF ~~ THEN REPLY @28 GOTO toobasa
  IF ~~ THEN REPLY @29 GOTO Imbackagain
END

IF ~~ THEN BEGIN suitis
  SAY @30
  IF ~~ THEN REPLY @31 GOTO seyaar
  IF ~~ THEN REPLY @32 GOTO Imbackagain
  IF ~~ THEN REPLY @33 GOTO Imbackagain
END

IF ~~ THEN BEGIN ofcoIjo
  SAY @34
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN toobasa
  SAY @35
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN seyaar
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN noofcy
  SAY @37
  IF ~~ THEN DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN Imbackagain
  SAY @38 
  IF ~~ THEN DO ~SetGlobal("KidoJoined","LOCALS",1) JoinParty()~ EXIT
END