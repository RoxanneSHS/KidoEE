BEGIN MWKICHC
BEGIN MWKICHW
BEGIN MWKICHT
BEGIN MWKICHM
BEGIN MWKICHR

CHAIN IF ~Global("Kidochallstart","GLOBAL",3)~ THEN MWKICHC angrypast
@0 DO ~SetGlobal("Kidochallstart","GLOBAL",4)~
== MWKIDJ @1
== MWKICHC @2
== MWKIDJ @3
== MWKICHC @4
== MWKIDJ @5
== MWKICHW @6
== MWKICHC @7
== MWKIDJ @8
== MWKICHT @9
== MWKICHM @10
== MWKICHR @11
== MWKICHC @12
= @13
= @14
= @15
= @16
= @17
== MWKIDJ @18
== MWKICHW @19
== MWKICHC @20
= @21
= @22
END
IF ~~ THEN REPLY @23  EXTERN MWKICHC angrypast2
IF ~~ THEN REPLY @24 EXTERN MWKICHC angrypast3
IF ~~ THEN REPLY @25 EXTERN MWKICHC angrypast4 

CHAIN IF ~Global("Kidochallstart","GLOBAL",8)~ THEN MWKICHC angrypast7
@26 DO ~SetGlobal("Kidochallstart","GLOBAL",12)
ActionOverride("MWKICHC",EscapeArea())
ActionOverride("MWKICHW",EscapeArea())
ActionOverride("MWKICHR",EscapeArea())
ActionOverride("MWKICHM",EscapeArea())
ActionOverride("MWKICHT",EscapeArea())~ EXIT

CHAIN IF ~Global("Kidochallstart","GLOBAL",9)~ THEN MWKICHC angrypast8
@27 DO ~SetGlobal("Kidochallstart","GLOBAL",12)
ActionOverride("MWKICHC",EscapeArea())
ActionOverride("MWKICHW",EscapeArea())
ActionOverride("MWKICHR",EscapeArea())
ActionOverride("MWKICHM",EscapeArea())
ActionOverride("MWKICHT",EscapeArea())~ EXIT

CHAIN IF ~Global("Kidochallstart","GLOBAL",10)~ THEN MWKICHC angrypast9
@28 DO ~SetGlobal("Kidochallstart","GLOBAL",12)
ActionOverride("MWKICHC",EscapeArea())
ActionOverride("MWKICHW",EscapeArea())
ActionOverride("MWKICHR",EscapeArea())
ActionOverride("MWKICHM",EscapeArea())
ActionOverride("MWKICHT",EscapeArea())~ EXIT

CHAIN IF ~Global("Kidochallstart","GLOBAL",11)~ THEN MWKICHC angrypast10
@29 DO ~SetGlobal("Kidochallstart","GLOBAL",12)
ActionOverride("MWKICHC",EscapeArea())
ActionOverride("MWKICHW",EscapeArea())
ActionOverride("MWKICHR",EscapeArea())
ActionOverride("MWKICHM",EscapeArea())
ActionOverride("MWKICHT",EscapeArea())~ EXIT

APPEND MWKICHC
IF ~Global("Kidochallstart","GLOBAL",4)~ THEN BEGIN angrypast2
SAY @30 
IF ~~ THEN DO ~ClearAllActions()
SetGlobal("Kidochallstart","GLOBAL",5)
ActionOverride("MWKICHC",ForceSpell("MWKICHC",CLERIC_CHAOTIC_COMMANDS))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_STONE_SKIN))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_MIRROR_IMAGE))
ActionOverride("MWKICHW",ForceSpell("MWKICHW",BERSERKER_RAGE))
ActionOverride("MWKICHC",Enemy())
ActionOverride("MWKICHW",Enemy())
ActionOverride("MWKICHR",Enemy())
ActionOverride("MWKICHM",Enemy())
ActionOverride("MWKICHT",Enemy())~ EXIT
END

IF ~Global("Kidochallstart","GLOBAL",4)~ THEN BEGIN angrypast3
SAY @31
= @32 
IF ~~ THEN DO ~ClearAllActions()
SetGlobal("Kidochallstart","GLOBAL",5)
ActionOverride("MWKICHC",ForceSpell("MWKICHC",CLERIC_CHAOTIC_COMMANDS))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_STONE_SKIN))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_MIRROR_IMAGE))
ActionOverride("MWKICHW",Spell("MWKICHW",BERSERKER_RAGE))
ActionOverride("MWKICHC",Enemy())
ActionOverride("MWKICHW",Enemy())
ActionOverride("MWKICHR",Enemy())
ActionOverride("MWKICHM",Enemy())
ActionOverride("MWKICHT",Enemy())~
EXIT
END

IF ~~ THEN BEGIN angrypast4
SAY @33
= @34 
IF ~~ THEN REPLY @35 GOTO angrypast5
IF ~~ THEN REPLY @36 GOTO angrypast6
IF ~~ THEN REPLY @37 GOTO angrypast6
END

IF ~~ THEN BEGIN angrypast5
SAY @38 
IF ~~ THEN DO ~ClearAllActions()
SetGlobal("Kidochallstart","GLOBAL",6)
ActionOverride("MWKido",LeaveParty())
ActionOverride("MWKICHC",ForceSpell("MWKICHC",CLERIC_CHAOTIC_COMMANDS))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_STONE_SKIN))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_MIRROR_IMAGE))
ActionOverride("MWKICHW",Spell("MWKICHW",BERSERKER_RAGE))
ActionOverride("MWKICHC",Attack("MWKido"))
ActionOverride("MWKICHW",Attack("MWKido"))
ActionOverride("MWKICHR",Attack("MWKido"))
ActionOverride("MWKICHM",Attack("MWKido"))
ActionOverride("MWKICHT",Attack("MWKido"))
ActionOverride("MWKido",Attack("MWKICHC"))~ EXIT
END

IF ~~ THEN BEGIN angrypast6
SAY @39 
IF ~~ THEN DO ~ClearAllActions()
SetGlobal("Kidochallstart","GLOBAL",7)
ActionOverride("MWKido",LeaveParty())
ActionOverride("MWKICHC",ForceSpell("MWKICHC",CLERIC_CHAOTIC_COMMANDS))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_STONE_SKIN))
ActionOverride("MWKICHM",ForceSpell("MWKICHM",WIZARD_MIRROR_IMAGE))
ActionOverride("MWKICHW",Spell("MWKICHW",BERSERKER_RAGE))
ActionOverride("MWKICHC",Attack("MWKido"))
ActionOverride("MWKICHW",Attack("MWKido"))
ActionOverride("MWKICHR",Attack("MWKido"))
ActionOverride("MWKICHM",Attack("MWKido"))
ActionOverride("MWKICHT",Attack("MWKido"))
ActionOverride("MWKido",Enemy())
ActionOverride("MWKido",Attack(Player1))~ EXIT
END
END
