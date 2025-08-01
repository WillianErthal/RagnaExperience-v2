 (cd "$(git rev-parse --show-toplevel)" && git apply --3way <<'EOF' 
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -1,1443 +1,1708 @@
+# This file is a part of rAthena.
+#   Copyright(C) 2024 rAthena Development Team
+#   https://rathena.org - https://github.com/rathena
+#
+# This program is free software: you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation, either version 3 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program. If not, see <http://www.gnu.org/licenses/>.
+#
+###########################################################################
+# Monster Database
+###########################################################################
+#
+# Monster Settings
+#
+###########################################################################
+# - Id                      Monster ID.
+#   AegisName               Server name to reference the monster in scripts and lookups, should use no spaces.
+#   Name                    Name in English.
+#   JapaneseName            Name in Japanese. (Default: 'Name' value)
+#   Level                   Level. (Default: 1)
+#   Hp                      Total HP. (Default: 1)
+#   Sp                      Total SP. (Default: 1)
+#   BaseExp                 Base experience gained. (Default: 0)
+#   JobExp                  Job experience gained. (Default: 0)
+#   MvpExp                  MVP experience gained. (Default: 0)
+#   Attack                  Minimum attack in pre-renewal and base attack in renewal. (Default: 0)
+#   Attack2                 Maximum attack in pre-renewal and base magic attack in renewal. (Default: 0)
+#   Defense                 Physical defense of the monster, reduces melee and ranged physical attack/skill damage. (Default: 0)
+#   MagicDefense            Magic defense of the monster, reduces magical skill damage. (Default: 0)
+#   Resistance              Physical resistance of the monster, reduces melee and ranged physical attack/skill damage. (Default: 0)
+#   MagicResistance         Magic resistance of the monster, reduces magical skill damage. (Default: 0)
+#   Str                     Strength which affects attack. (Default: 1)
+#   Agi                     Agility which affects flee. (Default: 1)
+#   Vit                     Vitality which affects defense. (Default: 1)
+#   Int                     Intelligence which affects magic attack. (Default: 1)
+#   Dex                     Dexterity which affects hit rate. (Default: 1)
+#   Luk                     Luck which affects perfect dodge/lucky flee/perfect flee/lucky dodge rate. (Default: 1)
+#   AttackRange             Attack range. (Default: 0)
+#   SkillRange              Skill cast range. (Default: 0)
+#   ChaseRange              Chase range. (Default: 0)
+#   Size                    Size. (Default: Small)
+#   Race                    Race. (Default: Formless)
+#   RaceGroups:             List of secondary groups the monster may be part of. (Optional)
+#     <group>: <value>      Group to toggle.
+#   Element                 Element. (Default: Neutral)
+#   ElementLevel            Level of element. (Default: 1)
+#   WalkSpeed               Walk speed. (Default: DEFAULT_WALK_SPEED)
+#   AttackDelay             Attack speed. (Default: 0)
+#   AttackMotion            Attack animation speed. (Default: 0)
+#   ClientAttackMotion      Client attack speed. (Default: AttackMotion)
+#   DamageMotion            Damage animation speed. (Default: 0)
+#   DamageTaken             Rate at which the monster will receive incoming damage. (Default: 100)
+#   GroupId                 Monster group ID. (Default: 0)
+#   Title                   Monster title. (Default: None)
+#   Ai                      Aegis monster type AI behavior. (Default: 06)
+#   Class                   Aegis monster class. (Default: Normal)
+#   Modes:                  List of unique behavior not defined by AI, Class, or Attribute. (Optional)
+#     <mode>: <value>       Mode to toggle.
+#   MvpDrops:               List of possible MVP prize items. Max of MAX_MVP_DROP. (Optional)
+#     - Item                Item name.
+#       Rate                Drop rate of item.
+#       RandomOptionGroup   Random Option Group applied to item on drop. (Default: None)
+#       Index               Index used for overwriting item. (Optional)
+#   Drops:                  List of possible normal item drops. Max of MAX_MOB_DROP. (Optional)
+#     - Item                Item name.
+#       Rate                Drop rate of item.
+#       StealProtected      If the item is shielded from TF_STEAL. (Default: false)
+#       RandomOptionGroup   Random Option Group applied to item on drop. (Default: None)
+#       Index               Index used for overwriting item. (Optional)
+###########################################################################
+
 Header:
   Type: MOB_DB
-  Version: 3
+  Version: 5
 
 Body:
+
   - Id: 1001
     AegisName: SCORPION
     Name: Escorpio
     Level: 24
     Hp: 1109
     BaseExp: 287
     JobExp: 176
     Attack: 80
     Attack2: 135
     Defense: 30
     Agi: 24
     Vit: 24
     Int: 5
     Dex: 52
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1564
     AttackMotion: 864
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Boody_Red
         Rate: 70
       - Item: Scorpion's_Tail
         Rate: 5500
       - Item: Elunium_Stone
         Rate: 57
       - Item: Solid_Shell
         Rate: 210
       - Item: Fine_Grit
         Rate: 100
       - Item: Yellow_Herb
         Rate: 200
       - Item: Lusty_Iron
         Rate: 20
       - Item: Scorpion_Card
         Rate: 1
         StealProtected: true
   - Id: 1002
     AegisName: PORING
     Name: Poring
     Level: 1
     Hp: 50
     BaseExp: 2
     JobExp: 1
     Attack: 7
     Attack2: 10
     MagicDefense: 5
+    Int: 0
     Dex: 6
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Jellopy
         Rate: 7000
       - Item: Knife_
         Rate: 100
       - Item: Sticky_Mucus
         Rate: 400
       - Item: Apple
         Rate: 1000
       - Item: Empty_Bottle
         Rate: 1500
       - Item: Apple
         Rate: 150
       - Item: Unripe_Apple
         Rate: 20
       - Item: Poring_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1003
+#    AegisName: TESTEGG
+#    Name: Test Egg
+#    Level: 2
+#    Hp: 100000
+#    BaseExp: 10
+#    JobExp: 10
+#    Attack: 3
+#    Attack2: 9
+#    Defense: 99
+#    Agi: 99
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Small
+#    Race: Insect
+#    Element: Earth
+#    ElementLevel: 1
+#    WalkSpeed: 512
+#    AttackMotion: 512
   - Id: 1004
     AegisName: HORNET
     Name: Zango
     Level: 8
     Hp: 169
     BaseExp: 19
     JobExp: 15
     Attack: 22
     Attack2: 27
     Defense: 5
     MagicDefense: 5
     Str: 6
     Agi: 20
     Vit: 8
     Int: 10
     Dex: 17
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1292
     AttackMotion: 792
+    ClientAttackMotion: 648
     DamageMotion: 216
     Ai: 03
     Modes:
       Detector: true
     Drops:
       - Item: Wind_Of_Verdure
         Rate: 80
       - Item: Bee_Sting
         Rate: 9000
       - Item: Jellopy
         Rate: 3500
       - Item: Main_Gauche_
         Rate: 15
       - Item: Green_Herb
         Rate: 350
       - Item: Honey
         Rate: 150
       - Item: Hornet_Card
         Rate: 1
         StealProtected: true
   - Id: 1005
     AegisName: FARMILIAR
     Name: Familiar
     Level: 8
     Hp: 155
     BaseExp: 28
     JobExp: 15
     Attack: 20
     Attack2: 28
     Agi: 12
     Vit: 8
     Int: 5
     Dex: 28
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 432
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Tooth_Of_Bat
         Rate: 5500
       - Item: Falchion_
         Rate: 20
       - Item: Ribbon_
         Rate: 15
       - Item: Wing_Of_Fly
         Rate: 50
       - Item: Grape
         Rate: 100
       - Item: Red_Herb
         Rate: 700
       - Item: Center_Potion
         Rate: 50
       - Item: Farmiliar_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1006
+#    AegisName: THIEF_BUG_LARVA
+#    Name: Thief Bug Larva
+#    Level: 1
+#    Size: Small
+#    Race: Formless
+#    Element: Water
+#    ElementLevel: 0
+#    Ai: 25
+#    Modes:
+#      NoCast: true
+#      CastSensorChase: true
+#      CastSensorIdle: true
+#      ChangeChase: true
   - Id: 1007
     AegisName: FABRE
     Name: Fabre
     Level: 2
     Hp: 63
     BaseExp: 3
     JobExp: 2
     Attack: 8
     Attack2: 11
     Agi: 2
     Vit: 4
+    Int: 0
     Dex: 7
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Fluff
         Rate: 6500
       - Item: Feather
         Rate: 500
       - Item: Club_
         Rate: 80
       - Item: Azure_Jewel
         Rate: 5
       - Item: Green_Herb
         Rate: 700
       - Item: Clover
         Rate: 1000
       - Item: Club
         Rate: 200
       - Item: Fabre_Card
         Rate: 1
         StealProtected: true
   - Id: 1008
     AegisName: PUPA
     Name: Pupa
     Level: 2
     Hp: 427
     BaseExp: 2
     JobExp: 4
     Attack: 1
     Attack2: 2
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 768
     DamageMotion: 1
     Modes:
       Detector: true
     Drops:
       - Item: Phracon
         Rate: 80
       - Item: Chrysalis
         Rate: 5500
       - Item: Sticky_Mucus
         Rate: 600
       - Item: Guard_
         Rate: 2
       - Item: Shell
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 600
       - Item: Iron_Ore
         Rate: 200
       - Item: Pupa_Card
         Rate: 1
         StealProtected: true
   - Id: 1009
     AegisName: CONDOR
     Name: Condor
     Level: 5
     Hp: 92
     BaseExp: 6
     JobExp: 5
     Attack: 11
     Attack2: 14
     Agi: 13
     Vit: 5
+    Int: 0
     Dex: 13
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1148
     AttackMotion: 648
+    ClientAttackMotion: 504
     DamageMotion: 480
     Ai: 03
     Drops:
       - Item: Talon
         Rate: 9000
       - Item: Bow_
         Rate: 150
       - Item: Yellow_Gemstone
         Rate: 80
       - Item: Arrow
         Rate: 5500
       - Item: Meat
         Rate: 400
       - Item: Feather_Of_Birds
         Rate: 2000
       - Item: Orange
         Rate: 600
       - Item: Condor_Card
         Rate: 1
         StealProtected: true
   - Id: 1010
     AegisName: WILOW
     Name: Salgueiro
     Level: 4
     Hp: 95
     BaseExp: 5
     JobExp: 4
     Attack: 9
     Attack2: 12
     Defense: 5
     MagicDefense: 15
     Agi: 4
     Vit: 8
     Int: 30
     Dex: 9
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 432
     Ai: 01
     Drops:
       - Item: Tree_Root
         Rate: 9000
       - Item: Wooden_Block
         Rate: 100
       - Item: Resin
         Rate: 1500
       - Item: Sweet_Potato
         Rate: 700
       - Item: Tree_Of_Archer_3
         Rate: 3500
       - Item: Tree_Of_Archer_2
         Rate: 2000
       - Item: Tree_Of_Archer_1
         Rate: 1000
       - Item: Wilow_Card
         Rate: 1
         StealProtected: true
   - Id: 1011
     AegisName: CHONCHON
     Name: ChonChon
     Level: 4
     Hp: 67
     BaseExp: 5
     JobExp: 4
     Attack: 10
     Attack2: 13
     Defense: 10
     Agi: 10
     Vit: 4
     Int: 5
     Dex: 12
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1076
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Iron
         Rate: 50
       - Item: Shell
         Rate: 6500
       - Item: Jellopy
         Rate: 1500
       - Item: Cutter_
         Rate: 55
       - Item: Wing_Of_Fly
         Rate: 100
       - Item: Chonchon_Doll
         Rate: 5
       - Item: Iron_Ore
         Rate: 150
       - Item: Chonchon_Card
         Rate: 1
         StealProtected: true
   - Id: 1012
     AegisName: RODA_FROG
     Name: Sapo de Roda
     Level: 5
     Hp: 133
     BaseExp: 6
     JobExp: 5
     Attack: 11
     Attack2: 14
     MagicDefense: 5
     Agi: 5
     Vit: 5
     Int: 5
     Dex: 10
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2016
     AttackMotion: 816
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 01
     Drops:
       - Item: Sticky_Webfoot
         Rate: 9000
       - Item: Spawn
         Rate: 500
       - Item: Green_Herb
         Rate: 300
       - Item: Azure_Jewel
         Rate: 7
       - Item: Empty_Bottle
         Rate: 2000
       - Item: Roda_Frog_Card
         Rate: 1
         StealProtected: true
   - Id: 1013
     AegisName: WOLF
     Name: Lobo
     Level: 25
     Hp: 919
     BaseExp: 329
     JobExp: 199
     Attack: 37
     Attack2: 46
     Agi: 20
     Vit: 28
     Int: 15
     Dex: 32
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1054
     AttackMotion: 504
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 03
     Drops:
       - Item: Emveretarcon
         Rate: 20
       - Item: Claw_Of_Wolves
         Rate: 9000
       - Item: Mantle_
         Rate: 10
       - Item: Meat
         Rate: 650
       - Item: Monster's_Feed
         Rate: 1050
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Strawberry
         Rate: 600
       - Item: Wolf_Card
         Rate: 1
         StealProtected: true
   - Id: 1014
     AegisName: SPORE
     Name: Esporo
     Level: 16
     Hp: 510
     BaseExp: 66
     JobExp: 108
     Attack: 24
     Attack2: 48
     MagicDefense: 5
     Agi: 12
     Vit: 12
     Int: 5
     Dex: 19
     Luk: 8
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 01
     Drops:
       - Item: Mushroom_Spore
         Rate: 9000
       - Item: Red_Herb
         Rate: 800
       - Item: Blue_Herb
         Rate: 50
       - Item: Spore_Doll
         Rate: 10
       - Item: Hat
         Rate: 40
       - Item: Poison_Spore
         Rate: 5
       - Item: Strawberry
         Rate: 600
       - Item: Spore_Card
         Rate: 1
         StealProtected: true
   - Id: 1015
     AegisName: ZOMBIE
     Name: Zumbi
     Level: 15
     Hp: 534
     BaseExp: 50
     JobExp: 33
     Attack: 67
     Attack2: 79
     MagicDefense: 10
     Agi: 8
     Vit: 7
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2612
     AttackMotion: 912
+    ClientAttackMotion: 816
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Decayed_Nail
         Rate: 9000
       - Item: Cardinal_Jewel_
         Rate: 5
       - Item: Sticky_Mucus
         Rate: 1000
       - Item: Horrendous_Mouth
         Rate: 50
       - Item: White_Jewel
         Rate: 70
       - Item: Zombie_Card
         Rate: 1
         StealProtected: true
   - Id: 1016
     AegisName: ARCHER_SKELETON
     Name: Esqueleto Arqueiro
     Level: 31
     Hp: 3040
     BaseExp: 483
     JobExp: 283
     Attack: 128
     Attack2: 153
     Agi: 8
     Vit: 14
     Int: 5
     Dex: 90
     Luk: 5
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 2864
     AttackMotion: 864
+    ClientAttackMotion: 672
     DamageMotion: 576
     Ai: 05
     Drops:
       - Item: Skel_Bone
         Rate: 4500
       - Item: Oridecon_Stone
         Rate: 70
       - Item: Apple_Of_Archer
         Rate: 3
       - Item: Great_Bow_
         Rate: 35
       - Item: Fire_Arrow
         Rate: 1000
       - Item: Red_Herb
         Rate: 1800
       - Item: Bow
         Rate: 150
       - Item: Archer_Skeleton_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1017
+#    AegisName: THIEF_BUG_FEMALE
+#    Name: Thief Bug Female
+#    Level: 10
+#    Hp: 170
+#    BaseExp: 35
+#    JobExp: 18
+#    Attack: 33
+#    Attack2: 40
+#    Defense: 5
+#    MagicDefense: 5
+#    Agi: 15
+#    Vit: 10
+#    Int: 5
+#    Dex: 23
+#    Luk: 5
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Insect
+#    Element: Dark
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 988
+#    AttackMotion: 288
+#    DamageMotion: 768
+#    Ai: 25
+#    Modes:
+#      NoCast: true
+#      CastSensorChase: true
+#      CastSensorIdle: true
+#      ChangeChase: true
+#    Drops:
+#      - Item: Worm_Peelings
+#        Rate: 3500
+#        StealProtected: true
   - Id: 1018
     AegisName: CREAMY
     Name: Creamy
     Level: 16
     Hp: 595
     BaseExp: 105
     JobExp: 70
     Attack: 53
     Attack2: 64
     MagicDefense: 30
     Agi: 40
     Vit: 16
     Int: 15
     Dex: 16
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1136
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 840
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Powder_Of_Butterfly
         Rate: 9000
       - Item: Silk_Robe_
         Rate: 10
       - Item: Honey
         Rate: 150
       - Item: Wing_Of_Butterfly
         Rate: 100
       - Item: Fancy_Flower
         Rate: 2
       - Item: Flower
         Rate: 500
       - Item: Wind_Scroll_1_3
         Rate: 100
       - Item: Creamy_Card
         Rate: 1
         StealProtected: true
   - Id: 1019
     AegisName: PECOPECO
     Name: Peco Peco
     Level: 19
     Hp: 531
     BaseExp: 159
     JobExp: 72
     Attack: 50
     Attack2: 64
     Agi: 13
     Vit: 13
     Int: 25
     Dex: 27
     Luk: 9
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1564
     AttackMotion: 864
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 03
     Drops:
       - Item: Bill_Of_Birds
         Rate: 9000
       - Item: Sandals_
         Rate: 20
       - Item: Yellow_Herb
         Rate: 200
       - Item: Red_Herb
         Rate: 900
       - Item: Wand
         Rate: 100
       - Item: Orange
         Rate: 1000
       - Item: Pecopeco_Card
         Rate: 1
         StealProtected: true
   - Id: 1020
     AegisName: MANDRAGORA
     Name: Mandrgora
     Level: 12
     Hp: 405
     BaseExp: 45
     JobExp: 32
     Attack: 26
     Attack2: 35
     MagicDefense: 25
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 36
     Luk: 15
     AttackRange: 4
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 10
     Drops:
       - Item: Yellow_Live
         Rate: 50
       - Item: Stem
         Rate: 9000
       - Item: Spear_
         Rate: 30
       - Item: Green_Herb
         Rate: 350
       - Item: Shoot
         Rate: 300
       - Item: Four_Leaf_Clover
         Rate: 3
       - Item: Whip_Of_Earth
         Rate: 10
       - Item: Mandragora_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1021
+#    AegisName: THIEF_BUG_MALE
+#    Name: Thief Bug Male
+#    Level: 19
+#    Hp: 583
+#    BaseExp: 223
+#    JobExp: 93
+#    Attack: 76
+#    Attack2: 88
+#    Defense: 15
+#    MagicDefense: 5
+#    Agi: 29
+#    Vit: 16
+#    Int: 5
+#    Dex: 36
+#    Luk: 52
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Insect
+#    Element: Dark
+#    ElementLevel: 1
+#    WalkSpeed: 300
+#    AttackDelay: 988
+#    AttackMotion: 288
+#    DamageMotion: 768
+#    Ai: 25
+#    Modes:
+#      NoCast: true
+#      Looter: true
+#      NoRandomWalk: true
+#      CastSensorChase: true
+#      CastSensorIdle: true
+#      ChangeChase: true
+#    Drops:
+#      - Item: Emveretarcon
+#        Rate: 40
+#        StealProtected: true
   - Id: 1023
     AegisName: ORK_WARRIOR
     Name: Guerreiro Orc
     Level: 24
     Hp: 1400
     BaseExp: 408
     JobExp: 160
     Attack: 104
     Attack2: 126
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 48
     Int: 25
     Dex: 34
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Orc: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 672
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Iron
         Rate: 210
       - Item: Orcish_Voucher
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 40
       - Item: Cigar
         Rate: 3
       - Item: Battle_Axe_
         Rate: 10
       - Item: Orcish_Axe
         Rate: 5
       - Item: Axe
         Rate: 100
       - Item: Orc_Warrior_Card
         Rate: 1
         StealProtected: true
   - Id: 1024
     AegisName: WORM_TAIL
     Name: Rabo de Verme
     Level: 14
     Hp: 426
     BaseExp: 59
     JobExp: 40
     Attack: 42
     Attack2: 51
     Defense: 5
     Agi: 14
     Vit: 28
     Int: 5
     Dex: 46
     Luk: 5
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1048
     AttackMotion: 48
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 17
     Drops:
       - Item: Yellow_Live
         Rate: 60
       - Item: Emveretarcon
         Rate: 25
       - Item: Pointed_Scale
         Rate: 5500
       - Item: Pike_
         Rate: 30
       - Item: Yellow_Herb
         Rate: 70
       - Item: Azure_Jewel
         Rate: 5
       - Item: Green_Lace
         Rate: 100
       - Item: Worm_Tail_Card
         Rate: 1
         StealProtected: true
   - Id: 1025
     AegisName: SNAKE
     Name: Jibia
     JapaneseName: Jibia
     Level: 15
     Hp: 471
     BaseExp: 72
     JobExp: 48
     Attack: 46
     Attack2: 55
     Agi: 15
     Vit: 15
     Int: 10
     Dex: 35
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 01
     Drops:
       - Item: Scale_Of_Snakes
         Rate: 9000
       - Item: Katana_
         Rate: 15
       - Item: Red_Herb
         Rate: 900
       - Item: Emveretarcon
         Rate: 35
       - Item: Posionous_Canine
         Rate: 800
       - Item: Shining_Scales
         Rate: 1
       - Item: Strawberry
         Rate: 600
       - Item: Snake_Card
         Rate: 1
         StealProtected: true
   - Id: 1026
     AegisName: MUNAK
     Name: Munak
     Level: 30
     Hp: 2872
     BaseExp: 601
     JobExp: 318
     Attack: 150
     Attack2: 230
     Agi: 15
     Vit: 20
     Int: 5
     Dex: 46
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2468
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Danggie
         Rate: 9000
       - Item: Munak_Turban
         Rate: 2
       - Item: Shoes_
         Rate: 15
       - Item: Amulet
         Rate: 20
       - Item: Ninja_Suit
         Rate: 1
       - Item: Adventure_Suit
         Rate: 100
       - Item: Girl's_Diary
         Rate: 5
       - Item: Munak_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1027
+#    AegisName: RAPTICE
+#    Name: Raptice
+#    Level: 17
+#    Hp: 600
+#    BaseExp: 100
+#    JobExp: 55
+#    Defense: 5
+#    MagicDefense: 10
+#    Str: 5
+#    Agi: 20
+#    Vit: 20
+#    Dex: 28
+#    Luk: 10
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Brute
+#    Element: Earth
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 2000
+#    AttackMotion: 1000
+#    DamageMotion: 500
+#    Ai: 25
+#    Modes:
+#      NoRandomWalk: true
+#      CastSensorIdle: true
+#    Drops:
+#      - Item: Jellopy
+#        Rate: 7000
   - Id: 1028
     AegisName: SOLDIER_SKELETON
     Name: Esqueleto Soldado
     Level: 29
     Hp: 2334
     BaseExp: 372
     JobExp: 226
     Attack: 221
     Attack2: 245
     Defense: 10
     MagicDefense: 15
     Agi: 15
     Vit: 22
     Int: 5
     Dex: 40
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2276
     AttackMotion: 576
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Skel_Bone
         Rate: 5500
       - Item: Oridecon_Stone
         Rate: 60
       - Item: Dagger_
         Rate: 12
       - Item: Red_Herb
         Rate: 700
       - Item: Mementos
         Rate: 10
       - Item: Knife
         Rate: 150
       - Item: Stiletto
         Rate: 50
       - Item: Soldier_Skeleton_Card
         Rate: 1
         StealProtected: true
   - Id: 1029
     AegisName: ISIS
     Name: Isis
     Level: 47
     Hp: 7003
     BaseExp: 3709
     JobExp: 1550
     Attack: 423
     Attack2: 507
     Defense: 10
     MagicDefense: 35
     Str: 38
     Agi: 65
     Vit: 43
     Int: 50
     Dex: 66
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1384
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 336
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Scales_Shell
         Rate: 5335
       - Item: Circlet_
         Rate: 5
       - Item: Necklace
         Rate: 1
       - Item: Crystal_Jewel___
         Rate: 150
       - Item: Crystal_Jewel__
         Rate: 20
       - Item: Shining_Scales
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 5
       - Item: Isis_Card
         Rate: 1
         StealProtected: true
   - Id: 1030
     AegisName: ANACONDAQ
     Name: Anaconda
     Level: 23
     Hp: 1109
     BaseExp: 300
     JobExp: 149
     Attack: 124
     Attack2: 157
     Agi: 23
     Vit: 28
     Int: 10
     Dex: 36
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 17
     Drops:
       - Item: Emveretarcon
         Rate: 50
       - Item: Posionous_Canine
         Rate: 9000
       - Item: Glaive_
         Rate: 10
       - Item: Scale_Of_Snakes
         Rate: 1500
       - Item: Scales_Shell
         Rate: 200
       - Item: Yellow_Herb
         Rate: 150
       - Item: Oridecon_Stone
         Rate: 50
       - Item: Anacondaq_Card
         Rate: 1
         StealProtected: true
   - Id: 1031
     AegisName: POPORING
     Name: Poporing
     Level: 14
     Hp: 344
     BaseExp: 81
     JobExp: 44
     Attack: 59
     Attack2: 72
     MagicDefense: 10
     Agi: 14
     Vit: 14
+    Int: 0
     Dex: 19
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Sticky_Mucus
         Rate: 5500
       - Item: Garlet
         Rate: 1500
       - Item: Green_Herb
         Rate: 500
       - Item: Grape
         Rate: 200
       - Item: Apple
         Rate: 5
       - Item: Main_Gauche
         Rate: 5
       - Item: Apple
         Rate: 250
       - Item: Poporing_Card
         Rate: 1
         StealProtected: true
   - Id: 1032
     AegisName: VERIT
     Name: Verit
     Level: 38
     Hp: 5272
     BaseExp: 835
     JobExp: 517
     Attack: 389
     Attack2: 469
     MagicDefense: 5
     Agi: 19
     Vit: 38
+    Int: 0
     Dex: 38
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 2468
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Immortal_Heart
         Rate: 9000
       - Item: Zargon
         Rate: 700
       - Item: Rotten_Bandage
         Rate: 1100
       - Item: White_Herb
         Rate: 600
       - Item: Skul_Ring
         Rate: 1
       - Item: Flower_Ring
         Rate: 200
       - Item: Armlet_Of_Obedience
         Rate: 20
       - Item: Verit_Card
         Rate: 1
         StealProtected: true
   - Id: 1033
     AegisName: ELDER_WILOW
     Name: Salgueiro Ancio
     Level: 20
     Hp: 693
     BaseExp: 163
     JobExp: 101
     Attack: 58
     Attack2: 70
     Defense: 10
     MagicDefense: 30
     Agi: 20
     Vit: 25
     Int: 35
     Dex: 38
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1372
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 432
     Ai: 09
     Drops:
       - Item: Boody_Red
         Rate: 50
       - Item: Resin
         Rate: 9000
       - Item: Wooden_Block
         Rate: 350
       - Item: Elunium_Stone
         Rate: 40
       - Item: Wooden_Mail_
         Rate: 30
       - Item: Fire_Scroll_1_3
         Rate: 100
       - Item: Branch_Of_Dead_Tree
         Rate: 100
       - Item: Elder_Wilow_Card
         Rate: 1
         StealProtected: true
   - Id: 1034
     AegisName: THARA_FROG
     Name: Sapo de Thara
     Level: 22
     Hp: 2152
     BaseExp: 219
     JobExp: 138
     Attack: 105
     Attack2: 127
     MagicDefense: 10
     Agi: 22
     Vit: 22
     Int: 5
     Dex: 34
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 2016
     AttackMotion: 816
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 01
     Drops:
       - Item: Emveretarcon
         Rate: 45
       - Item: Spawn
         Rate: 5500
       - Item: Scell
         Rate: 600
       - Item: White_Herb
         Rate: 30
       - Item: Red_Jewel
         Rate: 5
       - Item: Sticky_Webfoot
         Rate: 2000
       - Item: Thara_Frog_Card
         Rate: 1
         StealProtected: true
   - Id: 1035
     AegisName: HUNTER_FLY
     Name: Mosca Caadora
     Level: 42
     Hp: 5242
     BaseExp: 1517
     JobExp: 952
     Attack: 246
     Attack2: 333
     Defense: 25
     MagicDefense: 15
     Str: 33
     Agi: 105
     Vit: 32
     Int: 15
     Dex: 72
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 676
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Rough_Wind
         Rate: 30
       - Item: Steel
         Rate: 100
       - Item: Solid_Shell
         Rate: 5335
       - Item: Zargon
         Rate: 1300
       - Item: Oridecon_Stone
         Rate: 129
       - Item: Mini_Propeller
         Rate: 1
       - Item: Damascus_
         Rate: 2
       - Item: Hunter_Fly_Card
         Rate: 1
         StealProtected: true
   - Id: 1036
     AegisName: GHOUL
     Name: Carnial
     Level: 40
     Hp: 5418
     BaseExp: 1088
     JobExp: 622
     Attack: 420
     Attack2: 500
     Defense: 5
     MagicDefense: 20
     Agi: 20
     Vit: 29
+    Int: 0
     Dex: 45
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 2456
     AttackMotion: 912
+    ClientAttackMotion: 408
     DamageMotion: 504
     Ai: 04
     Drops:
       - Item: Horrendous_Mouth
         Rate: 6000
       - Item: Oridecon_Stone
         Rate: 110
       - Item: White_Herb
         Rate: 700
       - Item: Green_Herb
         Rate: 800
       - Item: Skul_Ring
         Rate: 60
       - Item: Mementos
         Rate: 150
       - Item: Ghoul_Leg
         Rate: 1
       - Item: Ghoul_Card
         Rate: 1
         StealProtected: true
   - Id: 1037
     AegisName: SIDE_WINDER
     Name: Sorrateiro
     Level: 43
     Hp: 4929
     BaseExp: 1996
     JobExp: 993
     Attack: 240
     Attack2: 320
     Defense: 5
     MagicDefense: 10
     Str: 38
     Agi: 43
     Vit: 40
     Int: 15
     Dex: 115
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 09
     Drops:
       - Item: Shining_Scales
         Rate: 5335
       - Item: Zargon
         Rate: 1400
       - Item: Oridecon_Stone
         Rate: 134
       - Item: Tsurugi_
         Rate: 2
       - Item: Posionous_Canine
         Rate: 2500
       - Item: Scale_Of_Snakes
         Rate: 5000
       - Item: White_Herb
         Rate: 1000
       - Item: Side_Winder_Card
         Rate: 1
         StealProtected: true
   - Id: 1038
     AegisName: OSIRIS
     Name: Osris
     Level: 78
     Hp: 415400
     BaseExp: 71500
     JobExp: 28600
     MvpExp: 35750
     Attack: 780
     Attack2: 2880
     Defense: 10
     MagicDefense: 25
     Agi: 75
     Vit: 30
     Int: 37
     Dex: 86
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Blue_Box
         Rate: 4000
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Osiris_Doll
         Rate: 500
     Drops:
       - Item: Old_Violet_Box
         Rate: 2000
       - Item: Assasin_Dagger
         Rate: 150
       - Item: Crown
         Rate: 200
       - Item: Jamadhar_
         Rate: 600
       - Item: Sacred_Marks
         Rate: 1000
       - Item: Spinx_Helm
         Rate: 150
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -1451,933 +1716,987 @@ Body:
     Name: Bafom
     Level: 81
     Hp: 668000
     BaseExp: 107250
     JobExp: 37895
     MvpExp: 53625
     Attack: 3220
     Attack2: 4040
     Defense: 35
     MagicDefense: 45
     Agi: 152
     Vit: 30
     Int: 85
     Dex: 120
     Luk: 95
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 600
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 2000
       - Item: Baphomet_Doll
         Rate: 500
       - Item: Evil_Horn
         Rate: 5000
     Drops:
       - Item: Crescent_Scythe
         Rate: 400
       - Item: Magestic_Goat
         Rate: 30
       - Item: Crescent_Scythe_
         Rate: 50
       - Item: Emperium
         Rate: 500
       - Item: Magestic_Goat_
         Rate: 5
       - Item: Elunium
         Rate: 543
       - Item: Oridecon
         Rate: 417
       - Item: Baphomet_Card
         Rate: 1
         StealProtected: true
   - Id: 1040
     AegisName: GOLEM
     Name: Golem
     Level: 25
     Hp: 3900
     BaseExp: 465
     JobExp: 94
     Attack: 175
     Attack2: 187
     Defense: 40
     Agi: 15
     Vit: 25
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     RaceGroups:
       Golem: true
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1608
     AttackMotion: 816
+    ClientAttackMotion: 912
     DamageMotion: 396
     Ai: 17
     Drops:
       - Item: Steel
         Rate: 150
       - Item: Stone_Heart
         Rate: 9000
       - Item: Zargon
         Rate: 220
       - Item: Elunium_Stone
         Rate: 70
       - Item: Coal
         Rate: 210
       - Item: Yellow_Gemstone
         Rate: 200
       - Item: Iron
         Rate: 350
       - Item: Golem_Card
         Rate: 1
         StealProtected: true
   - Id: 1041
     AegisName: MUMMY
     Name: Mmia
     Level: 37
     Hp: 5176
     BaseExp: 800
     JobExp: 602
     Attack: 305
     Attack2: 360
     MagicDefense: 10
     Str: 28
     Agi: 19
     Vit: 32
+    Int: 0
     Dex: 63
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1772
     AttackMotion: 72
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Rotten_Bandage
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 100
       - Item: Mementos
         Rate: 550
       - Item: Glove
         Rate: 1
       - Item: Silver_Ring
         Rate: 10
       - Item: Panacea
         Rate: 250
       - Item: Yellow_Herb
         Rate: 850
       - Item: Mummy_Card
         Rate: 1
         StealProtected: true
   - Id: 1042
     AegisName: STEEL_CHONCHON
     Name: Chonchon de Ao
     Level: 17
     Hp: 530
     BaseExp: 109
     JobExp: 71
     Attack: 54
     Attack2: 65
     Defense: 15
     Agi: 43
     Vit: 17
     Int: 5
     Dex: 33
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1076
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Wind_Of_Verdure
         Rate: 90
       - Item: Steel
         Rate: 30
       - Item: Garlet
         Rate: 2400
       - Item: Shell
         Rate: 9000
       - Item: Solid_Shell
         Rate: 30
       - Item: Iron
         Rate: 200
       - Item: Iron_Ore
         Rate: 300
       - Item: Steel_Chonchon_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1043
+#    AegisName: SEAHORES
+#    Name: Seahorse
+#    Level: 18
+#    Hp: 1452
+#    BaseExp: 122
+#    JobExp: 78
+#    Attack: 100
+#    Attack2: 150
+#    Defense: 15
+#    MagicDefense: 7
+#    AttackRange: 3
+#    SkillRange: 10
+#    ChaseRange: 10
+#    Size: Small
+#    Race: Fish
+#    Element: Earth
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 1500
+#    AttackMotion: 800
+#    DamageMotion: 600
+#    Ai: 25
+#    Modes:
+#      NoRandomWalk: true
+#      CastSensorIdle: true
   - Id: 1044
     AegisName: OBEAUNE
     Name: Obeaune
     Level: 31
     Hp: 3952
     BaseExp: 644
     JobExp: 407
     Attack: 141
     Attack2: 165
     MagicDefense: 40
     Agi: 31
     Vit: 31
     Int: 55
     Dex: 74
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 288
     Ai: 09
     Drops:
       - Item: Mistic_Frozen
         Rate: 13
       - Item: Heart_Of_Mermaid
         Rate: 9000
       - Item: Fin_Helm
         Rate: 1
       - Item: Saint_Robe_
         Rate: 10
       - Item: Skyblue_Jewel
         Rate: 10
       - Item: Fin
         Rate: 500
       - Item: Witherless_Rose
         Rate: 30
       - Item: Obeaune_Card
         Rate: 1
         StealProtected: true
   - Id: 1045
     AegisName: MARC
     Name: Cavalo-Marinho
     Level: 36
     Hp: 6900
     BaseExp: 988
     JobExp: 625
     Attack: 220
     Attack2: 280
     Defense: 5
     MagicDefense: 10
     Agi: 36
     Vit: 36
     Int: 20
     Dex: 56
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1272
     AttackMotion: 72
+    ClientAttackMotion: 216
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Mistic_Frozen
         Rate: 18
       - Item: Gill
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 95
       - Item: Fin
         Rate: 1000
       - Item: Skyblue_Jewel
         Rate: 10
       - Item: Blue_Gemstone
         Rate: 200
       - Item: White_Herb
         Rate: 700
       - Item: Marc_Card
         Rate: 1
         StealProtected: true
   - Id: 1046
     AegisName: DOPPELGANGER
     Name: Doppelganger
     Level: 72
     Hp: 249000
     BaseExp: 51480
     JobExp: 10725
     MvpExp: 25740
     Attack: 1340
     Attack2: 1590
     Defense: 60
     MagicDefense: 35
     Str: 88
     Agi: 90
     Vit: 30
     Int: 35
     Dex: 125
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 480
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Cardinal_Jewel_
         Rate: 1500
       - Item: Blue_Potion
         Rate: 6000
     Drops:
       - Item: Plate_Armor_
         Rate: 250
       - Item: Broad_Sword_
         Rate: 220
       - Item: Zweihander
         Rate: 150
       - Item: Sharp_Gear
         Rate: 350
       - Item: Lance_
         Rate: 550
       - Item: Elunium
         Rate: 3686
       - Item: Oridecon
         Rate: 2700
       - Item: Doppelganger_Card
         Rate: 1
         StealProtected: true
   - Id: 1047
     AegisName: PECOPECO_EGG
     Name: Ovo de Peco Peco
     Level: 3
     Hp: 420
     BaseExp: 4
     JobExp: 4
     Attack: 1
     Attack2: 2
     Defense: 20
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 672
     DamageMotion: 1
     Drops:
       - Item: Phracon
         Rate: 250
       - Item: Shell
         Rate: 1500
       - Item: Guard_
         Rate: 2
       - Item: Red_Herb
         Rate: 400
       - Item: Red_Herb
         Rate: 400
       - Item: Empty_Bottle
         Rate: 1800
       - Item: White_Platter
         Rate: 10
       - Item: Pecopeco_Egg_Card
         Rate: 1
         StealProtected: true
   - Id: 1048
     AegisName: THIEF_BUG_EGG
     Name: Ovo de Besouro-Ladro
     Level: 4
     Hp: 48
     BaseExp: 8
     JobExp: 4
     Attack: 13
     Attack2: 17
     Defense: 20
     Agi: 6
     Vit: 4
+    Int: 0
     Dex: 14
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 701
     AttackMotion: 1
+    ClientAttackMotion: 288
     DamageMotion: 1
     Modes:
       Detector: true
     Drops:
       - Item: Phracon
         Rate: 300
       - Item: Chrysalis
         Rate: 5000
       - Item: Guard_
         Rate: 2
       - Item: Sticky_Mucus
         Rate: 600
       - Item: Red_Gemstone
         Rate: 100
       - Item: Black_Ladle
         Rate: 10
       - Item: Iron_Ore
         Rate: 250
       - Item: Thief_Bug_Egg_Card
         Rate: 1
         StealProtected: true
   - Id: 1049
     AegisName: PICKY
     Name: Picky
     Level: 3
     Hp: 80
     BaseExp: 4
     JobExp: 3
     Attack: 9
     Attack2: 12
     Agi: 3
     Vit: 3
     Int: 5
     Dex: 10
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 168
     Ai: 01
     Drops:
       - Item: Feather_Of_Birds
         Rate: 9000
       - Item: Feather
         Rate: 700
       - Item: Cotton_Shirt_
         Rate: 150
       - Item: Red_Herb
         Rate: 550
       - Item: Milk
         Rate: 300
       - Item: Yellow_Gemstone
         Rate: 50
       - Item: Picky_Card
         Rate: 1
         StealProtected: true
   - Id: 1050
     AegisName: PICKY_
     Name: Picky com Casca
     Level: 4
     Hp: 83
     BaseExp: 5
     JobExp: 4
     Attack: 8
     Attack2: 11
     Defense: 20
     Agi: 3
     Vit: 3
     Int: 10
     Dex: 11
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 168
     Ai: 01
     Drops:
       - Item: Feather_Of_Birds
         Rate: 9000
       - Item: Feather
         Rate: 700
       - Item: Egg_Shell
         Rate: 10
       - Item: Red_Herb
         Rate: 600
       - Item: Milk
         Rate: 300
       - Item: Yellow_Gemstone
         Rate: 50
       - Item: Tiny_Egg_Shell
         Rate: 10
       - Item: Picky__Card
         Rate: 1
         StealProtected: true
   - Id: 1051
     AegisName: THIEF_BUG
     Name: Besouro-Ladro
     Level: 6
     Hp: 126
     BaseExp: 17
     JobExp: 5
     Attack: 18
     Attack2: 24
     Defense: 5
     Agi: 6
     Vit: 6
+    Int: 0
     Dex: 11
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 720
     DamageMotion: 768
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 2500
       - Item: Leather_Jacket_
         Rate: 80
       - Item: Red_Herb
         Rate: 350
       - Item: Jellopy
         Rate: 2000
       - Item: Leather_Jacket
         Rate: 120
       - Item: Iron_Ore
         Rate: 250
       - Item: Thief_Bug_Card
         Rate: 1
         StealProtected: true
   - Id: 1052
     AegisName: ROCKER
     Name: Rocker
     Level: 9
     Hp: 198
     BaseExp: 20
     JobExp: 16
     Attack: 24
     Attack2: 29
     Defense: 5
     MagicDefense: 10
     Agi: 9
     Vit: 18
     Int: 10
     Dex: 14
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 768
     DamageMotion: 540
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Grasshopper's_Leg
         Rate: 9000
       - Item: Guitar_Of_Vast_Land
         Rate: 10
       - Item: Green_Feeler
         Rate: 4
       - Item: Javelin_
         Rate: 80
       - Item: Leaflet_Of_Hinal
         Rate: 10
       - Item: Grasshopper_Doll
         Rate: 10
       - Item: Hinalle
         Rate: 10
       - Item: Rocker_Card
         Rate: 1
         StealProtected: true
   - Id: 1053
     AegisName: THIEF_BUG_
     Name: Besouro-Ladro Fmea
     Level: 10
     Hp: 170
     BaseExp: 35
     JobExp: 18
     Attack: 33
     Attack2: 40
     Defense: 5
     MagicDefense: 5
     Agi: 15
     Vit: 10
     Int: 5
     Dex: 23
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 720
     DamageMotion: 768
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 3500
       - Item: Garlet
         Rate: 250
       - Item: Blade_
         Rate: 15
       - Item: Insect_Feeler
         Rate: 200
       - Item: Red_Herb
         Rate: 400
       - Item: Red_Gemstone
         Rate: 50
       - Item: Iron_Ore
         Rate: 300
       - Item: Thief_Bug_Female_Card
         Rate: 1
         StealProtected: true
   - Id: 1054
     AegisName: THIEF_BUG__
     Name: Besouro-Ladro Macho
     Level: 19
     Hp: 583
     BaseExp: 223
     JobExp: 93
     Attack: 76
     Attack2: 88
     Defense: 15
     MagicDefense: 5
     Agi: 29
     Vit: 16
     Int: 5
     Dex: 36
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 720
     DamageMotion: 768
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Emveretarcon
         Rate: 40
       - Item: Insect_Feeler
         Rate: 5500
       - Item: Worm_Peelings
         Rate: 1500
       - Item: Slayer_
         Rate: 10
       - Item: Yellow_Herb
         Rate: 90
       - Item: Bluish_Green_Jewel
         Rate: 5
       - Item: Katana
         Rate: 50
       - Item: Thief_Bug_Male_Card
         Rate: 1
         StealProtected: true
   - Id: 1055
     AegisName: MUKA
     Name: Muka
     Level: 17
     Hp: 610
     BaseExp: 273
     JobExp: 120
     Attack: 40
     Attack2: 49
     Defense: 5
     MagicDefense: 5
     Str: 15
     Agi: 15
     Vit: 30
     Int: 5
     Dex: 20
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 01
     Drops:
       - Item: Yellow_Live
         Rate: 70
       - Item: Cactus_Needle
         Rate: 9000
       - Item: Empty_Bottle
         Rate: 2000
       - Item: Green_Herb
         Rate: 400
       - Item: Red_Herb
         Rate: 1000
       - Item: Guisarme
         Rate: 50
       - Item: Iron_Ore
         Rate: 250
       - Item: Muka_Card
         Rate: 1
         StealProtected: true
   - Id: 1056
     AegisName: SMOKIE
     Name: Fumacento
     Level: 18
     Hp: 641
     BaseExp: 134
     JobExp: 86
     Attack: 61
     Attack2: 72
     MagicDefense: 10
     Agi: 18
     Vit: 36
     Int: 25
     Dex: 26
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 420
     Ai: 17
     Drops:
       - Item: Raccoon_Leaf
         Rate: 5500
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Sweet_Potato
         Rate: 800
       - Item: Cat_Hairband
         Rate: 1
       - Item: Raccoondog_Doll
         Rate: 2
       - Item: Zargon
         Rate: 5
       - Item: Bluish_Green_Jewel
         Rate: 2
       - Item: Smokie_Card
         Rate: 1
         StealProtected: true
   - Id: 1057
     AegisName: YOYO
     Name: Yoyo
     Level: 21
     Hp: 879
     BaseExp: 280
     JobExp: 111
     Attack: 71
     Attack2: 82
     Agi: 24
     Vit: 30
     Int: 35
     Dex: 32
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1054
     AttackMotion: 54
+    ClientAttackMotion: 360
     DamageMotion: 384
     Ai: 07
     Drops:
       - Item: Yoyo_Tail
         Rate: 9000
       - Item: Banana
         Rate: 1500
       - Item: Yellow_Herb
         Rate: 200
       - Item: Cacao
         Rate: 900
       - Item: Monkey_Doll
         Rate: 10
       - Item: Oridecon_Stone
         Rate: 24
       - Item: Strawberry
         Rate: 1000
       - Item: Yoyo_Card
         Rate: 1
         StealProtected: true
   - Id: 1058
     AegisName: METALLER
     Name: Metaller
     Level: 22
     Hp: 926
     BaseExp: 241
     JobExp: 152
     Attack: 131
     Attack2: 159
     Defense: 15
     MagicDefense: 30
     Agi: 22
     Vit: 22
     Int: 20
     Dex: 49
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1708
     AttackMotion: 1008
+    ClientAttackMotion: 432
     DamageMotion: 540
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Boody_Red
         Rate: 60
       - Item: Grasshopper's_Leg
         Rate: 6500
       - Item: Scell
         Rate: 400
       - Item: Elunium_Stone
         Rate: 49
       - Item: Singing_Plant
         Rate: 20
       - Item: Shell
         Rate: 3000
       - Item: Guitar_Of_Passion
         Rate: 10
       - Item: Metaller_Card
         Rate: 1
         StealProtected: true
   - Id: 1059
     AegisName: MISTRESS
     Name: Abelha-Rainha
     Level: 74
     Hp: 212000
     BaseExp: 39325
     JobExp: 27170
     MvpExp: 19662
     Attack: 880
     Attack2: 1110
     Defense: 40
     MagicDefense: 60
     Str: 50
     Agi: 165
     Vit: 60
     Int: 95
     Dex: 70
     Luk: 130
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1148
     AttackMotion: 648
+    ClientAttackMotion: 504
     DamageMotion: 300
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Rough_Wind
         Rate: 1500
       - Item: Royal_Jelly
         Rate: 4000
       - Item: Scarlet_Jewel
         Rate: 3000
     Drops:
       - Item: Gungnir
         Rate: 150
       - Item: Honey
         Rate: 10000
       - Item: Coronet
         Rate: 250
       - Item: Old_Card_Album
         Rate: 1000
       - Item: Young_Twig
         Rate: 10
       - Item: Elunium
         Rate: 4268
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -2389,1100 +2708,1200 @@ Body:
   - Id: 1060
     AegisName: BIGFOOT
     Name: P Grande
     Level: 25
     Hp: 1619
     BaseExp: 310
     JobExp: 188
     Attack: 198
     Attack2: 220
     Defense: 10
     Agi: 25
     Vit: 55
     Int: 15
     Dex: 20
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 17
     Drops:
       - Item: Bear's_Foot
         Rate: 9000
       - Item: Poo_Poo_Hat
         Rate: 5
       - Item: Animal's_Skin
         Rate: 5000
       - Item: Stuffed_Doll
         Rate: 80
       - Item: Sweet_Potato
         Rate: 1500
       - Item: Honey
         Rate: 450
       - Item: Oridecon_Stone
         Rate: 43
       - Item: BigFoot_Card
         Rate: 1
         StealProtected: true
   - Id: 1061
     AegisName: NIGHTMARE
     Name: Pesadelo
     Level: 49
     Hp: 4437
     BaseExp: 1912
     JobExp: 1912
     Attack: 447
     Attack2: 529
     MagicDefense: 40
     Agi: 74
     Vit: 25
     Int: 15
     Dex: 64
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1816
     AttackMotion: 816
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Horseshoe
         Rate: 6000
       - Item: Blue_Herb
         Rate: 500
       - Item: Rosary
         Rate: 2
       - Item: Old_Blue_Box
         Rate: 30
       - Item: Blue_Potion
         Rate: 100
       - Item: Infiltrator
         Rate: 1
       - Item: Oridecon
         Rate: 60
       - Item: Nightmare_Card
         Rate: 1
         StealProtected: true
   - Id: 1062
     AegisName: PORING_
     Name: Poring Noel
     Level: 3
     Hp: 69
     BaseExp: 4
     JobExp: 5
     Attack: 12
     Attack2: 16
     Agi: 14
     Vit: 3
     Int: 10
     Dex: 12
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Holy
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 01
     Drops:
       - Item: Candy
         Rate: 2000
       - Item: Candy_Striper
         Rate: 1000
       - Item: Red_Herb
         Rate: 1000
       - Item: Apple
         Rate: 1000
       - Item: Santa's_Hat
         Rate: 100
       - Item: Apple
         Rate: 7
       - Item: Poring__Card
         Rate: 1
         StealProtected: true
   - Id: 1063
     AegisName: LUNATIC
     Name: Luntico
     Level: 3
     Hp: 60
     BaseExp: 6
     JobExp: 2
     Attack: 9
     Attack2: 12
     MagicDefense: 20
     Agi: 3
     Vit: 3
     Int: 10
     Dex: 8
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1456
     AttackMotion: 456
+    ClientAttackMotion: 264
     DamageMotion: 336
     Ai: 01
     Drops:
       - Item: Clover
         Rate: 6500
       - Item: Feather
         Rate: 1000
       - Item: Pierrot_Nose
         Rate: 4
       - Item: Apple
         Rate: 2000
       - Item: Red_Herb
         Rate: 600
       - Item: Carrot
         Rate: 1100
       - Item: Rainbow_Carrot
         Rate: 20
       - Item: Lunatic_Card
         Rate: 1
         StealProtected: true
   - Id: 1064
     AegisName: MEGALODON
     Name: Megalodon
     Level: 24
     Hp: 1648
     BaseExp: 215
     JobExp: 132
     Attack: 155
     Attack2: 188
     MagicDefense: 15
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 26
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2492
     AttackMotion: 792
+    ClientAttackMotion: 696
     DamageMotion: 432
     Ai: 01
     Drops:
       - Item: Rotten_Scale
         Rate: 5500
       - Item: Skel_Bone
         Rate: 1500
       - Item: Blue_Herb
         Rate: 80
       - Item: Blue_Gemstone
         Rate: 120
       - Item: Violet_Jewel
         Rate: 10
       - Item: Old_Blue_Box
         Rate: 2
       - Item: Rotten_Fish
         Rate: 20
       - Item: Megalodon_Card
         Rate: 1
         StealProtected: true
   - Id: 1065
     AegisName: STROUF
     Name: Strouf
     Level: 48
     Hp: 11990
     BaseExp: 3080
     JobExp: 2098
     Attack: 200
     Attack2: 1250
     Defense: 5
     MagicDefense: 50
     Agi: 40
     Vit: 45
     Int: 92
     Dex: 43
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Fish
     Element: Water
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 108
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Fin
         Rate: 5335
       - Item: Oridecon_Stone
         Rate: 115
       - Item: Granpa_Beard
         Rate: 2
       - Item: Trident_
         Rate: 2
       - Item: Feather
         Rate: 3000
       - Item: Skyblue_Jewel
         Rate: 20
       - Item: Gill
         Rate: 1500
       - Item: Strouf_Card
         Rate: 1
         StealProtected: true
   - Id: 1066
     AegisName: VADON
     Name: Vadon
     Level: 19
     Hp: 1017
     BaseExp: 135
     JobExp: 85
     Attack: 74
     Attack2: 85
     Defense: 20
     Agi: 19
     Vit: 16
     Int: 10
     Dex: 36
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1632
     AttackMotion: 432
+    ClientAttackMotion: 420
     DamageMotion: 540
     Ai: 17
     Drops:
       - Item: Crystal_Blue
         Rate: 40
       - Item: Nipper
         Rate: 9000
       - Item: Garlet
         Rate: 3000
       - Item: Padded_Armor_
         Rate: 5
       - Item: Solid_Shell
         Rate: 100
       - Item: Elunium_Stone
         Rate: 40
       - Item: Blue_Gemstone
         Rate: 50
       - Item: Vadon_Card
         Rate: 1
         StealProtected: true
   - Id: 1067
     AegisName: CORNUTUS
     Name: Cornutus
     Level: 23
     Hp: 1620
     BaseExp: 240
     JobExp: 149
     Attack: 109
     Attack2: 131
     Defense: 30
     Agi: 23
     Vit: 23
     Int: 5
     Dex: 36
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1248
     AttackMotion: 48
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 17
     Drops:
       - Item: Crystal_Blue
         Rate: 45
       - Item: Conch
         Rate: 5500
       - Item: Scell
         Rate: 800
       - Item: Elunium_Stone
         Rate: 53
       - Item: Shield_
         Rate: 5
       - Item: Solid_Shell
         Rate: 1000
       - Item: Blue_Gemstone
         Rate: 100
       - Item: Cornutus_Card
         Rate: 1
         StealProtected: true
   - Id: 1068
     AegisName: HYDRA
     Name: Hidra
     Level: 14
     Hp: 660
     BaseExp: 59
     JobExp: 40
     Attack: 22
     Attack2: 28
     MagicDefense: 40
     Agi: 14
     Vit: 14
+    Int: 0
     Dex: 40
     Luk: 2
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 800
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 10
     Drops:
       - Item: Emveretarcon
         Rate: 25
       - Item: Tentacle
         Rate: 5500
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Detrimindexta
         Rate: 20
       - Item: Panacea
         Rate: 5
       - Item: Meat
         Rate: 700
       - Item: Hydra_Card
         Rate: 1
         StealProtected: true
   - Id: 1069
     AegisName: SWORD_FISH
     Name: Peixe-Espada
     Level: 30
     Hp: 4299
     BaseExp: 1251
     JobExp: 638
     Attack: 168
     Attack2: 199
     Defense: 5
     MagicDefense: 20
     Agi: 30
     Vit: 30
     Int: 41
     Dex: 62
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1968
     AttackMotion: 768
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Mistic_Frozen
         Rate: 10
       - Item: Sharp_Scale
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 33
       - Item: Snowy_Horn
         Rate: 2
       - Item: Elunium_Stone
         Rate: 50
       - Item: Katana_
         Rate: 25
       - Item: Gill
         Rate: 600
       - Item: Sword_Fish_Card
         Rate: 1
         StealProtected: true
   - Id: 1070
     AegisName: KUKRE
     Name: Kukre
     Level: 11
     Hp: 507
     BaseExp: 38
     JobExp: 28
     Attack: 28
     Attack2: 37
     Defense: 15
     Agi: 11
     Vit: 11
     Int: 5
     Dex: 16
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1776
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 02
     Drops:
       - Item: Crystal_Blue
         Rate: 30
       - Item: Worm_Peelings
         Rate: 5500
       - Item: Garlet
         Rate: 400
       - Item: Monster's_Feed
         Rate: 500
       - Item: Red_Herb
         Rate: 650
       - Item: Insect_Feeler
         Rate: 450
       - Item: Earthworm_The_Dude
         Rate: 20
       - Item: Kukre_Card
         Rate: 1
         StealProtected: true
   - Id: 1071
     AegisName: PIRATE_SKEL
     Name: Esqueleto Pirata
     Level: 25
     Hp: 1676
     BaseExp: 233
     JobExp: 142
     Attack: 145
     Attack2: 178
     Defense: 10
     MagicDefense: 15
     Str: 25
     Agi: 13
     Vit: 25
     Int: 5
     Dex: 25
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1754
     AttackMotion: 554
+    ClientAttackMotion: 360
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Skel_Bone
         Rate: 3000
       - Item: Pirate_Bandana
         Rate: 15
       - Item: Cookbook06
         Rate: 5
       - Item: Bandana
         Rate: 250
       - Item: Falchion
         Rate: 250
       - Item: Oridecon_Stone
         Rate: 43
       - Item: Well_Dried_Bone
         Rate: 20
       - Item: Pirate_Skel_Card
         Rate: 1
         StealProtected: true
   - Id: 1072
     AegisName: KAHO
     Name: Kaho
     Level: 60
     Hp: 8409
     BaseExp: 3990
     JobExp: 450
     Attack: 110
     Attack2: 760
     Defense: 5
     MagicDefense: 50
     Agi: 55
     Vit: 43
     Int: 88
     Dex: 80
     Luk: 46
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 1700
     AttackMotion: 1000
+    ClientAttackMotion: 432
     DamageMotion: 500
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Flame_Heart
         Rate: 30
       - Item: Coal
         Rate: 150
       - Item: Burning_Heart
         Rate: 3000
       - Item: Fire_Scroll_1_3
         Rate: 100
       - Item: Elunium_Stone
         Rate: 1000
       - Item: Red_Gemstone
         Rate: 300
       - Item: Alchol
         Rate: 5
       - Item: Kaho_Card
         Rate: 1
         StealProtected: true
   - Id: 1073
     AegisName: CRAB
     Name: Caranguejo
     Level: 20
     Hp: 2451
     BaseExp: 163
     JobExp: 101
     Attack: 71
     Attack2: 81
     Defense: 35
     Str: 18
     Agi: 20
     Vit: 15
+    Int: 0
     Dex: 36
     Luk: 15
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 992
     AttackMotion: 792
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 01
     Drops:
       - Item: Crap_Shell
         Rate: 5500
       - Item: Nipper
         Rate: 1500
       - Item: Stone
         Rate: 700
       - Item: Sparkling_Dust
         Rate: 13
       - Item: Elunium_Stone
         Rate: 37
       - Item: Crab_Card
         Rate: 1
         StealProtected: true
   - Id: 1074
     AegisName: SHELLFISH
     Name: Molusco
     Level: 15
     Hp: 920
     BaseExp: 66
     JobExp: 44
     Attack: 35
     Attack2: 42
     Defense: 35
     Agi: 12
     Vit: 8
+    Int: 0
     Dex: 32
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 864
     AttackMotion: 864
+    ClientAttackMotion: 468
     DamageMotion: 384
     Ai: 17
     Drops:
       - Item: Clam_Shell
         Rate: 5500
       - Item: Flesh_Of_Clam
         Rate: 1000
       - Item: Stone
         Rate: 500
       - Item: Grit
         Rate: 1000
       - Item: Sparkling_Dust
         Rate: 10
       - Item: Elunium_Stone
         Rate: 18
       - Item: Shellfish_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1075
+#    AegisName: TURTLE
+#    Name: Turtle
+#    Level: 3
+#    Hp: 77
+#    Attack: 1
+#    Attack2: 2
+#    Defense: 35
+#    AttackRange: 1
+#    SkillRange: 7
+#    ChaseRange: 12
+#    Size: Small
+#    Race: Fish
+#    Element: Earth
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 500
+#    AttackMotion: 500
+#    DamageMotion: 500
+#    Ai: 01
   - Id: 1076
     AegisName: SKELETON
     Name: Esqueleto
     Level: 10
     Hp: 234
     BaseExp: 18
     JobExp: 14
     Attack: 39
     Attack2: 47
     Defense: 10
     MagicDefense: 10
     Agi: 5
     Vit: 10
+    Int: 0
     Dex: 12
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2228
     AttackMotion: 528
+    ClientAttackMotion: 336
     DamageMotion: 576
     Ai: 17
     Drops:
       - Item: Phracon
         Rate: 90
       - Item: Skel_Bone
         Rate: 800
       - Item: Mace_
         Rate: 80
       - Item: Jellopy
         Rate: 3000
       - Item: Red_Herb
         Rate: 850
       - Item: Skul_Ring
         Rate: 30
       - Item: Skeleton_Card
         Rate: 1
         StealProtected: true
   - Id: 1077
     AegisName: POISON_SPORE
     Name: Esporo Venenoso
     Level: 19
     Hp: 665
     BaseExp: 186
     JobExp: 93
     Attack: 89
     Attack2: 101
     Agi: 19
     Vit: 25
+    Int: 0
     Dex: 24
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Poison_Spore
         Rate: 9000
       - Item: Hat_
         Rate: 20
       - Item: Green_Herb
         Rate: 550
       - Item: Blue_Herb
         Rate: 60
       - Item: Karvodailnirol
         Rate: 50
       - Item: Mushroom_Spore
         Rate: 1200
       - Item: Zargon
         Rate: 5
       - Item: Poison_Spore_Card
         Rate: 1
         StealProtected: true
   - Id: 1078
     AegisName: RED_PLANT
     Name: Planta Vermelha
     Level: 1
     Hp: 10
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Red_Herb
         Rate: 5500
       - Item: Flower
         Rate: 1000
       - Item: Shoot
         Rate: 1000
       - Item: Stem
         Rate: 500
       - Item: Pointed_Scale
         Rate: 300
       - Item: Fluff
         Rate: 500
       - Item: Ment
         Rate: 50
       - Item: Centimental_Flower
         Rate: 2
         StealProtected: true
   - Id: 1079
     AegisName: BLUE_PLANT
     Name: Planta Azul
     Level: 1
     Hp: 10
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Blue_Herb
         Rate: 5500
       - Item: Flower
         Rate: 1000
       - Item: Shoot
         Rate: 1000
       - Item: Stem
         Rate: 500
       - Item: Pointed_Scale
         Rate: 300
       - Item: Fruit_Of_Mastela
         Rate: 50
       - Item: Grape
         Rate: 1000
       - Item: Centimental_Leaf
         Rate: 2
         StealProtected: true
   - Id: 1080
     AegisName: GREEN_PLANT
     Name: Planta Verde
     Level: 1
     Hp: 10
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Green_Herb
         Rate: 7000
       - Item: Flower
         Rate: 1000
       - Item: Bitter_Herb
         Rate: 20
       - Item: Stem
         Rate: 3000
       - Item: Pointed_Scale
         Rate: 1500
       - Item: Aloe
         Rate: 50
       - Item: Leaflet_Of_Aloe
         Rate: 50
       - Item: Centimental_Leaf
         Rate: 2
         StealProtected: true
   - Id: 1081
     AegisName: YELLOW_PLANT
     Name: Planta Amarela
     Level: 1
     Hp: 10
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Yellow_Herb
         Rate: 5500
       - Item: Flower
         Rate: 1000
       - Item: Shoot
         Rate: 1000
       - Item: Stem
         Rate: 500
       - Item: Pointed_Scale
         Rate: 300
       - Item: Singing_Plant
         Rate: 5
       - Item: Fluff
         Rate: 500
       - Item: Centimental_Flower
         Rate: 2
         StealProtected: true
   - Id: 1082
     AegisName: WHITE_PLANT
     Name: Planta Branca
     Level: 1
     Hp: 10
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: White_Herb
         Rate: 5500
       - Item: Flower
         Rate: 1000
       - Item: Deadly_Noxious_Herb
         Rate: 20
       - Item: Stem
         Rate: 3000
       - Item: Pointed_Scale
         Rate: 1500
       - Item: Leaflet_Of_Aloe
         Rate: 50
       - Item: Hinalle
         Rate: 50
       - Item: Centimental_Flower
         Rate: 2
         StealProtected: true
   - Id: 1083
     AegisName: SHINING_PLANT
     Name: Planta Brilhante
     Level: 1
     Hp: 20
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
     Luk: 90
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Holy
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 2016
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Blue_Herb
         Rate: 5500
       - Item: Yellow_Herb
         Rate: 1000
       - Item: White_Herb
         Rate: 1000
       - Item: Illusion_Flower
         Rate: 5
       - Item: Seed_Of_Yggdrasil
         Rate: 20
       - Item: Honey
         Rate: 500
       - Item: Yggdrasilberry
         Rate: 50
       - Item: Emperium
         Rate: 1
         StealProtected: true
   - Id: 1084
     AegisName: BLACK_MUSHROOM
     Name: Cogumelo Negro
     Level: 1
     Hp: 15
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Alchol
         Rate: 50
       - Item: Detrimindexta
         Rate: 50
       - Item: Dew_Laden_Moss
         Rate: 20
       - Item: Feather
         Rate: 2000
       - Item: Crystal_Blue
         Rate: 800
       - Item: Mushroom_Spore
         Rate: 5500
       - Item: Mushroom_Spore
         Rate: 5500
       - Item: Poison_Spore
         Rate: 5500
         StealProtected: true
   - Id: 1085
     AegisName: RED_MUSHROOM
     Name: Cogumelo Vermelho
     Level: 1
     Hp: 15
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Alchol
         Rate: 50
       - Item: Karvodailnirol
         Rate: 50
       - Item: Dew_Laden_Moss
         Rate: 20
       - Item: Feather
         Rate: 2000
       - Item: Boody_Red
         Rate: 1000
       - Item: Mushroom_Spore
         Rate: 5500
       - Item: Mushroom_Spore
         Rate: 5500
       - Item: Poison_Spore
         Rate: 5500
         StealProtected: true
   - Id: 1086
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -3491,50 +3910,51 @@ Body:
     Level: 64
     Hp: 126000
     BaseExp: 14300
     JobExp: 7150
     MvpExp: 7150
     Attack: 870
     Attack2: 1145
     Defense: 60
     MagicDefense: 45
     Str: 65
     Agi: 75
     Vit: 35
     Int: 45
     Dex: 85
     Luk: 150
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 720
     DamageMotion: 480
     Ai: 07
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Gold_Ring
         Rate: 2000
       - Item: Ora_Ora
         Rate: 1000
     Drops:
       - Item: Gold
         Rate: 1000
       - Item: Golden_Mace
         Rate: 150
       - Item: Golden_Gear
         Rate: 250
       - Item: Golden_Bell
         Rate: 500
       - Item: Emperium
         Rate: 300
       - Item: Elunium
         Rate: 2000
       - Item: Oridecon
         Rate: 1500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -3546,50 +3966,51 @@ Body:
     Name: Orc Hroi
     Level: 77
     Hp: 585700
     BaseExp: 58630
     JobExp: 32890
     MvpExp: 29315
     Attack: 2257
     Attack2: 2542
     Defense: 40
     MagicDefense: 45
     Agi: 91
     Vit: 30
     Int: 70
     Dex: 105
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1678
     AttackMotion: 780
+    ClientAttackMotion: 660
     DamageMotion: 648
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Red_Jewel
         Rate: 2000
       - Item: Yggdrasilberry
         Rate: 1500
       - Item: Steel
         Rate: 5000
     Drops:
       - Item: Voucher_Of_Orcish_Hero
         Rate: 9700
       - Item: Monkey_Circlet
         Rate: 500
       - Item: Right_Epsilon
         Rate: 150
       - Item: Shield_
         Rate: 250
       - Item: Orcish_Sword
         Rate: 1000
       - Item: Elunium
         Rate: 4559
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -3603,2680 +4024,2786 @@ Body:
     Name: Vocal
     Level: 18
     Hp: 3016
     BaseExp: 110
     JobExp: 88
     Attack: 71
     Attack2: 82
     Defense: 10
     MagicDefense: 30
     Str: 77
     Agi: 28
     Vit: 26
     Int: 30
     Dex: 53
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1080
     AttackMotion: 648
+    ClientAttackMotion: 600
     DamageMotion: 480
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Oldman's_Romance
         Rate: 50
       - Item: Grasshopper's_Leg
         Rate: 8000
       - Item: Azure_Jewel
         Rate: 1000
       - Item: Grasshopper_Doll
         Rate: 1500
       - Item: Angel's_Arrival
         Rate: 1000
       - Item: Center_Potion
         Rate: 700
       - Item: Guitar_Of_Gentle_Breeze
         Rate: 10
       - Item: Vocal_Card
         Rate: 1
         StealProtected: true
   - Id: 1089
     AegisName: TOAD
     Name: Sapo-Cururu
     Level: 10
     Hp: 5065
     BaseExp: 100
     JobExp: 50
     Attack: 26
     Attack2: 32
     Agi: 5
     Vit: 10
     Int: 10
     Dex: 10
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1236
     AttackMotion: 336
+    ClientAttackMotion: 168
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Big_Sis'_Ribbon
         Rate: 50
       - Item: Honey
         Rate: 2000
       - Item: Bluish_Green_Jewel
         Rate: 1000
       - Item: Glass_Bead
         Rate: 1500
       - Item: Alchol
         Rate: 100
       - Item: Detrimindexta
         Rate: 100
       - Item: Kiss_Of_Angel
         Rate: 1000
       - Item: Toad_Card
         Rate: 1
         StealProtected: true
   - Id: 1090
     AegisName: MASTERING
     Name: Mastering
     Level: 2
     Hp: 2415
     BaseExp: 30
     JobExp: 10
     Attack: 18
     Attack2: 24
     MagicDefense: 10
     Agi: 2
     Vit: 2
+    Int: 0
     Dex: 17
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Snowy_Horn
         Rate: 200
       - Item: Unripe_Apple
         Rate: 50
       - Item: Scarlet_Jewel
         Rate: 1000
       - Item: Angel's_Safeguard
         Rate: 1000
       - Item: Apple
         Rate: 8000
       - Item: Apple
         Rate: 8000
       - Item: Apple_Juice
         Rate: 4000
       - Item: Mastering_Card
         Rate: 1
         StealProtected: true
   - Id: 1091
     AegisName: DRAGON_FLY
     Name: Liblula
     Level: 8
     Hp: 2400
     BaseExp: 88
     JobExp: 44
     Attack: 22
     Attack2: 27
     Defense: 40
     Agi: 20
     Vit: 8
     Int: 15
     Dex: 17
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1076
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Sweet_Gents
         Rate: 200
       - Item: Red_Herb
         Rate: 8000
       - Item: Violet_Jewel
         Rate: 1500
       - Item: Chonchon_Doll
         Rate: 2000
       - Item: Clip
         Rate: 3000
       - Item: Lusty_Iron
         Rate: 50
       - Item: Grape_Juice
         Rate: 3000
       - Item: Dragon_Fly_Card
         Rate: 1
         StealProtected: true
   - Id: 1092
     AegisName: VAGABOND_WOLF
     Name: Lobo Errante
     Level: 24
     Hp: 12240
     BaseExp: 247
     JobExp: 176
     Attack: 135
     Attack2: 159
     Defense: 10
     Str: 57
     Agi: 45
     Vit: 48
     Int: 20
     Dex: 50
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1048
     AttackMotion: 648
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Western_Grace
         Rate: 200
       - Item: Claw_Of_Wolves
         Rate: 8000
       - Item: Golden_Jewel
         Rate: 1500
       - Item: Star_Dust_Blade
         Rate: 100
       - Item: Angel's_Warmth
         Rate: 1000
       - Item: Red_Jewel
         Rate: 10
       - Item: Monster_Juice
         Rate: 50
       - Item: Vagabond_Wolf_Card
         Rate: 1
         StealProtected: true
   - Id: 1093
     AegisName: ECLIPSE
     Name: Eclipse
     Level: 6
     Hp: 1800
     BaseExp: 60
     JobExp: 55
     Attack: 20
     Attack2: 26
     MagicDefense: 40
     Agi: 36
     Vit: 6
+    Int: 0
     Dex: 11
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1456
     AttackMotion: 456
+    ClientAttackMotion: 264
     DamageMotion: 336
     Ai: 21
     Class: Boss
     Drops:
       - Item: Fillet
         Rate: 200
       - Item: Red_Herb
         Rate: 8000
       - Item: White_Jewel
         Rate: 1200
       - Item: Glass_Bead
         Rate: 1500
       - Item: Four_Leaf_Clover
         Rate: 30
       - Item: Rainbow_Carrot
         Rate: 50
       - Item: Angel's_Protection
         Rate: 1000
       - Item: Eclipse_Card
         Rate: 1
         StealProtected: true
   - Id: 1094
     AegisName: AMBERNITE
     Name: Ambernite
     Level: 13
     Hp: 495
     BaseExp: 57
     JobExp: 38
     Attack: 39
     Attack2: 46
     Defense: 30
     Agi: 13
     Vit: 13
     Int: 5
     Dex: 18
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2048
     AttackMotion: 648
+    ClientAttackMotion: 312
     DamageMotion: 648
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Crystal_Blue
         Rate: 50
       - Item: Snail's_Shell
         Rate: 9000
       - Item: Garlet
         Rate: 1200
       - Item: Shell
         Rate: 3000
       - Item: Solid_Shell
         Rate: 2
       - Item: Elunium_Stone
         Rate: 14
       - Item: Iron_Ore
         Rate: 150
       - Item: Ambernite_Card
         Rate: 1
         StealProtected: true
   - Id: 1095
     AegisName: ANDRE
     Name: Andre
     Level: 17
     Hp: 688
     BaseExp: 109
     JobExp: 71
     Attack: 60
     Attack2: 71
     Defense: 10
     Agi: 17
     Vit: 24
     Int: 20
     Dex: 26
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 180
     DamageMotion: 384
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Garlet
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 500
       - Item: Yellow_Live
         Rate: 50
       - Item: Sparkling_Dust
         Rate: 4
       - Item: Iron_Ore
         Rate: 350
       - Item: Elunium_Stone
         Rate: 28
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1096
     AegisName: ANGELING
     Name: Angeling
     Level: 20
     Hp: 55000
     BaseExp: 163
     JobExp: 144
     Attack: 120
     Attack2: 195
     MagicDefense: 70
     Agi: 50
     Vit: 20
     Int: 75
     Dex: 68
     Luk: 200
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 312
     DamageMotion: 672
     Ai: 21
     Class: Boss
     Drops:
       - Item: Angelic_Chain
         Rate: 100
       - Item: Scapulare_
         Rate: 60
       - Item: Leaf_Of_Yggdrasil
         Rate: 500
       - Item: Spirit_Chain
         Rate: 1
       - Item: White_Herb
         Rate: 2000
       - Item: Apple
         Rate: 28
       - Item: Emperium
         Rate: 40
       - Item: Angeling_Card
         Rate: 1
         StealProtected: true
   - Id: 1097
     AegisName: ANT_EGG
     Name: Ovo de Andre
     Level: 4
     Hp: 420
     BaseExp: 5
     JobExp: 4
     Attack: 1
     Attack2: 2
     Defense: 20
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 672
     DamageMotion: 1
     Drops:
       - Item: Phracon
         Rate: 320
       - Item: Shell
         Rate: 2000
       - Item: Jellopy
         Rate: 2000
       - Item: Sticky_Mucus
         Rate: 650
       - Item: Empty_Bottle
         Rate: 2000
       - Item: Iron_Ore
         Rate: 200
       - Item: Andre_Egg_Card
         Rate: 1
         StealProtected: true
   - Id: 1098
     AegisName: ANUBIS
     Name: Anubis
     Level: 75
     Hp: 38000
     BaseExp: 28000
     JobExp: 22000
     Attack: 530
     Attack2: 1697
     Defense: 25
     MagicDefense: 31
     Str: 5
     Agi: 65
     Vit: 10
     Int: 82
     Dex: 77
     Luk: 33
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1250
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Rotten_Bandage
         Rate: 3000
       - Item: Healing_Staff
         Rate: 10
       - Item: Mementos
         Rate: 550
       - Item: Oridecon
         Rate: 105
       - Item: Sacred_Masque
         Rate: 4365
       - Item: Mitten_Of_Presbyter
         Rate: 1
       - Item: Blessed_Wand
         Rate: 3
       - Item: Anubis_Card
         Rate: 1
         StealProtected: true
   - Id: 1099
     AegisName: ARGIOPE
     Name: Argiope
     Level: 41
     Hp: 4382
     BaseExp: 1797
     JobExp: 849
     Attack: 395
     Attack2: 480
     Defense: 30
     Agi: 41
     Vit: 31
     Int: 10
     Dex: 56
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1792
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Short_Leg
         Rate: 5335
       - Item: Zargon
         Rate: 1200
       - Item: Elunium_Stone
         Rate: 175
       - Item: Boots_
         Rate: 5
       - Item: Green_Herb
         Rate: 1500
       - Item: Violet_Jewel
         Rate: 10
       - Item: Argiope_Card
         Rate: 1
         StealProtected: true
   - Id: 1100
     AegisName: ARGOS
     Name: Argos
     Level: 25
     Hp: 1117
     BaseExp: 388
     JobExp: 188
     Attack: 158
     Attack2: 191
     Defense: 15
     Agi: 25
     Vit: 25
     Int: 5
     Dex: 32
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1468
     AttackMotion: 468
+    ClientAttackMotion: 216
     DamageMotion: 768
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Spiderweb
         Rate: 9000
       - Item: Scell
         Rate: 1200
       - Item: Short_Leg
         Rate: 500
       - Item: Elunium_Stone
         Rate: 61
       - Item: Green_Herb
         Rate: 670
       - Item: Yellow_Herb
         Rate: 250
       - Item: Bark_Shorts
         Rate: 15
       - Item: Argos_Card
         Rate: 1
         StealProtected: true
   - Id: 1101
     AegisName: BAPHOMET_
     Name: Bafom Jr.
     Level: 50
     Hp: 8578
     BaseExp: 2706
     JobExp: 1480
     Attack: 487
     Attack2: 590
     Defense: 15
     MagicDefense: 25
     Agi: 75
     Vit: 55
     Dex: 93
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 868
     AttackMotion: 480
+    ClientAttackMotion: 216
     DamageMotion: 120
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Evil_Horn
         Rate: 500
       - Item: Oridecon
         Rate: 63
       - Item: Halberd_
         Rate: 2
       - Item: Yggdrasilberry
         Rate: 50
       - Item: Leaf_Of_Yggdrasil
         Rate: 100
       - Item: Yellow_Herb
         Rate: 1300
       - Item: Boots
         Rate: 50
       - Item: Baphomet__Card
         Rate: 1
         StealProtected: true
   - Id: 1102
     AegisName: BATHORY
     Name: Bathory
     Level: 44
     Hp: 5415
     BaseExp: 2503
     JobExp: 1034
     Attack: 198
     Attack2: 398
     MagicDefense: 60
     Agi: 76
     Vit: 24
     Int: 85
     Dex: 65
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1504
     AttackMotion: 840
+    ClientAttackMotion: 288
     DamageMotion: 900
     Ai: 21
     Drops:
       - Item: Sparkling_Dust
         Rate: 200
       - Item: Starsand_Of_Witch
         Rate: 4850
       - Item: Star_Sparkling
         Rate: 3
       - Item: Arc_Wand_
         Rate: 5
       - Item: Star_Crumb
         Rate: 30
       - Item: Old_Magic_Book
         Rate: 15
       - Item: Old_Broom
         Rate: 20
       - Item: Bathory_Card
         Rate: 1
         StealProtected: true
   - Id: 1103
     AegisName: CARAMEL
     Name: Caramelo
     Level: 23
     Hp: 1424
     BaseExp: 264
     JobExp: 162
     Attack: 90
     Attack2: 112
     Defense: 5
     MagicDefense: 5
     Str: 35
     Agi: 23
     Vit: 46
     Int: 5
     Dex: 38
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1604
     AttackMotion: 840
+    ClientAttackMotion: 216
     DamageMotion: 756
     Ai: 17
     Drops:
       - Item: Porcupine_Spike
         Rate: 9000
       - Item: Coat_
         Rate: 5
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Glaive_
         Rate: 10
       - Item: Spear_
         Rate: 15
       - Item: Pike_
         Rate: 20
       - Item: Caramel_Card
         Rate: 1
         StealProtected: true
   - Id: 1104
     AegisName: COCO
     Name: Koko
     Level: 17
     Hp: 817
     BaseExp: 120
     JobExp: 78
     Attack: 56
     Attack2: 67
     Str: 24
     Agi: 17
     Vit: 34
     Int: 20
     Dex: 24
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 504
     DamageMotion: 1008
     Ai: 17
     Drops:
       - Item: Acorn
         Rate: 9000
       - Item: Hood_
         Rate: 20
       - Item: Fluff
         Rate: 3000
       - Item: Animal's_Skin
         Rate: 2500
       - Item: Sweet_Potato
         Rate: 500
       - Item: Sandals_
         Rate: 25
       - Item: Strawberry
         Rate: 600
       - Item: Coco_Card
         Rate: 1
         StealProtected: true
   - Id: 1105
     AegisName: DENIRO
     Name: Deniro
     Level: 19
     Hp: 760
     BaseExp: 135
     JobExp: 85
     Attack: 68
     Attack2: 79
     Defense: 15
     Agi: 19
     Vit: 30
     Int: 20
     Dex: 43
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 144
     DamageMotion: 576
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Garlet
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 1200
       - Item: Boody_Red
         Rate: 50
       - Item: Sparkling_Dust
         Rate: 8
       - Item: Iron_Ore
         Rate: 450
       - Item: Elunium_Stone
         Rate: 34
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1106
     AegisName: DESERT_WOLF
     Name: Lobo do Deserto
     Level: 27
     Hp: 1716
     BaseExp: 427
     JobExp: 266
     Attack: 169
     Attack2: 208
     MagicDefense: 10
     Str: 56
     Agi: 27
     Vit: 45
     Int: 15
     Dex: 56
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1120
     AttackMotion: 420
+    ClientAttackMotion: 180
     DamageMotion: 288
     Ai: 13
     Drops:
       - Item: Katar_
         Rate: 5
       - Item: Claw_Of_Desert_Wolf
         Rate: 5500
       - Item: Mink_Coat
         Rate: 1
       - Item: Meat
         Rate: 1200
       - Item: Claw_Of_Wolves
         Rate: 2000
       - Item: Oridecon_Stone
         Rate: 53
       - Item: Stiletto_
         Rate: 140
       - Item: Desert_Wolf_Card
         Rate: 1
         StealProtected: true
   - Id: 1107
     AegisName: DESERT_WOLF_B
     Name: Filhote Lobo do Deserto
     JapaneseName: Filhote Lobo do Deserto
     Level: 9
     Hp: 164
     BaseExp: 20
     JobExp: 16
     Attack: 30
     Attack2: 36
     Agi: 9
     Vit: 9
     Int: 5
     Dex: 21
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1600
     AttackMotion: 900
+    ClientAttackMotion: 252
     DamageMotion: 240
     Ai: 03
     Drops:
       - Item: Phracon
         Rate: 85
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Adventurere's_Suit_
         Rate: 80
       - Item: Meat
         Rate: 600
       - Item: Cotton_Shirt
         Rate: 200
       - Item: Asura_
         Rate: 5
       - Item: Orange
         Rate: 1000
       - Item: Desert_Wolf_Babe_Card
         Rate: 1
         StealProtected: true
   - Id: 1108
     AegisName: DEVIACE
     Name: Deviace
     Level: 47
     Hp: 20090
     BaseExp: 9988
     JobExp: 7207
     Attack: 514
     Attack2: 1024
     Defense: 10
     MagicDefense: 20
     Agi: 47
     Vit: 62
     Int: 48
     Dex: 62
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 1680
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 17
     Drops:
       - Item: Mistic_Frozen
         Rate: 25
       - Item: Tooth_Of_Ancient_Fish
         Rate: 9000
       - Item: Lip_Of_Ancient_Fish
         Rate: 1000
       - Item: Antenna
         Rate: 2
       - Item: Detrimindexta
         Rate: 200
       - Item: Katar_Of_Cold_Icicle
         Rate: 3
       - Item: Oridecon_Stone
         Rate: 161
       - Item: Deviace_Card
         Rate: 1
         StealProtected: true
   - Id: 1109
     AegisName: DEVIRUCHI
     Name: Deviruchi
     Level: 46
     Hp: 6666
     BaseExp: 2662
     JobExp: 1278
     Attack: 475
     Attack2: 560
     Defense: 10
     MagicDefense: 25
     Agi: 69
     Vit: 40
     Int: 55
     Dex: 70
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 980
     AttackMotion: 600
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Petite_DiablOfs_Horn
         Rate: 5335
       - Item: Petite_DiablOfs_Wing
         Rate: 400
       - Item: Oridecon
         Rate: 2
       - Item: Partizan_
         Rate: 2
       - Item: Sacred_Marks
         Rate: 5
       - Item: Zargon
         Rate: 1500
       - Item: Oridecon_Stone
         Rate: 154
       - Item: Deviruchi_Card
         Rate: 1
         StealProtected: true
   - Id: 1110
     AegisName: DOKEBI
     Name: Dokebi
     Level: 33
     Hp: 2697
     BaseExp: 889
     JobExp: 455
     Attack: 197
     Attack2: 249
     MagicDefense: 10
     Str: 50
     Agi: 50
     Vit: 40
     Int: 35
     Dex: 69
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1156
     AttackMotion: 456
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Dokkaebi_Horn
         Rate: 9000
       - Item: Elunium_Stone
         Rate: 150
       - Item: Sword_Mace_
         Rate: 2
       - Item: Mighty_Staff
         Rate: 1
       - Item: Gold
         Rate: 1
       - Item: Club
         Rate: 300
       - Item: Hammer_Of_Blacksmith
         Rate: 5
       - Item: Dokebi_Card
         Rate: 1
         StealProtected: true
   - Id: 1111
     AegisName: DRAINLIAR
     Name: Drainliar
     Level: 24
     Hp: 1162
     BaseExp: 431
     JobExp: 176
     Attack: 74
     Attack2: 84
     Agi: 36
     Vit: 24
+    Int: 0
     Dex: 78
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 09
     Drops:
       - Item: Emveretarcon
         Rate: 60
       - Item: Tooth_Of_Bat
         Rate: 3000
       - Item: Red_Jewel
         Rate: 20
       - Item: Red_Herb
         Rate: 1000
       - Item: Wing_Of_Red_Bat
         Rate: 5500
       - Item: Wing_Of_Red_Bat
         Rate: 1500
       - Item: Oridecon_Stone
         Rate: 40
       - Item: Drainliar_Card
         Rate: 1
         StealProtected: true
   - Id: 1112
     AegisName: DRAKE
     Name: Drake
     Level: 70
     Hp: 326666
     BaseExp: 28600
     JobExp: 22880
     MvpExp: 14300
     Attack: 1800
     Attack2: 2100
     Defense: 20
     MagicDefense: 35
     Str: 85
     Agi: 80
     Vit: 49
     Int: 75
     Dex: 79
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 620
     AttackMotion: 420
+    ClientAttackMotion: 108
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: White_Potion
         Rate: 5000
       - Item: Violet_Jewel
         Rate: 500
     Drops:
       - Item: Saber_
         Rate: 600
       - Item: Ring_Pommel_Saber_
         Rate: 950
       - Item: Cutlas
         Rate: 150
       - Item: Hae_Dong_Gum_
         Rate: 400
       - Item: Corsair
         Rate: 350
       - Item: Elunium
         Rate: 3200
       - Item: Krasnaya
         Rate: 100
       - Item: Drake_Card
         Rate: 1
         StealProtected: true
   - Id: 1113
     AegisName: DROPS
     Name: Drops
     Level: 3
     Hp: 55
     BaseExp: 4
     JobExp: 3
     Attack: 10
     Attack2: 13
     Agi: 3
     Vit: 3
+    Int: 0
     Dex: 12
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1372
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Jellopy
         Rate: 7500
       - Item: Rod_
         Rate: 80
       - Item: Sticky_Mucus
         Rate: 500
       - Item: Apple
         Rate: 1100
       - Item: Empty_Bottle
         Rate: 1700
       - Item: Apple
         Rate: 800
       - Item: Orange_Juice
         Rate: 20
       - Item: Drops_Card
         Rate: 1
         StealProtected: true
   - Id: 1114
     AegisName: DUSTINESS
     Name: Poeira
     Level: 21
     Hp: 1044
     BaseExp: 218
     JobExp: 140
     Attack: 80
     Attack2: 102
     MagicDefense: 10
     Agi: 53
     Vit: 17
+    Int: 0
     Dex: 38
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1004
     AttackMotion: 504
+    ClientAttackMotion: 252
     DamageMotion: 384
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Moth_Dust
         Rate: 9000
       - Item: Wing_Of_Moth
         Rate: 500
       - Item: Masquerade
         Rate: 4
       - Item: Insect_Feeler
         Rate: 2000
       - Item: Sparkling_Dust
         Rate: 10
       - Item: Red_Herb
         Rate: 1200
       - Item: Dustiness_Card
         Rate: 1
         StealProtected: true
   - Id: 1115
     AegisName: EDDGA
     Name: Eddga
     Level: 65
     Hp: 152000
     BaseExp: 25025
     JobExp: 12870
     MvpExp: 12512
     Attack: 1215
     Attack2: 1565
     Defense: 15
     MagicDefense: 15
     Str: 78
     Agi: 70
     Vit: 85
     Int: 66
     Dex: 90
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 872
     AttackMotion: 1344
+    ClientAttackMotion: 408
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Tiger's_Skin
         Rate: 5000
       - Item: Tiger_Footskin
         Rate: 1000
       - Item: Flame_Heart
         Rate: 3000
     Drops:
       - Item: Fire_Brand
         Rate: 150
       - Item: Smoking_Pipe
         Rate: 250
       - Item: Honey
         Rate: 10000
       - Item: Katar_Of_Raging_Blaze
         Rate: 500
       - Item: Tiger_Footskin
         Rate: 250
       - Item: Elunium
         Rate: 2300
       - Item: Krieg
         Rate: 100
       - Item: Eddga_Card
         Rate: 1
         StealProtected: true
   - Id: 1116
     AegisName: EGGYRA
     Name: Eggyra
     Level: 24
     Hp: 633
     BaseExp: 215
     JobExp: 220
     Attack: 85
     Attack2: 107
     Defense: 20
     MagicDefense: 25
     Agi: 36
     Vit: 24
+    Int: 0
     Dex: 32
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1816
     AttackMotion: 816
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 17
     Drops:
       - Item: Scell
         Rate: 1000
       - Item: Egg_Shell
         Rate: 20
       - Item: Piece_Of_Egg_Shell
         Rate: 550
       - Item: Red_Herb
         Rate: 1000
       - Item: Pet_Incubator
         Rate: 300
       - Item: Center_Potion
         Rate: 250
       - Item: Elunium_Stone
         Rate: 57
       - Item: Eggyra_Card
         Rate: 1
         StealProtected: true
   - Id: 1117
     AegisName: EVIL_DRUID
     Name: Druida Maligno
     Level: 58
     Hp: 16506
     BaseExp: 2890
     JobExp: 1827
     Attack: 420
     Attack2: 670
     Defense: 5
     MagicDefense: 60
     Agi: 29
     Vit: 58
     Int: 80
     Dex: 68
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 2276
     AttackMotion: 576
+    ClientAttackMotion: 168
     DamageMotion: 336
     Ai: 21
     Drops:
       - Item: Biretta_
         Rate: 10
       - Item: Bone_Wand
         Rate: 1
       - Item: Ragamuffin_Cape
         Rate: 2
       - Item: Bible
         Rate: 10
       - Item: Leaf_Of_Yggdrasil
         Rate: 200
       - Item: Cookbook07
         Rate: 4
       - Item: White_Herb
         Rate: 2000
       - Item: Evil_Druid_Card
         Rate: 1
         StealProtected: true
   - Id: 1118
     AegisName: FLORA
     Name: Flora
     Level: 26
     Hp: 2092
     BaseExp: 357
     JobExp: 226
     Attack: 242
     Attack2: 273
     Defense: 10
     MagicDefense: 35
     Agi: 26
     Vit: 35
     Int: 5
     Dex: 43
     Luk: 80
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1432
     AttackMotion: 432
+    ClientAttackMotion: 180
     DamageMotion: 576
     Ai: 10
     Drops:
       - Item: Blossom_Of_Maneater
         Rate: 9000
       - Item: Sunflower
         Rate: 3
       - Item: Aloe
         Rate: 10
       - Item: Leaflet_Of_Aloe
         Rate: 50
       - Item: Singing_Flower
         Rate: 20
       - Item: Stem
         Rate: 2000
       - Item: Witherless_Rose
         Rate: 1
       - Item: Flora_Card
         Rate: 1
         StealProtected: true
   - Id: 1119
     AegisName: FRILLDORA
     Name: Frilldora
     Level: 30
     Hp: 2023
     BaseExp: 529
     JobExp: 319
     Attack: 200
     Attack2: 239
     MagicDefense: 10
     Str: 35
     Agi: 30
     Vit: 38
     Int: 15
     Dex: 53
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1540
     AttackMotion: 720
+    ClientAttackMotion: 324
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Lizard_Scruff
         Rate: 5500
       - Item: Elunium_Stone
         Rate: 90
       - Item: Reptile_Tongue
         Rate: 1500
       - Item: Azure_Jewel
         Rate: 15
       - Item: Yellow_Gemstone
         Rate: 200
       - Item: Red_Herb
         Rate: 800
       - Item: Zargon
         Rate: 120
       - Item: Frilldora_Card
         Rate: 1
         StealProtected: true
   - Id: 1120
     AegisName: GHOSTRING
     Name: Ghostring
     Level: 18
     Hp: 73300
     BaseExp: 101
     JobExp: 108
     Attack: 82
     Attack2: 122
     MagicDefense: 60
     Str: 40
     Agi: 27
     Vit: 18
     Int: 45
     Dex: 72
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1220
     AttackMotion: 1080
+    ClientAttackMotion: 336
     DamageMotion: 648
     Ai: 21
     Class: Boss
     Drops:
       - Item: Transparent_Cloth
         Rate: 5335
       - Item: Ghost_Bandana
         Rate: 100
       - Item: Thief_Clothes_
         Rate: 50
       - Item: Branch_Of_Dead_Tree
         Rate: 500
       - Item: Old_Blue_Box
         Rate: 10
       - Item: Emperium
         Rate: 30
       - Item: Ghost_Scroll_1_5
         Rate: 100
       - Item: Ghostring_Card
         Rate: 1
         StealProtected: true
   - Id: 1121
     AegisName: GIEARTH
     Name: Giearth
     Level: 29
     Hp: 2252
     BaseExp: 495
     JobExp: 301
     Attack: 154
     Attack2: 185
     Defense: 10
     MagicDefense: 50
     Str: 25
     Agi: 29
     Vit: 46
     Int: 60
     Dex: 64
     Luk: 105
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1848
     AttackMotion: 1296
+    ClientAttackMotion: 480
     DamageMotion: 432
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Great_Nature
         Rate: 30
       - Item: Coal
         Rate: 150
       - Item: Elder_Pixie's_Beard
         Rate: 5500
       - Item: Elven_Ears
         Rate: 1
       - Item: Cap_
         Rate: 10
       - Item: Sparkling_Dust
         Rate: 100
       - Item: Giearth_Card
         Rate: 1
         StealProtected: true
   - Id: 1122
     AegisName: GOBLIN_1
     Name: Goblin
     Level: 25
     Hp: 1176
     BaseExp: 310
     JobExp: 188
     Attack: 118
     Attack2: 140
     Defense: 10
     MagicDefense: 5
     Agi: 53
     Vit: 25
     Int: 20
     Dex: 38
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Iron
         Rate: 270
       - Item: Scell
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 43
       - Item: Goblini_Mask
         Rate: 3
       - Item: Dirk_
         Rate: 10
       - Item: Buckler_
         Rate: 5
       - Item: Red_Herb
         Rate: 1800
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1123
     AegisName: GOBLIN_2
     Name: Goblin
     Level: 24
     Hp: 1034
     BaseExp: 287
     JobExp: 176
     Attack: 88
     Attack2: 100
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 24
     Int: 15
     Dex: 66
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1320
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 09
     Drops:
       - Item: Iron
         Rate: 250
       - Item: Scell
         Rate: 9000
       - Item: Indian_Hair_Piece
         Rate: 3
       - Item: Flail_
         Rate: 10
       - Item: Buckler_
         Rate: 1
       - Item: Red_Herb
         Rate: 1550
       - Item: Goblini_Mask
         Rate: 3
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1124
     AegisName: GOBLIN_3
     Name: Goblin
     Level: 24
     Hp: 1034
     BaseExp: 357
     JobExp: 176
     Attack: 132
     Attack2: 165
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 24
     Int: 15
     Dex: 24
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 13
     Drops:
       - Item: Iron
         Rate: 230
       - Item: Scell
         Rate: 9000
       - Item: Red_Bandana
         Rate: 3
       - Item: Goblin_Mask_02
         Rate: 15
       - Item: Buckler_
         Rate: 1
       - Item: Red_Herb
         Rate: 1550
       - Item: Yellow_Herb
         Rate: 220
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1125
     AegisName: GOBLIN_4
     Name: Goblin
     Level: 23
     Hp: 1359
     BaseExp: 264
     JobExp: 164
     Attack: 109
     Attack2: 131
     Defense: 10
     MagicDefense: 5
     Agi: 23
     Vit: 46
     Int: 15
     Dex: 36
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 13
     Drops:
       - Item: Yellow_Live
         Rate: 100
       - Item: Iron
         Rate: 170
       - Item: Goblin_Mask_01
         Rate: 15
       - Item: Gangster_Patch
         Rate: 3
       - Item: Smasher_
         Rate: 10
       - Item: Buckler_
         Rate: 1
       - Item: Red_Herb
         Rate: 1500
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1126
     AegisName: GOBLIN_5
     Name: Goblin
     Level: 22
     Hp: 1952
     BaseExp: 241
     JobExp: 152
     Attack: 105
     Attack2: 127
     Defense: 10
     MagicDefense: 5
     Agi: 22
     Vit: 22
     Int: 15
     Dex: 32
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Water
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 3074
     AttackMotion: 1874
+    ClientAttackMotion: 384
     DamageMotion: 480
     Ai: 13
     Drops:
       - Item: Iron
         Rate: 150
       - Item: Scell
         Rate: 9000
       - Item: Wand_
         Rate: 15
       - Item: Buckler_
         Rate: 1
       - Item: Goblin_Mask_03
         Rate: 15
       - Item: Red_Herb
         Rate: 1500
       - Item: Yellow_Herb
         Rate: 220
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1127
     AegisName: HODE
     Name: Hode
     Level: 26
     Hp: 2282
     BaseExp: 550
     JobExp: 300
     Attack: 146
     Attack2: 177
     MagicDefense: 30
     Agi: 26
     Vit: 42
     Int: 5
     Dex: 49
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1480
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 720
     Ai: 01
     Drops:
       - Item: Yellow_Live
         Rate: 120
       - Item: Earthworm_Peeling
         Rate: 9000
       - Item: Elunium_Stone
         Rate: 80
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Town_Sword_
         Rate: 10
       - Item: Foolishness_Of_Blind
         Rate: 1
       - Item: Fatty_Chubby_Earthworm
         Rate: 20
       - Item: Hode_Card
         Rate: 1
         StealProtected: true
   - Id: 1128
     AegisName: HORN
     Name: Besouro-Chifre
     Level: 18
     Hp: 659
     BaseExp: 134
     JobExp: 86
     Attack: 58
     Attack2: 69
     Defense: 10
     Str: 22
     Agi: 18
     Vit: 28
     Int: 10
     Dex: 47
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1528
     AttackMotion: 528
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Yellow_Live
         Rate: 80
       - Item: Emveretarcon
         Rate: 35
       - Item: Horn
         Rate: 5500
       - Item: Guisarme_
         Rate: 15
       - Item: Shell
         Rate: 5500
       - Item: Solid_Shell
         Rate: 70
       - Item: Horn_Card
         Rate: 1
         StealProtected: true
   - Id: 1129
     AegisName: HORONG
     Name: Horong
     Level: 34
     Hp: 1939
     BaseExp: 786
     JobExp: 479
     Attack: 275
     Attack2: 327
     Defense: 99
     MagicDefense: 50
     Agi: 34
     Vit: 10
+    Int: 0
     Dex: 50
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 1888
     AttackMotion: 1152
+    ClientAttackMotion: 552
     DamageMotion: 828
     Ai: 13
     Drops:
       - Item: Stone_Heart
         Rate: 6500
       - Item: Zargon
         Rate: 500
       - Item: Bomb_Wick
         Rate: 5
       - Item: Fire_Arrow
         Rate: 10000
       - Item: Elunium_Stone
         Rate: 118
       - Item: Baked_Yam
         Rate: 20
       - Item: Alchol
         Rate: 50
       - Item: Horong_Card
         Rate: 1
         StealProtected: true
   - Id: 1130
     AegisName: JAKK
     Name: Jakk
     Level: 38
     Hp: 3581
     BaseExp: 1408
     JobExp: 880
     Attack: 315
     Attack2: 382
     Defense: 5
     MagicDefense: 30
     Agi: 38
     Vit: 38
     Int: 43
     Dex: 75
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 648
     Ai: 21
     Drops:
       - Item: Pumpkin_Head
         Rate: 9000
       - Item: Zargon
         Rate: 900
       - Item: Elunium
         Rate: 31
       - Item: Tights_
         Rate: 5
       - Item: Frozen_Heart
         Rate: 5
       - Item: Pumpkin
         Rate: 1000
       - Item: Jakk_Card
         Rate: 1
         StealProtected: true
   - Id: 1131
     AegisName: JOKER
     Name: Coringa
     Level: 57
     Hp: 12450
     BaseExp: 3706
     JobExp: 2362
     Attack: 621
     Attack2: 738
     Defense: 10
     MagicDefense: 35
     Agi: 143
     Vit: 47
     Int: 75
     Dex: 98
     Luk: 175
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1364
     AttackMotion: 864
+    ClientAttackMotion: 312
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Zargon
         Rate: 2000
       - Item: Old_Card_Album
         Rate: 2
       - Item: Contracts_In_Shadow
         Rate: 20
       - Item: Yellow_Herb
         Rate: 1000
       - Item: Katar_Of_Piercing_Wind
         Rate: 1
       - Item: Oridecon
         Rate: 100
       - Item: Ghost_Scroll_1_5
         Rate: 100
       - Item: Joker_Card
         Rate: 1
         StealProtected: true
   - Id: 1132
     AegisName: KHALITZBURG
     Name: Khalitzburg
     Level: 63
     Hp: 19276
     BaseExp: 4378
     JobExp: 2750
     Attack: 875
     Attack2: 1025
     Defense: 45
     MagicDefense: 10
     Str: 58
     Agi: 65
     Vit: 48
     Int: 5
     Dex: 73
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 350
     AttackDelay: 528
     AttackMotion: 1000
+    ClientAttackMotion: 240
     DamageMotion: 396
     Ai: 21
     Drops:
       - Item: Skel_Bone
         Rate: 8000
       - Item: Elunium
         Rate: 191
       - Item: Bone_Helm
         Rate: 1
       - Item: Mirror_Shield_
         Rate: 2
       - Item: Patriotism_Marks
         Rate: 10
       - Item: White_Herb
         Rate: 2000
       - Item: Saber_
         Rate: 2
       - Item: Khalitzburg_Card
         Rate: 1
         StealProtected: true
   - Id: 1133
     AegisName: KOBOLD_1
     Name: Kobold
     Level: 36
     Hp: 3893
     BaseExp: 988
     JobExp: 625
     Attack: 265
     Attack2: 318
     Defense: 15
     MagicDefense: 10
     Agi: 90
     Vit: 36
     Int: 30
     Dex: 52
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Kobold: true
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1028
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
     Drops:
       - Item: Steel
         Rate: 100
       - Item: Cobold_Hair
         Rate: 5335
       - Item: Zargon
         Rate: 700
       - Item: Elunium_Stone
         Rate: 25
       - Item: Gladius_
         Rate: 2
       - Item: Buckler_
         Rate: 5
       - Item: Kobold_Card
         Rate: 1
         StealProtected: true
   - Id: 1134
     AegisName: KOBOLD_2
     Name: Kobold
     Level: 31
     Hp: 2179
     BaseExp: 806
     JobExp: 407
     Attack: 262
     Attack2: 324
     Defense: 15
     MagicDefense: 10
     Agi: 31
     Vit: 31
     Int: 20
     Dex: 46
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Kobold: true
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1528
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
     Drops:
       - Item: Steel
         Rate: 100
       - Item: Cobold_Hair
         Rate: 5335
       - Item: Zargon
         Rate: 200
       - Item: Buckler_
         Rate: 3
       - Item: Yellow_Herb
         Rate: 100
       - Item: Guard
         Rate: 100
       - Item: Kobold_Card
         Rate: 1
         StealProtected: true
   - Id: 1135
     AegisName: KOBOLD_3
     Name: Kobold
     Level: 31
     Hp: 2179
     BaseExp: 644
     JobExp: 407
     Attack: 186
     Attack2: 216
     Defense: 15
     MagicDefense: 10
     Agi: 31
     Vit: 31
     Int: 20
     Dex: 88
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Kobold: true
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1228
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
     Drops:
       - Item: Boody_Red
         Rate: 35
       - Item: Steel
         Rate: 100
       - Item: Cobold_Hair
         Rate: 5335
       - Item: Zargon
         Rate: 200
       - Item: Hammer_
         Rate: 5
       - Item: Buckler_
         Rate: 3
       - Item: Yellow_Herb
         Rate: 100
       - Item: Kobold_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1136
+#    AegisName: KOBOLD_4
+#    Name: Kobold
+#    Level: 31
+#    Hp: 2179
+#    BaseExp: 806
+#    JobExp: 407
+#    Attack: 262
+#    Attack2: 324
+#    Defense: 15
+#    MagicDefense: 10
+#    Agi: 31
+#    Vit: 31
+#    Int: 20
+#    Dex: 46
+#    Luk: 20
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Demihuman
+#    Element: Poison
+#    ElementLevel: 2
+#    WalkSpeed: 200
+#    AttackDelay: 1528
+#    AttackMotion: 528
+#    DamageMotion: 360
+#    Ai: 13
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Steel
+#        Rate: 50
+#        StealProtected: true
   - Id: 1138
     AegisName: MAGNOLIA
     Name: Magnlia
     Level: 26
     Hp: 3195
     BaseExp: 393
     JobExp: 248
     Attack: 120
     Attack2: 151
     Defense: 5
     MagicDefense: 30
     Agi: 26
     Vit: 26
+    Int: 0
     Dex: 39
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Water
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1560
     AttackMotion: 360
+    ClientAttackMotion: 192
     DamageMotion: 360
     Ai: 02
     Modes:
       Detector: true
     Drops:
       - Item: Old_Frying_Pan
         Rate: 9000
       - Item: Garlet
         Rate: 800
       - Item: Scell
         Rate: 100
       - Item: Zargon
         Rate: 10
       - Item: Black_Ladle
         Rate: 40
       - Item: Yellow_Herb
         Rate: 400
       - Item: High_end_Cooking_Kits
         Rate: 5
       - Item: Magnolia_Card
         Rate: 1
         StealProtected: true
   - Id: 1139
     AegisName: MANTIS
     Name: Louva-a-Deus
     Level: 26
     Hp: 2472
     BaseExp: 393
     JobExp: 248
     Attack: 118
     Attack2: 149
     Defense: 10
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 45
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1528
     AttackMotion: 660
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Yellow_Live
         Rate: 110
       - Item: Limb_Of_Mantis
         Rate: 9000
       - Item: Scell
         Rate: 1400
       - Item: Elunium_Stone
         Rate: 70
       - Item: Solid_Shell
         Rate: 250
       - Item: Azure_Jewel
         Rate: 10
       - Item: Red_Herb
         Rate: 650
       - Item: Mantis_Card
         Rate: 1
         StealProtected: true
   - Id: 1140
     AegisName: MARDUK
     Name: Marduk
     Level: 40
     Hp: 4214
     BaseExp: 1238
     JobExp: 752
     Attack: 315
     Attack2: 382
     MagicDefense: 60
     Agi: 40
     Vit: 20
     Int: 79
     Dex: 78
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1540
     AttackMotion: 840
+    ClientAttackMotion: 432
     DamageMotion: 504
     Ai: 09
     Drops:
       - Item: Flame_Heart
         Rate: 35
       - Item: Sacred_Masque
         Rate: 4365
       - Item: Staff_
         Rate: 10
       - Item: Mitten_Of_Presbyter
         Rate: 1
       - Item: Blessed_Wand
         Rate: 3
       - Item: Fire_Scroll_1_5
         Rate: 100
       - Item: Book_Of_Devil
         Rate: 20
       - Item: Marduk_Card
         Rate: 1
         StealProtected: true
   - Id: 1141
     AegisName: MARINA
     Name: Marina
     Level: 21
     Hp: 2087
     BaseExp: 218
     JobExp: 140
     Attack: 84
     Attack2: 106
     MagicDefense: 5
     Agi: 21
     Vit: 21
+    Int: 0
     Dex: 36
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 2280
     AttackMotion: 1080
+    ClientAttackMotion: 720
     DamageMotion: 864
     Ai: 01
     Drops:
       - Item: Single_Cell
         Rate: 5000
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Crystal_Blue
         Rate: 45
       - Item: Mistic_Frozen
         Rate: 2
       - Item: Blue_Gemstone
         Rate: 200
       - Item: Deadly_Noxious_Herb
         Rate: 20
       - Item: Marina_Card
         Rate: 1
         StealProtected: true
   - Id: 1142
     AegisName: MARINE_SPHERE
     Name: Esfera Marinha
     Level: 28
     Hp: 3518
     BaseExp: 461
     JobExp: 284
     Attack: 120
     Attack2: 320
     MagicDefense: 40
     Agi: 28
     Vit: 28
+    Int: 0
     Dex: 33
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 800
     AttackDelay: 1201
     AttackMotion: 1
+    ClientAttackMotion: 240
     DamageMotion: 1
     Drops:
       - Item: Tendon
         Rate: 5000
       - Item: Detonator
         Rate: 2500
       - Item: Chain_
         Rate: 10
       - Item: Skyblue_Jewel
         Rate: 10
       - Item: Blue_Gemstone
         Rate: 150
       - Item: Transparent_Headgear
         Rate: 10
       - Item: Marine_Sphere_Card
         Rate: 1
         StealProtected: true
   - Id: 1143
     AegisName: MARIONETTE
     Name: Marionete
     Level: 41
     Hp: 3222
     BaseExp: 1078
     JobExp: 1276
     Attack: 355
     Attack2: 422
     MagicDefense: 25
     Agi: 62
     Vit: 36
     Int: 44
     Dex: 69
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1480
     AttackMotion: 480
+    ClientAttackMotion: 240
     DamageMotion: 1056
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Golden_Hair
         Rate: 9000
       - Item: Star_Dust
         Rate: 5
       - Item: Brooch
         Rate: 1
       - Item: Fire_Scroll_3_5
         Rate: 100
       - Item: Chain_
         Rate: 15
       - Item: Chrystal_Pumps
         Rate: 1
       - Item: Marionette_Doll
         Rate: 3
       - Item: Marionette_Card
         Rate: 1
         StealProtected: true
   - Id: 1144
     AegisName: MARSE
     Name: Marte
     Level: 31
     Hp: 5034
     BaseExp: 586
     JobExp: 370
     Attack: 211
     Attack2: 252
     MagicDefense: 5
     Agi: 31
     Vit: 25
     Int: 5
     Dex: 52
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1956
     AttackMotion: 756
+    ClientAttackMotion: 468
     DamageMotion: 528
     Ai: 17
     Drops:
       - Item: Chinese_Ink
         Rate: 9000
       - Item: Tentacle
         Rate: 3000
       - Item: Blue_Gemstone
         Rate: 200
       - Item: Skyblue_Jewel
         Rate: 10
       - Item: Mistic_Frozen
         Rate: 12
       - Item: Penetration
         Rate: 5
       - Item: Grape
         Rate: 300
       - Item: Marse_Card
         Rate: 1
         StealProtected: true
   - Id: 1145
     AegisName: MARTIN
     Name: Martin
     Level: 18
     Hp: 1109
     BaseExp: 134
     JobExp: 86
     Attack: 52
     Attack2: 63
     MagicDefense: 5
     Str: 12
     Agi: 18
     Vit: 30
     Int: 15
     Dex: 15
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1480
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 01
     Drops:
       - Item: Moustache_Of_Mole
         Rate: 9000
       - Item: Nail_Of_Mole
         Rate: 500
       - Item: Jur_
         Rate: 10
       - Item: Goggle_
         Rate: 5
       - Item: Safety_Helmet
         Rate: 1
       - Item: Battered_Pot
         Rate: 10
       - Item: Goggle
         Rate: 15
       - Item: Martin_Card
         Rate: 1
         StealProtected: true
   - Id: 1146
     AegisName: MATYR
     Name: Matyr
     Level: 31
     Hp: 2585
     BaseExp: 967
     JobExp: 407
     Attack: 134
     Attack2: 160
     Agi: 47
     Vit: 38
     Int: 5
     Dex: 64
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 432
     AttackMotion: 432
+    ClientAttackMotion: 144
     DamageMotion: 360
     Ai: 09
     Drops:
       - Item: Matyr's_Flea_Guard
         Rate: 10
       - Item: Monster's_Feed
         Rate: 5000
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Pet_Food
         Rate: 400
       - Item: Elunium_Stone
         Rate: 100
       - Item: Grape
         Rate: 200
       - Item: Matyr_Card
         Rate: 1
         StealProtected: true
   - Id: 1147
     AegisName: MAYA
     Name: Maya
     Level: 81
     Hp: 169000
     BaseExp: 42900
     JobExp: 17875
     MvpExp: 21450
     Attack: 1800
     Attack2: 2070
     Defense: 60
     MagicDefense: 25
     Str: 95
     Agi: 97
     Vit: 76
     Int: 95
     Dex: 82
     Luk: 105
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 864
     AttackMotion: 1000
+    ClientAttackMotion: 624
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Crystal_Jewel
         Rate: 2000
       - Item: Old_Blue_Box
         Rate: 3000
       - Item: Old_Violet_Box
         Rate: 2000
     Drops:
       - Item: Queen's_Hair_Ornament
         Rate: 500
       - Item: Safety_Ring
         Rate: 200
       - Item: Tiara
         Rate: 200
       - Item: Armlet_Of_Obedience
         Rate: 500
       - Item: Mother's_Nightmare
         Rate: 10
       - Item: Elunium
         Rate: 3500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -6289,567 +6816,583 @@ Body:
     AegisName: MEDUSA
     Name: Medusa
     Level: 79
     Hp: 16408
     BaseExp: 6876
     JobExp: 4697
     Attack: 827
     Attack2: 1100
     Defense: 28
     MagicDefense: 18
     Agi: 74
     Vit: 50
     Int: 57
     Dex: 77
     Luk: 69
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 1720
     AttackMotion: 1320
+    ClientAttackMotion: 1080
     DamageMotion: 360
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Slender_Snake
         Rate: 5335
       - Item: Whip_Of_Red_Flame
         Rate: 250
       - Item: Animal_Blood
         Rate: 200
       - Item: Sea_Witch_Foot
         Rate: 20
       - Item: Scarlet_Jewel
         Rate: 250
       - Item: Turtle_Shell
         Rate: 3500
       - Item: Penetration
         Rate: 3
       - Item: Medusa_Card
         Rate: 1
         StealProtected: true
   - Id: 1149
     AegisName: MINOROUS
     Name: Minorous
     Level: 52
     Hp: 7431
     BaseExp: 2750
     JobExp: 1379
     Attack: 590
     Attack2: 770
     Defense: 15
     MagicDefense: 5
     Str: 65
     Agi: 42
     Vit: 61
     Int: 66
     Dex: 52
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1360
     AttackMotion: 960
+    ClientAttackMotion: 576
     DamageMotion: 432
     Ai: 09
     Drops:
       - Item: Nose_Ring
         Rate: 5335
       - Item: Oridecon_Stone
         Rate: 196
       - Item: Two_Handed_Axe_
         Rate: 2
       - Item: Hammer_Of_Blacksmith
         Rate: 10
       - Item: Sweet_Potato
         Rate: 1500
       - Item: Axe
         Rate: 200
       - Item: Lemon
         Rate: 300
       - Item: Minorous_Card
         Rate: 1
         StealProtected: true
   - Id: 1150
     AegisName: MOONLIGHT
     Name: Flor do Luar
     Level: 67
     Hp: 120000
     BaseExp: 27500
     JobExp: 14300
     MvpExp: 13750
     Attack: 1200
     Attack2: 1700
     Defense: 10
     MagicDefense: 55
     Str: 55
     Agi: 99
     Vit: 55
     Int: 82
     Dex: 95
     Luk: 120
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 120
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Fox_Tail
         Rate: 5000
       - Item: White_Potion
         Rate: 1500
       - Item: Golden_Jewel
         Rate: 500
     Drops:
       - Item: Spectral_Spear
         Rate: 500
       - Item: Moonlight_Sword
         Rate: 100
       - Item: Long_Mace
         Rate: 150
       - Item: Punisher
         Rate: 500
       - Item: Silver_Knife_Of_Chaste
         Rate: 650
       - Item: Elunium
         Rate: 2600
       - Item: Staff_Of_Bordeaux
         Rate: 100
       - Item: Moonlight_Flower_Card
         Rate: 1
         StealProtected: true
   - Id: 1151
     AegisName: MYST
     Name: Nvoa
     Level: 38
     Hp: 3745
     BaseExp: 1391
     JobExp: 688
     Attack: 365
     Attack2: 445
     MagicDefense: 40
     Agi: 38
     Vit: 18
+    Int: 0
     Dex: 53
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Gas_Mask
         Rate: 2
       - Item: Wooden_Block
         Rate: 800
       - Item: Wig
         Rate: 10
       - Item: Oridecon_Stone
         Rate: 65
       - Item: Elunium_Stone
         Rate: 97
       - Item: Anodyne
         Rate: 20
       - Item: Grape
         Rate: 35
       - Item: Myst_Card
         Rate: 1
         StealProtected: true
   - Id: 1152
     AegisName: ORC_SKELETON
     Name: Orc Esqueleto
     Level: 28
     Hp: 2278
     BaseExp: 315
     JobExp: 194
     Attack: 190
     Attack2: 236
     Defense: 10
     MagicDefense: 10
     Agi: 14
     Vit: 18
+    Int: 0
     Dex: 30
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     RaceGroups:
       Orc: true
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2420
     AttackMotion: 720
+    ClientAttackMotion: 288
     DamageMotion: 648
     Ai: 04
     Drops:
       - Item: Orcish_Cuspid
         Rate: 5500
       - Item: Skel_Bone
         Rate: 3500
       - Item: Elunium_Stone
         Rate: 80
       - Item: Viking_Helm
         Rate: 2
       - Item: Buster_
         Rate: 10
       - Item: Green_Herb
         Rate: 50
       - Item: Orc_Skeleton_Card
         Rate: 1
         StealProtected: true
   - Id: 1153
     AegisName: ORC_ZOMBIE
     Name: Orc Zumbi
     Level: 24
     Hp: 1568
     BaseExp: 196
     JobExp: 120
     Attack: 151
     Attack2: 184
     Defense: 5
     MagicDefense: 10
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 24
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     RaceGroups:
       Orc: true
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2852
     AttackMotion: 1152
+    ClientAttackMotion: 768
     DamageMotion: 840
     Ai: 04
     Drops:
       - Item: Nail_Of_Orc
         Rate: 5500
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Emperium
         Rate: 100
       - Item: Orc_Zombie_Card
         Rate: 1
         StealProtected: true
   - Id: 1154
     AegisName: PASANA
     Name: Pasana
     Level: 61
     Hp: 8289
     BaseExp: 4087
     JobExp: 2135
     Attack: 513
     Attack2: 682
     Defense: 29
     MagicDefense: 35
     Agi: 73
     Vit: 50
     Int: 61
     Dex: 59
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 165
     AttackDelay: 976
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 09
     Drops:
       - Item: Vroken_Sword
         Rate: 4365
       - Item: Honey_Jar
         Rate: 2500
       - Item: Elunium_Stone
         Rate: 20
       - Item: Falchion_
         Rate: 500
       - Item: Stiletto_
         Rate: 150
       - Item: Undershirt
         Rate: 100
       - Item: Pasana_Card
         Rate: 1
         StealProtected: true
   - Id: 1155
     AegisName: PETIT
     Name: Petite
     Level: 44
     Hp: 6881
     BaseExp: 1677
     JobExp: 1034
     Attack: 360
     Attack2: 427
     Defense: 30
     MagicDefense: 30
     Agi: 44
     Vit: 62
     Int: 55
     Dex: 79
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1624
     AttackMotion: 620
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 09
     Drops:
       - Item: Dragon_Canine
         Rate: 5335
       - Item: Dragon_Train
         Rate: 300
       - Item: Oridecon_Stone
         Rate: 140
       - Item: White_Herb
         Rate: 1000
       - Item: Flail
         Rate: 150
       - Item: Zargon
         Rate: 1500
       - Item: Aloebera
         Rate: 15
       - Item: Petit_Card
         Rate: 1
         StealProtected: true
   - Id: 1156
     AegisName: PETIT_
     Name: Petite Voador
     Level: 45
     Hp: 5747
     BaseExp: 1758
     JobExp: 1075
     Attack: 300
     Attack2: 355
     Defense: 20
     MagicDefense: 45
     Agi: 113
     Vit: 45
     Int: 55
     Dex: 73
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1420
     AttackMotion: 1080
+    ClientAttackMotion: 336
     DamageMotion: 528
     Ai: 09
     Drops:
       - Item: Dragon_Scale
         Rate: 5335
       - Item: Dragon_Train
         Rate: 300
       - Item: Elunium
         Rate: 61
       - Item: White_Herb
         Rate: 1000
       - Item: Khukri
         Rate: 5
       - Item: Zargon
         Rate: 1500
       - Item: Aloebera
         Rate: 15
       - Item: Petit__Card
         Rate: 1
         StealProtected: true
   - Id: 1157
     AegisName: PHARAOH
     Name: Fara
     Level: 93
     Hp: 445997
     BaseExp: 114990
     JobExp: 41899
     MvpExp: 57495
     Attack: 2267
     Attack2: 3015
     Defense: 67
     MagicDefense: 70
     Agi: 93
     Vit: 100
     Int: 104
     Dex: 89
     Luk: 112
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 125
     AttackDelay: 868
     AttackMotion: 768
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Royal_Jelly
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 5000
     Drops:
       - Item: Broken_Pharaoh_Symbol
         Rate: 5820
       - Item: Tutankhamen's_Mask
         Rate: 2500
       - Item: Solar_Sword
         Rate: 100
       - Item: Holy_Robe
         Rate: 150
       - Item: Gemmed_Crown
         Rate: 500
       - Item: Tablet
         Rate: 300
       - Item: Bazerald
         Rate: 80
       - Item: Pharaoh_Card
         Rate: 1
         StealProtected: true
   - Id: 1158
     AegisName: PHEN
     Name: Fen
     Level: 26
     Hp: 3347
     BaseExp: 357
     JobExp: 226
     Attack: 138
     Attack2: 150
     MagicDefense: 15
     Agi: 26
     Vit: 26
+    Int: 0
     Dex: 88
     Luk: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 2544
     AttackMotion: 1344
+    ClientAttackMotion: 432
     DamageMotion: 1152
     Ai: 17
     Drops:
       - Item: Fish_Tail
         Rate: 5500
       - Item: Sharp_Scale
         Rate: 2000
       - Item: Skyblue_Jewel
         Rate: 5
       - Item: Meat
         Rate: 1000
       - Item: Fin
         Rate: 500
       - Item: Oridecon_Stone
         Rate: 25
       - Item: Phen_Card
         Rate: 1
         StealProtected: true
   - Id: 1159
     AegisName: PHREEONI
     Name: Freeoni
     Level: 69
     Hp: 188000
     BaseExp: 32175
     JobExp: 16445
     MvpExp: 16087
     Attack: 880
     Attack2: 1530
     Defense: 10
     MagicDefense: 20
     Agi: 85
     Vit: 78
     Int: 35
     Dex: 130
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1020
     AttackMotion: 1020
+    ClientAttackMotion: 324
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Frozen_Heart
         Rate: 500
       - Item: Crystal_Jewel
         Rate: 1000
       - Item: Star_Crumb
         Rate: 4000
     Drops:
       - Item: Thin_N'_Long_Tongue
         Rate: 9700
       - Item: Forturn_Sword
         Rate: 500
       - Item: Sucsamad
         Rate: 150
       - Item: Jaws_Of_Ant
         Rate: 5000
       - Item: Mr_Scream
         Rate: 300
       - Item: Elunium
         Rate: 2900
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -6861,1112 +7404,1249 @@ Body:
   - Id: 1160
     AegisName: PIERE
     Name: Piere
     Level: 18
     Hp: 733
     BaseExp: 122
     JobExp: 78
     Attack: 64
     Attack2: 75
     Defense: 15
     Agi: 18
     Vit: 26
     Int: 20
     Dex: 27
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 144
     DamageMotion: 576
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Garlet
         Rate: 1100
       - Item: Sticky_Mucus
         Rate: 600
       - Item: Wind_Of_Verdure
         Rate: 30
       - Item: Sparkling_Dust
         Rate: 5
       - Item: Iron_Ore
         Rate: 400
       - Item: Elunium_Stone
         Rate: 31
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1161
     AegisName: PLANKTON
     Name: Plankton
     Level: 10
     Hp: 354
     BaseExp: 23
     JobExp: 18
     Attack: 26
     Attack2: 31
     MagicDefense: 5
     Agi: 10
     Vit: 10
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 2208
     AttackMotion: 1008
+    ClientAttackMotion: 576
     DamageMotion: 324
     Ai: 01
     Drops:
       - Item: Single_Cell
         Rate: 9000
       - Item: Garlet
         Rate: 300
       - Item: Sticky_Mucus
         Rate: 700
       - Item: Alchol
         Rate: 4
       - Item: Empty_Bottle
         Rate: 1000
       - Item: Dew_Laden_Moss
         Rate: 20
       - Item: Center_Potion
         Rate: 50
       - Item: Plankton_Card
         Rate: 1
         StealProtected: true
   - Id: 1162
     AegisName: RAFFLESIA
     Name: Rafflesia
     Level: 17
     Hp: 1333
     BaseExp: 333
     JobExp: 333
     Attack: 105
     Attack2: 127
     MagicDefense: 2
     Agi: 18
     Vit: 24
     Int: 11
     Dex: 37
     Luk: 10
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 512
     AttackMotion: 528
+    ClientAttackMotion: 432
     DamageMotion: 240
     Ai: 04
     Drops:
       - Item: Root_Of_Maneater
         Rate: 5500
       - Item: Scell
         Rate: 1600
       - Item: Four_Leaf_Clover
         Rate: 2
       - Item: Ment
         Rate: 10
       - Item: Hinalle
         Rate: 10
       - Item: Shoot
         Rate: 550
       - Item: White_Herb
         Rate: 30
       - Item: Rafflesia_Card
         Rate: 1
         StealProtected: true
   - Id: 1163
     AegisName: RAYDRIC
     Name: Raydric
     Level: 52
     Hp: 8613
     BaseExp: 3410
     JobExp: 1795
     Attack: 830
     Attack2: 930
     Defense: 40
     MagicDefense: 15
     Str: 58
     Agi: 47
     Vit: 42
     Int: 5
     Dex: 69
     Luk: 26
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 824
     AttackMotion: 780
+    ClientAttackMotion: 384
     DamageMotion: 420
     Ai: 09
     Drops:
       - Item: Elunium
         Rate: 106
       - Item: Iron_Cane
         Rate: 1
       - Item: Chain_Mail_
         Rate: 2
       - Item: Two_Hand_Sword_
         Rate: 2
       - Item: Katana
         Rate: 100
       - Item: Patriotism_Marks
         Rate: 10
       - Item: Brigan
         Rate: 4850
       - Item: Daydric_Card
         Rate: 1
         StealProtected: true
   - Id: 1164
     AegisName: REQUIEM
     Name: Requiem
     Level: 35
     Hp: 3089
     BaseExp: 800
     JobExp: 458
     Attack: 220
     Attack2: 272
     MagicDefense: 15
     Agi: 53
     Vit: 35
     Int: 5
     Dex: 57
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1516
     AttackMotion: 816
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Old_Blue_Box
         Rate: 35
       - Item: Emperium
         Rate: 1
       - Item: Zargon
         Rate: 2500
       - Item: Horrendous_Mouth
         Rate: 3500
       - Item: Mementos
         Rate: 1500
       - Item: Mantle_
         Rate: 10
       - Item: Cookbook06
         Rate: 1
       - Item: Requiem_Card
         Rate: 1
         StealProtected: true
   - Id: 1165
     AegisName: SAND_MAN
     Name: Arenoso
     Level: 34
     Hp: 3413
     BaseExp: 810
     JobExp: 492
     Attack: 180
     Attack2: 205
     Defense: 10
     MagicDefense: 25
     Str: 24
     Agi: 34
     Vit: 58
     Int: 38
     Dex: 60
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 1672
     AttackMotion: 720
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Great_Nature
         Rate: 35
       - Item: Grit
         Rate: 5335
       - Item: Elunium_Stone
         Rate: 118
       - Item: Fine_Sand
         Rate: 350
       - Item: Sparkling_Dust
         Rate: 200
       - Item: Katar_Of_Thornbush
         Rate: 1
       - Item: Hypnotist's_Staff_
         Rate: 5
       - Item: Sand_Man_Card
         Rate: 1
         StealProtected: true
   - Id: 1166
     AegisName: SAVAGE
     Name: Selvagem
     Level: 26
     Hp: 2092
     BaseExp: 521
     JobExp: 248
     Attack: 120
     Attack2: 150
     Defense: 10
     MagicDefense: 5
     Agi: 26
     Vit: 54
     Int: 10
     Dex: 37
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 17
     Drops:
       - Item: Wild_Boar's_Mane
         Rate: 9000
       - Item: Grape
         Rate: 300
       - Item: Animal_Blood
         Rate: 2
       - Item: Eagle_Eyes
         Rate: 1
       - Item: Anodyne
         Rate: 10
       - Item: Elunium_Stone
         Rate: 70
       - Item: Royal_Jelly
         Rate: 2
       - Item: Savage_Card
         Rate: 1
         StealProtected: true
   - Id: 1167
     AegisName: SAVAGE_BABE
     Name: Beb Selvagem
     Level: 7
     Hp: 182
     BaseExp: 14
     JobExp: 12
     Attack: 20
     Attack2: 25
     Agi: 7
     Vit: 14
     Int: 5
     Dex: 12
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 312
     DamageMotion: 576
     Ai: 01
     Drops:
       - Item: Animal's_Skin
         Rate: 9000
       - Item: Axe_
         Rate: 100
       - Item: Meat
         Rate: 500
       - Item: Arrow
         Rate: 1000
       - Item: Feather
         Rate: 850
       - Item: Phracon
         Rate: 80
       - Item: Sweet_Milk
         Rate: 40
       - Item: Savage_Babe_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1168
+#    AegisName: SCORPION_KING
+#    Name: Scorpion King
+#    Level: 50
+#    Hp: 6354
+#    BaseExp: 2187
+#    JobExp: 1346
+#    Attack: 500
+#    Attack2: 603
+#    Defense: 40
+#    MagicDefense: 10
+#    Agi: 50
+#    Vit: 47
+#    Dex: 83
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Demihuman
+#    Element: Fire
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 1700
+#    AttackMotion: 1000
+#    DamageMotion: 500
+#    Ai: 24
+#    Modes:
+#      CastSensorIdle: true
+#    Drops:
+#      - Item: Flame_Heart
+#        Rate: 45
+#        StealProtected: true
   - Id: 1169
     AegisName: SKEL_WORKER
     Name: Esqueleto Operrio
     Level: 30
     Hp: 2872
     BaseExp: 397
     JobExp: 240
     Attack: 242
     Attack2: 288
     MagicDefense: 15
     Agi: 15
     Vit: 30
     Int: 5
     Dex: 42
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2420
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Iron
         Rate: 400
       - Item: Lantern
         Rate: 5500
       - Item: Elunium_Stone
         Rate: 90
       - Item: Safety_Helmet
         Rate: 2
       - Item: Steel
         Rate: 100
       - Item: Coal
         Rate: 200
       - Item: Iron_Ore
         Rate: 800
       - Item: Skel_Worker_Card
         Rate: 1
         StealProtected: true
   - Id: 1170
     AegisName: SOHEE
     Name: Sohee
     Level: 33
     Hp: 5628
     BaseExp: 739
     JobExp: 455
     Attack: 210
     Attack2: 251
     MagicDefense: 10
     Agi: 33
     Vit: 33
     Int: 10
     Dex: 58
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Water
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 2112
     AttackMotion: 912
+    ClientAttackMotion: 324
     DamageMotion: 576
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Long_Hair
         Rate: 9000
       - Item: Skirt_Of_Virgin
         Rate: 50
       - Item: Nurse_Cap
         Rate: 50
       - Item: Muffler_
         Rate: 50
       - Item: Stiletto_
         Rate: 50
       - Item: Red_Herb
         Rate: 1000
       - Item: Inspector_Certificate
         Rate: 350
       - Item: Sohee_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1171
+#    AegisName: SOLDIER_ANDRE
+#    Name: Soldier Andre
+#    Level: 22
+#    Hp: 1245
+#    BaseExp: 219
+#    JobExp: 138
+#    Attack: 105
+#    Attack2: 127
+#    Defense: 20
+#    Agi: 22
+#    Vit: 44
+#    Int: 20
+#    Dex: 40
+#    Luk: 10
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Small
+#    Race: Insect
+#    Element: Earth
+#    ElementLevel: 2
+#    WalkSpeed: 200
+#    AttackDelay: 1001
+#    AttackMotion: 1
+#    DamageMotion: 1
+#    Ai: 09
+#    Drops:
+#      - Item: Jaws_Of_Ant
+#        Rate: 2700
+#        StealProtected: true
   - Id: 1174
     AegisName: STAINER
     Name: Percevejo
     Level: 16
     Hp: 538
     BaseExp: 105
     JobExp: 70
     Attack: 53
     Attack2: 64
     Defense: 10
     Agi: 40
     Vit: 16
     Int: 5
     Dex: 30
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1688
     AttackMotion: 1188
+    ClientAttackMotion: 720
     DamageMotion: 612
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Wind_Of_Verdure
         Rate: 70
       - Item: Emveretarcon
         Rate: 30
       - Item: Colorful_Shell
         Rate: 9000
       - Item: Garlet
         Rate: 2100
       - Item: Elunium_Stone
         Rate: 25
       - Item: Solid_Shell
         Rate: 10
       - Item: Iron_Ore
         Rate: 300
       - Item: Stainer_Card
         Rate: 1
         StealProtected: true
   - Id: 1175
     AegisName: TAROU
     Name: Tarou
     Level: 11
     Hp: 284
     BaseExp: 57
     JobExp: 28
     Attack: 34
     Attack2: 45
     Agi: 20
     Vit: 11
     Int: 10
     Dex: 24
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1744
     AttackMotion: 1044
+    ClientAttackMotion: 252
     DamageMotion: 684
     Ai: 17
     Drops:
       - Item: Rat_Tail
         Rate: 9000
       - Item: Animal's_Skin
         Rate: 3000
       - Item: Feather
         Rate: 800
       - Item: Monster's_Feed
         Rate: 1000
       - Item: Ora_Ora
         Rate: 2
       - Item: Tarou_Card
         Rate: 1
         StealProtected: true
   - Id: 1176
     AegisName: VITATA
     Name: Vitata
     Level: 20
     Hp: 894
     BaseExp: 163
     JobExp: 101
     Attack: 69
     Attack2: 80
     Defense: 15
     MagicDefense: 20
     Agi: 20
     Vit: 25
     Int: 65
     Dex: 40
     Luk: 70
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1768
     AttackMotion: 768
+    ClientAttackMotion: 576
     DamageMotion: 384
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Yellow_Live
         Rate: 90
       - Item: Worm_Peelings
         Rate: 5000
       - Item: Scell
         Rate: 200
       - Item: Honey
         Rate: 350
       - Item: Honey
         Rate: 350
       - Item: Royal_Jelly
         Rate: 200
       - Item: Oridecon_Stone
         Rate: 26
       - Item: Vitata_Card
         Rate: 1
         StealProtected: true
   - Id: 1177
     AegisName: ZENORC
     Name: Zenorc
     Level: 31
     Hp: 2585
     BaseExp: 967
     JobExp: 407
     Attack: 188
     Attack2: 223
     MagicDefense: 15
     Agi: 77
     Vit: 15
+    Int: 0
     Dex: 76
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 02
     Drops:
       - Item: Tooth_Of_
         Rate: 5500
       - Item: Oridecon_Stone
         Rate: 70
       - Item: Sticky_Mucus
         Rate: 2500
       - Item: Old_Magic_Book
         Rate: 5
       - Item: Yellow_Herb
         Rate: 100
       - Item: Shining_Stone
         Rate: 20
       - Item: Zenorc_Card
         Rate: 1
         StealProtected: true
   - Id: 1178
     AegisName: ZEROM
     Name: Zerom
     Level: 23
     Hp: 1109
     BaseExp: 240
     JobExp: 149
     Attack: 127
     Attack2: 155
     MagicDefense: 10
     Agi: 23
     Vit: 23
     Int: 5
     Dex: 42
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1780
     AttackMotion: 1080
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Emveretarcon
         Rate: 55
       - Item: Iron
         Rate: 190
       - Item: G_Strings
         Rate: 200
       - Item: Ganster_Mask
         Rate: 3
       - Item: Cuffs
         Rate: 10
       - Item: Iron_Ore
         Rate: 300
       - Item: Iron_Ore
         Rate: 300
       - Item: Zerom_Card
         Rate: 1
         StealProtected: true
   - Id: 1179
     AegisName: WHISPER
     Name: Sussurro
     Level: 34
     Hp: 1796
     BaseExp: 591
     JobExp: 599
     Attack: 180
     Attack2: 221
     MagicDefense: 45
     Agi: 51
     Vit: 14
+    Int: 0
     Dex: 60
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 720
     DamageMotion: 504
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Sparkling_Dust
         Rate: 150
       - Item: Transparent_Cloth
         Rate: 5335
       - Item: Spirit_Chain
         Rate: 1
       - Item: Silver_Robe_
         Rate: 10
       - Item: Whisper_Card
         Rate: 1
         StealProtected: true
   - Id: 1180
     AegisName: NINE_TAIL
     Name: Nove Caudas
     Level: 51
     Hp: 7766
     BaseExp: 2812
     JobExp: 825
     Attack: 610
     Attack2: 734
     Defense: 10
     MagicDefense: 25
     Agi: 80
     Vit: 46
     Dex: 74
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 840
     AttackMotion: 540
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 21
     Drops:
       - Item: Fox_Tail
         Rate: 4656
       - Item: Glass_Bead
         Rate: 200
       - Item: Old_Blue_Box
         Rate: 100
       - Item: Branch_Of_Dead_Tree
         Rate: 100
       - Item: Royal_Jelly
         Rate: 250
       - Item: Panacea
         Rate: 350
       - Item: Oridecon_Stone
         Rate: 100
       - Item: Nine_Tail_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1181
+#    AegisName: ZOMBIE_DRAGON
+#    Name: Zombie Dragon
+#    Level: 1
+#    Hp: 1000
+#    BaseExp: 49500
+#    JobExp: 1650
+#    Attack: 7900
+#    Attack2: 9140
+#    Str: 120
+#    Agi: 145
+#    Vit: 145
+#    Int: 145
+#    Dex: 130
+#    Luk: 120
+#    AttackRange: 3
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Dragon
+#    Element: Undead
+#    ElementLevel: 4
+#    WalkSpeed: 400
+#    AttackDelay: 2700
+#    AttackMotion: 1000
+#    DamageMotion: 500
+#    Ai: 21
+#    Modes:
+#      NoRandomWalk: true
   - Id: 1182
     AegisName: THIEF_MUSHROOM
     Name: Cogumelo
     Level: 1
     Hp: 15
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Mushroom_Of_Thief_1
         Rate: 1500
       - Item: Mushroom_Of_Thief_2
         Rate: 3000
   - Id: 1183
     AegisName: CHONCHON_
     Name: Chonchon
     Level: 4
     Hp: 67
     BaseExp: 5
     JobExp: 4
     Attack: 10
     Attack2: 13
     Defense: 10
     Agi: 10
     Vit: 4
     Int: 5
     Dex: 12
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1076
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Iron
         Rate: 50
       - Item: Shell
         Rate: 5500
       - Item: Jellopy
         Rate: 1500
       - Item: Cutter_
         Rate: 55
       - Item: Wing_Of_Fly
         Rate: 100
       - Item: Chonchon_Doll
         Rate: 5
       - Item: Chonchon_Card
         Rate: 1
         StealProtected: true
   - Id: 1184
     AegisName: FABRE_
     Name: Fabre
     Level: 1
     Hp: 30
     BaseExp: 1
     Attack: 4
     Attack2: 7
     Agi: 2
     Dex: 4
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Fluff
         Rate: 2000
       - Item: Feather
         Rate: 250
       - Item: Club_
         Rate: 80
       - Item: Azure_Jewel
         Rate: 2
       - Item: Green_Herb
         Rate: 350
       - Item: Clover
         Rate: 500
       - Item: Club
         Rate: 200
   - Id: 1185
     AegisName: WHISPER_
     Name: Sussurro
     Level: 34
     Hp: 1796
     BaseExp: 537
     JobExp: 545
     Attack: 198
     Attack2: 239
     MagicDefense: 45
     Agi: 51
     Vit: 14
+    Int: 0
     Dex: 60
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Undead
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 720
     DamageMotion: 504
     Drops:
       - Item: Sparkling_Dust
         Rate: 10
       - Item: Transparent_Cloth
         Rate: 100
       - Item: Silver_Robe_
         Rate: 1
   - Id: 1186
     AegisName: WHISPER_BOSS
     Name: Cochicho
     Level: 34
     Hp: 5040
     BaseExp: 537
     JobExp: 545
     Attack: 198
     Attack2: 239
     MagicDefense: 45
     Agi: 51
     Vit: 14
+    Int: 0
     Dex: 60
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 2536
     AttackMotion: 1536
+    ClientAttackMotion: 1344
     DamageMotion: 672
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Sparkling_Dust
         Rate: 150
       - Item: Transparent_Cloth
         Rate: 5335
       - Item: Spirit_Chain
         Rate: 1
       - Item: Silver_Robe_
         Rate: 10
       - Item: Whisper_Boss_Card
         Rate: 1
         StealProtected: true
   - Id: 1187
     AegisName: SWITCH
     Name: Switch
     Level: 1
     Hp: 2
     BaseExp: 1
     JobExp: 1
     Attack: 1
     Attack2: 2
+    Int: 0
+    Luk: 0
     AttackRange: 1
     SkillRange: 1
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 20
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
   - Id: 1188
     AegisName: BON_GUN
     Name: Bongun
     Level: 32
     Hp: 3520
     BaseExp: 424
     JobExp: 242
     Attack: 220
     Attack2: 260
     Str: 45
     Agi: 15
     Vit: 36
     Int: 10
     Dex: 48
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1720
     AttackMotion: 500
+    ClientAttackMotion: 960
     DamageMotion: 420
     Ai: 09
     Drops:
       - Item: Short_Daenggie
         Rate: 5500
       - Item: Old_Portrait
         Rate: 40
       - Item: Worn_Out_Scroll
         Rate: 60
       - Item: Bongun_Hat
         Rate: 1
       - Item: Amulet
         Rate: 15
       - Item: Yellow_Herb
         Rate: 1000
       - Item: Yellow_Herb
         Rate: 1250
       - Item: Bon_Gun_Card
         Rate: 1
         StealProtected: true
   - Id: 1189
     AegisName: ORC_ARCHER
     Name: Orc Arqueiro
     Level: 49
     Hp: 7440
     BaseExp: 1729
     JobExp: 1787
     Attack: 310
     Attack2: 390
     Defense: 10
     MagicDefense: 5
     Agi: 44
     Vit: 25
     Int: 20
     Dex: 125
     Luk: 20
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Orc: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1960
     AttackMotion: 620
+    ClientAttackMotion: 864
     DamageMotion: 480
     Ai: 09
     Drops:
       - Item: Sharpened_Cuspid
         Rate: 4656
       - Item: Steel_Arrow
         Rate: 1000
       - Item: Stone_Arrow
         Rate: 2500
       - Item: Arrow_Of_Wind
         Rate: 2500
       - Item: Orc_Archer_Bow
         Rate: 2
       - Item: Red_Herb
         Rate: 1400
       - Item: White_Herb
         Rate: 900
       - Item: Orc_Archer_Card
         Rate: 1
         StealProtected: true
   - Id: 1190
     AegisName: ORC_LORD
     Name: Senhor dos Orcs
     Level: 74
     Hp: 783000
     BaseExp: 62205
     JobExp: 8580
     MvpExp: 31102
     Attack: 3700
     Attack2: 4150
     Defense: 40
     MagicDefense: 5
     Str: 85
     Agi: 82
     Vit: 30
     Int: 70
     Dex: 110
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1248
     AttackMotion: 500
+    ClientAttackMotion: 624
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Voucher_Of_Orcish_Hero
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 2000
     Drops:
       - Item: Brood_Axe
         Rate: 400
       - Item: Ring_
         Rate: 400
       - Item: Loard_Circlet
         Rate: 400
       - Item: Doom_Slayer_
         Rate: 400
       - Item: Old_Violet_Box
         Rate: 1000
       - Item: Elunium
         Rate: 4268
       - Item: Erde
         Rate: 3100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -7978,2103 +8658,2252 @@ Body:
     Name: Mmico
     Level: 51
     Hp: 6120
     Sp: 182
     BaseExp: 165
     JobExp: 165
     Attack: 150
     Attack2: 900
     Defense: 10
     MagicDefense: 40
     Str: 44
     Agi: 121
     Int: 60
     Dex: 75
     Luk: 110
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 972
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 09
     Drops:
       - Item: Old_Violet_Box
         Rate: 5
       - Item: Old_Blue_Box
         Rate: 45
       - Item: Booby_Trap
         Rate: 1200
       - Item: Spectacles
         Rate: 3000
       - Item: Emperium
         Rate: 3
       - Item: Rosary_
         Rate: 1
       - Item: Elunium_Stone
         Rate: 270
       - Item: Mimic_Card
         Rate: 1
         StealProtected: true
   - Id: 1192
     AegisName: WRAITH
     Name: Alma Penada
     Level: 53
     Hp: 10999
     BaseExp: 2199
     JobExp: 1099
     Attack: 580
     Attack2: 760
     Defense: 5
     MagicDefense: 30
     Agi: 95
     Vit: 30
     Int: 65
     Dex: 95
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1816
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Transparent_Cloth
         Rate: 5820
       - Item: Wedding_Veil
         Rate: 10
       - Item: Manteau_
         Rate: 2
       - Item: Red_Gemstone
         Rate: 650
       - Item: Wing_Of_Butterfly
         Rate: 1300
       - Item: Manteau
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 5
       - Item: Wraith_Card
         Rate: 1
         StealProtected: true
   - Id: 1193
     AegisName: ALARM
     Name: Alarme
     Level: 58
     Hp: 10647
     BaseExp: 3987
     JobExp: 2300
     Attack: 480
     Attack2: 600
     Defense: 15
     MagicDefense: 15
     Agi: 62
     Vit: 72
     Int: 10
     Dex: 85
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1020
     AttackMotion: 500
+    ClientAttackMotion: 540
     DamageMotion: 768
     Ai: 21
     Drops:
       - Item: Needle_Of_Alarm
         Rate: 5335
       - Item: Clip
         Rate: 1
       - Item: Skull
         Rate: 1500
       - Item: Spectacles
         Rate: 1300
       - Item: Oridecon
         Rate: 105
       - Item: Key_Of_Clock_Tower
         Rate: 20
       - Item: Zargon
         Rate: 1500
       - Item: Alarm_Card
         Rate: 1
         StealProtected: true
   - Id: 1194
     AegisName: ARCLOUSE
     Name: Arclouse
     JapaneseName: Arclouse
     Level: 59
     Hp: 6075
     BaseExp: 860
     JobExp: 1000
     Attack: 570
     Attack2: 640
     Defense: 10
     MagicDefense: 15
     Agi: 75
     Vit: 5
     Int: 5
     Dex: 75
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 960
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Round_Shell
         Rate: 3500
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Solid_Shell
         Rate: 800
       - Item: Zargon
         Rate: 450
       - Item: Red_Gemstone
         Rate: 300
       - Item: Great_Nature
         Rate: 20
       - Item: Zargon
         Rate: 2500
       - Item: Arclouse_Card
         Rate: 1
         StealProtected: true
   - Id: 1195
     AegisName: RIDEWORD
     Name: Rideword
     Level: 59
     Hp: 11638
     BaseExp: 2007
     JobExp: 3106
     Attack: 584
     Attack2: 804
     Defense: 5
     MagicDefense: 35
     Str: 48
     Agi: 75
     Vit: 10
     Int: 20
     Dex: 120
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 864
     AttackMotion: 500
+    ClientAttackMotion: 468
     DamageMotion: 192
     Ai: 21
     Drops:
       - Item: Worn_Out_Page
         Rate: 4850
       - Item: Book_Of_Billows
         Rate: 4
       - Item: Book_Of_Mother_Earth
         Rate: 4
       - Item: Book_Of_Blazing_Sun
         Rate: 2
       - Item: Book_Of_Gust_Of_Wind
         Rate: 2
       - Item: Bookclip_In_Memory
         Rate: 300
       - Item: Old_Magic_Book
         Rate: 20
       - Item: Rideword_Card
         Rate: 1
         StealProtected: true
   - Id: 1196
     AegisName: SKEL_PRISONER
     Name: Esqueleto Prisioneiro
     Level: 52
     Hp: 8691
     BaseExp: 2466
     JobExp: 1562
     Attack: 660
     Attack2: 890
     Defense: 10
     MagicDefense: 20
     Str: 55
     Agi: 20
     Vit: 36
+    Int: 0
     Dex: 76
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 350
     AttackDelay: 1848
     AttackMotion: 500
+    ClientAttackMotion: 864
     DamageMotion: 576
     Ai: 13
     Drops:
       - Item: Manacles
         Rate: 3500
       - Item: Spoon_Stub
         Rate: 100
       - Item: Formal_Suit
         Rate: 1
       - Item: Red_Gemstone
         Rate: 600
       - Item: Rotten_Bandage
         Rate: 3500
       - Item: Cuffs
         Rate: 35
       - Item: Mementos
         Rate: 1500
       - Item: Skel_Prisoner_Card
         Rate: 1
         StealProtected: true
   - Id: 1197
     AegisName: ZOMBIE_PRISONER
     Name: Zumbi Prisioneiro
     Level: 53
     Hp: 11280
     BaseExp: 2635
     JobExp: 1724
     Attack: 780
     Attack2: 930
     Defense: 10
     MagicDefense: 20
     Agi: 24
     Vit: 39
+    Int: 0
     Dex: 72
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 350
     AttackDelay: 1768
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 192
     Ai: 13
     Drops:
       - Item: Worn_Out_Prison_Uniform
         Rate: 3500
       - Item: Spoon_Stub
         Rate: 105
       - Item: Iron_Cane
         Rate: 1
       - Item: Red_Gemstone
         Rate: 600
       - Item: Rotten_Bandage
         Rate: 3500
       - Item: Cuffs
         Rate: 39
       - Item: Elunium
         Rate: 112
       - Item: Zombie_Prisoner_Card
         Rate: 1
         StealProtected: true
   - Id: 1198
     AegisName: DARK_PRIEST
     Name: Sacerdote Maldito
     Level: 79
     Hp: 101992
     BaseExp: 12192
     JobExp: 5152
     Attack: 1238
     Attack2: 2037
     Defense: 56
     MagicDefense: 70
     Str: 5
     Agi: 91
     Vit: 41
     Int: 101
     Dex: 103
     Luk: 42
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 864
     AttackMotion: 1252
+    ClientAttackMotion: 288
     DamageMotion: 476
     Ai: 13
     Class: Boss
     Drops:
       - Item: Book_Of_The_Apocalypse
         Rate: 5
       - Item: Rosary
         Rate: 30
       - Item: Blue_Potion
         Rate: 100
       - Item: Red_Gemstone
         Rate: 450
       - Item: Sacred_Marks
         Rate: 50
       - Item: Glittering_Clothes
         Rate: 5
       - Item: Cursed_Dagger
         Rate: 1
       - Item: Dark_Priest_Card
         Rate: 1
         StealProtected: true
   - Id: 1199
     AegisName: PUNK
     Name: Punk
     Level: 43
     Hp: 3620
     BaseExp: 1699
     JobExp: 1033
     Attack: 292
     Attack2: 365
     MagicDefense: 45
     Agi: 105
     Vit: 5
     Int: 45
     Dex: 65
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 1152
     DamageMotion: 1000
     Ai: 09
     Drops:
       - Item: Mould_Powder
         Rate: 5335
       - Item: Yellow_Gemstone
         Rate: 800
       - Item: Pacifier
         Rate: 100
       - Item: Starsand_Of_Witch
         Rate: 1000
       - Item: Moth_Dust
         Rate: 3000
       - Item: Wing_Of_Fly
         Rate: 1100
       - Item: Hood_
         Rate: 15
       - Item: Punk_Card
         Rate: 1
         StealProtected: true
   - Id: 1200
     AegisName: ZHERLTHSH
     Name: Jirtas
     JapaneseName: Zherlthsh
     Level: 63
     Hp: 18300
     BaseExp: 3608
     JobExp: 2304
     Attack: 700
     Attack2: 850
     Defense: 10
     MagicDefense: 15
     Str: 70
     Agi: 85
     Vit: 40
     Int: 30
     Dex: 125
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 800
     AttackMotion: 2112
+    ClientAttackMotion: 1920
     DamageMotion: 768
     Ai: 13
     Drops:
       - Item: Executioner's_Mitten
         Rate: 5
       - Item: White_Herb
         Rate: 1800
       - Item: Rose_Quartz
         Rate: 1500
       - Item: Tights_
         Rate: 8
       - Item: Earring_
         Rate: 1
       - Item: Queen's_Whip
         Rate: 100
       - Item: Masquerade
         Rate: 3
       - Item: Zherlthsh_Card
         Rate: 1
         StealProtected: true
   - Id: 1201
     AegisName: RYBIO
     Name: Rybio
     Level: 71
     Hp: 9572
     BaseExp: 6317
     JobExp: 3520
     Attack: 686
     Attack2: 912
     Defense: 45
     MagicDefense: 37
     Agi: 97
     Vit: 75
     Int: 74
     Dex: 77
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1790
     AttackMotion: 1440
+    ClientAttackMotion: 900
     DamageMotion: 540
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Thin_N'_Long_Tongue
         Rate: 3880
       - Item: Executioner's_Mitten
         Rate: 3
       - Item: White_Herb
         Rate: 1800
       - Item: Crystal_Jewel_
         Rate: 30
       - Item: Frozen_Heart
         Rate: 10
       - Item: Oridecon
         Rate: 100
       - Item: Izidor
         Rate: 30
       - Item: Rybio_Card
         Rate: 1
         StealProtected: true
   - Id: 1202
     AegisName: PHENDARK
     Name: Fendark
     Level: 73
     Hp: 22729
     BaseExp: 6826
     JobExp: 3443
     Attack: 794
     Attack2: 1056
     Defense: 52
     MagicDefense: 36
     Agi: 62
     Vit: 120
     Int: 65
     Dex: 76
     Luk: 66
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1744
     AttackMotion: 1344
+    ClientAttackMotion: 960
     DamageMotion: 600
     Ai: 13
     Drops:
       - Item: Thin_N'_Long_Tongue
         Rate: 3880
       - Item: Executioner's_Mitten
         Rate: 4
       - Item: White_Herb
         Rate: 1800
       - Item: Oridecon
         Rate: 150
       - Item: Electric_Wire
         Rate: 100
       - Item: Phendark_Card
         Rate: 1
         StealProtected: true
   - Id: 1203
     AegisName: MYSTELTAINN
     Name: Mysteltainn
     Level: 76
     Hp: 33350
     BaseExp: 6457
     JobExp: 5159
     Attack: 1160
     Attack2: 1440
     Defense: 30
     MagicDefense: 30
     Str: 77
     Agi: 139
     Vit: 80
     Int: 35
     Dex: 159
     Luk: 65
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 1152
     AttackMotion: 500
+    ClientAttackMotion: 768
     DamageMotion: 240
     Ai: 21
     Class: Boss
     Drops:
       - Item: Loki's_Whispers
         Rate: 1
       - Item: Biotite
         Rate: 1500
       - Item: Slayer_
         Rate: 70
       - Item: Bastard_Sword_
         Rate: 40
       - Item: Claymore
         Rate: 2
       - Item: Steel
         Rate: 120
       - Item: Oridecon
         Rate: 243
       - Item: Mysteltainn_Card
         Rate: 1
         StealProtected: true
   - Id: 1204
     AegisName: TIRFING
     Name: Tirfing
     JapaneseName: Tirfing
     Level: 71
     Hp: 29900
     BaseExp: 5412
     JobExp: 4235
     Attack: 950
     Attack2: 1146
     Defense: 30
     MagicDefense: 35
     Str: 58
     Agi: 87
     Vit: 55
     Int: 35
     Dex: 132
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 816
     AttackMotion: 500
+    ClientAttackMotion: 576
     DamageMotion: 240
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Hilt
         Rate: 1
       - Item: Silver_Knife_Of_Chaste
         Rate: 50
       - Item: Muscovite
         Rate: 1500
       - Item: Dagger_
         Rate: 70
       - Item: Stiletto_
         Rate: 40
       - Item: Steel
         Rate: 120
       - Item: Oridecon
         Rate: 189
       - Item: Tirfing_Card
         Rate: 1
         StealProtected: true
   - Id: 1205
     AegisName: EXECUTIONER
     Name: Executor
     Level: 65
     Hp: 28980
     BaseExp: 4730
     JobExp: 3536
     Attack: 570
     Attack2: 950
     Defense: 35
     MagicDefense: 35
     Str: 64
     Agi: 85
     Vit: 40
     Int: 25
     Dex: 88
     Luk: 60
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 768
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 21
     Class: Boss
     Drops:
       - Item: Bloody_Edge
         Rate: 5
       - Item: Phlogopite
         Rate: 1500
       - Item: Lapier_
         Rate: 80
       - Item: Scimiter_
         Rate: 60
       - Item: Ring_Pommel_Saber_
         Rate: 40
       - Item: Steel
         Rate: 120
       - Item: Oridecon
         Rate: 145
       - Item: Executioner_Card
         Rate: 1
         StealProtected: true
   - Id: 1206
     AegisName: ANOLIAN
     Name: Anolian
     Level: 61
     Hp: 18960
     BaseExp: 5900
     JobExp: 3700
     Attack: 640
     Attack2: 980
     Defense: 15
     MagicDefense: 15
     Agi: 43
     Vit: 58
     Int: 25
     Dex: 80
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 900
     AttackMotion: 500
+    ClientAttackMotion: 660
     DamageMotion: 864
     Ai: 21
     Drops:
       - Item: Anolian_Skin
         Rate: 4850
       - Item: Crystal_Arrow
         Rate: 2000
       - Item: Royal_Jelly
         Rate: 5
       - Item: Red_Muffler
         Rate: 10
       - Item: Solid_Shell
         Rate: 5335
       - Item: Brooch_
         Rate: 1
       - Item: Oridecon
         Rate: 134
       - Item: Anolian_Card
         Rate: 1
         StealProtected: true
   - Id: 1207
     AegisName: STING
     Name: Sting
     Level: 61
     Hp: 9500
     BaseExp: 4081
     JobExp: 2970
     Attack: 850
     Attack2: 1032
     Defense: 5
     MagicDefense: 30
     Str: 57
     Agi: 45
     Vit: 55
     Int: 5
     Dex: 120
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 528
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Mud_Lump
         Rate: 4850
       - Item: Stone_Arrow
         Rate: 1500
       - Item: Glove_
         Rate: 1
       - Item: Coal
         Rate: 130
       - Item: Great_Nature
         Rate: 25
       - Item: Silk_Ribbon
         Rate: 10
       - Item: Violet_Jewel
         Rate: 3
       - Item: Sting_Card
         Rate: 1
         StealProtected: true
   - Id: 1208
     AegisName: WANDER_MAN
     Name: Andarilho
     JapaneseName: Wander Man
     Level: 74
     Hp: 8170
     BaseExp: 5786
     JobExp: 4730
     Attack: 450
     Attack2: 1170
     Defense: 5
     MagicDefense: 5
     Agi: 192
     Vit: 38
     Int: 45
     Dex: 127
     Luk: 85
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 672
     AttackMotion: 500
+    ClientAttackMotion: 672
     DamageMotion: 192
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Skull
         Rate: 4850
       - Item: Old_Card_Album
         Rate: 1
       - Item: Hakujin_
         Rate: 5
       - Item: Centimental_Leaf
         Rate: 5
       - Item: Leaf_Of_Yggdrasil
         Rate: 650
       - Item: Oridecon
         Rate: 217
       - Item: Muramasa
         Rate: 1
       - Item: Wander_Man_Card
         Rate: 1
         StealProtected: true
   - Id: 1209
     AegisName: CRAMP
     Name: Cibra
     Level: 56
     Hp: 4720
     BaseExp: 2300
     JobExp: 1513
     Attack: 395
     Attack2: 465
     MagicDefense: 5
     Agi: 85
     Vit: 35
     Int: 5
     Dex: 65
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 1000
     AttackMotion: 500
+    ClientAttackMotion: 648
     DamageMotion: 1000
     Ai: 09
     Drops:
       - Item: Claw_Of_Rat
         Rate: 4656
       - Item: Monster's_Feed
         Rate: 1000
       - Item: Blue_Jewel
         Rate: 80
       - Item: Glass_Bead
         Rate: 110
       - Item: Lemon
         Rate: 250
       - Item: Blue_Herb
         Rate: 70
       - Item: Oridecon
         Rate: 95
       - Item: Cramp_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1210
+#    AegisName: FILAMENTOUS
+#    Name: Filamentous
+#    Level: 51
+#    Hp: 6088
+#    BaseExp: 1926
+#    JobExp: 1353
+#    Attack: 425
+#    Attack2: 525
+#    Defense: 35
+#    MagicDefense: 10
+#    Agi: 35
+#    Vit: 30
+#    Int: 5
+#    Dex: 83
+#    Luk: 40
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Insect
+#    Element: Fire
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 1500
+#    AttackMotion: 500
+#    DamageMotion: 1000
+#    Ai: 09
+#    Drops:
+#      - Item: Stiff_Horn
+#        Rate: 4850
+#        StealProtected: true
   - Id: 1211
     AegisName: BRILIGHT
     Name: Escaravelho
     Level: 46
     Hp: 5562
     BaseExp: 1826
     JobExp: 1331
     Attack: 298
     Attack2: 383
     Defense: 30
     MagicDefense: 5
     Agi: 90
     Vit: 15
     Int: 10
     Dex: 50
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 720
     DamageMotion: 1000
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Glitter_Shell
         Rate: 5335
       - Item: Wind_Of_Verdure
         Rate: 200
       - Item: Zargon
         Rate: 1200
       - Item: Wing_Of_Butterfly
         Rate: 1000
       - Item: Elunium_Stone
         Rate: 220
       - Item: Leaf_Of_Yggdrasil
         Rate: 250
       - Item: White_Herb
         Rate: 2600
       - Item: Brilight_Card
         Rate: 1
         StealProtected: true
   - Id: 1212
     AegisName: IRON_FIST
     Name: Mo de Ferro
     Level: 47
     Hp: 4221
     BaseExp: 1435
     JobExp: 1520
     Attack: 430
     Attack2: 590
     Defense: 40
     MagicDefense: 5
     Agi: 25
     Vit: 15
     Int: 10
     Dex: 81
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 384
     DamageMotion: 1000
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Tail_Of_Steel_Scorpion
         Rate: 5335
       - Item: Elunium_Stone
         Rate: 229
       - Item: Elunium_Stone
         Rate: 22
       - Item: Iron_Ore
         Rate: 750
       - Item: Steel
         Rate: 180
       - Item: Iron
         Rate: 300
       - Item: Iron_Fist_Card
         Rate: 1
         StealProtected: true
   - Id: 1213
     AegisName: HIGH_ORC
     Name: Grande Orc
     Level: 52
     Hp: 6890
     BaseExp: 3618
     JobExp: 1639
     Attack: 428
     Attack2: 533
     Defense: 15
     MagicDefense: 5
     Str: 55
     Agi: 46
     Vit: 55
     Int: 35
     Dex: 82
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     RaceGroups:
       Orc: true
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 1000
     Ai: 21
     Drops:
       - Item: Ogre_Tooth
         Rate: 2500
       - Item: Orcish_Axe
         Rate: 10
       - Item: Steel
         Rate: 90
       - Item: Orcish_Voucher
         Rate: 7500
       - Item: Zargon
         Rate: 1300
       - Item: Oridecon_Stone
         Rate: 196
       - Item: Yellow_Herb
         Rate: 900
       - Item: High_Orc_Card
         Rate: 1
         StealProtected: true
   - Id: 1214
     AegisName: CHOCO
     Name: Choco
     Level: 43
     Hp: 4278
     BaseExp: 1265
     JobExp: 1265
     Attack: 315
     Attack2: 402
     Defense: 5
     MagicDefense: 5
     Str: 65
     Agi: 68
     Vit: 55
     Int: 45
     Dex: 65
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 360
     DamageMotion: 1000
     Ai: 09
     Drops:
       - Item: Claw_Of_Monkey
         Rate: 5335
       - Item: Yoyo_Tail
         Rate: 7000
       - Item: Elunium
         Rate: 53
       - Item: Banana
         Rate: 5000
       - Item: Tropical_Banana
         Rate: 20
       - Item: Banana_Juice
         Rate: 1000
       - Item: Yggdrasilberry
         Rate: 25
       - Item: Choco_Card
         Rate: 1
         StealProtected: true
   - Id: 1215
     AegisName: STEM_WORM
     Name: Talo de Verme
     Level: 40
     Hp: 6136
     BaseExp: 1452
     JobExp: 939
     Attack: 290
     Attack2: 375
     Defense: 5
     MagicDefense: 10
     Agi: 30
     Vit: 26
     Int: 15
     Dex: 79
     Luk: 35
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 288
     DamageMotion: 1000
     Ai: 09
     Drops:
       - Item: Tough_Scalelike_Stem
         Rate: 5335
       - Item: White_Herb
         Rate: 1800
       - Item: Jump_Rope
         Rate: 10
       - Item: Oridecon_Stone
         Rate: 115
       - Item: Great_Nature
         Rate: 5
       - Item: Glaive
         Rate: 20
       - Item: Seed_Of_Yggdrasil
         Rate: 45
       - Item: Stem_Worm_Card
         Rate: 1
         StealProtected: true
   - Id: 1216
     AegisName: PENOMENA
     Name: Penomena
     Level: 57
     Hp: 7256
     BaseExp: 2870
     JobExp: 2200
     Attack: 415
     Attack2: 565
     Defense: 5
     MagicDefense: 50
     Agi: 5
     Vit: 35
     Int: 15
     Dex: 136
     Luk: 30
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 832
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 21
     Drops:
       - Item: Coral_Reef
         Rate: 4850
       - Item: Tentacle
         Rate: 8000
       - Item: Sticky_Mucus
         Rate: 7000
       - Item: Panacea
         Rate: 200
       - Item: Violet_Jewel
         Rate: 15
       - Item: Katar_Of_Raging_Blaze
         Rate: 1
       - Item: Red_Gemstone
         Rate: 550
       - Item: Penomena_Card
         Rate: 1
         StealProtected: true
   - Id: 1219
     AegisName: KNIGHT_OF_ABYSS
     Name: Cavaleiro do Abismo
     JapaneseName: Knight of Abyss
     Level: 79
     Hp: 36140
     BaseExp: 8469
     JobExp: 6268
     Attack: 1600
     Attack2: 2150
     Defense: 55
     MagicDefense: 50
     Str: 66
     Agi: 68
     Vit: 64
     Int: 25
     Dex: 135
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 720
     DamageMotion: 1000
     Ai: 21
     Drops:
       - Item: Reins
         Rate: 5335
       - Item: Blade_Lost_In_Darkness
         Rate: 5
       - Item: Clothes_Of_The_Lord
         Rate: 1
       - Item: Battle_Hook
         Rate: 25
       - Item: Broad_Sword_
         Rate: 1
       - Item: Elunium
         Rate: 369
       - Item: Oridecon
         Rate: 259
       - Item: Knight_Of_Abyss_Card
         Rate: 1
         StealProtected: true
   - Id: 1220
     AegisName: M_DESERT_WOLF
     Name: Lobo do Deserto
     Level: 27
     Hp: 1716
     BaseExp: 388
     JobExp: 242
     Attack: 169
     Attack2: 208
     MagicDefense: 10
     Agi: 27
     Vit: 45
     Int: 15
     Dex: 56
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1120
     AttackMotion: 420
+    ClientAttackMotion: 216
     DamageMotion: 288
     Ai: 21
     Drops:
       - Item: Katar_
         Rate: 5
       - Item: Claw_Of_Desert_Wolf
         Rate: 5500
       - Item: Mink_Coat
         Rate: 1
       - Item: Meat
         Rate: 1200
       - Item: Claw_Of_Wolves
         Rate: 2000
       - Item: Oridecon_Stone
         Rate: 53
       - Item: Desert_Wolf_Card
         Rate: 1
         StealProtected: true
   - Id: 1221
     AegisName: M_SAVAGE
     Name: Selvagem
     Level: 26
     Hp: 2092
     BaseExp: 357
     JobExp: 226
     Attack: 146
     Attack2: 177
     Defense: 10
     MagicDefense: 5
     Agi: 26
     Vit: 54
     Int: 10
     Dex: 37
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Wild_Boar's_Mane
         Rate: 6000
       - Item: Grape
         Rate: 150
       - Item: Animal_Blood
         Rate: 3
       - Item: Eagle_Eyes
         Rate: 2
       - Item: Anodyne
         Rate: 15
       - Item: Elunium_Stone
         Rate: 70
       - Item: Savage_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1222
+#    AegisName: L_HIGH_ORC
+#    Name: High Orc
+#    Level: 52
+#    Hp: 6890
+#    BaseExp: 2128
+#    JobExp: 1490
+#    Attack: 428
+#    Attack2: 533
+#    Defense: 15
+#    MagicDefense: 5
+#    Agi: 46
+#    Vit: 55
+#    Int: 35
+#    Dex: 82
+#    Luk: 40
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Demihuman
+#    Element: Fire
+#    ElementLevel: 2
+#    WalkSpeed: 200
+#    AttackDelay: 1500
+#    AttackMotion: 500
+#    DamageMotion: 1000
+#    Ai: 21
+#    Drops:
+#      - Item: Ogre_Tooth
+#        Rate: 2500
+#        StealProtected: true
   - Id: 1229
     AegisName: META_FABRE
     Name: Fabre
     Level: 2
     Hp: 63
     BaseExp: 3
     JobExp: 2
     Attack: 8
     Attack2: 11
     Agi: 2
     Vit: 4
+    Int: 0
     Dex: 7
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Fluff
         Rate: 6500
       - Item: Feather
         Rate: 600
       - Item: Club_
         Rate: 80
       - Item: Azure_Jewel
         Rate: 8
       - Item: Green_Herb
         Rate: 750
       - Item: Clover
         Rate: 1500
       - Item: Club
         Rate: 200
       - Item: Fabre_Card
         Rate: 1
         StealProtected: true
   - Id: 1230
     AegisName: META_PUPA
     Name: Pupa
     Level: 2
     Hp: 427
     BaseExp: 2
     JobExp: 4
     Attack: 1
     Attack2: 2
     Defense: 20
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 768
     DamageMotion: 1
     Modes:
       Detector: true
     Drops:
       - Item: Phracon
         Rate: 300
       - Item: Chrysalis
         Rate: 6000
       - Item: Sticky_Mucus
         Rate: 700
       - Item: Guard_
         Rate: 2
       - Item: Shell
         Rate: 1300
       - Item: Sticky_Mucus
         Rate: 700
       - Item: Iron_Ore
         Rate: 300
       - Item: Pupa_Card
         Rate: 1
         StealProtected: true
   - Id: 1231
     AegisName: META_CREAMY
     Name: Creamy
     Level: 16
     Hp: 595
     BaseExp: 96
     JobExp: 64
     Attack: 53
     Attack2: 64
     MagicDefense: 30
     Agi: 40
     Vit: 16
     Int: 15
     Dex: 16
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1220
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 288
     Ai: 01
     Modes:
       Detector: true
     Drops:
       - Item: Powder_Of_Butterfly
         Rate: 6000
       - Item: Silk_Robe_
         Rate: 10
       - Item: Honey
         Rate: 180
       - Item: Wing_Of_Butterfly
         Rate: 200
       - Item: Fancy_Flower
         Rate: 4
       - Item: Flower
         Rate: 800
       - Item: Creamy_Card
         Rate: 1
         StealProtected: true
   - Id: 1232
     AegisName: META_PECOPECO_EGG
     Name: Ovo de Peco
     Level: 3
     Hp: 420
     BaseExp: 4
     JobExp: 4
     Attack: 1
     Attack2: 2
     Defense: 20
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 672
     DamageMotion: 1
     Drops:
       - Item: Phracon
         Rate: 120
       - Item: Shell
         Rate: 1500
       - Item: Guard_
         Rate: 2
       - Item: Red_Herb
         Rate: 450
       - Item: Red_Herb
         Rate: 450
       - Item: Empty_Bottle
         Rate: 2000
       - Item: White_Platter
         Rate: 15
       - Item: Pecopeco_Egg_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1233
+#    AegisName: CONCEIVE_PECOPECO
+#    Name: Peco Peco
+#    Level: 19
+#    Hp: 531
+#    BaseExp: 159
+#    JobExp: 36
+#    Attack: 50
+#    Attack2: 64
+#    Agi: 13
+#    Vit: 13
+#    Int: 25
+#    Dex: 27
+#    Luk: 9
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Brute
+#    Element: Fire
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 1564
+#    AttackMotion: 864
+#    DamageMotion: 576
+#    Ai: 01
+#    Drops:
+#      - Item: Bill_Of_Birds
+#        Rate: 6000
+#        StealProtected: true
   - Id: 1234
     AegisName: PROVOKE_YOYO
     Name: Yoyo
     Level: 19
     Hp: 879
     BaseExp: 135
     JobExp: 85
     Attack: 71
     Attack2: 82
     Agi: 24
     Vit: 30
     Int: 35
     Dex: 32
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1054
     AttackMotion: 54
+    ClientAttackMotion: 360
     DamageMotion: 384
     Ai: 07
     Drops:
       - Item: Yoyo_Tail
         Rate: 6000
       - Item: Cacao
         Rate: 500
       - Item: Yellow_Herb
         Rate: 130
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Monkey_Doll
         Rate: 7
       - Item: Strawberry
         Rate: 500
       - Item: Orange
         Rate: 1000
       - Item: Yoyo_Card
         Rate: 1
         StealProtected: true
   - Id: 1235
     AegisName: SMOKING_ORC
     Name: Orc Fumante
     Level: 24
     Hp: 1400
     BaseExp: 261
     JobExp: 160
     Attack: 114
     Attack2: 136
     Defense: 10
     MagicDefense: 20
     Agi: 24
     Vit: 48
     Int: 20
     Dex: 34
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 672
     DamageMotion: 288
     Ai: 13
     Drops:
       - Item: Iron
         Rate: 210
       - Item: Orcish_Voucher
         Rate: 5500
       - Item: Oridecon_Stone
         Rate: 40
       - Item: Cigar
         Rate: 3
       - Item: Battle_Axe_
         Rate: 10
       - Item: Orcish_Axe
         Rate: 5
       - Item: Axe
         Rate: 100
       - Item: Orc_Warrior_Card
         Rate: 1
         StealProtected: true
   - Id: 1236
     AegisName: META_ANT_EGG
     Name: Ovo de Andre
     Level: 4
     Hp: 420
     BaseExp: 5
     JobExp: 4
     Attack: 1
     Attack2: 2
     Defense: 20
     MagicDefense: 20
+    Int: 0
     Luk: 20
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1001
     AttackMotion: 1
+    ClientAttackMotion: 672
     DamageMotion: 1
     Drops:
       - Item: Phracon
         Rate: 135
       - Item: Shell
         Rate: 2740
       - Item: Jellopy
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 750
       - Item: Empty_Bottle
         Rate: 2000
       - Item: Iron_Ore
         Rate: 220
       - Item: Andre_Egg_Card
         Rate: 1
         StealProtected: true
   - Id: 1237
     AegisName: META_ANDRE
     Name: Andre
     Level: 17
     Hp: 688
     BaseExp: 109
     JobExp: 71
     Attack: 60
     Attack2: 71
     Defense: 10
     Agi: 17
     Vit: 24
     Int: 20
     Dex: 26
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 180
     DamageMotion: 576
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 6000
       - Item: Garlet
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 1000
       - Item: Shell
         Rate: 3000
       - Item: Sparkling_Dust
         Rate: 6
       - Item: Iron_Ore
         Rate: 350
       - Item: Elunium_Stone
         Rate: 28
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1238
     AegisName: META_PIERE
     Name: Piere
     Level: 18
     Hp: 733
     BaseExp: 122
     JobExp: 78
     Attack: 64
     Attack2: 75
     Defense: 15
     Agi: 18
     Vit: 26
     Int: 20
     Dex: 27
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 144
     DamageMotion: 576
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 5700
       - Item: Garlet
         Rate: 1100
       - Item: Sticky_Mucus
         Rate: 600
       - Item: Wind_Of_Verdure
         Rate: 15
       - Item: Sparkling_Dust
         Rate: 5
       - Item: Iron_Ore
         Rate: 400
       - Item: Elunium_Stone
         Rate: 31
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1239
     AegisName: META_DENIRO
     Name: Deniro
     Level: 19
     Hp: 760
     BaseExp: 135
     JobExp: 85
     Attack: 68
     Attack2: 79
     Defense: 15
     Agi: 19
     Vit: 30
     Int: 20
     Dex: 43
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 144
     DamageMotion: 576
     Ai: 07
     Modes:
       Detector: true
     Drops:
       - Item: Worm_Peelings
         Rate: 6000
       - Item: Garlet
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 1200
       - Item: Boody_Red
         Rate: 45
       - Item: Sparkling_Dust
         Rate: 8
       - Item: Iron_Ore
         Rate: 450
       - Item: Elunium_Stone
         Rate: 34
       - Item: Andre_Card
         Rate: 1
         StealProtected: true
   - Id: 1240
     AegisName: META_PICKY
     Name: Picky
     Level: 3
     Hp: 80
     BaseExp: 4
     JobExp: 3
     Attack: 9
     Attack2: 12
     Agi: 3
     Vit: 3
+    Int: 0
     Dex: 10
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 168
     Ai: 01
     Drops:
       - Item: Feather_Of_Birds
         Rate: 6500
       - Item: Feather
         Rate: 850
       - Item: Cotton_Shirt_
         Rate: 150
       - Item: Red_Herb
         Rate: 650
       - Item: Milk
         Rate: 350
       - Item: Yellow_Gemstone
         Rate: 60
       - Item: Picky_Card
         Rate: 1
         StealProtected: true
   - Id: 1241
     AegisName: META_PICKY_
     Name: Picky com Casca
     Level: 4
     Hp: 83
     BaseExp: 5
     JobExp: 4
     Attack: 8
     Attack2: 11
     Defense: 20
     Agi: 3
     Vit: 3
+    Int: 0
     Dex: 11
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 168
     Ai: 01
     Drops:
       - Item: Feather_Of_Birds
         Rate: 6500
       - Item: Feather
         Rate: 850
       - Item: Egg_Shell
         Rate: 7
       - Item: Red_Herb
         Rate: 750
       - Item: Milk
         Rate: 350
       - Item: Yellow_Gemstone
         Rate: 60
       - Item: Picky__Card
         Rate: 1
         StealProtected: true
   - Id: 1242
     AegisName: MARIN
     Name: Marin
     Level: 15
     Hp: 742
     BaseExp: 66
     JobExp: 44
     Attack: 39
     Attack2: 43
     MagicDefense: 10
     Agi: 10
     Vit: 10
     Int: 5
     Dex: 35
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 01
     Drops:
       - Item: Garlet
         Rate: 3200
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Cold_Scroll_2_1
         Rate: 100
       - Item: Skyblue_Jewel
         Rate: 40
       - Item: Blue_Herb
         Rate: 75
       - Item: Candy
         Rate: 350
       - Item: Poring_Hat
         Rate: 1
       - Item: Marin_Card
         Rate: 1
         StealProtected: true
   - Id: 1243
     AegisName: SASQUATCH
     Name: Sasquatch
     Level: 30
     Hp: 3163
     BaseExp: 529
     JobExp: 319
     Attack: 250
     Attack2: 280
     Defense: 5
     Str: 75
     Agi: 25
     Vit: 60
     Int: 10
     Dex: 34
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 21
     Drops:
       - Item: Zargon
         Rate: 750
       - Item: White_Herb
         Rate: 800
       - Item: Feather
         Rate: 1000
       - Item: Panda_Cap
         Rate: 1
       - Item: Bear's_Foot
         Rate: 5000
       - Item: White_Jewel
         Rate: 30
       - Item: Elunium_Stone
         Rate: 90
       - Item: Sasquatch_Card
         Rate: 1
         StealProtected: true
   - Id: 1244
     AegisName: JAKK_XMAS
     Name: Jakk Natalino
     Level: 38
     Hp: 3581
     BaseExp: 1113
     JobExp: 688
     Attack: 315
     Attack2: 382
     Defense: 5
     MagicDefense: 30
     Agi: 38
     Vit: 38
     Int: 43
     Dex: 75
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 648
     Ai: 01
     Drops:
       - Item: Pumpkin_Head
         Rate: 5335
       - Item: Zargon
         Rate: 900
       - Item: Elunium
         Rate: 31
       - Item: Tights_
         Rate: 5
       - Item: Gift_Box
         Rate: 20
       - Item: Packing_Paper
         Rate: 1200
       - Item: Packing_Ribbon
         Rate: 1200
       - Item: Jakk_Card
         Rate: 1
         StealProtected: true
   - Id: 1245
     AegisName: GOBLINE_XMAS
     Name: Goblin Natalino
     Level: 25
     Hp: 1176
     BaseExp: 282
     JobExp: 171
     Attack: 118
     Attack2: 140
     Defense: 10
     MagicDefense: 5
     Agi: 53
     Vit: 25
     Int: 20
     Dex: 38
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 01
     Drops:
       - Item: Packing_Ribbon
         Rate: 550
       - Item: Packing_Paper
         Rate: 550
       - Item: Oridecon_Stone
         Rate: 43
       - Item: Gift_Box
         Rate: 10
       - Item: Dirk_
         Rate: 10
       - Item: Buckler_
         Rate: 5
       - Item: Santa's_Hat
         Rate: 10
       - Item: Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1246
     AegisName: COOKIE_XMAS
     Name: Cookie Natalino
     Level: 28
     Hp: 2090
     BaseExp: 461
     JobExp: 284
     Attack: 140
     Attack2: 170
     MagicDefense: 50
     Agi: 24
     Vit: 30
     Int: 53
     Dex: 45
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 1248
     AttackMotion: 1248
+    ClientAttackMotion: 336
     DamageMotion: 240
     Ai: 17
     Drops:
       - Item: Well_Baked_Cookie
         Rate: 1500
       - Item: Scarlet_Jewel
         Rate: 45
       - Item: Zargon
         Rate: 200
       - Item: Hood_
         Rate: 25
       - Item: Gift_Box
         Rate: 5
       - Item: Cold_Scroll_1_3
         Rate: 100
       - Item: Red_Herb
         Rate: 1700
       - Item: Cookie_XMAS_Card
         Rate: 1
         StealProtected: true
   - Id: 1247
     AegisName: ANTONIO
     Name: Antonio
     Level: 10
     Hp: 10
     BaseExp: 3
     JobExp: 2
     Attack: 13
     Attack2: 20
     Defense: 100
     Int: 50
     Dex: 100
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 720
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 01
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Red_Socks_With_Holes
         Rate: 10000
       - Item: Gift_Box
         Rate: 200
       - Item: Well_Baked_Cookie
         Rate: 1500
       - Item: Piece_Of_Cake
         Rate: 1000
       - Item: Candy
         Rate: 5500
       - Item: Candy_Striper
         Rate: 5500
       - Item: Santa's_Hat
         Rate: 250
       - Item: Antonio_Card
         Rate: 1
         StealProtected: true
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -10082,191 +10911,195 @@ Body:
     AegisName: CRUISER
     Name: Soldadinho de Chumbo
     Level: 35
     Hp: 2820
     BaseExp: 1100
     JobExp: 450
     Attack: 175
     Attack2: 215
     Defense: 5
     MagicDefense: 5
     Agi: 40
     Vit: 10
     Int: 10
     Dex: 90
     Luk: 25
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1296
     AttackMotion: 1296
+    ClientAttackMotion: 1224
     DamageMotion: 432
     Ai: 05
     Drops:
       - Item: Manacles
         Rate: 900
       - Item: Holy_Bonnet
         Rate: 2
       - Item: Iron
         Rate: 320
       - Item: Rough_Wind
         Rate: 5
       - Item: Scell
         Rate: 3500
       - Item: Branch
         Rate: 5
       - Item: Oridecon_Stone
         Rate: 87
       - Item: Cruiser_Card
         Rate: 1
         StealProtected: true
   - Id: 1249
     AegisName: MYSTCASE
     Name: Presente
     Level: 38
     Hp: 3450
     BaseExp: 1113
     JobExp: 688
     Attack: 160
     Attack2: 360
     Defense: 5
     MagicDefense: 10
     Str: 65
     Agi: 50
     Vit: 25
     Int: 5
     Dex: 48
     Luk: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1248
     AttackMotion: 1248
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 17
     Drops:
       - Item: Candy_Striper
         Rate: 90
       - Item: Zargon
         Rate: 1500
       - Item: Old_Blue_Box
         Rate: 20
       - Item: Piece_Of_Cake
         Rate: 800
       - Item: Scarlet_Jewel
         Rate: 150
       - Item: Crystal_Jewel_
         Rate: 5
       - Item: Candy
         Rate: 340
       - Item: Mystcase_Card
         Rate: 1
         StealProtected: true
   - Id: 1250
     AegisName: CHEPET
     Name: Chepet
     Level: 42
     Hp: 4950
     BaseExp: 1518
     JobExp: 946
     Attack: 380
     Attack2: 440
     MagicDefense: 25
     Agi: 72
     Vit: 35
     Int: 71
     Dex: 65
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 672
     AttackMotion: 672
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 21
     Drops:
       - Item: Matchstick
         Rate: 2500
       - Item: Zargon
         Rate: 750
       - Item: Apple
         Rate: 5500
       - Item: Unripe_Apple
         Rate: 40
       - Item: Red_Muffler
         Rate: 5
       - Item: Yellow_Herb
         Rate: 1300
       - Item: Ragamuffin_Cape
         Rate: 5
       - Item: Chepet_Card
         Rate: 1
         StealProtected: true
   - Id: 1251
     AegisName: KNIGHT_OF_WINDSTORM
     Name: Cavaleiro da Tempestade
     JapaneseName: Knight of Windstorm
     Level: 77
     Hp: 240000
     BaseExp: 64350
     JobExp: 21450
     MvpExp: 32175
     Attack: 1425
     Attack2: 1585
     Defense: 35
     MagicDefense: 60
     Str: 75
     Agi: 185
     Vit: 83
     Int: 55
     Dex: 130
     Luk: 79
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 468
     AttackMotion: 468
+    ClientAttackMotion: 252
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Skyblue_Jewel
         Rate: 4500
       - Item: Boots_
         Rate: 500
       - Item: Mistic_Frozen
         Rate: 3000
     Drops:
       - Item: Zephyrus
         Rate: 150
       - Item: Old_Blue_Box
         Rate: 3000
       - Item: Old_Violet_Box
         Rate: 4000
       - Item: Ring_
         Rate: 200
       - Item: Manteau_
         Rate: 500
       - Item: Elunium
         Rate: 4559
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -10282,50 +11115,51 @@ Body:
     Level: 73
     Hp: 197000
     BaseExp: 50050
     JobExp: 20020
     MvpExp: 25025
     Attack: 1700
     Attack2: 1900
     Defense: 40
     MagicDefense: 45
     Str: 85
     Agi: 126
     Vit: 82
     Int: 65
     Dex: 95
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Water
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 608
     AttackMotion: 408
+    ClientAttackMotion: 312
     DamageMotion: 336
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Fang_Of_Garm
         Rate: 1000
       - Item: Old_Blue_Box
         Rate: 3000
       - Item: Mistic_Frozen
         Rate: 3000
     Drops:
       - Item: Fang_Of_Garm
         Rate: 5500
       - Item: Ice_Falchon
         Rate: 150
       - Item: Katar_Of_Cold_Icicle
         Rate: 500
       - Item: Claw_Of_Garm
         Rate: 500
       - Item: Elunium
         Rate: 3977
       - Item: Oridecon
         Rate: 2900
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -10337,913 +11171,935 @@ Body:
     Name: Grgula
     Level: 48
     Hp: 3950
     BaseExp: 1650
     JobExp: 1650
     Attack: 290
     Attack2: 360
     Defense: 10
     MagicDefense: 10
     Str: 15
     Agi: 61
     Vit: 20
     Int: 20
     Dex: 126
     Luk: 40
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1020
     AttackMotion: 720
+    ClientAttackMotion: 600
     DamageMotion: 384
     Ai: 05
     Modes:
       Detector: true
     Drops:
       - Item: Zargon
         Rate: 3880
       - Item: Petite_DiablOfs_Wing
         Rate: 500
       - Item: Thimble_Of_Archer
         Rate: 1
       - Item: Silence_Arrow
         Rate: 2000
       - Item: Elunium_Stone
         Rate: 238
       - Item: Gargoyle_Card
         Rate: 1
         StealProtected: true
   - Id: 1254
     AegisName: RAGGLER
     Name: Raggler
     Level: 21
     Hp: 1020
     BaseExp: 218
     JobExp: 140
     Attack: 102
     Attack2: 113
     MagicDefense: 5
     Str: 18
     Agi: 10
     Vit: 32
     Int: 20
     Dex: 39
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1000
     AttackMotion: 900
+    ClientAttackMotion: 252
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Cyfar
         Rate: 3000
       - Item: Feather_Of_Birds
         Rate: 5000
       - Item: Center_Potion
         Rate: 200
       - Item: Grape
         Rate: 200
       - Item: Wind_Of_Verdure
         Rate: 90
       - Item: Goggle_
         Rate: 7
       - Item: Oridecon_Stone
         Rate: 32
       - Item: Raggler_Card
         Rate: 1
         StealProtected: true
   - Id: 1255
     AegisName: NERAID
     Name: Nereida
     JapaneseName: Neraid
     Level: 40
     Hp: 4120
     BaseExp: 1126
     JobExp: 684
     Attack: 325
     Attack2: 360
     MagicDefense: 10
     Agi: 45
     Vit: 50
     Int: 5
     Dex: 64
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 776
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 288
     Ai: 21
     Drops:
       - Item: Earthworm_Peeling
         Rate: 5100
       - Item: Cyfar
         Rate: 1000
       - Item: Blue_Herb
         Rate: 230
       - Item: Whip_Of_Ice_Piece
         Rate: 10
       - Item: Grape
         Rate: 250
       - Item: Elunium_Stone
         Rate: 180
       - Item: Elunium
         Rate: 37
       - Item: Neraid_Card
         Rate: 1
         StealProtected: true
   - Id: 1256
     AegisName: PEST
     Name: Peste
     Level: 40
     Hp: 3240
     BaseExp: 1238
     JobExp: 752
     Attack: 375
     Attack2: 450
     MagicDefense: 5
     Agi: 60
     Vit: 22
     Int: 5
     Dex: 80
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 165
     AttackDelay: 700
     AttackMotion: 648
+    ClientAttackMotion: 396
     DamageMotion: 480
     Ai: 21
     Drops:
       - Item: Earthworm_Peeling
         Rate: 5500
       - Item: Brigan
         Rate: 200
       - Item: Animal_Blood
         Rate: 10
       - Item: Anodyne
         Rate: 100
       - Item: Red_Gemstone
         Rate: 250
       - Item: Oridecon_Stone
         Rate: 115
       - Item: Pest_Card
         Rate: 1
         StealProtected: true
   - Id: 1257
     AegisName: INJUSTICE
     Name: Injustiado
     Level: 51
     Hp: 7600
     BaseExp: 2118
     JobExp: 1488
     Attack: 480
     Attack2: 600
     Str: 84
     Agi: 42
     Vit: 39
+    Int: 0
     Dex: 71
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 770
     AttackMotion: 720
+    ClientAttackMotion: 540
     DamageMotion: 336
     Ai: 21
     Drops:
       - Item: Steel
         Rate: 300
       - Item: Brigan
         Rate: 5335
       - Item: Cyfar
         Rate: 3500
       - Item: Padded_Armor_
         Rate: 5
       - Item: Plate_Armor
         Rate: 2
       - Item: Prohibition_Red_Candle
         Rate: 2
       - Item: Jamadhar_
         Rate: 2
       - Item: Injustice_Card
         Rate: 1
         StealProtected: true
   - Id: 1258
     AegisName: GOBLIN_ARCHER
     Name: Goblin Arqueiro
     Level: 28
     Hp: 1750
     BaseExp: 461
     JobExp: 284
     Attack: 89
     Attack2: 113
     Str: 10
     Agi: 15
     Vit: 20
     Int: 15
     Dex: 72
     Luk: 20
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1172
     AttackMotion: 672
+    ClientAttackMotion: 528
     DamageMotion: 420
     Ai: 05
     Drops:
       - Item: Goblini_Mask
         Rate: 3
       - Item: Iron
         Rate: 250
       - Item: Scell
         Rate: 1000
       - Item: Oridecon_Arrow
         Rate: 3000
       - Item: Red_Herb
         Rate: 600
       - Item: Composite_Bow_
         Rate: 25
       - Item: Grape
         Rate: 300
       - Item: Goblin_Archer_Card
         Rate: 1
         StealProtected: true
   - Id: 1259
     AegisName: GRYPHON
     Name: Grifo
     Level: 72
     Hp: 27800
     BaseExp: 5896
     JobExp: 4400
     Attack: 880
     Attack2: 1260
     Defense: 35
     MagicDefense: 35
     Str: 68
     Agi: 95
     Vit: 78
     Int: 65
     Dex: 115
     Luk: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 704
     AttackMotion: 504
+    ClientAttackMotion: 288
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Talon_Of_Griffin
         Rate: 2500
       - Item: Brigan
         Rate: 5335
       - Item: Soft_Feather
         Rate: 120
       - Item: Guisarme_
         Rate: 1500
       - Item: Pole_Axe
         Rate: 1
       - Item: Oridecon
         Rate: 185
       - Item: Rough_Wind
         Rate: 150
       - Item: Gryphon_Card
         Rate: 1
         StealProtected: true
   - Id: 1260
     AegisName: DARK_FRAME
     Name: Moldura Maldita
     Level: 59
     Hp: 7500
     BaseExp: 3652
     JobExp: 3271
     Attack: 960
     Attack2: 1210
     Defense: 10
     MagicDefense: 45
     Agi: 72
     Vit: 42
     Int: 45
     Dex: 85
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 920
     AttackMotion: 720
+    ClientAttackMotion: 360
     DamageMotion: 200
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Brigan
         Rate: 4656
       - Item: Red_Frame
         Rate: 1000
       - Item: Manteau
         Rate: 30
       - Item: Star_Crumb
         Rate: 80
       - Item: Crystal_Mirror
         Rate: 3
       - Item: Dark_Frame_Card
         Rate: 1
         StealProtected: true
   - Id: 1261
     AegisName: WILD_ROSE
     Name: Rosa Selvagem
     Level: 38
     Hp: 2980
     BaseExp: 1113
     JobExp: 688
     Attack: 315
     Attack2: 360
     MagicDefense: 15
     Str: 65
     Agi: 85
     Vit: 15
     Int: 35
     Dex: 65
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 964
     AttackMotion: 864
+    ClientAttackMotion: 840
     DamageMotion: 288
     Ai: 02
     Drops:
       - Item: Cyfar
         Rate: 5335
       - Item: Witherless_Rose
         Rate: 50
       - Item: Fruit_Shell
         Rate: 120
       - Item: Arrow_Of_Shadow
         Rate: 3000
       - Item: Rotten_Fish
         Rate: 35
       - Item: Monster's_Feed
         Rate: 600
       - Item: Big_Sis'_Ribbon
         Rate: 2
       - Item: Wild_Rose_Card
         Rate: 1
         StealProtected: true
   - Id: 1262
     AegisName: MUTANT_DRAGON
     Name: Drago Mutante
     JapaneseName: Drago Mutante
     Level: 65
     Hp: 62600
     BaseExp: 4730
     JobExp: 3536
     Attack: 2400
     Attack2: 3400
     Defense: 15
     MagicDefense: 20
     Str: 75
     Agi: 47
     Vit: 30
     Int: 68
     Dex: 45
     Luk: 35
     AttackRange: 4
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1280
     AttackMotion: 1080
+    ClientAttackMotion: 900
     DamageMotion: 240
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 4850
       - Item: Dragon_Canine
         Rate: 500
       - Item: Dragon_Scale
         Rate: 500
       - Item: Rotten_Bandage
         Rate: 500
       - Item: Legacy_Of_Dragon
         Rate: 100
       - Item: Pyroxene
         Rate: 1500
       - Item: Dragon_Breath
         Rate: 50
       - Item: Mutant_Dragon_Card
         Rate: 1
         StealProtected: true
   - Id: 1263
     AegisName: WIND_GHOST
     Name: Xam do Vento
     Level: 51
     Hp: 4820
     BaseExp: 2424
     JobExp: 1488
     Attack: 489
     Attack2: 639
     MagicDefense: 45
     Agi: 89
     Vit: 15
     Int: 90
     Dex: 85
     Luk: 25
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1056
     AttackMotion: 1056
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Zargon
         Rate: 4559
       - Item: Skel_Bone
         Rate: 6000
       - Item: Skull
         Rate: 500
       - Item: Wind_Scroll_1_5
         Rate: 100
       - Item: Arc_Wand_
         Rate: 8
       - Item: Rough_Wind
         Rate: 100
       - Item: Bone_Wand
         Rate: 1
       - Item: Wind_Ghost_Card
         Rate: 1
         StealProtected: true
   - Id: 1264
     AegisName: MERMAN
     Name: Trito
     Level: 53
     Hp: 14690
     BaseExp: 4500
     JobExp: 3000
     Attack: 482
     Attack2: 964
     Defense: 10
     MagicDefense: 35
     Str: 72
     Agi: 45
     Vit: 46
     Int: 35
     Dex: 60
     Luk: 55
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 3
     WalkSpeed: 220
     AttackDelay: 916
     AttackMotion: 816
+    ClientAttackMotion: 384
     DamageMotion: 336
     Ai: 21
     Drops:
       - Item: Lip_Of_Ancient_Fish
         Rate: 1300
       - Item: Holy_Water
         Rate: 300
       - Item: Lemon
         Rate: 400
       - Item: Skyblue_Jewel
         Rate: 40
       - Item: Mistic_Frozen
         Rate: 35
       - Item: Trident
         Rate: 3
       - Item: Oridecon_Stone
         Rate: 203
       - Item: Merman_Card
         Rate: 1
         StealProtected: true
   - Id: 1265
     AegisName: COOKIE
     Name: Cookie]
     Level: 25
     Hp: 950
     BaseExp: 310
     JobExp: 188
     Attack: 130
     Attack2: 145
     MagicDefense: 25
     Agi: 35
     Vit: 20
     Int: 53
     Dex: 37
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1036
     AttackMotion: 936
+    ClientAttackMotion: 108
     DamageMotion: 240
     Ai: 03
     Drops:
       - Item: Well_Baked_Cookie
         Rate: 1000
       - Item: Candy_Striper
         Rate: 150
       - Item: Darkgreen_Dyestuffs
         Rate: 1
       - Item: Great_Chef_Orleans01
         Rate: 50
       - Item: Sandals_
         Rate: 30
       - Item: Holy_Scroll_1_3
         Rate: 100
       - Item: Candy
         Rate: 320
       - Item: Cookie_Card
         Rate: 1
         StealProtected: true
   - Id: 1266
     AegisName: ASTER
     Name: Estrela do Mar
     Level: 18
     Hp: 1372
     BaseExp: 122
     JobExp: 78
     Attack: 56
     Attack2: 64
     MagicDefense: 10
     Agi: 19
     Vit: 15
+    Int: 0
     Dex: 34
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1264
     AttackMotion: 864
+    ClientAttackMotion: 336
     DamageMotion: 216
     Ai: 17
     Drops:
       - Item: Sticky_Mucus
         Rate: 500
       - Item: Coral_Reef
         Rate: 40
       - Item: Single_Cell
         Rate: 1200
       - Item: Yellow_Herb
         Rate: 200
       - Item: Zargon
         Rate: 60
       - Item: Apple
         Rate: 100
       - Item: Aster_Card
         Rate: 1
         StealProtected: true
   - Id: 1267
     AegisName: CARAT
     Name: Carat
     Level: 51
     Hp: 5200
     BaseExp: 1926
     JobExp: 1353
     Attack: 330
     Attack2: 417
     MagicDefense: 25
     Agi: 41
     Vit: 45
     Int: 5
     Dex: 85
     Luk: 155
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1078
     AttackMotion: 768
+    ClientAttackMotion: 576
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Brigan
         Rate: 3200
       - Item: Ice_Cream
         Rate: 1000
       - Item: Spiky_Heel
         Rate: 5
       - Item: Joker_Jester
         Rate: 1
       - Item: White_Herb
         Rate: 1450
       - Item: Carat_Card
         Rate: 1
         StealProtected: true
   - Id: 1268
     AegisName: BLOODY_KNIGHT
     Name: Cavaleiro Sanguinrio
     Level: 82
     Hp: 57870
     BaseExp: 10120
     JobExp: 6820
     Attack: 2150
     Attack2: 3030
     Defense: 60
     MagicDefense: 50
     Str: 88
     Agi: 75
     Vit: 70
     Int: 77
     Dex: 125
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 828
     AttackMotion: 528
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 21
     Drops:
       - Item: Brigan
         Rate: 4850
       - Item: Helm_
         Rate: 45
       - Item: Plate_Armor_
         Rate: 5
       - Item: Strong_Shield
         Rate: 62
       - Item: Katzbalger
         Rate: 1
       - Item: Pole_Axe
         Rate: 2
       - Item: Elunium
         Rate: 433
       - Item: Bloody_Knight_Card
         Rate: 1
         StealProtected: true
   - Id: 1269
     AegisName: CLOCK
     Name: Relgio
     Level: 60
     Hp: 11050
     BaseExp: 3410
     JobExp: 2904
     Attack: 720
     Attack2: 909
     Defense: 15
     MagicDefense: 10
     Agi: 70
     Vit: 50
     Int: 25
     Dex: 90
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1092
     AttackMotion: 792
+    ClientAttackMotion: 432
     DamageMotion: 480
     Ai: 17
     Drops:
       - Item: Needle_Of_Alarm
         Rate: 5335
       - Item: Wooden_Block
         Rate: 800
       - Item: White_Herb
         Rate: 1900
       - Item: Lemon
         Rate: 320
       - Item: Key_Of_Clock_Tower
         Rate: 30
       - Item: Underground_Key
         Rate: 30
       - Item: Elunium
         Rate: 163
       - Item: Clock_Card
         Rate: 1
         StealProtected: true
   - Id: 1270
     AegisName: C_TOWER_MANAGER
     Name: Gerente
     Level: 63
     Hp: 18600
     BaseExp: 4378
     JobExp: 2850
     Attack: 880
     Attack2: 1180
     Defense: 35
     MagicDefense: 30
     Agi: 75
     Vit: 20
     Int: 64
     Dex: 75
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 384
     Ai: 17
     Drops:
       - Item: Needle_Of_Alarm
         Rate: 5335
       - Item: Brigan
         Rate: 5335
       - Item: Steel
         Rate: 500
       - Item: Leaflet_Of_Hinal
         Rate: 850
       - Item: Memorize_Book
         Rate: 1
       - Item: Key_Of_Clock_Tower
         Rate: 2000
       - Item: Underground_Key
         Rate: 2000
       - Item: C_Tower_Manager_Card
         Rate: 1
         StealProtected: true
   - Id: 1271
     AegisName: ALLIGATOR
     Name: Crocodilo
     Level: 42
     Hp: 6962
     BaseExp: 1379
     JobExp: 866
     Attack: 315
     Attack2: 360
     Defense: 2
     MagicDefense: 5
     Agi: 45
     Vit: 50
     Int: 10
     Dex: 69
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1100
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 480
     Ai: 17
     Drops:
       - Item: Zargon
         Rate: 1000
       - Item: Worn_Out_Prison_Uniform
         Rate: 600
       - Item: Anolian_Skin
         Rate: 2000
       - Item: Seed_Of_Yggdrasil
         Rate: 50
       - Item: Oridecon_Stone
         Rate: 129
       - Item: Alligator_Card
         Rate: 1
         StealProtected: true
   - Id: 1272
     AegisName: DARK_LORD
     Name: Senhor das Trevas
     Level: 80
     Hp: 720000
     BaseExp: 65780
     JobExp: 45045
     MvpExp: 32890
     Attack: 2800
     Attack2: 3320
     Defense: 30
     MagicDefense: 70
     Agi: 120
     Vit: 30
     Int: 118
     Dex: 99
     Luk: 60
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 868
     AttackMotion: 768
+    ClientAttackMotion: 408
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Skull
         Rate: 6000
       - Item: Blue_Coif_
         Rate: 500
       - Item: Old_Violet_Box
         Rate: 2000
     Drops:
       - Item: Bone_Wand
         Rate: 800
       - Item: Kronos
         Rate: 100
       - Item: Grimtooth_
         Rate: 300
       - Item: Mage_Coat
         Rate: 300
       - Item: Cape_Of_Ancient_Lord
         Rate: 100
       - Item: Elunium
         Rate: 5141
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -11259,535 +12115,572 @@ Body:
     Hp: 2000
     BaseExp: 644
     JobExp: 407
     Attack: 135
     Attack2: 170
     Defense: 10
     MagicDefense: 10
     Str: 35
     Agi: 42
     Vit: 25
     Int: 15
     Dex: 69
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Orc: true
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1050
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 288
     Ai: 21
     Drops:
       - Item: Cyfar
         Rate: 4656
       - Item: Iron
         Rate: 300
       - Item: Earring
         Rate: 1
       - Item: Wedding_Veil
         Rate: 1
       - Item: High_end_Cooking_Kits
         Rate: 10
       - Item: Cookbook06
         Rate: 3
       - Item: Wedding_Dress
         Rate: 1
       - Item: Orc_Lady_Card
         Rate: 1
         StealProtected: true
   - Id: 1274
     AegisName: MEGALITH
     Name: Megalith
     Level: 45
     Hp: 5300
     BaseExp: 1758
     JobExp: 1075
     Attack: 264
     Attack2: 314
     Defense: 50
     MagicDefense: 25
     Agi: 45
     Vit: 60
     Int: 5
     Dex: 95
     Luk: 5
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1332
     AttackMotion: 1332
+    ClientAttackMotion: 936
     DamageMotion: 672
     Ai: 10
     Drops:
       - Item: Zargon
         Rate: 100
       - Item: Stone
         Rate: 1000
       - Item: Old_Violet_Box
         Rate: 1
       - Item: Elunium
         Rate: 61
       - Item: Elunium_Stone
         Rate: 207
       - Item: Megalith_Card
         Rate: 1
         StealProtected: true
   - Id: 1275
     AegisName: ALICE
     Name: Alice
     Level: 62
     Hp: 10000
     Sp: 221
     BaseExp: 3583
     JobExp: 2400
     Attack: 550
     Attack2: 700
     Defense: 5
     MagicDefense: 5
     Str: 64
     Agi: 64
     Vit: 42
     Int: 85
     Dex: 100
     Luk: 130
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 502
     AttackMotion: 2304
+    ClientAttackMotion: 2112
     DamageMotion: 480
     Ai: 17
     Drops:
       - Item: Alice's_Apron
         Rate: 2500
       - Item: Old_Broom
         Rate: 40
       - Item: Chrystal_Pumps
         Rate: 3
       - Item: Rouge
         Rate: 30
       - Item: Pair_Of_Red_Ribbon
         Rate: 1
       - Item: Imperial_Cooking_Kits
         Rate: 10
       - Item: Holy_Scroll_1_5
         Rate: 100
       - Item: Alice_Card
         Rate: 1
         StealProtected: true
   - Id: 1276
     AegisName: RAYDRIC_ARCHER
     Name: Raydric Arqueiro
     Level: 52
     Hp: 5250
     BaseExp: 3025
     JobExp: 2125
     Attack: 415
     Attack2: 500
     Defense: 35
     MagicDefense: 5
     Str: 15
     Agi: 25
     Vit: 22
     Int: 5
     Dex: 145
     Luk: 35
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1152
     AttackMotion: 1152
+    ClientAttackMotion: 972
     DamageMotion: 480
     Ai: 05
     Modes:
       Detector: true
     Drops:
       - Item: Brigan
         Rate: 4656
       - Item: Chain_Mail_
         Rate: 2
       - Item: Bow
         Rate: 150
       - Item: Incisive_Arrow
         Rate: 2000
       - Item: Arbalest_
         Rate: 3
       - Item: Elunium
         Rate: 106
       - Item: Raydric_Archer_Card
         Rate: 1
         StealProtected: true
   - Id: 1277
     AegisName: GREATEST_GENERAL
     Name: Guardio da Floresta
     Level: 40
     Hp: 3632
     BaseExp: 1238
     JobExp: 752
     Attack: 350
     Attack2: 400
     Defense: 15
     MagicDefense: 15
     Agi: 20
     Vit: 60
     Int: 55
     Dex: 82
     Luk: 140
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1152
     AttackMotion: 1152
+    ClientAttackMotion: 816
     DamageMotion: 384
     Ai: 10
     Drops:
       - Item: Brigan
         Rate: 2000
       - Item: Wooden_Block
         Rate: 2000
       - Item: Club
         Rate: 100
       - Item: Inspector_Certificate
         Rate: 300
       - Item: Stop_Post
         Rate: 1
       - Item: Yellow_Herb
         Rate: 250
       - Item: Earth_Scroll_1_3
         Rate: 100
       - Item: Greatest_General_Card
         Rate: 1
         StealProtected: true
   - Id: 1278
     AegisName: STALACTIC_GOLEM
     Name: Golem Estalactitico
     Level: 60
     Hp: 18700
     BaseExp: 5808
     JobExp: 2695
     Attack: 950
     Attack2: 1260
     Defense: 50
     MagicDefense: 5
     Str: 73
     Agi: 45
     Vit: 85
     Int: 5
     Dex: 90
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     RaceGroups:
       Golem: true
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1264
     AttackMotion: 864
+    ClientAttackMotion: 720
     DamageMotion: 288
     Ai: 17
     Drops:
       - Item: Mud_Lump
         Rate: 2000
       - Item: Brigan
         Rate: 4850
       - Item: Star_Crumb
         Rate: 250
       - Item: Great_Nature
         Rate: 30
       - Item: Elunium_Stone
         Rate: 250
       - Item: Elunium
         Rate: 163
       - Item: Stalactic_Golem_Card
         Rate: 1
         StealProtected: true
   - Id: 1279
     AegisName: TRI_JOINT
     Name: Trilobita
     Level: 32
     Hp: 2300
     BaseExp: 386
     JobExp: 220
     Attack: 178
     Attack2: 206
     Defense: 20
     MagicDefense: 5
     Agi: 48
     Vit: 24
     Int: 10
     Dex: 67
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 860
     AttackMotion: 660
+    ClientAttackMotion: 540
     DamageMotion: 624
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Cyfar
         Rate: 100
       - Item: Solid_Shell
         Rate: 380
       - Item: Aloebera
         Rate: 200
       - Item: Yellow_Live
         Rate: 160
       - Item: Sparkling_Dust
         Rate: 140
       - Item: Elunium_Stone
         Rate: 106
       - Item: Tri_Joint_Card
         Rate: 1
         StealProtected: true
   - Id: 1280
     AegisName: STEAM_GOBLIN
     Name: Goblin a Vapor
     JapaneseName: Goblin a Vapor
     Level: 35
     Hp: 2490
     BaseExp: 864
     JobExp: 495
     Attack: 234
     Attack2: 269
     Defense: 20
     MagicDefense: 5
     Str: 58
     Agi: 59
     Vit: 32
     Int: 15
     Dex: 75
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1008
     AttackMotion: 1008
+    ClientAttackMotion: 324
     DamageMotion: 528
     Ai: 17
     Drops:
       - Item: Scell
         Rate: 2500
       - Item: Cyfar
         Rate: 3880
       - Item: Iron
         Rate: 300
       - Item: Steel
         Rate: 55
       - Item: Coal
         Rate: 320
       - Item: The_Garrison
         Rate: 5
       - Item: Elunium_Stone
         Rate: 124
       - Item: Steam_Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1281
     AegisName: SAGEWORM
     Name: Verme Sbio
     Level: 43
     Hp: 3850
     BaseExp: 1155
     JobExp: 1320
     Attack: 120
     Attack2: 280
     MagicDefense: 50
     Agi: 52
     Vit: 24
     Int: 88
     Dex: 79
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 936
     AttackMotion: 936
+    ClientAttackMotion: 504
     DamageMotion: 288
     Ai: 17
     Drops:
       - Item: Librarian_Glove
         Rate: 5
       - Item: Worn_Out_Page
         Rate: 1000
       - Item: Earthworm_Peeling
         Rate: 3000
       - Item: Fire_Scroll_1_5
         Rate: 100
       - Item: Blue_Potion
         Rate: 40
       - Item: Cold_Scroll_1_5
         Rate: 100
       - Item: Ph.D_Hat
         Rate: 1
       - Item: Sageworm_Card
         Rate: 1
         StealProtected: true
   - Id: 1282
     AegisName: KOBOLD_ARCHER
     Name: Cobold Arqueiro
     Level: 33
     Hp: 2560
     BaseExp: 739
     JobExp: 455
     Attack: 155
     Attack2: 185
     Defense: 10
     MagicDefense: 5
     Str: 10
     Agi: 20
     Vit: 15
     Int: 30
     Dex: 100
     Luk: 25
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     RaceGroups:
       Kobold: true
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1008
     AttackMotion: 1008
+    ClientAttackMotion: 504
     DamageMotion: 384
     Ai: 05
     Drops:
       - Item: Zargon
         Rate: 250
       - Item: Steel
         Rate: 60
       - Item: Cobold_Hair
         Rate: 4850
       - Item: Ear_Of_Puppy
         Rate: 50
       - Item: Poison_Arrow
         Rate: 2000
       - Item: CrossBow_
         Rate: 5
       - Item: Oridecon_Stone
         Rate: 79
       - Item: Kobold_Archer_Card
         Rate: 1
         StealProtected: true
   - Id: 1283
     AegisName: CHIMERA
     Name: Quimera
     Level: 70
     Hp: 32600
     BaseExp: 4950
     JobExp: 3000
     Attack: 1200
     Attack2: 1320
     Defense: 30
     MagicDefense: 10
     Agi: 72
     Vit: 110
     Int: 88
     Dex: 75
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 772
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 5335
       - Item: Slender_Snake
         Rate: 2500
       - Item: Lemon
         Rate: 1000
       - Item: War_Axe
         Rate: 1
       - Item: Citrine
         Rate: 1500
       - Item: Great_Axe
         Rate: 1
       - Item: Oridecon
         Rate: 160
       - Item: Chimera_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1284
+#    AegisName: HUGELING
+#    Name: Hugeling
+#    Level: 1
+#    Hp: 5000
+#    BaseExp: 2
+#    JobExp: 1
+#    Attack: 7
+#    Attack2: 10
+#    Dex: 6
+#    AttackRange: 4
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Ai: 17
+#    Drops:
+#      - Item: Apple
+#        Rate: 100
+#        StealProtected: true
   - Id: 1285
     AegisName: ARCHER_GUARDIAN
     Name: Guardio Arqueiro
     Level: 74
     Hp: 28634
     BaseExp: 1
     JobExp: 1
     Attack: 1120
     Attack2: 1600
     Defense: 35
     MagicDefense: 60
     Str: 95
     Agi: 80
     Vit: 80
     Int: 90
     Dex: 165
     Luk: 55
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 265
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -11846,50 +12739,51 @@ Body:
     AegisName: SOLDIER_GUARDIAN
     Name: Guardio Soldado
     Level: 56
     Hp: 15670
     BaseExp: 1
     JobExp: 1
     Attack: 873
     Attack2: 1036
     Defense: 35
     Str: 85
     Agi: 56
     Vit: 100
     Int: 45
     Dex: 103
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 265
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 624
     DamageMotion: 384
     Ai: 05
     Class: Guardian
     Modes:
       Detector: true
       KnockBackImmune: true
   - Id: 1288
     AegisName: EMPELIUM
     Name: Emperium
     Level: 90
     Hp: 68430
     Attack: 60
     Attack2: 71
     Defense: 40
     MagicDefense: 50
     Agi: 17
     Vit: 80
     Int: 50
     Dex: 26
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -11907,1156 +12801,1180 @@ Body:
     Name: Maya Macho
     Level: 81
     Hp: 55479
     BaseExp: 10496
     JobExp: 3893
     Attack: 1447
     Attack2: 2000
     Defense: 68
     MagicDefense: 48
     Str: 95
     Agi: 90
     Vit: 80
     Int: 95
     Dex: 90
     Luk: 119
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1024
     AttackMotion: 1000
+    ClientAttackMotion: 624
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Cyfar
         Rate: 4413
       - Item: Elunium_Stone
         Rate: 250
       - Item: Oridecon_Stone
         Rate: 300
       - Item: Gold
         Rate: 100
       - Item: Oridecon
         Rate: 150
       - Item: Queen's_Hair_Ornament
         Rate: 1
       - Item: Cookbook10
         Rate: 2
       - Item: Maya_Puple_Card
         Rate: 1
         StealProtected: true
   - Id: 1290
     AegisName: SKELETON_GENERAL
     Name: Esqueleto General
     Level: 73
     Hp: 17402
     BaseExp: 8170
     JobExp: 3370
     Attack: 910
     Attack2: 1089
     Defense: 25
     MagicDefense: 25
     Str: 90
     Agi: 25
     Vit: 40
     Int: 20
     Dex: 77
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 2276
     AttackMotion: 576
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Burn_Tree
         Rate: 2550
       - Item: Oridecon_Stone
         Rate: 160
       - Item: Yellow_Herb
         Rate: 800
       - Item: Gladius_
         Rate: 35
       - Item: Gladius
         Rate: 80
       - Item: Sandstorm
         Rate: 15
       - Item: Ghost_Bandana
         Rate: 1
       - Item: Skeleton_General_Card
         Rate: 1
         StealProtected: true
   - Id: 1291
     AegisName: WRAITH_DEAD
     Name: Apario
     Level: 74
     Hp: 43021
     BaseExp: 10341
     JobExp: 3618
     Attack: 1366
     Attack2: 1626
     Defense: 25
     MagicDefense: 30
     Str: 5
     Agi: 99
     Vit: 55
     Int: 75
     Dex: 115
     Luk: 45
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 175
     AttackDelay: 1816
     AttackMotion: 576
+    ClientAttackMotion: 720
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Transparent_Cloth
         Rate: 4413
       - Item: Wedding_Veil
         Rate: 10
       - Item: Manteau_
         Rate: 8
       - Item: Red_Gemstone
         Rate: 700
       - Item: Crystal_Jewel__
         Rate: 5
       - Item: Old_Blue_Box
         Rate: 100
       - Item: Lemon
         Rate: 300
       - Item: Wraith_Dead_Card
         Rate: 1
         StealProtected: true
   - Id: 1292
     AegisName: MINI_DEMON
     Name: Diabinho
     Level: 68
     Hp: 32538
     BaseExp: 8396
     JobExp: 3722
     Attack: 1073
     Attack2: 1414
     Defense: 30
     MagicDefense: 25
     Str: 5
     Agi: 75
     Vit: 40
     Int: 55
     Dex: 89
     Luk: 42
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 600
+    ClientAttackMotion: 1728
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Petite_DiablOfs_Horn
         Rate: 4413
       - Item: Petite_DiablOfs_Wing
         Rate: 450
       - Item: Satanic_Chain
         Rate: 3
       - Item: Elunium_Stone
         Rate: 160
       - Item: Zargon
         Rate: 2500
       - Item: Sacred_Marks
         Rate: 10
       - Item: Ahlspiess
         Rate: 5
       - Item: Mini_Demon_Card
         Rate: 1
         StealProtected: true
   - Id: 1293
     AegisName: CREMY_FEAR
     Name: Creamy Ameaador
     Level: 62
     Hp: 13387
     BaseExp: 7365
     JobExp: 2691
     Attack: 666
     Attack2: 829
     Defense: 45
     MagicDefense: 30
     Str: 5
     Agi: 40
     Vit: 16
     Int: 15
     Dex: 68
     Luk: 55
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 155
     AttackDelay: 1136
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 840
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Powder_Of_Butterfly
         Rate: 4550
       - Item: Silver_Robe_
         Rate: 10
       - Item: Honey
         Rate: 550
       - Item: Wing_Of_Butterfly
         Rate: 200
       - Item: Book
         Rate: 8
       - Item: Icarus_Wing
         Rate: 5
       - Item: Fruit_Of_Mastela
         Rate: 50
       - Item: Cremy_Fear_Card
         Rate: 1
         StealProtected: true
   - Id: 1294
     AegisName: KILLER_MANTIS
     Name: Mantis Assassino
     Level: 56
     Hp: 13183
     BaseExp: 6509
     JobExp: 2366
     Attack: 764
     Attack2: 927
     Defense: 35
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 75
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 175
     AttackDelay: 1528
     AttackMotion: 660
+    ClientAttackMotion: 240
     DamageMotion: 432
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Limb_Of_Mantis
         Rate: 4550
       - Item: Solid_Shell
         Rate: 2500
       - Item: Azure_Jewel
         Rate: 10
       - Item: White_Herb
         Rate: 15
       - Item: Grape
         Rate: 25
       - Item: Nail_Of_Loki
         Rate: 1
       - Item: Mirror_Shield_
         Rate: 1
       - Item: Killer_Mantis_Card
         Rate: 1
         StealProtected: true
   - Id: 1295
     AegisName: OWL_BARON
     Name: Baro Coruja
     Level: 75
     Hp: 60746
     BaseExp: 10967
     JobExp: 4811
     Attack: 1252
     Attack2: 1610
     Defense: 65
     MagicDefense: 25
     Str: 25
     Agi: 25
     Vit: 80
     Int: 95
     Dex: 95
     Luk: 55
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 175
     AttackDelay: 1345
     AttackMotion: 824
+    ClientAttackMotion: 2304
     DamageMotion: 440
     Ai: 21
     Class: Boss
     Drops:
       - Item: Tatters_Clothes
         Rate: 3500
       - Item: Soft_Feather
         Rate: 2500
       - Item: Kakkung_
         Rate: 2
       - Item: Staff_Of_Soul
         Rate: 1
       - Item: Walking_Stick
         Rate: 2
       - Item: Wind_Scroll_1_5
         Rate: 100
       - Item: Magician_Hat
         Rate: 5
       - Item: Owl_Baron_Card
         Rate: 1
         StealProtected: true
   - Id: 1296
     AegisName: KOBOLD_LEADER
     Name: Lder Cobold
     Level: 65
     Hp: 18313
     BaseExp: 7432
     JobExp: 2713
     Attack: 649
     Attack2: 958
     Defense: 37
     MagicDefense: 37
     Str: 5
     Agi: 90
     Vit: 36
     Int: 30
     Dex: 77
     Luk: 59
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Kobold: true
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1028
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Steel
         Rate: 450
       - Item: Cobold_Hair
         Rate: 6305
       - Item: Zargon
         Rate: 1200
       - Item: Flail_
         Rate: 6
       - Item: Mighty_Staff
         Rate: 2
       - Item: Panacea
         Rate: 150
       - Item: Royal_Jelly
         Rate: 100
       - Item: Kobold_Leader_Card
         Rate: 1
         StealProtected: true
   - Id: 1297
     AegisName: ANCIENT_MUMMY
     Name: Mmia Anci
     Level: 64
     Hp: 40599
     BaseExp: 8040
     JobExp: 3499
     Attack: 836
     Attack2: 1129
     Defense: 27
     MagicDefense: 27
     Str: 28
     Agi: 19
     Vit: 32
     Int: 5
     Dex: 83
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1772
     AttackMotion: 120
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Rotten_Bandage
         Rate: 4413
       - Item: Mementos
         Rate: 1800
       - Item: Glove_
         Rate: 1
       - Item: Silver_Ring
         Rate: 150
       - Item: Yellow_Herb
         Rate: 650
       - Item: Oridecon_Stone
         Rate: 150
       - Item: Elunium_Stone
         Rate: 100
       - Item: Ancient_Mummy_Card
         Rate: 1
         StealProtected: true
   - Id: 1298
     AegisName: ZOMBIE_MASTER
     Name: Zumbi Mestre
     Level: 62
     Hp: 14211
     BaseExp: 7610
     JobExp: 2826
     Attack: 824
     Attack2: 1084
     Defense: 37
     MagicDefense: 26
     Str: 25
     Agi: 20
     Vit: 30
     Int: 5
     Dex: 77
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 175
     AttackDelay: 2612
     AttackMotion: 912
+    ClientAttackMotion: 816
     DamageMotion: 288
     Ai: 21
     Drops:
       - Item: Tatters_Clothes
         Rate: 4413
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Horrendous_Mouth
         Rate: 1500
       - Item: Cardinal_Jewel
         Rate: 200
       - Item: White_Jewel
         Rate: 100
       - Item: Ghoul_Leg
         Rate: 1
       - Item: Scapulare_
         Rate: 2
       - Item: Zombie_Master_Card
         Rate: 1
         StealProtected: true
   - Id: 1299
     AegisName: GOBLIN_LEADER
     Name: Lder Goblin
     Level: 64
     Hp: 20152
     BaseExp: 6036
     JobExp: 2184
     Attack: 663
     Attack2: 752
     Defense: 48
     MagicDefense: 16
     Str: 5
     Agi: 55
     Vit: 37
     Int: 30
     Dex: 69
     Luk: 58
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Goblin: true
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 120
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 1056
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Brigan
         Rate: 1500
       - Item: Steel
         Rate: 800
       - Item: Oridecon_Stone
         Rate: 120
       - Item: Goblin_Mask_04
         Rate: 50
       - Item: Shield_
         Rate: 2
       - Item: Yellow_Herb
         Rate: 650
       - Item: Angry_Mouth
         Rate: 10
       - Item: Goblin_Leader_Card
         Rate: 1
         StealProtected: true
   - Id: 1300
     AegisName: CATERPILLAR
     Name: Lagarta
     Level: 64
     Hp: 14439
     BaseExp: 6272
     JobExp: 3107
     Attack: 894
     Attack2: 1447
     Defense: 47
     MagicDefense: 29
     Str: 35
     Agi: 25
     Vit: 85
     Int: 15
     Dex: 69
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Feather
         Rate: 3000
       - Item: Brigan
         Rate: 5335
       - Item: Twilight_Desert
         Rate: 20
       - Item: Star_Crumb
         Rate: 100
       - Item: Great_Nature
         Rate: 50
       - Item: Blue_Potion
         Rate: 12
       - Item: Yellow_Herb
         Rate: 500
       - Item: Caterpillar_Card
         Rate: 1
         StealProtected: true
   - Id: 1301
     AegisName: AM_MUT
     Name: Am Mut
     Level: 61
     Hp: 12099
     BaseExp: 7709
     JobExp: 2690
     Attack: 1040
     Attack2: 1121
     Defense: 50
     MagicDefense: 10
     Str: 50
     Agi: 65
     Vit: 40
     Int: 35
     Dex: 83
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1156
     AttackMotion: 456
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Dokkaebi_Horn
         Rate: 4550
       - Item: Elunium_Stone
         Rate: 250
       - Item: Sword_Mace_
         Rate: 3
       - Item: Gold
         Rate: 5
       - Item: Spirit_Chain
         Rate: 1
       - Item: Old_Card_Album
         Rate: 1
       - Item: Glass_Bead
         Rate: 250
       - Item: Am_Mut_Card
         Rate: 1
         StealProtected: true
   - Id: 1302
     AegisName: DARK_ILLUSION
     Name: Iluso das Trevas
     Level: 77
     Hp: 103631
     BaseExp: 11163
     JobExp: 4181
     Attack: 1300
     Attack2: 1983
     Defense: 64
     MagicDefense: 70
     Str: 5
     Agi: 100
     Vit: 40
     Int: 100
     Dex: 97
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 145
     AttackDelay: 1024
     AttackMotion: 768
+    ClientAttackMotion: 5280
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Bone_Wand
         Rate: 3
       - Item: Bone_Helm
         Rate: 2
       - Item: Ragamuffin_Cape
         Rate: 3
       - Item: Brigan
         Rate: 5335
       - Item: Fruit_Of_Mastela
         Rate: 120
       - Item: White_Herb
         Rate: 1550
       - Item: Broad_Sword_
         Rate: 2
       - Item: Dark_Illusion_Card
         Rate: 1
         StealProtected: true
   - Id: 1303
     AegisName: GIANT_HONET
     Name: Zango Gigante
     Level: 56
     Hp: 13105
     BaseExp: 5785
     JobExp: 2006
     Attack: 650
     Attack2: 852
     Defense: 38
     MagicDefense: 43
     Str: 35
     Agi: 38
     Vit: 32
     Int: 10
     Dex: 71
     Luk: 64
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 155
     AttackDelay: 1292
     AttackMotion: 792
+    ClientAttackMotion: 648
     DamageMotion: 340
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Royal_Jelly
         Rate: 550
       - Item: Honey
         Rate: 1200
       - Item: Fruit_Of_Mastela
         Rate: 12
       - Item: Leaf_Of_Yggdrasil
         Rate: 15
       - Item: Staff_
         Rate: 3
       - Item: Scarlet_Jewel
         Rate: 20
       - Item: Double_Bound
         Rate: 15
       - Item: Giant_Honet_Card
         Rate: 1
         StealProtected: true
   - Id: 1304
     AegisName: GIANT_SPIDER
     Name: Aranha Gigante
     Level: 55
     Hp: 11874
     BaseExp: 6211
     JobExp: 2146
     Attack: 624
     Attack2: 801
     Defense: 41
     MagicDefense: 28
     Str: 5
     Agi: 36
     Vit: 43
     Int: 5
     Dex: 73
     Luk: 69
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1468
     AttackMotion: 468
+    ClientAttackMotion: 216
     DamageMotion: 768
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Spiderweb
         Rate: 4550
       - Item: Short_Leg
         Rate: 1200
       - Item: Elunium_Stone
         Rate: 140
       - Item: Panacea
         Rate: 450
       - Item: Solid_Shell
         Rate: 1200
       - Item: Round_Shell
         Rate: 680
       - Item: Cyfar
         Rate: 800
       - Item: Giant_Spider_Card
         Rate: 1
         StealProtected: true
   - Id: 1305
     AegisName: ANCIENT_WORM
     Name: Verme Ancio
     Level: 67
     Hp: 22598
     BaseExp: 8174
     JobExp: 3782
     Attack: 948
     Attack2: 1115
     Defense: 35
     MagicDefense: 30
     Str: 5
     Agi: 35
     Vit: 56
     Int: 55
     Dex: 81
     Luk: 72
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1792
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Short_Leg
         Rate: 4413
       - Item: Zargon
         Rate: 2500
       - Item: Boots_
         Rate: 9
       - Item: Bowman_Scarf
         Rate: 5
       - Item: Round_Shell
         Rate: 680
       - Item: Sticky_Mucus
         Rate: 3500
       - Item: Brigan
         Rate: 2500
       - Item: Ancient_Worm_Card
         Rate: 1
         StealProtected: true
   - Id: 1306
     AegisName: LEIB_OLMAI
     Name: Leib Olmai
     Level: 58
     Hp: 24233
     BaseExp: 6011
     JobExp: 2171
     Attack: 740
     Attack2: 1390
     Defense: 27
     MagicDefense: 31
     Str: 5
     Agi: 35
     Vit: 95
     Int: 5
     Dex: 64
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 175
     AttackDelay: 1260
     AttackMotion: 230
+    ClientAttackMotion: 1152
     DamageMotion: 192
     Ai: 21
     Drops:
       - Item: Bear's_Foot
         Rate: 4550
       - Item: Poo_Poo_Hat
         Rate: 8
       - Item: Stuffed_Doll
         Rate: 120
       - Item: Honey
         Rate: 500
       - Item: Pocket_Watch_
         Rate: 5
       - Item: Gold
         Rate: 5
       - Item: Cyfar
         Rate: 800
       - Item: Leib_Olmai_Card
         Rate: 1
         StealProtected: true
   - Id: 1307
     AegisName: CAT_O_NINE_TAIL
     Name: Gato de Nove Caudas
     Level: 76
     Hp: 64512
     BaseExp: 10869
     JobExp: 4283
     Attack: 1112
     Attack2: 1275
     Defense: 61
     MagicDefense: 55
     Str: 55
     Agi: 75
     Vit: 55
     Int: 82
     Dex: 86
     Luk: 120
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 120
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Puppy_Love
         Rate: 1
       - Item: Silver_Knife_Of_Chaste
         Rate: 150
       - Item: Punisher
         Rate: 5
       - Item: Elunium
         Rate: 600
       - Item: Oridecon
         Rate: 800
       - Item: Gold
         Rate: 6
       - Item: Old_Violet_Box
         Rate: 1
       - Item: Cat_O_Nine_Tail_Card
         Rate: 1
         StealProtected: true
   - Id: 1308
     AegisName: PANZER_GOBLIN
     Name: Panzer Goblin
     Level: 59
     Hp: 14130
     BaseExp: 7212
     JobExp: 2697
     Attack: 683
     Attack2: 878
     Defense: 41
     MagicDefense: 28
     Str: 60
     Agi: 60
     Vit: 40
     Int: 20
     Dex: 81
     Luk: 160
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 960
     AttackMotion: 1008
+    ClientAttackMotion: 2496
     DamageMotion: 840
     Ai: 21
     Drops:
       - Item: Cyfar
         Rate: 4413
       - Item: Brigan
         Rate: 3500
       - Item: Steel
         Rate: 180
       - Item: Iron
         Rate: 360
       - Item: Coal
         Rate: 580
       - Item: Butcher
         Rate: 5
       - Item: Flame_Heart
         Rate: 160
       - Item: Panzer_Goblin_Card
         Rate: 1
         StealProtected: true
   - Id: 1309
     AegisName: GAJOMART
     Name: Gajomart
     Level: 63
     Hp: 13669
     BaseExp: 6625
     JobExp: 2900
     Attack: 917
     Attack2: 950
     Defense: 85
     MagicDefense: 50
     Str: 5
     Agi: 34
     Vit: 10
     Int: 5
     Dex: 75
     Luk: 140
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1000
     AttackMotion: 1152
+    ClientAttackMotion: 552
     DamageMotion: 828
     Ai: 21
     Drops:
       - Item: Stone_Heart
         Rate: 6500
       - Item: Zargon
         Rate: 2300
       - Item: Yellow_Herb
         Rate: 870
       - Item: Bomb_Wick
         Rate: 8
       - Item: Fire_Arrow
         Rate: 10000
       - Item: Magic_Study_Vol1
         Rate: 20
       - Item: Flame_Heart
         Rate: 180
       - Item: Gajomart_Card
         Rate: 1
         StealProtected: true
   - Id: 1310
     AegisName: MAJORUROS
     Name: Majoruros
     Level: 66
     Hp: 57991
     BaseExp: 8525
     JobExp: 3799
     Attack: 780
     Attack2: 1300
     Defense: 10
     MagicDefense: 25
     Str: 65
     Agi: 50
     Vit: 75
     Int: 50
     Dex: 85
     Luk: 48
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 960
+    ClientAttackMotion: 1728
     DamageMotion: 780
     Ai: 21
     Drops:
       - Item: Nose_Ring
         Rate: 4413
       - Item: Two_Handed_Axe_
         Rate: 4
       - Item: Lemon
         Rate: 300
       - Item: Oridecon
         Rate: 16
       - Item: White_Herb
         Rate: 1850
       - Item: Silver_Ring
         Rate: 160
       - Item: Star_Crumb
         Rate: 250
       - Item: Majoruros_Card
         Rate: 1
         StealProtected: true
   - Id: 1311
     AegisName: GULLINBURSTI
     Name: Gullinbursti
     Level: 62
     Hp: 21331
     BaseExp: 5814
     JobExp: 2376
     Attack: 699
     Attack2: 1431
     Defense: 10
     MagicDefense: 15
     Str: 55
     Agi: 25
     Vit: 60
     Int: 5
     Dex: 70
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Wild_Boar's_Mane
         Rate: 3500
       - Item: Grape
         Rate: 290
       - Item: Animal_Blood
         Rate: 6
       - Item: Eagle_Eyes
         Rate: 1
       - Item: Anodyne
         Rate: 15
       - Item: Belt
         Rate: 1
       - Item: Zargon
         Rate: 160
       - Item: Gullinbursti_Card
         Rate: 1
         StealProtected: true
   - Id: 1312
     AegisName: TURTLE_GENERAL
     Name: General Tartaruga
     Level: 97
     Hp: 320700
     BaseExp: 18202
     JobExp: 9800
     MvpExp: 9101
     Attack: 2438
     Attack2: 3478
     Defense: 50
     MagicDefense: 54
     Str: 100
     Agi: 45
     Vit: 55
     Int: 65
     Dex: 105
     Luk: 164
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 900
     AttackMotion: 1000
+    ClientAttackMotion: 624
     DamageMotion: 500
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Turtle_Shell
         Rate: 5500
       - Item: Yggdrasilberry
         Rate: 1500
       - Item: Old_Violet_Box
         Rate: 2000
     Drops:
       - Item: Iron_Driver
         Rate: 8
       - Item: War_Axe
         Rate: 5
       - Item: Cookbook09
         Rate: 200
       - Item: Pole_Axe
         Rate: 9
       - Item: Broken_Shell
         Rate: 5335
       - Item: Immaterial_Sword
         Rate: 80
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -13070,1721 +13988,1932 @@ Body:
     Name: Yakuza
     Level: 61
     Hp: 7991
     BaseExp: 4424
     JobExp: 1688
     Attack: 910
     Attack2: 1128
     Defense: 41
     MagicDefense: 37
     Str: 76
     Agi: 46
     Vit: 20
     Int: 35
     Dex: 76
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 560
+    ClientAttackMotion: 576
     DamageMotion: 580
     Ai: 21
     Drops:
       - Item: Poison_Knife
         Rate: 3
       - Item: Blue_Jewel
         Rate: 4559
       - Item: Ring_
         Rate: 1
       - Item: Red_Gemstone
         Rate: 600
       - Item: Zargon
         Rate: 2500
       - Item: Panacea
         Rate: 450
       - Item: Blue_Potion
         Rate: 60
       - Item: Mobster_Card
         Rate: 1
         StealProtected: true
   - Id: 1314
     AegisName: PERMETER
     Name: Batedor
     Level: 63
     Hp: 8228
     BaseExp: 3756
     JobExp: 1955
     Attack: 943
     Attack2: 1211
     Defense: 46
     MagicDefense: 45
     Str: 69
     Agi: 59
     Vit: 60
     Int: 5
     Dex: 69
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 483
+    ClientAttackMotion: 720
     DamageMotion: 528
     Ai: 17
     Drops:
       - Item: Turtle_Shell
         Rate: 4413
       - Item: Broken_Shell
         Rate: 45
       - Item: Wooden_Block
         Rate: 1240
       - Item: Red_Herb
         Rate: 2450
       - Item: Zargon
         Rate: 1240
       - Item: Fruit_Of_Mastela
         Rate: 25
       - Item: Anodyne
         Rate: 1
       - Item: Permeter_Card
         Rate: 1
         StealProtected: true
   - Id: 1315
     AegisName: ASSULTER
     Name: Agressor
     Level: 71
     Hp: 11170
     BaseExp: 4854
     JobExp: 2654
     Attack: 764
     Attack2: 1499
     Defense: 35
     MagicDefense: 28
     Str: 85
     Agi: 74
     Vit: 10
     Int: 35
     Dex: 100
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Ninja: true
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 1000
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Turtle_Shell
         Rate: 4413
       - Item: Broken_Armor_Piece
         Rate: 1200
       - Item: Rust_Suriken
         Rate: 840
       - Item: Yellow_Herb
         Rate: 1280
       - Item: Zargon
         Rate: 1240
       - Item: Huuma_Bird_Wing
         Rate: 5
       - Item: Old_Blue_Box
         Rate: 1
       - Item: Assulter_Card
         Rate: 1
         StealProtected: true
   - Id: 1316
     AegisName: SOLIDER
     Name: Soldado
     Level: 70
     Hp: 12099
     BaseExp: 4458
     JobExp: 1951
     Attack: 797
     Attack2: 979
     Defense: 57
     MagicDefense: 43
     Str: 69
     Agi: 35
     Vit: 85
     Int: 5
     Dex: 74
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 1248
     DamageMotion: 528
     Ai: 17
     Drops:
       - Item: Turtle_Shell
         Rate: 4413
       - Item: Broken_Shell
         Rate: 64
       - Item: Stone_Piece
         Rate: 850
       - Item: Yellow_Herb
         Rate: 2100
       - Item: Zargon
         Rate: 1240
       - Item: Honey
         Rate: 850
       - Item: Chain
         Rate: 1
       - Item: Solider_Card
         Rate: 1
         StealProtected: true
   - Id: 1317
     AegisName: FUR_SEAL
     Name: Foca
     JapaneseName: Fur Seal
     Level: 63
     Hp: 9114
     BaseExp: 3765
     JobExp: 1824
     Attack: 845
     Attack2: 1203
     Defense: 25
     MagicDefense: 33
     Str: 5
     Agi: 28
     Vit: 22
     Int: 15
     Dex: 69
     Luk: 84
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1612
     AttackMotion: 622
+    ClientAttackMotion: 576
     DamageMotion: 583
     Ai: 04
     Drops:
       - Item: Zargon
         Rate: 4365
       - Item: Blue_Herb
         Rate: 250
       - Item: Coat_
         Rate: 5
       - Item: Cyfar
         Rate: 1200
       - Item: Guisarme_
         Rate: 1
       - Item: Panacea
         Rate: 200
       - Item: Glass_Bead
         Rate: 120
       - Item: Fur_Seal_Card
         Rate: 1
         StealProtected: true
   - Id: 1318
     AegisName: HEATER
     Name: Aquecedor
     Level: 68
     Hp: 11020
     BaseExp: 3766
     JobExp: 2359
     Attack: 683
     Attack2: 1008
     Defense: 40
     MagicDefense: 42
     Str: 69
     Agi: 47
     Vit: 25
     Int: 5
     Dex: 71
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 1200
     DamageMotion: 528
     Ai: 21
     Drops:
       - Item: Turtle_Shell
         Rate: 4413
       - Item: Broken_Shell
         Rate: 750
       - Item: Fire_Scroll_2_5
         Rate: 100
       - Item: Zargon
         Rate: 1640
       - Item: Royal_Jelly
         Rate: 140
       - Item: Brigan
         Rate: 600
       - Item: Burn_Tree
         Rate: 1250
       - Item: Heater_Card
         Rate: 1
         StealProtected: true
   - Id: 1319
     AegisName: FREEZER
     Name: Congelador
     Level: 72
     Hp: 8636
     BaseExp: 3665
     JobExp: 2197
     Attack: 671
     Attack2: 983
     Defense: 55
     MagicDefense: 43
     Str: 69
     Agi: 41
     Vit: 59
     Int: 5
     Dex: 67
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 540
     DamageMotion: 528
     Ai: 21
     Drops:
       - Item: Turtle_Shell
         Rate: 4413
       - Item: Broken_Shell
         Rate: 850
       - Item: Ice_Piece
         Rate: 1250
       - Item: Zargon
         Rate: 1800
       - Item: Royal_Jelly
         Rate: 160
       - Item: Cyfar
         Rate: 600
       - Item: Cold_Scroll_1_5
         Rate: 100
       - Item: Freezer_Card
         Rate: 1
         StealProtected: true
   - Id: 1320
     AegisName: OWL_DUKE
     Name: Duque Coruja
     Level: 75
     Hp: 26623
     BaseExp: 7217
     JobExp: 3474
     Attack: 715
     Attack2: 910
     Defense: 27
     MagicDefense: 49
     Str: 15
     Agi: 45
     Vit: 40
     Int: 75
     Dex: 79
     Luk: 88
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 195
     AttackDelay: 1345
     AttackMotion: 824
+    ClientAttackMotion: 768
     DamageMotion: 440
     Ai: 21
     Class: Boss
     Drops:
       - Item: Tatters_Clothes
         Rate: 4413
       - Item: Soft_Feather
         Rate: 1500
       - Item: Wind_Scroll_1_5
         Rate: 100
       - Item: Crystal_Mirror
         Rate: 1
       - Item: Guisarme
         Rate: 3
       - Item: Morning_Star
         Rate: 2
       - Item: Magician_Hat
         Rate: 1
       - Item: Owl_Duke_Card
         Rate: 1
         StealProtected: true
   - Id: 1321
     AegisName: DRAGON_TAIL
     Name: Lavadeira
     Level: 61
     Hp: 8368
     BaseExp: 3587
     JobExp: 1453
     Attack: 520
     Attack2: 715
     Defense: 25
     MagicDefense: 19
     Str: 10
     Agi: 68
     Vit: 15
     Int: 5
     Dex: 67
     Luk: 67
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 862
     AttackMotion: 534
+    ClientAttackMotion: 360
     DamageMotion: 312
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Dragon_Fly_Wing
         Rate: 4413
       - Item: Round_Shell
         Rate: 400
       - Item: Solid_Shell
         Rate: 800
       - Item: Fancy_Flower
         Rate: 8
       - Item: Cap
         Rate: 2
       - Item: Wing_Of_Fly
         Rate: 300
       - Item: Wing_Of_Butterfly
         Rate: 150
       - Item: Dragon_Tail_Card
         Rate: 1
         StealProtected: true
   - Id: 1322
     AegisName: SPRING_RABBIT
     Name: Coelho
     Level: 58
     Hp: 9045
     BaseExp: 3982
     JobExp: 1766
     Attack: 585
     Attack2: 813
     Defense: 29
     MagicDefense: 21
     Str: 45
     Agi: 61
     Vit: 5
     Int: 15
     Dex: 77
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 1120
     AttackMotion: 552
+    ClientAttackMotion: 756
     DamageMotion: 511
     Ai: 02
     Drops:
       - Item: Brigan
         Rate: 3500
       - Item: Cyfar
         Rate: 2500
       - Item: Feather
         Rate: 2500
       - Item: Green_Herb
         Rate: 4500
       - Item: Yellow_Herb
         Rate: 800
       - Item: Blue_Herb
         Rate: 200
       - Item: White_Herb
         Rate: 800
       - Item: Spring_Rabbit_Card
         Rate: 1
         StealProtected: true
   - Id: 1323
     AegisName: SEE_OTTER
     Name: Lontra
     Level: 59
     Hp: 9999
     BaseExp: 3048
     JobExp: 1642
     Attack: 650
     Attack2: 813
     Defense: 33
     MagicDefense: 35
     Str: 5
     Agi: 36
     Vit: 40
     Int: 25
     Dex: 82
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 3
     WalkSpeed: 190
     AttackDelay: 1132
     AttackMotion: 583
+    ClientAttackMotion: 432
     DamageMotion: 532
     Ai: 04
     Drops:
       - Item: Scarlet_Jewel
         Rate: 150
       - Item: Clam_Shell
         Rate: 5500
       - Item: Sea_Otter_Leather
         Rate: 4365
       - Item: Red_Jewel
         Rate: 50
       - Item: Blue_Jewel
         Rate: 50
       - Item: Glass_Bead
         Rate: 650
       - Item: Cyfar
         Rate: 1200
       - Item: See_Otter_Card
         Rate: 1
         StealProtected: true
   - Id: 1324
     AegisName: TREASURE_BOX1
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1325
     AegisName: TREASURE_BOX2
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Jewel_Of_Prayer
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Poison_Knife
         Rate: 1500
       - Item: Wizardry_Hat
         Rate: 75
       - Item: Masamune
         Rate: 8
         StealProtected: true
   - Id: 1326
     AegisName: TREASURE_BOX3
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1327
     AegisName: TREASURE_BOX4
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Iron_Glove
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Mirror_Shield_
         Rate: 1000
       - Item: War_Axe
         Rate: 75
       - Item: Helm_Of_Sun
         Rate: 2
         StealProtected: true
   - Id: 1328
     AegisName: TREASURE_BOX5
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1329
     AegisName: TREASURE_BOX6
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Iron_Maiden
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Guard_
         Rate: 834
       - Item: Corsair
         Rate: 100
       - Item: Gemmed_Crown
         Rate: 9
         StealProtected: true
   - Id: 1330
     AegisName: TREASURE_BOX7
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1331
     AegisName: TREASURE_BOX8
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Mystery_Wheel
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Critical_Ring
         Rate: 500
       - Item: Mage_Coat
         Rate: 125
       - Item: Earring_
         Rate: 9
         StealProtected: true
   - Id: 1332
     AegisName: TREASURE_BOX9
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1333
     AegisName: TREASURE_BOX10
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Silver_Fancy
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Buckler_
         Rate: 500
       - Item: Tights_
         Rate: 150
       - Item: Necklace_
         Rate: 10
         StealProtected: true
   - Id: 1334
     AegisName: TREASURE_BOX11
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1335
     AegisName: TREASURE_BOX12
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Anger_Of_Valkurye
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Centimental_Leaf
         Rate: 500
       - Item: Kakkung_
         Rate: 150
       - Item: Magestic_Goat
         Rate: 10
         StealProtected: true
   - Id: 1336
     AegisName: TREASURE_BOX13
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1337
     AegisName: TREASURE_BOX14
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Feather_Of_Angel
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Zeny_Knife
         Rate: 375
       - Item: Spanner
         Rate: 150
       - Item: Clothes_Of_The_Lord
         Rate: 10
         StealProtected: true
   - Id: 1338
     AegisName: TREASURE_BOX15
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1339
     AegisName: TREASURE_BOX16
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Foot_Step_Of_Cat
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Rosary_
         Rate: 300
       - Item: Staff_Of_Soul
         Rate: 167
       - Item: Holy_Robe
         Rate: 10
         StealProtected: true
   - Id: 1340
     AegisName: TREASURE_BOX17
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1341
     AegisName: TREASURE_BOX18
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Beard_Of_Women
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Gaia_Sword
         Rate: 250
       - Item: Grimtooth_
         Rate: 188
       - Item: Crown
         Rate: 12
         StealProtected: true
   - Id: 1342
     AegisName: TREASURE_BOX19
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1343
     AegisName: TREASURE_BOX20
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Root_Of_Stone
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Old_Violet_Box
         Rate: 250
       - Item: Sasimi
         Rate: 188
       - Item: Loard_Circlet
         Rate: 19
         StealProtected: true
   - Id: 1344
     AegisName: TREASURE_BOX21
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1345
     AegisName: TREASURE_BOX22
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Soul_Of_Fish
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Ragamuffin_Cape
         Rate: 1000
       - Item: Thief_Clothes_
         Rate: 69
       - Item: Ring_
         Rate: 20
         StealProtected: true
   - Id: 1346
     AegisName: TREASURE_BOX23
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1347
     AegisName: TREASURE_BOX24
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Saliva_Of_Bird
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Shield_
         Rate: 1000
       - Item: Muramasa
         Rate: 50
       - Item: Helm_Of_Angel
         Rate: 24
         StealProtected: true
   - Id: 1348
     AegisName: TREASURE_BOX25
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1349
     AegisName: TREASURE_BOX26
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Tendon_Of_Bear
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Gemmed_Sallet_
         Rate: 750
       - Item: Glove_
         Rate: 46
       - Item: Elven_Ears
         Rate: 25
         StealProtected: true
   - Id: 1350
     AegisName: TREASURE_BOX27
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1351
     AegisName: TREASURE_BOX28
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Symbol_Of_Sun
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Ear_Mufs
         Rate: 500
       - Item: Safety_Ring
         Rate: 41
       - Item: Tiara
         Rate: 32
         StealProtected: true
   - Id: 1352
     AegisName: TREASURE_BOX29
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1353
     AegisName: TREASURE_BOX30
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Breath_Of_Soul
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Cape_Of_Ancient_Lord
         Rate: 500
       - Item: Brooch_
         Rate: 38
       - Item: Magician_Hat
         Rate: 34
         StealProtected: true
   - Id: 1354
     AegisName: TREASURE_BOX31
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1355
     AegisName: TREASURE_BOX32
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Of_Snow
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Chrystal_Pumps
         Rate: 429
       - Item: Centimental_Flower
         Rate: 250
       - Item: Plate_Armor_
         Rate: 35
         StealProtected: true
   - Id: 1356
     AegisName: TREASURE_BOX33
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1357
     AegisName: TREASURE_BOX34
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Indication_Of_Tempest
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Memorize_Book
         Rate: 300
       - Item: Boots_
         Rate: 273
       - Item: Sharp_Gear
         Rate: 38
         StealProtected: true
   - Id: 1358
     AegisName: TREASURE_BOX35
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1359
     AegisName: TREASURE_BOX36
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Slilince_Wave
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Jewel_Sword
         Rate: 215
       - Item: Satanic_Chain
         Rate: 60
       - Item: Bone_Helm
         Rate: 38
         StealProtected: true
   - Id: 1360
     AegisName: TREASURE_BOX37
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1361
     AegisName: TREASURE_BOX38
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Rough_Billows
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Pole_Axe
         Rate: 50
       - Item: Spinx_Helm
         Rate: 50
       - Item: Helm_
         Rate: 50
         StealProtected: true
   - Id: 1362
     AegisName: TREASURE_BOX39
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Crystal_Jewel__
         Rate: 7760
       - Item: Seed_Of_Yggdrasil
         Rate: 3000
       - Item: Yggdrasilberry
         Rate: 2500
       - Item: Muffler_
         Rate: 800
       - Item: Shoes_
         Rate: 800
       - Item: Chain_Mail_
         Rate: 800
       - Item: Buckler_
         Rate: 800
       - Item: Old_Card_Album
         Rate: 1000
         StealProtected: true
   - Id: 1363
     AegisName: TREASURE_BOX40
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Air_Stream
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Manteau_
         Rate: 43
       - Item: Angelic_Chain
         Rate: 43
       - Item: Iron_Driver
         Rate: 38
         StealProtected: true
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -14793,438 +15922,448 @@ Body:
     Name: Agressor
     Level: 59
     Hp: 12853
     Attack: 152
     Attack2: 177
     Defense: 35
     MagicDefense: 36
     Str: 85
     Agi: 55
     Vit: 10
     Int: 35
     Dex: 145
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     RaceGroups:
       Ninja: true
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 1000
     AttackMotion: 900
+    ClientAttackMotion: 1440
     DamageMotion: 432
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Wooden_Block
         Rate: 9000
   - Id: 1365
     AegisName: APOCALIPS
     Name: Apocalipse
     Level: 66
     Hp: 22880
     BaseExp: 6540
     JobExp: 4935
     Attack: 1030
     Attack2: 1370
     Defense: 62
     MagicDefense: 49
     Agi: 48
     Vit: 120
     Int: 48
     Dex: 66
     Luk: 85
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1840
     AttackMotion: 1440
+    ClientAttackMotion: 720
     DamageMotion: 384
     Ai: 17
     Drops:
       - Item: Broken_Steel_Piece
         Rate: 5335
       - Item: Mystery_Piece
         Rate: 2400
       - Item: Wheel
         Rate: 2200
       - Item: Elunium
         Rate: 5
       - Item: Destroyer_
         Rate: 1
       - Item: Manteau_
         Rate: 20
       - Item: Steel
         Rate: 2500
       - Item: Apocalips_Card
         Rate: 1
         StealProtected: true
   - Id: 1366
     AegisName: LAVA_GOLEM
     Name: Golem de Lava
     Level: 77
     Hp: 24324
     BaseExp: 6470
     JobExp: 3879
     Attack: 1541
     Attack2: 2049
     Defense: 65
     MagicDefense: 50
     Agi: 57
     Vit: 115
     Int: 70
     Dex: 76
     Luk: 68
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     RaceGroups:
       Golem: true
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 2190
     AttackMotion: 2040
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 09
     Drops:
       - Item: Cold_Magma
         Rate: 4559
       - Item: Burning_Heart
         Rate: 3686
       - Item: Plate_Armor_
         Rate: 1
       - Item: Plate_Armor
         Rate: 2
       - Item: White_Herb
         Rate: 2500
       - Item: Magma_Fist
         Rate: 20
       - Item: Lava_Golem_Card
         Rate: 1
         StealProtected: true
   - Id: 1367
     AegisName: BLAZZER
     Name: Labareda
     Level: 43
     Hp: 8252
     BaseExp: 3173
     JobExp: 1871
     Attack: 533
     Attack2: 709
     Defense: 50
     MagicDefense: 40
     Agi: 52
     Vit: 50
     Int: 39
     Dex: 69
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 1732
     AttackMotion: 1332
+    ClientAttackMotion: 468
     DamageMotion: 540
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Burning_Heart
         Rate: 4850
       - Item: Live_Coal
         Rate: 3400
       - Item: White_Herb
         Rate: 3000
       - Item: Blazzer_Card
         Rate: 1
         StealProtected: true
   - Id: 1368
     AegisName: GEOGRAPHER
     Name: Planta Carnvora
     Level: 56
     Hp: 8071
     BaseExp: 2715
     JobExp: 2000
     Attack: 467
     Attack2: 621
     Defense: 28
     MagicDefense: 26
     Agi: 66
     Vit: 47
     Int: 60
     Dex: 68
     Luk: 44
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1308
     AttackMotion: 1008
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
     Drops:
       - Item: Blossom_Of_Maneater
         Rate: 6200
       - Item: Root_Of_Maneater
         Rate: 5500
       - Item: Sunflower
         Rate: 30
       - Item: Fancy_Flower
         Rate: 50
       - Item: Holy_Scroll_1_5
         Rate: 100
       - Item: Geographer_Card
         Rate: 1
         StealProtected: true
   - Id: 1369
     AegisName: GRAND_PECO
     Name: Grand Peco
     Level: 58
     Hp: 8054
     BaseExp: 2387
     JobExp: 1361
     Attack: 444
     Attack2: 565
     Defense: 37
     MagicDefense: 30
     Agi: 66
     Vit: 66
     Int: 50
     Dex: 71
     Luk: 51
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 165
     AttackDelay: 1460
     AttackMotion: 960
+    ClientAttackMotion: 2304
     DamageMotion: 432
     Ai: 03
     Drops:
       - Item: Peco_Wing_Feather
         Rate: 4850
       - Item: Fruit_Of_Mastela
         Rate: 300
       - Item: Wind_Of_Verdure
         Rate: 1000
       - Item: Gold
         Rate: 1
       - Item: Orange
         Rate: 500
       - Item: Grand_Peco_Card
         Rate: 1
         StealProtected: true
   - Id: 1370
     AegisName: SUCCUBUS
     Name: Succubus
     Level: 85
     Hp: 16955
     BaseExp: 5357
     JobExp: 4322
     Attack: 1268
     Attack2: 1686
     Defense: 54
     MagicDefense: 48
     Agi: 97
     Vit: 95
     Int: 103
     Dex: 89
     Luk: 87
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 1306
     AttackMotion: 1056
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Fruit_Of_Mastela
         Rate: 1500
       - Item: Chrystal_Pumps
         Rate: 3
       - Item: Boy's_Naivety
         Rate: 1
       - Item: Diamond_Ring
         Rate: 250
       - Item: Horn_Of_Succubus
         Rate: 1
       - Item: Staff_Of_Soul
         Rate: 1
       - Item: Blue_Potion
         Rate: 1000
       - Item: Succubus_Card
         Rate: 1
         StealProtected: true
   - Id: 1371
     AegisName: FAKE_ANGEL
     Name: Anjo Fajuto
     JapaneseName: Fake Angel
     Level: 65
     Hp: 16845
     BaseExp: 3371
     JobExp: 1949
     Attack: 513
     Attack2: 682
     Defense: 50
     MagicDefense: 35
     Agi: 64
     Vit: 57
     Int: 70
     Dex: 61
     Luk: 88
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 160
     AttackDelay: 920
     AttackMotion: 720
+    ClientAttackMotion: 420
     DamageMotion: 336
     Ai: 04
     Drops:
       - Item: Blue_Gemstone
         Rate: 1000
       - Item: Yellow_Gemstone
         Rate: 1000
       - Item: Red_Gemstone
         Rate: 1000
       - Item: Water_Of_Darkness
         Rate: 1000
       - Item: Carrot_Whip
         Rate: 20
       - Item: Fake_Angel_Card
         Rate: 1
         StealProtected: true
   - Id: 1372
     AegisName: GOAT
     Name: Bode
     Level: 69
     Hp: 11077
     BaseExp: 3357
     JobExp: 2015
     Attack: 457
     Attack2: 608
     Defense: 44
     MagicDefense: 25
     Agi: 58
     Vit: 66
     Int: 62
     Dex: 67
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1380
     AttackMotion: 1080
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 03
     Drops:
       - Item: Goat's_Horn
         Rate: 4559
       - Item: Gaoat's_Skin
         Rate: 2500
       - Item: Empty_Bottle
         Rate: 5000
       - Item: Red_Herb
         Rate: 500
       - Item: Blue_Herb
         Rate: 1000
       - Item: Yellow_Herb
         Rate: 2500
       - Item: Green_Herb
         Rate: 5500
       - Item: Goat_Card
         Rate: 1
         StealProtected: true
   - Id: 1373
     AegisName: LORD_OF_DEATH
     Name: Senhor dos Mortos
     JapaneseName: Lord of Death
     Level: 94
     Hp: 603383
     BaseExp: 131343
     JobExp: 43345
     MvpExp: 65671
     Attack: 3430
     Attack2: 4232
     Defense: 77
     MagicDefense: 73
     Agi: 99
     Vit: 30
     Int: 109
     Dex: 100
     Luk: 106
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1446
     AttackMotion: 1296
+    ClientAttackMotion: 768
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Crystal_Jewel__
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Boroken_Shiled_Piece
         Rate: 5335
       - Item: Pole_Axe
         Rate: 5
       - Item: House_Auger
         Rate: 10
       - Item: Ring_
         Rate: 2
       - Item: Shine_Spear_Blade
         Rate: 10
       - Item: War_Axe
         Rate: 1
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -15237,701 +16376,717 @@ Body:
     AegisName: INCUBUS
     Name: Incubus
     Level: 75
     Hp: 17281
     BaseExp: 5254
     JobExp: 4212
     Attack: 1408
     Attack2: 1873
     Defense: 58
     MagicDefense: 46
     Agi: 97
     Vit: 95
     Int: 103
     Dex: 89
     Luk: 87
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 850
     AttackMotion: 600
+    ClientAttackMotion: 420
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Fruit_Of_Mastela
         Rate: 1500
       - Item: White_Herb
         Rate: 5500
       - Item: Inccubus_Horn
         Rate: 1
       - Item: Ring_
         Rate: 1
       - Item: Gold_Ring
         Rate: 500
       - Item: Diamond_Ring
         Rate: 150
       - Item: White_Herb
         Rate: 2200
       - Item: Incubus_Card
         Rate: 1
         StealProtected: true
   - Id: 1375
     AegisName: THE_PAPER
     Name: Papel
     Level: 56
     Hp: 18557
     BaseExp: 2849
     JobExp: 1998
     Attack: 845
     Attack2: 1124
     Defense: 25
     MagicDefense: 24
     Agi: 66
     Vit: 52
     Int: 76
     Dex: 71
     Luk: 79
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 1160
     AttackMotion: 960
+    ClientAttackMotion: 540
     DamageMotion: 336
     Ai: 04
     Drops:
       - Item: Smooth_Paper
         Rate: 4947
       - Item: Fright_Paper_Blade
         Rate: 3200
       - Item: Yellow_Herb
         Rate: 1800
       - Item: Green_Herb
         Rate: 2000
       - Item: Kamaitachi
         Rate: 5
       - Item: The_Paper_Card
         Rate: 1
         StealProtected: true
   - Id: 1376
     AegisName: HARPY
     Name: Harpia
     Level: 70
     Hp: 16599
     BaseExp: 3562
     JobExp: 2133
     Attack: 926
     Attack2: 1231
     Defense: 42
     MagicDefense: 44
     Agi: 112
     Vit: 72
     Int: 67
     Dex: 74
     Luk: 76
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 972
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 470
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Harpy's_Feather
         Rate: 4850
       - Item: Harpy's_Claw
         Rate: 2500
       - Item: Yellow_Herb
         Rate: 1500
       - Item: Yellow_Herb
         Rate: 800
       - Item: Izidor
         Rate: 20
       - Item: Electric_Fist
         Rate: 20
       - Item: Harpy_Card
         Rate: 1
         StealProtected: true
   - Id: 1377
     AegisName: ELDER
     Name: Ancio
     Level: 64
     Hp: 21592
     BaseExp: 5650
     JobExp: 3408
     Attack: 421
     Attack2: 560
     Defense: 45
     MagicDefense: 68
     Agi: 76
     Vit: 68
     Int: 108
     Dex: 72
     Luk: 86
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 165
     AttackDelay: 1552
     AttackMotion: 1152
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 04
     Drops:
       - Item: Old_Magic_Circle
         Rate: 4000
       - Item: Rent_Spell_Book
         Rate: 1500
       - Item: Rent_Scroll
         Rate: 1500
       - Item: Encyclopedia
         Rate: 10
       - Item: Wizardy_Staff
         Rate: 1
       - Item: Old_Card_Album
         Rate: 1
       - Item: Underground_Key
         Rate: 3000
       - Item: Elder_Card
         Rate: 1
         StealProtected: true
   - Id: 1378
     AegisName: DEMON_PUNGUS
     Name: Pungus
     Level: 56
     Hp: 7259
     BaseExp: 3148
     JobExp: 1817
     Attack: 360
     Attack2: 479
     Defense: 48
     MagicDefense: 31
     Agi: 83
     Vit: 55
     Int: 59
     Dex: 63
     Luk: 34
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Poison
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 1260
     AttackMotion: 960
+    ClientAttackMotion: 672
     DamageMotion: 672
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Spawns
         Rate: 4074
       - Item: Mould_Powder
         Rate: 4559
       - Item: Yellow_Gemstone
         Rate: 3880
       - Item: Starsand_Of_Witch
         Rate: 5000
       - Item: Demon_Pungus_Card
         Rate: 1
         StealProtected: true
   - Id: 1379
     AegisName: NIGHTMARE_TERROR
     Name: Pesadelo Sombrio
     Level: 78
     Hp: 22605
     BaseExp: 6683
     JobExp: 4359
     Attack: 757
     Attack2: 1007
     Defense: 37
     MagicDefense: 37
     Agi: 76
     Vit: 55
     Int: 60
     Dex: 76
     Luk: 54
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1216
     AttackMotion: 816
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Burning_Horse_Shoe
         Rate: 4947
       - Item: Rosary_
         Rate: 1
       - Item: Rosary
         Rate: 30
       - Item: Blue_Potion
         Rate: 50
       - Item: Blue_Herb
         Rate: 150
       - Item: Ghost_Scroll_1_5
         Rate: 100
       - Item: Infiltrator
         Rate: 1
       - Item: Nightmare_Terror_Card
         Rate: 1
         StealProtected: true
   - Id: 1380
     AegisName: DRILLER
     Name: Furador
     Level: 52
     Hp: 7452
     BaseExp: 3215
     JobExp: 1860
     Attack: 666
     Attack2: 886
     Defense: 48
     MagicDefense: 31
     Agi: 66
     Vit: 58
     Int: 50
     Dex: 60
     Luk: 47
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1300
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 336
     Ai: 04
     Drops:
       - Item: Lizard_Scruff
         Rate: 7500
       - Item: Yellow_Gemstone
         Rate: 3880
       - Item: Red_Gemstone
         Rate: 3500
       - Item: Driller_Card
         Rate: 1
         StealProtected: true
   - Id: 1381
     AegisName: GRIZZLY
     Name: Grizzly
     Level: 68
     Hp: 11733
     BaseExp: 3341
     JobExp: 2012
     Attack: 809
     Attack2: 1076
     Defense: 44
     MagicDefense: 32
     Agi: 55
     Vit: 68
     Int: 58
     Dex: 70
     Luk: 61
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1492
     AttackMotion: 1092
+    ClientAttackMotion: 840
     DamageMotion: 192
     Ai: 04
     Drops:
       - Item: Bear's_Foot
         Rate: 5000
       - Item: Animal's_Skin
         Rate: 5000
       - Item: Nice_Sweet_Potato
         Rate: 2500
       - Item: Grizzly_Card
         Rate: 1
         StealProtected: true
   - Id: 1382
     AegisName: DIABOLIC
     Name: Diablico
     Level: 67
     Hp: 9642
     BaseExp: 3662
     JobExp: 2223
     Attack: 796
     Attack2: 1059
     Defense: 64
     MagicDefense: 36
     Agi: 84
     Vit: 53
     Int: 67
     Dex: 71
     Luk: 69
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1080
     AttackMotion: 780
+    ClientAttackMotion: 864
     DamageMotion: 180
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Petite_DiablOfs_Horn
         Rate: 5820
       - Item: Petite_DiablOfs_Wing
         Rate: 4850
       - Item: Brooch
         Rate: 3
       - Item: Oridecon
         Rate: 20
       - Item: Unholy_Touch
         Rate: 10
       - Item: Diabolic_Card
         Rate: 1
         StealProtected: true
   - Id: 1383
     AegisName: EXPLOSION
     Name: Estrondo
     Level: 46
     Hp: 8054
     BaseExp: 2404
     JobExp: 1642
     Attack: 336
     Attack2: 447
     Defense: 35
     MagicDefense: 27
     Agi: 61
     Vit: 56
     Int: 50
     Dex: 66
     Luk: 38
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1260
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 336
     Ai: 04
     Drops:
       - Item: Wing_Of_Red_Bat
         Rate: 5500
       - Item: Burning_Heart
         Rate: 2200
       - Item: Hot_Hair
         Rate: 3200
       - Item: Oridecon_Stone
         Rate: 800
       - Item: Fruit_Of_Mastela
         Rate: 400
       - Item: Explosion_Card
         Rate: 1
         StealProtected: true
   - Id: 1384
     AegisName: DELETER
     Name: Exterminador
     Level: 66
     Hp: 17292
     BaseExp: 3403
     JobExp: 2066
     Attack: 446
     Attack2: 593
     Defense: 45
     MagicDefense: 53
     Agi: 104
     Vit: 40
     Int: 65
     Dex: 72
     Luk: 54
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1020
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 13
     Drops:
       - Item: Dragon's_Skin
         Rate: 4074
       - Item: Dragon_Canine
         Rate: 5335
       - Item: Dragon_Train
         Rate: 3880
       - Item: Dragon_Scale
         Rate: 3589
       - Item: Flying_Deleter_Card
         Rate: 1
         StealProtected: true
   - Id: 1385
     AegisName: DELETER_
     Name: Deletrio
     Level: 65
     Hp: 15168
     BaseExp: 3403
     JobExp: 2066
     Attack: 446
     Attack2: 593
     Defense: 52
     MagicDefense: 53
     Agi: 66
     Vit: 40
     Int: 65
     Dex: 72
     Luk: 68
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1024
     AttackMotion: 624
+    ClientAttackMotion: 336
     DamageMotion: 336
     Ai: 13
     Drops:
       - Item: Dragon's_Skin
         Rate: 4074
       - Item: Dragon_Canine
         Rate: 5335
       - Item: Dragon_Train
         Rate: 3880
       - Item: Dragon_Scale
         Rate: 3589
       - Item: Deleter_Card
         Rate: 1
         StealProtected: true
   - Id: 1386
     AegisName: SLEEPER
     Name: Rochoso
     Level: 67
     Hp: 8237
     BaseExp: 3603
     JobExp: 2144
     Attack: 593
     Attack2: 789
     Defense: 49
     MagicDefense: 35
     Agi: 48
     Vit: 100
     Int: 57
     Dex: 75
     Luk: 28
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 195
     AttackDelay: 1350
     AttackMotion: 1200
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Sand_Lump
         Rate: 4947
       - Item: Grit
         Rate: 5335
       - Item: Great_Nature
         Rate: 2500
       - Item: Oridecon_Stone
         Rate: 300
       - Item: Damascus_
         Rate: 5
       - Item: Hypnotist's_Staff_
         Rate: 5
       - Item: Fine_Sand
         Rate: 1200
       - Item: Sleeper_Card
         Rate: 1
         StealProtected: true
   - Id: 1387
     AegisName: GIG
     Name: Ferro
     Level: 60
     Hp: 8409
     BaseExp: 3934
     JobExp: 2039
     Attack: 360
     Attack2: 479
     Defense: 60
     MagicDefense: 28
     Agi: 61
     Vit: 80
     Int: 53
     Dex: 59
     Luk: 46
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1264
     AttackMotion: 864
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scropion's_Nipper
         Rate: 4365
       - Item: Scorpion's_Tail
         Rate: 5500
       - Item: Red_Gemstone
         Rate: 150
       - Item: Panacea
         Rate: 2500
       - Item: Flame_Heart
         Rate: 850
       - Item: Gig_Card
         Rate: 1
         StealProtected: true
   - Id: 1388
     AegisName: ARCHANGELING
     Name: ArchAngeling
     JapaneseName: Archangeling
     Level: 60
     Hp: 79523
     BaseExp: 4152
     JobExp: 2173
     Attack: 669
     Attack2: 890
     Defense: 54
     MagicDefense: 58
     Agi: 65
     Vit: 80
     Int: 74
     Dex: 65
     Luk: 105
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 312
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Satanic_Chain
         Rate: 5
       - Item: Leaf_Of_Yggdrasil
         Rate: 1800
       - Item: Seed_Of_Yggdrasil
         Rate: 150
       - Item: Agate
         Rate: 1500
       - Item: Angelic_Chain
         Rate: 5
       - Item: Plate_Armor_
         Rate: 3
       - Item: Turquoise
         Rate: 1500
       - Item: Archangeling_Card
         Rate: 1
         StealProtected: true
   - Id: 1389
     AegisName: DRACULA
     Name: Drcula
     Level: 85
     Hp: 320096
     BaseExp: 120157
     JobExp: 38870
     MvpExp: 60078
     Attack: 1625
     Attack2: 1890
     Defense: 45
     MagicDefense: 76
     Agi: 95
     Vit: 90
     Int: 87
     Dex: 85
     Luk: 100
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 145
     AttackDelay: 1290
     AttackMotion: 1140
+    ClientAttackMotion: 780
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Crystal_Jewel__
         Rate: 5000
       - Item: Fruit_Of_Mastela
         Rate: 5000
     Drops:
       - Item: Yggdrasilberry
         Rate: 4700
       - Item: Wizardy_Staff
         Rate: 5
       - Item: Balistar
         Rate: 5
       - Item: Cape_Of_Ancient_Lord
         Rate: 15
       - Item: Ring_
         Rate: 4
       - Item: Book_Of_The_Apocalypse
         Rate: 4
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -15942,337 +17097,349 @@ Body:
     AegisName: VIOLY
     Name: Violi
     Level: 75
     Hp: 18257
     BaseExp: 6353
     JobExp: 3529
     Attack: 738
     Attack2: 982
     Defense: 37
     MagicDefense: 36
     Agi: 93
     Vit: 54
     Int: 58
     Dex: 101
     Luk: 83
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1356
     AttackMotion: 1056
+    ClientAttackMotion: 240
     DamageMotion: 540
     Ai: 05
     Drops:
       - Item: Golden_Hair
         Rate: 6305
       - Item: High_end_Cooking_Kits
         Rate: 50
       - Item: Stuffed_Doll
         Rate: 1200
       - Item: Base_Guitar
         Rate: 50
       - Item: Royal_Jelly
         Rate: 1400
       - Item: Water_Of_Darkness
         Rate: 1000
       - Item: Violin_
         Rate: 500
       - Item: Violy_Card
         Rate: 1
         StealProtected: true
   - Id: 1391
     AegisName: GALAPAGO
     Name: Pingu
     Level: 61
     Hp: 9145
     BaseExp: 3204
     JobExp: 1966
     Attack: 457
     Attack2: 608
     Defense: 33
     MagicDefense: 33
     Agi: 56
     Vit: 56
     Int: 45
     Dex: 66
     Luk: 57
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1430
     AttackMotion: 1080
+    ClientAttackMotion: 480
     DamageMotion: 1080
     Ai: 07
     Drops:
       - Item: Cyfar
         Rate: 5335
       - Item: Leaf_Of_Yggdrasil
         Rate: 100
       - Item: Yellow_Herb
         Rate: 3500
       - Item: Aloebera
         Rate: 100
       - Item: Anodyne
         Rate: 100
       - Item: Galapago_Cap
         Rate: 1
       - Item: Orange
         Rate: 1000
       - Item: Galapago_Card
         Rate: 1
         StealProtected: true
   - Id: 1392
     AegisName: ROTAR_ZAIRO
     Name: Giro-Goblin
     Level: 25
     Hp: 1209
     BaseExp: 351
     JobExp: 215
     Attack: 109
     Attack2: 137
     Defense: 4
     MagicDefense: 34
     Agi: 62
     Vit: 45
     Int: 26
     Dex: 55
     Luk: 5
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 2416
     AttackMotion: 2016
+    ClientAttackMotion: 1008
     DamageMotion: 432
     Ai: 05
     Drops:
       - Item: Large_Jellopy
         Rate: 500
       - Item: Padded_Armor
         Rate: 1
       - Item: Cyfar
         Rate: 1000
       - Item: Steel
         Rate: 450
       - Item: Oridecon
         Rate: 1
       - Item: Zargon
         Rate: 2500
       - Item: Garlet
         Rate: 5500
       - Item: Rotar_Zairo_Card
         Rate: 1
         StealProtected: true
   - Id: 1393
     AegisName: G_MUMMY
     Name: Mmia
     Level: 37
     Hp: 5176
     Attack: 305
     Attack2: 360
     MagicDefense: 10
     Str: 28
     Agi: 19
     Vit: 32
+    Int: 0
     Dex: 63
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1772
     AttackMotion: 72
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 04
   - Id: 1394
     AegisName: G_ZOMBIE
     Name: Zumbi
     Level: 15
     Hp: 534
     Attack: 67
     Attack2: 79
     MagicDefense: 10
     Agi: 8
     Vit: 7
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2612
     AttackMotion: 912
+    ClientAttackMotion: 816
     DamageMotion: 288
     Ai: 04
   - Id: 1395
     AegisName: CRYSTAL_1
     Name: Cristal de Vento
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_2
         Rate: 4900
       - Item: Cone_Hat_
         Rate: 7000
       - Item: Banana_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Yggdrasilberry
         Rate: 200
         StealProtected: true
   - Id: 1396
     AegisName: CRYSTAL_2
     Name: Cristal de Terra
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_4
         Rate: 4900
       - Item: Cone_Hat_
         Rate: 7000
       - Item: Apple_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Seed_Of_Yggdrasil
         Rate: 250
         StealProtected: true
   - Id: 1397
     AegisName: CRYSTAL_3
     Name: Cristal de Fogo
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_1
         Rate: 4900
       - Item: Cone_Hat_
         Rate: 7000
       - Item: Carrot_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Branch_Of_Dead_Tree
         Rate: 300
         StealProtected: true
   - Id: 1398
     AegisName: CRYSTAL_4
     Name: Cristal de gua
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_3
         Rate: 4900
       - Item: Cone_Hat_
         Rate: 7000
       - Item: Grape_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Old_Blue_Box
         Rate: 100
         StealProtected: true
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -16281,50 +17448,51 @@ Body:
     Name: Bafom
     Level: 68
     Hp: 1264000
     BaseExp: 261750
     JobExp: 83685
     MvpExp: 130875
     Attack: 1847
     Attack2: 2267
     Defense: 35
     MagicDefense: 45
     Agi: 152
     Vit: 96
     Int: 85
     Dex: 120
     Luk: 95
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 130
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Royal_Jelly
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 5000
     Drops:
       - Item: Pole_Axe
         Rate: 550
       - Item: War_Axe
         Rate: 680
       - Item: Holy_Avenger
         Rate: 480
       - Item: Holy_Guard
         Rate: 640
       - Item: Holy_Robe
         Rate: 1500
       - Item: Herald_Of_GOD
         Rate: 500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -16337,2735 +17505,2861 @@ Body:
     AegisName: KARAKASA
     Name: Karakasa
     Level: 30
     Hp: 3092
     BaseExp: 489
     JobExp: 322
     Attack: 141
     Attack2: 183
     Defense: 1
     MagicDefense: 5
     Agi: 45
     Vit: 12
     Int: 20
     Dex: 49
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 1638
     AttackMotion: 2016
+    ClientAttackMotion: 432
     DamageMotion: 576
     Ai: 01
     Drops:
       - Item: Oil_Paper
         Rate: 5000
       - Item: Bamboo_Cut
         Rate: 4268
       - Item: Wooden_Block
         Rate: 3200
       - Item: Smooth_Paper
         Rate: 2200
       - Item: Zargon
         Rate: 4074
       - Item: Glass_Bead
         Rate: 30
       - Item: Murasame
         Rate: 5
       - Item: Karakasa_Card
         Rate: 1
         StealProtected: true
   - Id: 1401
     AegisName: SHINOBI
     Name: Shinobi
     Level: 69
     Hp: 12700
     BaseExp: 4970
     JobExp: 3010
     Attack: 460
     Attack2: 1410
     Defense: 34
     MagicDefense: 21
     Str: 85
     Agi: 85
     Vit: 25
     Int: 25
     Dex: 100
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Ninja: true
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1003
     AttackMotion: 1152
+    ClientAttackMotion: 2112
     DamageMotion: 336
     Ai: 21
     Drops:
       - Item: Broken_Shuriken
         Rate: 5335
       - Item: Ninja_Suit
         Rate: 2
       - Item: Cyfar
         Rate: 2200
       - Item: Shinobi's_Sash
         Rate: 100
       - Item: Thief_Clothes_
         Rate: 1
       - Item: Black_Mask
         Rate: 2000
       - Item: Murasame_
         Rate: 5
       - Item: Shinobi_Card
         Rate: 1
         StealProtected: true
   - Id: 1402
     AegisName: POISON_TOAD
     Name: Sapo Venenoso
     Level: 46
     Hp: 6629
     BaseExp: 1929
     JobExp: 1457
     Attack: 288
     Attack2: 408
     Defense: 5
     MagicDefense: 10
     Str: 20
     Agi: 34
     Vit: 19
     Int: 14
     Dex: 66
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 1148
     AttackMotion: 1728
+    ClientAttackMotion: 624
     DamageMotion: 864
     Ai: 01
     Drops:
       - Item: Poison_Toad's_Skin
         Rate: 5500
       - Item: Poison_Powder
         Rate: 2400
       - Item: Gold_Ring
         Rate: 4
       - Item: Green_Herb
         Rate: 540
       - Item: Cardinal_Jewel_
         Rate: 2
       - Item: Royal_Jelly
         Rate: 2
       - Item: Cinquedea_
         Rate: 10
       - Item: Poison_Toad_Card
         Rate: 1
         StealProtected: true
   - Id: 1403
     AegisName: ANTIQUE_FIRELOCK
     Name: Soldado Atirador
     JapaneseName: Antique Firelock
     Level: 47
     Hp: 3852
     BaseExp: 1293
     JobExp: 1003
     Attack: 289
     Attack2: 336
     Defense: 10
     MagicDefense: 10
     Str: 15
     Agi: 35
     Vit: 29
     Int: 15
     Dex: 120
     Luk: 42
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1084
     AttackMotion: 2304
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 05
     Drops:
       - Item: Iron
         Rate: 5500
       - Item: Apple_Of_Archer
         Rate: 1
       - Item: Large_Jellopy
         Rate: 1400
       - Item: Yellow_Herb
         Rate: 40
       - Item: Nice_Sweet_Potato
         Rate: 350
       - Item: Panacea
         Rate: 250
       - Item: The_Cyclone_
         Rate: 5
       - Item: Antique_Firelock_Card
         Rate: 1
         StealProtected: true
   - Id: 1404
     AegisName: MIYABI_NINGYO
     Name: Boneco de Miyabi
     JapaneseName: Miyabi Ningyo
     Level: 33
     Hp: 6300
     BaseExp: 795
     JobExp: 453
     Attack: 250
     Attack2: 305
     Defense: 1
     MagicDefense: 20
     Agi: 52
     Vit: 15
     Int: 10
     Dex: 62
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1938
     AttackMotion: 2112
+    ClientAttackMotion: 1920
     DamageMotion: 768
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Glossy_Hair
         Rate: 5335
       - Item: Old_Japaness_Clothes
         Rate: 2500
       - Item: White_Herb
         Rate: 1550
       - Item: Star_Crumb
         Rate: 1250
       - Item: High_end_Cooking_Kits
         Rate: 10
       - Item: Hakujin
         Rate: 5
       - Item: Mandolin_
         Rate: 2
       - Item: Miyabi_Ningyo_Card
         Rate: 1
         StealProtected: true
   - Id: 1405
     AegisName: TENGU
     Name: Tengu
     Level: 65
     Hp: 16940
     BaseExp: 4207
     JobExp: 2843
     Attack: 660
     Attack2: 980
     Defense: 12
     MagicDefense: 82
     Str: 90
     Agi: 42
     Vit: 69
     Int: 45
     Dex: 78
     Luk: 80
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1439
     AttackMotion: 1920
+    ClientAttackMotion: 624
     DamageMotion: 672
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Tengu's_Nose
         Rate: 3500
       - Item: Broken_Wine_Vessel
         Rate: 5500
       - Item: Huuma_Giant_Wheel
         Rate: 5
       - Item: Fruit_Of_Mastela
         Rate: 150
       - Item: Huuma_Giant_Wheel_
         Rate: 5
       - Item: Imperial_Cooking_Kits
         Rate: 20
       - Item: Earth_Scroll_1_5
         Rate: 100
       - Item: Tengu_Card
         Rate: 1
         StealProtected: true
   - Id: 1406
     AegisName: KAPHA
     Name: Kapha
     Level: 41
     Hp: 7892
     BaseExp: 2278
     JobExp: 1552
     Attack: 399
     Attack2: 719
     Defense: 20
     MagicDefense: 38
     Agi: 51
     Vit: 49
     Int: 22
     Dex: 73
     Luk: 45
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 2012
     AttackMotion: 1728
+    ClientAttackMotion: 576
     DamageMotion: 672
     Ai: 04
     Drops:
       - Item: Yellow_Plate
         Rate: 6500
       - Item: Cyfar
         Rate: 3500
       - Item: Huuma_Calm_Mind
         Rate: 20
       - Item: Leaflet_Of_Aloe
         Rate: 2300
       - Item: Ment
         Rate: 2
       - Item: Guitar_Of_Blue_Solo
         Rate: 10
       - Item: Jitte_
         Rate: 5
       - Item: Kapha_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1407
+#    AegisName: DOKEBI_
+#    Name: Dokebi
+#    Level: 1
+#    Size: Small
+#    Race: Formless
+#    Element: Water
+#    ElementLevel: 0
   - Id: 1408
     AegisName: BLOOD_BUTTERFLY
     Name: Borboleta Sangrenta
     Level: 55
     Hp: 8082
     BaseExp: 2119
     JobExp: 1562
     Attack: 121
     Attack2: 342
     Defense: 5
     MagicDefense: 23
     Agi: 59
     Vit: 14
     Int: 55
     Dex: 68
     Luk: 15
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 145
     AttackDelay: 472
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Sharp_Feeler
         Rate: 4608
       - Item: Great_Wing
         Rate: 2500
       - Item: Wing_Of_Butterfly
         Rate: 1200
       - Item: Powder_Of_Butterfly
         Rate: 5500
       - Item: Waghnakh_
         Rate: 3
       - Item: Lariat
         Rate: 1
       - Item: Blood_Butterfly_Card
         Rate: 1
         StealProtected: true
   - Id: 1409
     AegisName: RICE_CAKE_BOY
     Name: Pirralho
     JapaneseName: Rice Cake Boy
     Level: 27
     Hp: 2098
     BaseExp: 231
     JobExp: 149
     Attack: 112
     Attack2: 134
     Defense: 5
     MagicDefense: 12
     Agi: 22
     Vit: 29
     Int: 5
     Dex: 41
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 160
     AttackDelay: 647
     AttackMotion: 768
+    ClientAttackMotion: 336
     DamageMotion: 420
     Ai: 17
     Drops:
       - Item: Bamboo_Cut
         Rate: 3200
       - Item: Oil_Paper
         Rate: 2500
       - Item: Pierrot_Nose
         Rate: 1
       - Item: Blade_Of_Pinwheel
         Rate: 5000
       - Item: Bun
         Rate: 1000
       - Item: Festival_Mask
         Rate: 3000
       - Item: Rice_Cake_Boy_Card
         Rate: 1
         StealProtected: true
   - Id: 1410
     AegisName: LIVE_PEACH_TREE
     Name: Pessegueira Encantada
     JapaneseName: Live Peach Tree
     Level: 53
     Hp: 8905
     BaseExp: 2591
     JobExp: 1799
     Attack: 301
     Attack2: 351
     Defense: 10
     MagicDefense: 38
     Str: 72
     Agi: 45
     Vit: 35
     Int: 39
     Dex: 80
     Luk: 5
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 410
     AttackDelay: 400
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 480
     Ai: 05
     Drops:
       - Item: Hard_Peach
         Rate: 4365
       - Item: Royal_Jelly
         Rate: 1000
       - Item: Branch_Of_Dead_Tree
         Rate: 400
       - Item: Banana_Juice
         Rate: 100
       - Item: Old_Blue_Box
         Rate: 5
       - Item: Live_Peach_Tree_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1411
+#    AegisName: PEACH_TREE_BULLET
+#    Name: Peach Tree Bullet... (mode  129)
+#    JapaneseName: Peach Tree Bullet
+#    Size: Small
+#    Race: Formless
+#    Element: Neutral
+#    ElementLevel: 0
   - Id: 1412
     AegisName: EVIL_CLOUD_HERMIT
     Name: Ermito Maligno
     JapaneseName: Evil Cloud Hermit
     Level: 56
     Hp: 10392
     BaseExp: 3304
     JobExp: 2198
     Attack: 311
     Attack2: 333
     Defense: 25
     MagicDefense: 59
     Agi: 20
     Vit: 18
     Int: 50
     Dex: 136
     Luk: 11
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 480
     AttackMotion: 840
+    ClientAttackMotion: 624
     DamageMotion: 432
     Ai: 05
     Drops:
       - Item: Cloud_Piece
         Rate: 4656
       - Item: Cheese
         Rate: 5600
       - Item: Popped_Rice
         Rate: 4500
       - Item: Bun
         Rate: 6800
       - Item: Guitar_
         Rate: 2
       - Item: Elunium_Stone
         Rate: 150
       - Item: Wind_Scroll_1_5
         Rate: 100
       - Item: Evil_Cloud_Hermit_Card
         Rate: 1
         StealProtected: true
   - Id: 1413
     AegisName: WILD_GINSENG
     Name: Ermito Selvagem
     JapaneseName: Wild Ginseng
     Level: 46
     Hp: 6900
     BaseExp: 1038
     JobExp: 692
     Attack: 220
     Attack2: 280
     Defense: 10
     MagicDefense: 20
     Str: 13
     Agi: 42
     Vit: 36
     Int: 55
     Dex: 66
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 140
     AttackDelay: 512
     AttackMotion: 756
+    ClientAttackMotion: 540
     DamageMotion: 360
     Ai: 17
     Drops:
       - Item: Leaflet_Of_Hinal
         Rate: 3500
       - Item: Leaflet_Of_Aloe
         Rate: 3500
       - Item: Root_Of_Maneater
         Rate: 3800
       - Item: Blossom_Of_Maneater
         Rate: 4800
       - Item: Sweet_Potato
         Rate: 4800
       - Item: Rope_
         Rate: 1
       - Item: Strawberry
         Rate: 1000
       - Item: Wild_Ginseng_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1414
+#    AegisName: GINSENG_BULLET
+#    Name: Ginseng Bullet... (mode 129)
+#    JapaneseName: Ginseng Bullet
+#    Size: Small
+#    Race: Formless
+#    Element: Neutral
+#    ElementLevel: 0
   - Id: 1415
     AegisName: BABY_LEOPARD
     Name: Filhote de Leopardo
     Level: 32
     Hp: 2590
     BaseExp: 352
     JobExp: 201
     Attack: 155
     Attack2: 207
     MagicDefense: 5
     Str: 20
     Agi: 44
     Vit: 20
     Int: 4
     Dex: 49
     Luk: 10
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 318
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 420
     Ai: 04
     Drops:
       - Item: Leopard_Skin
         Rate: 5200
       - Item: Leopard_Talon
         Rate: 3200
       - Item: Oridecon_Stone
         Rate: 150
       - Item: Meat
         Rate: 2000
       - Item: Dagger_
         Rate: 100
       - Item: Pet_Food
         Rate: 500
       - Item: Baby_Leopard_Card
         Rate: 1
         StealProtected: true
   - Id: 1416
     AegisName: WICKED_NYMPH
     Name: Ninfa Perversa
     JapaneseName: Wicked Nymph
     Level: 63
     Hp: 16029
     BaseExp: 3945
     JobExp: 2599
     Attack: 399
     Attack2: 1090
     Defense: 12
     MagicDefense: 75
     Agi: 64
     Vit: 12
     Int: 69
     Dex: 100
     Luk: 80
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 637
     AttackMotion: 1008
+    ClientAttackMotion: 576
     DamageMotion: 360
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Limpid_Celestial_Robe
         Rate: 3977
       - Item: Soft_Silk_Cloth
         Rate: 1380
       - Item: Oridecon
         Rate: 10
       - Item: Mandolin_
         Rate: 4
       - Item: Lute_
         Rate: 1
       - Item: Holy_Scroll_1_5
         Rate: 100
       - Item: Oriental_Lute
         Rate: 10
       - Item: Wicked_Nymph_Card
         Rate: 1
         StealProtected: true
   - Id: 1417
     AegisName: ZIPPER_BEAR
     Name: Zipper
     Level: 35
     Hp: 2901
     BaseExp: 370
     JobExp: 225
     Attack: 248
     Attack2: 289
     Defense: 10
     MagicDefense: 5
     Str: 30
     Agi: 25
     Vit: 55
     Int: 15
     Dex: 28
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 155
     AttackDelay: 780
     AttackMotion: 1008
+    ClientAttackMotion: 288
     DamageMotion: 420
     Ai: 17
     Drops:
       - Item: Black_Bear's_Skin
         Rate: 4462
       - Item: Mystery_Iron_Bit
         Rate: 3500
       - Item: Royal_Jelly
         Rate: 400
       - Item: Honey
         Rate: 900
       - Item: Apple
         Rate: 90
       - Item: Zipper_Bear_Card
         Rate: 1
         StealProtected: true
   - Id: 1418
     AegisName: DARK_SNAKE_LORD
     Name: Serpente Suprema
     Level: 73
     Hp: 254993
     BaseExp: 34288
     JobExp: 17950
     MvpExp: 17144
     Attack: 2433
     Attack2: 4210
     Defense: 25
     MagicDefense: 55
     Str: 70
     Agi: 83
     Vit: 30
     Int: 80
     Dex: 164
     Luk: 88
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 588
     AttackMotion: 816
+    ClientAttackMotion: 1440
     DamageMotion: 420
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Elunium
         Rate: 5500
     Drops:
       - Item: Taegeuk_Plate
         Rate: 5820
       - Item: Sword_Of_Grave_Keeper
         Rate: 5100
       - Item: Hell_Fire
         Rate: 80
       - Item: Ph.D_Hat
         Rate: 80
       - Item: Gae_Bolg
         Rate: 500
       - Item: Pill
         Rate: 900
       - Item: Sway_Apron
         Rate: 2000
       - Item: Dark_Snake_Lord_Card
         Rate: 1
         StealProtected: true
   - Id: 1419
     AegisName: G_FARMILIAR
     Name: Familiar
     Level: 8
     Hp: 155
     Attack: 20
     Attack2: 28
     Agi: 12
     Vit: 8
     Int: 5
     Dex: 28
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 432
     DamageMotion: 384
     Ai: 04
   - Id: 1420
     AegisName: G_ARCHER_SKELETON
     Name: Esqueleto Arqueiro
     Level: 31
     Hp: 3040
     Attack: 128
     Attack2: 153
     Agi: 8
     Vit: 14
     Int: 5
     Dex: 90
     Luk: 5
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 2864
     AttackMotion: 864
+    ClientAttackMotion: 672
     DamageMotion: 576
     Ai: 04
   - Id: 1421
     AegisName: G_ISIS
     Name: Isis
     Level: 43
     Hp: 4828
     Attack: 423
     Attack2: 507
     Defense: 10
     MagicDefense: 35
     Str: 38
     Agi: 65
     Vit: 43
     Int: 30
     Dex: 72
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1384
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 336
     Ai: 04
     Modes:
       Detector: true
   - Id: 1422
     AegisName: G_HUNTER_FLY
     Name: Mosca Caadora
     Level: 42
     Hp: 5242
     Attack: 246
     Attack2: 333
     Defense: 25
     MagicDefense: 15
     Str: 33
     Agi: 105
     Vit: 32
     Int: 15
     Dex: 72
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 676
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
   - Id: 1423
     AegisName: G_GHOUL
     Name: Carnial
     Level: 39
     Hp: 5118
     Attack: 420
     Attack2: 500
     Defense: 5
     MagicDefense: 20
     Agi: 20
     Vit: 29
+    Int: 0
     Dex: 33
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 2456
     AttackMotion: 912
+    ClientAttackMotion: 408
     DamageMotion: 504
     Ai: 04
   - Id: 1424
     AegisName: G_SIDE_WINDER
     Name: Sorrateiro
     Level: 43
     Hp: 4929
     Attack: 240
     Attack2: 320
     Defense: 5
     MagicDefense: 10
     Str: 38
     Agi: 43
     Vit: 40
     Int: 15
     Dex: 115
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
   - Id: 1425
     AegisName: G_OBEAUNE
     Name: Obeaune
     Level: 31
     Hp: 3952
     Attack: 141
     Attack2: 165
     MagicDefense: 40
     Agi: 31
     Vit: 31
     Int: 55
     Dex: 74
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 288
     Ai: 04
   - Id: 1426
     AegisName: G_MARC
     Name: Cavalo-Marinho
     Level: 36
     Hp: 6900
     Attack: 220
     Attack2: 280
     Defense: 5
     MagicDefense: 10
     Agi: 36
     Vit: 36
     Int: 20
     Dex: 56
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1272
     AttackMotion: 72
+    ClientAttackMotion: 216
     DamageMotion: 480
     Ai: 04
   - Id: 1427
     AegisName: G_NIGHTMARE
     Name: Pesadelo
     Level: 49
     Hp: 4437
     Attack: 447
     Attack2: 529
     MagicDefense: 40
     Agi: 74
     Vit: 25
     Int: 15
     Dex: 64
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1816
     AttackMotion: 816
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
   - Id: 1428
     AegisName: G_POISON_SPORE
     Name: Esporo Venenoso
     Level: 19
     Hp: 665
     Attack: 89
     Attack2: 101
     Agi: 19
     Vit: 25
+    Int: 0
     Dex: 24
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 04
   - Id: 1429
     AegisName: G_ARGIOPE
     Name: Argiope
     Level: 41
     Hp: 4382
     Attack: 395
     Attack2: 480
     Defense: 30
     Agi: 41
     Vit: 31
     Int: 10
     Dex: 56
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1792
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 04
     Modes:
       Detector: true
   - Id: 1430
     AegisName: G_ARGOS
     Name: Argos
     Level: 25
     Hp: 1117
     Attack: 158
     Attack2: 191
     Defense: 15
     Agi: 25
     Vit: 25
     Int: 5
     Dex: 32
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1468
     AttackMotion: 468
+    ClientAttackMotion: 216
     DamageMotion: 768
     Ai: 04
     Modes:
       Detector: true
   - Id: 1431
     AegisName: G_BAPHOMET_
     Name: Bafom Jr..
     Level: 50
     Hp: 8578
     Attack: 487
     Attack2: 590
     Defense: 15
     MagicDefense: 25
     Agi: 75
     Vit: 55
     Dex: 93
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 868
     AttackMotion: 480
+    ClientAttackMotion: 216
     DamageMotion: 120
     Ai: 04
     Modes:
       Detector: true
   - Id: 1432
     AegisName: G_DESERT_WOLF
     Name: Lobo do Deserto
     Level: 27
     Hp: 1716
     Attack: 169
     Attack2: 208
     MagicDefense: 10
     Str: 56
     Agi: 27
     Vit: 45
     Int: 15
     Dex: 56
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1120
     AttackMotion: 420
+    ClientAttackMotion: 216
     DamageMotion: 288
     Ai: 04
   - Id: 1433
     AegisName: G_DEVIRUCHI
     Name: Deviruchi
     Level: 46
     Hp: 7360
     Attack: 475
     Attack2: 560
     Defense: 10
     MagicDefense: 25
     Agi: 69
     Vit: 40
     Int: 55
     Dex: 87
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 980
     AttackMotion: 600
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 04
     Modes:
       Detector: true
   - Id: 1434
     AegisName: G_DRAINLIAR
     Name: Drainliar
     Level: 24
     Hp: 1162
     Attack: 74
     Attack2: 84
     Agi: 36
     Vit: 24
+    Int: 0
     Dex: 78
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 04
   - Id: 1435
     AegisName: G_EVIL_DRUID
     Name: Druida Maligno
     Level: 58
     Hp: 16506
     Attack: 420
     Attack2: 670
     Defense: 5
     MagicDefense: 60
     Agi: 29
     Vit: 58
     Int: 80
     Dex: 68
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 2276
     AttackMotion: 576
+    ClientAttackMotion: 168
     DamageMotion: 336
     Ai: 04
   - Id: 1436
     AegisName: G_JAKK
     Name: Jakk
     Level: 38
     Hp: 3581
     Attack: 315
     Attack2: 382
     Defense: 5
     MagicDefense: 30
     Agi: 38
     Vit: 38
     Int: 43
     Dex: 75
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 648
     Ai: 04
   - Id: 1437
     AegisName: G_JOKER
     Name: Joker
     Level: 57
     Hp: 12450
     Attack: 621
     Attack2: 738
     Defense: 10
     MagicDefense: 35
     Agi: 143
     Vit: 47
     Int: 75
     Dex: 98
     Luk: 175
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1364
     AttackMotion: 864
+    ClientAttackMotion: 312
     DamageMotion: 432
     Ai: 04
   - Id: 1438
     AegisName: G_KHALITZBURG
     Name: Khalitzburg
     Level: 63
     Hp: 19276
     Attack: 875
     Attack2: 1025
     Defense: 45
     MagicDefense: 10
     Str: 58
     Agi: 65
     Vit: 48
     Int: 5
     Dex: 73
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 350
     AttackDelay: 528
     AttackMotion: 1000
+    ClientAttackMotion: 240
     DamageMotion: 396
     Ai: 04
   - Id: 1439
     AegisName: G_HIGH_ORC
     Name: Grande Orc
     Level: 52
     Hp: 6890
     Attack: 428
     Attack2: 533
     Defense: 15
     MagicDefense: 5
     Str: 55
     Agi: 46
     Vit: 55
     Int: 35
     Dex: 82
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 1000
     Ai: 04
   - Id: 1440
     AegisName: G_STEM_WORM
     Name: Talo de Verme
     Level: 40
     Hp: 6136
     Attack: 290
     Attack2: 375
     Defense: 5
     MagicDefense: 10
     Agi: 30
     Vit: 26
     Int: 15
     Dex: 79
     Luk: 35
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 288
     DamageMotion: 1000
     Ai: 04
   - Id: 1441
     AegisName: G_PENOMENA
     Name: Penomena
     Level: 57
     Hp: 7256
     Attack: 415
     Attack2: 565
     Defense: 5
     MagicDefense: 50
     Agi: 5
     Vit: 35
     Int: 15
     Dex: 136
     Luk: 30
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 832
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 04
   - Id: 1442
     AegisName: G_SASQUATCH
     Name: Sasquatch
     Level: 30
     Hp: 3163
     Attack: 250
     Attack2: 280
     Defense: 5
     Str: 75
     Agi: 25
     Vit: 60
     Int: 10
     Dex: 34
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 04
   - Id: 1443
     AegisName: G_CRUISER
     Name: Soldadinho de Chumbo
     Level: 35
     Hp: 2820
     Attack: 175
     Attack2: 215
     Defense: 5
     MagicDefense: 5
     Agi: 40
     Vit: 10
     Int: 10
     Dex: 90
     Luk: 25
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1296
     AttackMotion: 1296
+    ClientAttackMotion: 1224
     DamageMotion: 432
     Ai: 04
   - Id: 1444
     AegisName: G_CHEPET
     Name: Chepet
     Level: 42
     Hp: 4950
     Attack: 380
     Attack2: 440
     MagicDefense: 25
     Agi: 72
     Vit: 35
     Int: 71
     Dex: 65
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 672
     AttackMotion: 672
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
   - Id: 1445
     AegisName: G_RAGGLER
     Name: Raggler
     Level: 21
     Hp: 1020
     Attack: 102
     Attack2: 113
     MagicDefense: 5
     Str: 18
     Agi: 10
     Vit: 32
     Int: 20
     Dex: 39
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1000
     AttackMotion: 900
+    ClientAttackMotion: 252
     DamageMotion: 384
     Ai: 04
   - Id: 1446
     AegisName: G_INJUSTICE
     Name: Injustiado
     Level: 51
     Hp: 7600
     Attack: 480
     Attack2: 600
     Str: 84
     Agi: 42
     Vit: 39
+    Int: 0
     Dex: 71
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 770
     AttackMotion: 720
+    ClientAttackMotion: 540
     DamageMotion: 336
     Ai: 04
   - Id: 1447
     AegisName: G_GRYPHON
     Name: Grifo
     Level: 72
     Hp: 27800
     Attack: 880
     Attack2: 1260
     Defense: 35
     MagicDefense: 35
     Str: 68
     Agi: 95
     Vit: 78
     Int: 65
     Dex: 115
     Luk: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 704
     AttackMotion: 504
+    ClientAttackMotion: 288
     DamageMotion: 432
     Ai: 04
     Class: Boss
   - Id: 1448
     AegisName: G_DARK_FRAME
     Name: Moldura Maldita
     Level: 59
     Hp: 7500
     Attack: 960
     Attack2: 1210
     Defense: 10
     MagicDefense: 45
     Agi: 72
     Vit: 42
     Int: 45
     Dex: 85
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 920
     AttackMotion: 720
+    ClientAttackMotion: 360
     DamageMotion: 200
     Ai: 04
     Modes:
       Detector: true
   - Id: 1449
     AegisName: G_MUTANT_DRAGON
     Name: Drago Mutante
     JapaneseName: Mutant Dragon
     Level: 65
     Hp: 62600
     Attack: 2400
     Attack2: 3400
     Defense: 15
     MagicDefense: 20
     Str: 75
     Agi: 47
     Vit: 30
     Int: 68
     Dex: 45
     Luk: 35
     AttackRange: 4
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1280
     AttackMotion: 1080
+    ClientAttackMotion: 900
     DamageMotion: 240
     Ai: 04
     Class: Boss
   - Id: 1450
     AegisName: G_WIND_GHOST
     Name: Xam do Vento
     Level: 51
     Hp: 4820
     Attack: 489
     Attack2: 639
     MagicDefense: 45
     Agi: 89
     Vit: 15
     Int: 90
     Dex: 85
     Luk: 25
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1056
     AttackMotion: 1056
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 04
     Modes:
       Detector: true
   - Id: 1451
     AegisName: G_MERMAN
     Name: Trito
     Level: 53
     Hp: 12300
     Attack: 482
     Attack2: 603
     Defense: 10
     MagicDefense: 35
     Str: 72
     Agi: 45
     Vit: 46
     Int: 15
     Dex: 85
     Luk: 55
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 2
     WalkSpeed: 220
     AttackDelay: 916
     AttackMotion: 816
+    ClientAttackMotion: 384
     DamageMotion: 336
     Ai: 04
   - Id: 1452
     AegisName: G_ORC_LADY
     Name: Senhora Orc
     Level: 31
     Hp: 2000
     Attack: 135
     Attack2: 170
     Defense: 10
     MagicDefense: 10
     Str: 35
     Agi: 42
     Vit: 25
     Int: 15
     Dex: 69
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1050
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 288
     Ai: 04
   - Id: 1453
     AegisName: G_RAYDRIC_ARCHER
     Name: Raydric Arqueiro
     Level: 52
     Hp: 5250
     Attack: 415
     Attack2: 500
     Defense: 35
     MagicDefense: 5
     Str: 15
     Agi: 25
     Vit: 22
     Int: 5
     Dex: 145
     Luk: 35
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1152
     AttackMotion: 1152
+    ClientAttackMotion: 972
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
   - Id: 1454
     AegisName: G_TRI_JOINT
     Name: Trilobita
     Level: 32
     Hp: 2300
     Attack: 178
     Attack2: 206
     Defense: 20
     MagicDefense: 5
     Agi: 48
     Vit: 24
     Int: 10
     Dex: 67
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 860
     AttackMotion: 660
+    ClientAttackMotion: 540
     DamageMotion: 624
     Ai: 04
     Modes:
       Detector: true
   - Id: 1455
     AegisName: G_KOBOLD_ARCHER
     Name: Cobold Arqueiro
     Level: 33
     Hp: 2560
     Attack: 155
     Attack2: 185
     Defense: 10
     MagicDefense: 5
     Str: 10
     Agi: 20
     Vit: 15
     Int: 30
     Dex: 100
     Luk: 25
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1008
     AttackMotion: 1008
+    ClientAttackMotion: 504
     DamageMotion: 384
     Ai: 04
   - Id: 1456
     AegisName: G_CHIMERA
     Name: Quimera
     Level: 70
     Hp: 32600
     Attack: 1200
     Attack2: 1320
     Defense: 30
     MagicDefense: 10
     Agi: 72
     Vit: 110
     Int: 88
     Dex: 75
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 772
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 04
     Class: Boss
   - Id: 1457
     AegisName: G_MANTIS
     Name: Mantis
     Level: 26
     Hp: 2472
     Attack: 118
     Attack2: 149
     Defense: 10
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 45
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1528
     AttackMotion: 660
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
   - Id: 1458
     AegisName: G_MARDUK
     Name: Marduk
     Level: 40
     Hp: 4214
     Attack: 315
     Attack2: 382
     MagicDefense: 60
     Agi: 40
     Vit: 20
     Int: 79
     Dex: 78
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1540
     AttackMotion: 840
+    ClientAttackMotion: 432
     DamageMotion: 504
     Ai: 04
   - Id: 1459
     AegisName: G_MARIONETTE
     Name: Marionete
     Level: 41
     Hp: 3222
     Attack: 355
     Attack2: 422
     MagicDefense: 25
     Agi: 62
     Vit: 36
     Int: 44
     Dex: 69
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1480
     AttackMotion: 480
+    ClientAttackMotion: 240
     DamageMotion: 1056
     Ai: 04
     Modes:
       Detector: true
   - Id: 1460
     AegisName: G_MATYR
     Name: Matyr
     Level: 31
     Hp: 2585
     Attack: 134
     Attack2: 160
     Agi: 47
     Vit: 38
     Int: 5
     Dex: 64
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 432
     AttackMotion: 432
+    ClientAttackMotion: 144
     DamageMotion: 360
     Ai: 04
   - Id: 1461
     AegisName: G_MINOROUS
     Name: Minorous
     Level: 52
     Hp: 7431
     Attack: 590
     Attack2: 770
     Defense: 15
     MagicDefense: 5
     Str: 65
     Agi: 42
     Vit: 61
     Int: 66
     Dex: 52
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1360
     AttackMotion: 960
+    ClientAttackMotion: 576
     DamageMotion: 432
     Ai: 04
   - Id: 1462
     AegisName: G_ORC_SKELETON
     Name: Orc Esqueleto
     Level: 28
     Hp: 2278
     Attack: 190
     Attack2: 236
     Defense: 10
     MagicDefense: 10
     Agi: 14
     Vit: 18
+    Int: 0
     Dex: 30
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2420
     AttackMotion: 720
+    ClientAttackMotion: 288
     DamageMotion: 648
     Ai: 04
   - Id: 1463
     AegisName: G_ORC_ZOMBIE
     Name: Orc Zumbi
     Level: 24
     Hp: 1568
     Attack: 151
     Attack2: 184
     Defense: 5
     MagicDefense: 10
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 24
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2852
     AttackMotion: 1152
+    ClientAttackMotion: 768
     DamageMotion: 840
     Ai: 04
   - Id: 1464
     AegisName: G_PASANA
     Name: Pasana
     Level: 61
     Hp: 8289
     Attack: 513
     Attack2: 682
     Defense: 29
     MagicDefense: 35
     Agi: 73
     Vit: 50
     Int: 61
     Dex: 69
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 165
     AttackDelay: 976
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 04
   - Id: 1465
     AegisName: G_PETIT
     Name: Petite
     Level: 44
     Hp: 6881
     Attack: 360
     Attack2: 427
     Defense: 30
     MagicDefense: 30
     Agi: 44
     Vit: 62
     Int: 55
     Dex: 79
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1624
     AttackMotion: 620
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 04
   - Id: 1466
     AegisName: G_PETIT_
     Name: Petite Voador
     Level: 45
     Hp: 5747
     Attack: 300
     Attack2: 355
     Defense: 20
     MagicDefense: 45
     Agi: 113
     Vit: 45
     Int: 55
     Dex: 73
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1420
     AttackMotion: 1080
+    ClientAttackMotion: 336
     DamageMotion: 528
     Ai: 04
   - Id: 1467
     AegisName: G_RAYDRIC
     Name: Raydric
     Level: 52
     Hp: 8613
     Attack: 830
     Attack2: 930
     Defense: 40
     MagicDefense: 15
     Str: 58
     Agi: 47
     Vit: 42
     Int: 5
     Dex: 69
     Luk: 26
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 824
     AttackMotion: 780
+    ClientAttackMotion: 384
     DamageMotion: 420
     Ai: 04
   - Id: 1468
     AegisName: G_REQUIEM
     Name: Rquiem
     Level: 35
     Hp: 3089
     Attack: 220
     Attack2: 272
     MagicDefense: 15
     Agi: 53
     Vit: 35
     Int: 5
     Dex: 57
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1516
     AttackMotion: 816
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 04
   - Id: 1469
     AegisName: G_SKEL_WORKER
     Name: Esqueleto Operrio
     Level: 30
     Hp: 2872
     Attack: 242
     Attack2: 288
     MagicDefense: 15
     Agi: 15
     Vit: 30
     Int: 5
     Dex: 42
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2420
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 384
     Ai: 04
   - Id: 1470
     AegisName: G_ZEROM
     Name: Zerom
     Level: 23
     Hp: 1109
     Attack: 127
     Attack2: 155
     MagicDefense: 10
     Agi: 23
     Vit: 23
     Int: 5
     Dex: 42
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1780
     AttackMotion: 1080
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
   - Id: 1471
     AegisName: G_NINE_TAIL
     Name: Nove Caudas
     Level: 51
     Hp: 9466
     Attack: 610
     Attack2: 734
     Defense: 10
     MagicDefense: 25
     Agi: 80
     Vit: 46
     Dex: 89
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 840
     AttackMotion: 540
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 04
   - Id: 1472
     AegisName: G_BON_GUN
     Name: Bongun
     Level: 32
     Hp: 3520
     Attack: 220
     Attack2: 260
     Str: 45
     Agi: 15
     Vit: 36
     Int: 10
     Dex: 48
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1720
     AttackMotion: 500
+    ClientAttackMotion: 960
     DamageMotion: 420
     Ai: 04
   - Id: 1473
     AegisName: G_ORC_ARCHER
     Name: Orc Arqueiro
     Level: 49
     Hp: 7440
     Attack: 310
     Attack2: 390
     Defense: 10
     MagicDefense: 5
     Agi: 44
     Vit: 25
     Int: 20
     Dex: 125
     Luk: 20
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1960
     AttackMotion: 620
+    ClientAttackMotion: 864
     DamageMotion: 480
     Ai: 04
   - Id: 1474
     AegisName: G_MIMIC
     Name: Mmico
     Level: 51
     Hp: 6120
     Attack: 150
     Attack2: 900
     Defense: 10
     MagicDefense: 40
     Str: 44
     Agi: 121
     Int: 60
     Dex: 75
     Luk: 110
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 972
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 04
   - Id: 1475
     AegisName: G_WRAITH
     Name: Alma Penada
     Level: 53
     Hp: 10999
     Attack: 580
     Attack2: 760
     Defense: 5
     MagicDefense: 30
     Agi: 95
     Vit: 30
     Int: 65
     Dex: 95
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1816
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 04
   - Id: 1476
     AegisName: G_ALARM
     Name: Alarme
     Level: 58
     Hp: 10647
     Attack: 480
     Attack2: 600
     Defense: 15
     MagicDefense: 15
     Agi: 62
     Vit: 72
     Int: 10
     Dex: 85
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1020
     AttackMotion: 500
+    ClientAttackMotion: 540
     DamageMotion: 768
     Ai: 04
   - Id: 1477
     AegisName: G_ARCLOUSE
     Name: Arclouse
     JapaneseName: Arclouse
     Level: 59
     Hp: 6075
     Attack: 570
     Attack2: 640
     Defense: 10
     MagicDefense: 15
     Agi: 75
     Vit: 5
     Int: 5
     Dex: 75
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 960
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
   - Id: 1478
     AegisName: G_RIDEWORD
     Name: Rideword
     Level: 59
     Hp: 11638
     Attack: 584
     Attack2: 804
     Defense: 5
     MagicDefense: 35
     Str: 48
     Agi: 75
     Vit: 10
     Int: 20
     Dex: 120
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 864
     AttackMotion: 500
+    ClientAttackMotion: 468
     DamageMotion: 192
     Ai: 04
   - Id: 1479
     AegisName: G_SKEL_PRISONER
     Name: Esqueleto Prisioneiro
     Level: 52
     Hp: 8691
     Attack: 660
     Attack2: 890
     Defense: 10
     MagicDefense: 20
     Str: 55
     Agi: 20
     Vit: 36
+    Int: 0
     Dex: 76
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 350
     AttackDelay: 1848
     AttackMotion: 500
+    ClientAttackMotion: 864
     DamageMotion: 576
     Ai: 04
   - Id: 1480
     AegisName: G_ZOMBIE_PRISONER
     Name: Zumbi Prisioneiro
     Level: 53
     Hp: 11280
     Attack: 780
     Attack2: 930
     Defense: 10
     MagicDefense: 20
     Agi: 24
     Vit: 39
+    Int: 0
     Dex: 72
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 350
     AttackDelay: 1768
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 192
     Ai: 04
   - Id: 1481
     AegisName: G_PUNK
     Name: Punk
     Level: 43
     Hp: 3620
     Attack: 292
     Attack2: 365
     MagicDefense: 45
     Agi: 105
     Vit: 5
     Int: 45
     Dex: 65
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 1152
     DamageMotion: 1000
     Ai: 04
   - Id: 1482
     AegisName: G_ZHERLTHSH
     Name: Jirtas
     JapaneseName: Zherlthsh
     Level: 63
     Hp: 18300
     Attack: 700
     Attack2: 850
     Defense: 10
     MagicDefense: 15
     Str: 70
     Agi: 85
     Vit: 40
     Int: 30
     Dex: 125
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 800
     AttackMotion: 792
+    ClientAttackMotion: 1920
     DamageMotion: 384
     Ai: 04
   - Id: 1483
     AegisName: G_RYBIO
     Name: Rybio
     Level: 71
     Hp: 9572
     Attack: 686
     Attack2: 912
     Defense: 45
     MagicDefense: 37
     Agi: 97
     Vit: 75
     Int: 74
     Dex: 77
     Luk: 90
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1790
     AttackMotion: 1440
+    ClientAttackMotion: 900
     DamageMotion: 540
     Ai: 04
     Modes:
       Detector: true
   - Id: 1484
     AegisName: G_PHENDARK
     Name: Fendark
     Level: 73
     Hp: 22729
     Attack: 794
     Attack2: 1056
     Defense: 52
     MagicDefense: 36
     Agi: 62
     Vit: 120
     Int: 65
     Dex: 76
     Luk: 66
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1744
     AttackMotion: 1344
+    ClientAttackMotion: 960
     DamageMotion: 600
     Ai: 04
   - Id: 1485
     AegisName: G_MYSTELTAINN
     Name: Mysteltainn
     Level: 76
     Hp: 33350
     Attack: 1160
     Attack2: 1440
     Defense: 30
     MagicDefense: 30
     Str: 77
     Agi: 139
     Vit: 80
     Int: 35
     Dex: 159
     Luk: 65
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 1152
     AttackMotion: 500
+    ClientAttackMotion: 768
     DamageMotion: 240
     Ai: 04
     Class: Boss
   - Id: 1486
     AegisName: G_TIRFING
     Name: Tirfing
     JapaneseName: Tirfing
     Level: 71
     Hp: 29900
     Attack: 950
     Attack2: 1146
     Defense: 30
     MagicDefense: 35
     Str: 58
     Agi: 87
     Vit: 55
     Int: 35
     Dex: 132
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 816
     AttackMotion: 500
+    ClientAttackMotion: 576
     DamageMotion: 240
     Ai: 04
     Class: Boss
   - Id: 1487
     AegisName: G_EXECUTIONER
     Name: Executor
     Level: 65
     Hp: 28980
     Attack: 570
     Attack2: 950
     Defense: 35
     MagicDefense: 35
     Str: 64
     Agi: 85
     Vit: 40
     Int: 25
     Dex: 88
     Luk: 60
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 768
     AttackMotion: 500
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 04
     Class: Boss
   - Id: 1488
     AegisName: G_ANOLIAN
     Name: Anolian
     Level: 63
     Hp: 18960
     Attack: 640
     Attack2: 760
     Defense: 15
     MagicDefense: 15
     Agi: 43
     Vit: 58
     Int: 25
     Dex: 97
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 900
     AttackMotion: 500
+    ClientAttackMotion: 660
     DamageMotion: 864
     Ai: 04
   - Id: 1489
     AegisName: G_STING
     Name: Sting
     Level: 61
     Hp: 9500
     Attack: 850
     Attack2: 1032
     Defense: 5
     MagicDefense: 30
     Str: 57
     Agi: 45
     Vit: 55
     Int: 5
     Dex: 120
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 528
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 240
     Ai: 04
   - Id: 1490
     AegisName: G_WANDER_MAN
     Name: Andarilho
     JapaneseName: Wander Man
     Level: 74
     Hp: 8170
     Attack: 450
     Attack2: 1170
     Defense: 5
     MagicDefense: 5
     Agi: 192
     Vit: 38
     Int: 45
     Dex: 127
     Luk: 85
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 672
     AttackMotion: 500
+    ClientAttackMotion: 672
     DamageMotion: 192
     Ai: 04
     Modes:
       Detector: true
   - Id: 1491
     AegisName: G_DOKEBI
     Name: Dokebi
     Level: 33
     Hp: 2697
     Attack: 197
     Attack2: 249
     MagicDefense: 10
     Str: 50
     Agi: 50
     Vit: 40
     Int: 35
     Dex: 69
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1156
     AttackMotion: 456
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 04
     Modes:
       Detector: true
   - Id: 1492
     AegisName: INCANTATION_SAMURAI
     Name: Samurai Encarnado
     JapaneseName: Incantation Samurai
     Level: 71
     Hp: 218652
     BaseExp: 33095
     JobExp: 18214
     MvpExp: 16547
     Attack: 2219
     Attack2: 3169
     Defense: 10
     MagicDefense: 51
     Str: 91
     Agi: 85
     Vit: 30
     Int: 85
     Dex: 150
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 135
     AttackDelay: 874
     AttackMotion: 1344
+    ClientAttackMotion: 1152
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Seed_Of_Yggdrasil
         Rate: 3500
       - Item: Elunium
         Rate: 5500
     Drops:
       - Item: Masamune
         Rate: 2
       - Item: Elunium
         Rate: 3500
       - Item: Assassin_Mask_
         Rate: 500
       - Item: Yggdrasilberry
         Rate: 4500
       - Item: Steel
         Rate: 6305
       - Item: Huuma_Blaze
         Rate: 7500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -19077,791 +20371,834 @@ Body:
   - Id: 1493
     AegisName: DRYAD
     Name: Drade
     Level: 50
     Hp: 8791
     BaseExp: 2763
     JobExp: 1493
     Attack: 499
     Attack2: 589
     Defense: 15
     MagicDefense: 33
     Agi: 75
     Vit: 55
     Dex: 78
     Luk: 45
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 170
     AttackDelay: 950
     AttackMotion: 2520
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Tough_Vines
         Rate: 5335
       - Item: Great_Leaf
         Rate: 1000
       - Item: Browny_Root
         Rate: 3000
       - Item: Rope_
         Rate: 80
       - Item: Chemeti
         Rate: 1
       - Item: Centimental_Leaf
         Rate: 10
       - Item: Sharp_Leaf
         Rate: 3000
       - Item: Dryad_Card
         Rate: 1
         StealProtected: true
   - Id: 1494
     AegisName: KIND_OF_BEETLE
     Name: Besouro-Rei
     Level: 34
     Hp: 1874
     BaseExp: 679
     JobExp: 442
     Attack: 191
     Attack2: 243
     Defense: 45
     MagicDefense: 12
     Agi: 34
     Vit: 10
+    Int: 0
     Dex: 40
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1247
     AttackMotion: 768
+    ClientAttackMotion: 240
     DamageMotion: 576
     Ai: 03
     Modes:
       Detector: true
     Drops:
       - Item: Solid_Peeling
         Rate: 6500
       - Item: Beetle_Nipper
         Rate: 4500
       - Item: Insect_Feeler
         Rate: 1000
       - Item: Worm_Peelings
         Rate: 500
       - Item: Guard_
         Rate: 1
       - Item: Kind_Of_Beetle_Card
         Rate: 1
         StealProtected: true
   - Id: 1495
     AegisName: STONE_SHOOTER
     Name: Atirador de Pedras
     Level: 42
     Hp: 4104
     BaseExp: 1238
     JobExp: 752
     Attack: 309
     Attack2: 350
     Defense: 12
     MagicDefense: 45
     Agi: 40
     Vit: 20
     Int: 79
     Dex: 92
     Luk: 20
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 175
     AttackDelay: 2413
     AttackMotion: 1248
+    ClientAttackMotion: 96
     DamageMotion: 768
     Ai: 04
     Drops:
       - Item: Solid_Twig
         Rate: 5000
       - Item: Log
         Rate: 5000
       - Item: Browny_Root
         Rate: 1000
       - Item: Wooden_Block
         Rate: 2000
       - Item: Oridecon_Stone
         Rate: 100
       - Item: Stone
         Rate: 1000
       - Item: Stone_Shooter_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1496
+#    AegisName: STONE_SHOOTER_BULLET
+#    Name: Stone Shooter Bullet
+#    Size: Small
+#    Race: Formless
+#    Element: Neutral
+#    ElementLevel: 0
   - Id: 1497
     AegisName: WOODEN_GOLEM
     Name: Golem de Madeira
     Level: 51
     Hp: 9200
     BaseExp: 1926
     JobExp: 1353
     Attack: 570
     Attack2: 657
     Defense: 32
     MagicDefense: 36
     Agi: 41
     Vit: 69
     Int: 5
     Dex: 85
     Luk: 155
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     RaceGroups:
       Golem: true
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 165
     AttackDelay: 1543
     AttackMotion: 1632
+    ClientAttackMotion: 384
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Heart_Of_Tree
         Rate: 4000
       - Item: Browny_Root
         Rate: 4000
       - Item: Elunium_Stone
         Rate: 110
       - Item: Centimental_Leaf
         Rate: 10
       - Item: Branch_Of_Dead_Tree
         Rate: 100
       - Item: Log
         Rate: 5000
       - Item: Mushroom_Spore
         Rate: 1000
       - Item: Wooden_Golem_Card
         Rate: 1
         StealProtected: true
   - Id: 1498
     AegisName: WOOTAN_SHOOTER
     Name: Atirador Wootan
     Level: 39
     Hp: 3977
     BaseExp: 886
     JobExp: 453
     Attack: 84
     Attack2: 105
     Defense: 10
     MagicDefense: 28
     Str: 15
     Agi: 35
     Vit: 29
     Int: 15
     Dex: 100
     Luk: 42
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 857
     AttackMotion: 1056
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Air_Rifle
         Rate: 4500
       - Item: Flexible_String
         Rate: 3500
       - Item: Banana
         Rate: 1000
       - Item: Stone
         Rate: 1000
       - Item: Apple
         Rate: 100
       - Item: Cacao
         Rate: 100
       - Item: Banana_Hat
         Rate: 10
       - Item: Wootan_Shooter_Card
         Rate: 1
         StealProtected: true
   - Id: 1499
     AegisName: WOOTAN_FIGHTER
     Name: Guerreiro Wootan
     Level: 41
     Hp: 4457
     BaseExp: 1790
     JobExp: 833
     Attack: 395
     Attack2: 480
     Defense: 30
     MagicDefense: 19
     Agi: 41
     Vit: 31
     Int: 10
     Dex: 45
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 912
     AttackMotion: 1344
+    ClientAttackMotion: 420
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Meat
         Rate: 4500
       - Item: Shoulder_Protection
         Rate: 4000
       - Item: Waghnakh
         Rate: 3
       - Item: Finger_
         Rate: 1
       - Item: Banana
         Rate: 1000
       - Item: Great_Leaf
         Rate: 1000
       - Item: Banana_Hat
         Rate: 5
       - Item: Wootan_Fighter_Card
         Rate: 1
         StealProtected: true
   - Id: 1500
     AegisName: PARASITE
     Name: Parasita
     Level: 49
     Hp: 5188
     BaseExp: 1098
     JobExp: 1453
     Attack: 215
     Attack2: 430
     Defense: 10
     MagicDefense: 19
     Agi: 40
     Vit: 30
     Int: 30
     Dex: 90
     Luk: 50
     AttackRange: 8
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 864
     AttackMotion: 864
+    ClientAttackMotion: 288
     DamageMotion: 672
     Ai: 10
     Drops:
       - Item: Germinating_Sprout
         Rate: 5500
       - Item: Soft_Leaf
         Rate: 2000
       - Item: Thin_Stem
         Rate: 3880
       - Item: Great_Leaf
         Rate: 500
       - Item: Rante_
         Rate: 1
       - Item: Bladed_Whip
         Rate: 1
       - Item: Shoot
         Rate: 500
       - Item: Parasite_Card
         Rate: 1
         StealProtected: true
+#  - Id: 1501
+#    AegisName: PARASITE_BULLET
+#    Name: Parasite Bullet... (mode 2181)
+#    JapaneseName: Parasite Bullet
+#    Size: Small
+#    Race: Formless
+#    Element: Neutral
+#    ElementLevel: 0
   - Id: 1502
     AegisName: PORING_V
     Name: Pori!
     JapaneseName: Pori Pori
     Level: 99
     Hp: 95000000
     BaseExp: 87250
     JobExp: 27895
     MvpExp: 43625
     Attack: 10000
     Attack2: 30000
     MagicDefense: 10
     Str: 100
     Agi: 100
     Vit: 65
     Int: 100
     Dex: 255
     Luk: 255
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 160
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 04
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Sword_Of_Grave_Keeper
         Rate: 1000
       - Item: Poring__Card
         Rate: 100
       - Item: Elven_Ears
         Rate: 200
     Drops:
       - Item: Poring_Hat
         Rate: 10000
       - Item: Flame_Sprits_Armor
         Rate: 2500
       - Item: Water_Sprits_Armor
         Rate: 2500
       - Item: Earth_Sprits_Armor
         Rate: 2500
       - Item: Wind_Sprits_Armor
         Rate: 2500
       - Item: Bloody_Iron_Ball
         Rate: 4000
       - Item: Large_Jellopy
         Rate: 10000
       - Item: Holy_Guard
         Rate: 4500
         StealProtected: true
   - Id: 1503
     AegisName: GIBBET
     Name: rvore Maldita
     Level: 58
     Hp: 6841
     BaseExp: 4011
     JobExp: 1824
     Attack: 418
     Attack2: 656
     Defense: 28
     MagicDefense: 31
+    Str: 0
     Agi: 42
     Vit: 42
     Int: 27
     Dex: 46
     Luk: 28
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 180
     AttackDelay: 917
     AttackMotion: 1584
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Hanging_Doll
         Rate: 1800
       - Item: Rotten_Rope
         Rate: 5335
       - Item: Tree_Knot
         Rate: 4074
       - Item: Cardinal_Jewel_
         Rate: 300
       - Item: Red_Gemstone
         Rate: 100
       - Item: Branch_Of_Dead_Tree
         Rate: 10
       - Item: Gibbet_Card
         Rate: 1
         StealProtected: true
   - Id: 1504
     AegisName: DULLAHAN
     Name: Dullahan
     Level: 62
     Hp: 12437
     BaseExp: 4517
     JobExp: 2963
     Attack: 647
     Attack2: 1065
     Defense: 47
     MagicDefense: 38
+    Str: 0
     Agi: 30
     Vit: 5
     Int: 45
     Dex: 62
     Luk: 22
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 847
     AttackMotion: 1152
+    ClientAttackMotion: 384
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Dullahan's_Helm
         Rate: 3200
       - Item: Dullahan_Armor
         Rate: 4850
       - Item: An_Eye_Of_Dullahan
         Rate: 1
       - Item: Manteau
         Rate: 13
       - Item: Manteau_
         Rate: 1
       - Item: Dullahan_Card
         Rate: 1
         StealProtected: true
   - Id: 1505
     AegisName: LOLI_RURI
     Name: Loli Ruri
     Level: 71
     Hp: 23470
     BaseExp: 6641
     JobExp: 4314
     Attack: 1476
     Attack2: 2317
     Defense: 39
     MagicDefense: 44
+    Str: 0
     Agi: 66
     Vit: 54
     Int: 74
     Dex: 81
     Luk: 43
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 747
     AttackMotion: 1632
+    ClientAttackMotion: 1440
     DamageMotion: 576
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Black_Kitty_Doll
         Rate: 800
       - Item: Striped_Socks
         Rate: 3000
       - Item: Bat_Cage
         Rate: 5044
       - Item: Elunium
         Rate: 100
       - Item: Loki's_Whispers
         Rate: 1
       - Item: Lunatic_Brooch
         Rate: 5
       - Item: Loli_Ruri_Card
         Rate: 1
         StealProtected: true
   - Id: 1506
     AegisName: DISGUISE
     Name: Mascarado
     Level: 55
     Hp: 7543
     Sp: 180
     BaseExp: 2815
     JobExp: 1919
     Attack: 279
     Attack2: 546
     Defense: 18
     MagicDefense: 29
+    Str: 0
     Agi: 72
     Vit: 45
     Int: 35
     Dex: 48
     Luk: 65
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 147
     AttackDelay: 516
     AttackMotion: 768
+    ClientAttackMotion: 360
     DamageMotion: 384
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Red_Scarf
         Rate: 4850
       - Item: Tangled_Chain
         Rate: 3686
       - Item: Hood_
         Rate: 50
       - Item: Honey
         Rate: 100
       - Item: Ragamuffin_Cape
         Rate: 50
       - Item: Muffler_
         Rate: 2
       - Item: Rider_Insignia
         Rate: 5
       - Item: Disguise_Card
         Rate: 1
         StealProtected: true
   - Id: 1507
     AegisName: BLOODY_MURDERER
     Name: Serial Killer
     Level: 72
     Hp: 27521
     BaseExp: 9742
     JobExp: 3559
     Attack: 864
     Attack2: 1081
     Defense: 37
     MagicDefense: 41
+    Str: 0
     Agi: 30
     Vit: 90
     Int: 15
     Dex: 52
     Luk: 12
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 175
     AttackDelay: 914
     AttackMotion: 1344
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Old_Manteau
         Rate: 4171
       - Item: Distorted_Portrait
         Rate: 1000
       - Item: Rusty_Cleaver
         Rate: 2000
       - Item: Mr_Scream
         Rate: 50
       - Item: Oridecon
         Rate: 100
       - Item: Mama's_Knife
         Rate: 3
       - Item: Ginnungagap
         Rate: 1
       - Item: Bloody_Murderer_Card
         Rate: 1
         StealProtected: true
   - Id: 1508
     AegisName: QUVE
     Name: Quve
     Level: 40
     Hp: 4559
     BaseExp: 414
     JobExp: 306
     Attack: 299
     Attack2: 469
     Defense: 12
     MagicDefense: 12
+    Str: 0
     Agi: 61
     Vit: 24
     Int: 19
     Dex: 37
     Luk: 24
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 912
     AttackMotion: 1248
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Piece_Of_Black_Cloth
         Rate: 3200
       - Item: Ectoplasm
         Rate: 5723
       - Item: Wing_Of_Fly
         Rate: 1000
       - Item: Poison_Powder
         Rate: 100
       - Item: Oridecon_Stone
         Rate: 10
       - Item: Quve_Card
         Rate: 1
         StealProtected: true
   - Id: 1509
     AegisName: LUDE
     Name: Lude
     Level: 36
     Hp: 3214
     BaseExp: 392
     JobExp: 247
     Attack: 287
     Attack2: 451
     Defense: 14
     MagicDefense: 10
+    Str: 0
     Agi: 59
     Vit: 21
     Int: 18
     Dex: 36
     Luk: 21
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 890
     AttackMotion: 960
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Pumpkin_Bucket
         Rate: 3200
       - Item: Ectoplasm
         Rate: 5723
       - Item: Transparent_Cloth
         Rate: 1000
       - Item: Spirit_Chain
         Rate: 10
       - Item: Elunium_Stone
         Rate: 10
       - Item: Holy_Scroll_1_3
         Rate: 100
       - Item: Lude_Card
         Rate: 1
         StealProtected: true
   - Id: 1510
     AegisName: HYLOZOIST
     Name: Poltergeist
     JapaneseName: Hylozoist
     Level: 51
     Hp: 7186
     BaseExp: 2314
     JobExp: 1297
     Attack: 317
     Attack2: 498
     Defense: 16
     MagicDefense: 51
+    Str: 0
     Agi: 28
     Vit: 26
     Int: 47
     Dex: 66
     Luk: 14
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 741
     AttackMotion: 1536
+    ClientAttackMotion: 540
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Broken_Needle
         Rate: 4365
       - Item: Spool
         Rate: 5335
       - Item: Needle_Pouch
         Rate: 2000
       - Item: Stuffed_Doll
         Rate: 80
       - Item: Ectoplasm
         Rate: 300
       - Item: Elunium_Stone
         Rate: 10
       - Item: Angry_Mouth
         Rate: 1
       - Item: Hylozoist_Card
         Rate: 1
         StealProtected: true
   - Id: 1511
     AegisName: AMON_RA
     Name: Amon Ra
     Level: 88
     Hp: 1214138
     BaseExp: 87264
     JobExp: 35891
     MvpExp: 43632
     Attack: 1647
     Attack2: 2576
     Defense: 26
     MagicDefense: 52
+    Str: 0
     Vit: 90
     Int: 124
     Dex: 74
     Luk: 45
     AttackRange: 3
     SkillRange: 14
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 854
     AttackMotion: 2016
+    ClientAttackMotion: 720
     DamageMotion: 480
     Ai: 10
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Seed_Of_Yggdrasil
         Rate: 3500
       - Item: Crystal_Jewel__
         Rate: 5500
     Drops:
       - Item: Spinx_Helm
         Rate: 150
       - Item: Safety_Ring
         Rate: 50
       - Item: Rojerta_Piece
         Rate: 7760
       - Item: Elunium
         Rate: 3880
       - Item: Old_Card_Album
         Rate: 400
       - Item: Tablet
         Rate: 10
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -19876,2105 +21213,2185 @@ Body:
     JapaneseName: Hyegun
     Level: 56
     Hp: 9981
     BaseExp: 2199
     JobExp: 1022
     Attack: 710
     Attack2: 1128
     Defense: 12
     MagicDefense: 10
     Str: 60
     Agi: 40
     Vit: 36
     Int: 10
     Dex: 73
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 890
     AttackMotion: 1320
+    ClientAttackMotion: 1080
     DamageMotion: 720
     Ai: 04
     Drops:
       - Item: Brigan
         Rate: 3880
       - Item: Amulet
         Rate: 100
       - Item: Elunium
         Rate: 10
       - Item: Boots_
         Rate: 1
       - Item: Munak_Doll
         Rate: 300
       - Item: Hyegun_Card
         Rate: 1
         StealProtected: true
   - Id: 1513
     AegisName: CIVIL_SERVANT
     Name: Mao Guai
     JapaneseName: Mao Guai
     Level: 62
     Hp: 14390
     BaseExp: 4023
     JobExp: 2750
     Attack: 650
     Attack2: 1010
     Defense: 42
     MagicDefense: 5
     Str: 58
     Agi: 15
     Vit: 20
     Int: 60
     Dex: 80
     Luk: 50
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1257
     AttackMotion: 528
+    ClientAttackMotion: 864
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Fan
         Rate: 4171
       - Item: Cat_Eyed_Stone
         Rate: 2000
       - Item: Aloebera
         Rate: 10
       - Item: Fish_Tail
         Rate: 100
       - Item: Wind_Scroll_1_5
         Rate: 100
       - Item: Civil_Servant_Card
         Rate: 1
         StealProtected: true
   - Id: 1514
     AegisName: DANCING_DRAGON
     Name: Zhu Po Long
     JapaneseName: Zhu Po Long
     Level: 54
     Hp: 9136
     BaseExp: 3030
     JobExp: 769
     Attack: 550
     Attack2: 789
     Defense: 39
     MagicDefense: 10
     Str: 55
     Agi: 62
     Vit: 55
     Int: 25
     Dex: 72
     Luk: 22
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 600
     AttackMotion: 840
+    ClientAttackMotion: 480
     DamageMotion: 504
     Ai: 02
     Drops:
       - Item: Dragon_Fang
         Rate: 4365
       - Item: Dragon_Horn
         Rate: 3000
       - Item: Little_Blacky_Ghost
         Rate: 800
       - Item: Dragon_Scale
         Rate: 1000
       - Item: Yarn
         Rate: 3000
       - Item: Dancing_Dragon_Card
         Rate: 1
         StealProtected: true
   - Id: 1515
     AegisName: GARM_BABY
     Name: Filhote de Hatii
     JapaneseName: Garm Baby
     Level: 61
     Hp: 20199
     BaseExp: 1022
     JobExp: 2980
     Attack: 680
     Attack2: 1179
     Defense: 34
     MagicDefense: 13
     Str: 45
     Agi: 30
     Vit: 56
     Int: 55
     Dex: 85
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 450
     AttackDelay: 879
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Milk_Bottle
         Rate: 1500
       - Item: Bib
         Rate: 2500
       - Item: Ice_Piece
         Rate: 4365
       - Item: Frozen_Rose
         Rate: 100
       - Item: Cold_Scroll_2_5
         Rate: 100
       - Item: Garm_Baby_Card
         Rate: 1
         StealProtected: true
   - Id: 1516
     AegisName: INCREASE_SOIL
     Name: Mi Gao
     JapaneseName: Increase Soil
     Level: 51
     Hp: 8230
     BaseExp: 2760
     JobExp: 2110
     Attack: 560
     Attack2: 700
     Defense: 30
     MagicDefense: 12
     Str: 40
     Agi: 45
     Vit: 23
     Int: 12
     Dex: 69
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 445
     AttackDelay: 106
     AttackMotion: 1056
+    ClientAttackMotion: 624
     DamageMotion: 576
     Ai: 17
     Drops:
       - Item: Dried_Sand
         Rate: 4365
       - Item: Mud_Lump
         Rate: 2300
       - Item: Great_Nature
         Rate: 10
       - Item: Gold
         Rate: 2
       - Item: Increase_Soil_Card
         Rate: 1
         StealProtected: true
   - Id: 1517
     AegisName: LI_ME_MANG_RYANG
     Name: Jing Guai
     JapaneseName: Li Me Mang Ryang
     Level: 48
     Hp: 5920
     BaseExp: 1643
     JobExp: 1643
     Attack: 434
     Attack2: 633
     Defense: 23
     MagicDefense: 16
     Str: 46
     Agi: 51
     Vit: 19
     Int: 8
     Dex: 57
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1120
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 420
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Tiger_Skin_Panties
         Rate: 4500
       - Item: Little_Blacky_Ghost
         Rate: 400
       - Item: Club
         Rate: 10
       - Item: Spike
         Rate: 1
       - Item: Li_Me_Mang_Ryang_Card
         Rate: 1
         StealProtected: true
   - Id: 1518
     AegisName: BACSOJIN
     Name: Dama de Branco
     JapaneseName: Bacsojin
     Level: 72
     Hp: 56380
     BaseExp: 5590
     JobExp: 1659
     Attack: 560
     Attack2: 1446
     Defense: 10
     MagicDefense: 15
     Str: 38
     Agi: 65
     Vit: 34
     Int: 80
     Dex: 102
     Luk: 35
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Water
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 576
     AttackMotion: 960
+    ClientAttackMotion: 768
     DamageMotion: 480
     Ai: 21
     Drops:
       - Item: Long_Hair
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 2
       - Item: Old_Violet_Box
         Rate: 2
       - Item: Limpid_Celestial_Robe
         Rate: 3000
       - Item: Soft_Silk_Cloth
         Rate: 1000
       - Item: Crystal_Mirror
         Rate: 500
       - Item: Tiara
         Rate: 1
         StealProtected: true
   - Id: 1519
     AegisName: CHUNG_E
     Name: Chung E
     JapaneseName: Chung E
     Level: 49
     Hp: 23900
     BaseExp: 2396
     JobExp: 993
     Attack: 460
     Attack2: 1050
     Defense: 8
     MagicDefense: 15
     Str: 38
     Agi: 65
     Vit: 43
     Int: 30
     Dex: 90
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1728
     AttackMotion: 816
+    ClientAttackMotion: 240
     DamageMotion: 1188
     Ai: 21
     Drops:
       - Item: Cyfar
         Rate: 4850
       - Item: Stuffed_Doll
         Rate: 100
       - Item: Hora_
         Rate: 10
       - Item: Honey
         Rate: 500
       - Item: Tantanmen
         Rate: 20
       - Item: Hat_Of_Cake
         Rate: 50
       - Item: Hair_Protector
         Rate: 2
         StealProtected: true
   - Id: 1520
     AegisName: BOILED_RICE
     Name: Bolinho de Massa
     Level: 15
     Hp: 400
     BaseExp: 84
     JobExp: 45
     Attack: 49
     Attack2: 82
     MagicDefense: 10
     Agi: 14
     Vit: 14
+    Int: 0
     Dex: 19
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 170
     AttackDelay: 1152
     AttackMotion: 672
+    ClientAttackMotion: 432
     DamageMotion: 672
     Ai: 01
     Drops:
       - Item: Rice_Ball
         Rate: 5500
       - Item: Meat_Dumpling_Doll
         Rate: 3000
       - Item: Soft_Leaf
         Rate: 1000
       - Item: Great_Leaf
         Rate: 1000
   - Id: 1521
     AegisName: G_ALICE
     Name: Alice
     Level: 62
     Hp: 10000
     Attack: 550
     Attack2: 700
     Defense: 5
     MagicDefense: 5
     Str: 64
     Agi: 64
     Vit: 42
     Int: 85
     Dex: 100
     Luk: 130
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 520
     AttackMotion: 2304
+    ClientAttackMotion: 2112
     DamageMotion: 480
     Ai: 17
   - Id: 1522
     AegisName: G_ANCIENT_MUMMY
     Name: Mmia Anci
     Level: 64
     Hp: 40599
     Attack: 836
     Attack2: 1129
     Defense: 27
     MagicDefense: 27
     Str: 28
     Agi: 19
     Vit: 32
     Int: 5
     Dex: 83
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 175
     AttackDelay: 1772
     AttackMotion: 120
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
   - Id: 1523
     AegisName: G_ANTIQUE_FIRELOCK
     Name: Soldado Atirador
     JapaneseName: Antique Firelock
     Level: 47
     Hp: 3852
     Attack: 289
     Attack2: 336
     Defense: 10
     MagicDefense: 10
     Str: 15
     Agi: 35
     Vit: 29
     Int: 15
     Dex: 120
     Luk: 42
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1084
     AttackMotion: 2304
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 05
   - Id: 1524
     AegisName: G_BABY_LEOPARD
     Name: Leopardo Filhote
     Level: 32
     Hp: 2590
     Attack: 155
     Attack2: 207
     MagicDefense: 5
     Str: 20
     Agi: 44
     Vit: 20
     Int: 4
     Dex: 49
     Luk: 10
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 318
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 420
     Ai: 04
   - Id: 1525
     AegisName: G_BATHORY
     Name: Bathory
     Level: 44
     Hp: 5415
     Attack: 198
     Attack2: 398
     MagicDefense: 60
     Agi: 76
     Vit: 24
     Int: 85
     Dex: 65
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1504
     AttackMotion: 840
+    ClientAttackMotion: 288
     DamageMotion: 900
     Ai: 21
   - Id: 1526
     AegisName: G_BLOOD_BUTTERFLY
     Name: Borboleta Sanguinria
     Level: 55
     Hp: 8082
     Attack: 121
     Attack2: 342
     Defense: 5
     MagicDefense: 23
     Agi: 59
     Vit: 14
     Int: 55
     Dex: 68
     Luk: 15
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 145
     AttackDelay: 472
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 13
     Modes:
       Detector: true
   - Id: 1527
     AegisName: G_C_TOWER_MANAGER
     Name: Gerente
     Level: 63
     Hp: 18600
     Attack: 880
     Attack2: 1180
     Defense: 35
     MagicDefense: 30
     Agi: 75
     Vit: 20
     Int: 64
     Dex: 75
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 384
     Ai: 17
   - Id: 1528
     AegisName: G_CLOCK
     Name: Relgio
     Level: 60
     Hp: 11050
     Attack: 720
     Attack2: 909
     Defense: 15
     MagicDefense: 10
     Agi: 70
     Vit: 50
     Int: 25
     Dex: 90
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1092
     AttackMotion: 792
+    ClientAttackMotion: 432
     DamageMotion: 480
     Ai: 17
   - Id: 1529
     AegisName: G_DARK_SNAKE_LORD
     Name: Serpente Suprema
     JapaneseName: Dark Snake Lord
     Level: 73
     Hp: 254993
     Attack: 1433
     Attack2: 2210
     Defense: 25
     MagicDefense: 55
     Str: 70
     Agi: 83
     Vit: 62
     Int: 80
     Dex: 164
     Luk: 88
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 588
     AttackMotion: 816
+    ClientAttackMotion: 288
     DamageMotion: 420
     Ai: 21
     Class: Boss
   - Id: 1530
     AegisName: G_DRACULA
     Name: Drcula
     Level: 85
     Hp: 320096
     Attack: 1625
     Attack2: 1890
     Defense: 45
     MagicDefense: 76
     Agi: 95
     Vit: 90
     Int: 87
     Dex: 85
     Luk: 100
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 145
     AttackDelay: 1290
     AttackMotion: 1140
+    ClientAttackMotion: 780
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1531
     AegisName: G_EVIL_CLOUD_HERMIT
     Name: Ermito Maligno
     JapaneseName: Evil Cloud Hermit
     Level: 56
     Hp: 10392
     Attack: 311
     Attack2: 333
     Defense: 25
     MagicDefense: 59
     Agi: 20
     Vit: 18
     Int: 50
     Dex: 136
     Luk: 11
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 480
     AttackMotion: 840
+    ClientAttackMotion: 624
     DamageMotion: 432
     Ai: 05
   - Id: 1532
     AegisName: G_EXPLOSION
     Name: Estrondo
     Level: 46
     Hp: 8054
     Attack: 336
     Attack2: 447
     Defense: 35
     MagicDefense: 27
     Agi: 61
     Vit: 56
     Int: 50
     Dex: 66
     Luk: 38
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1260
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 336
     Ai: 04
   - Id: 1533
     AegisName: G_FUR_SEAL
     Name: Foca
     JapaneseName: Fur Seal
     Level: 63
     Hp: 9114
     Attack: 845
     Attack2: 1203
     Defense: 25
     MagicDefense: 33
     Str: 5
     Agi: 28
     Vit: 22
     Int: 15
     Dex: 69
     Luk: 84
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1612
     AttackMotion: 622
+    ClientAttackMotion: 576
     DamageMotion: 583
     Ai: 09
   - Id: 1534
     AegisName: G_GOBLIN_1
     Name: Goblin
     Level: 25
     Hp: 1176
     Attack: 118
     Attack2: 140
     Defense: 10
     MagicDefense: 5
     Agi: 53
     Vit: 25
     Int: 20
     Dex: 38
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 21
   - Id: 1535
     AegisName: G_GOBLIN_2
     Name: Goblin
     Level: 24
     Hp: 1034
     Attack: 88
     Attack2: 100
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 24
     Int: 15
     Dex: 66
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1320
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 09
   - Id: 1536
     AegisName: G_GOBLIN_3
     Name: Goblin
     Level: 24
     Hp: 1034
     Attack: 132
     Attack2: 165
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 24
     Int: 15
     Dex: 24
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 13
   - Id: 1537
     AegisName: G_GOBLIN_4
     Name: Goblin
     Level: 23
     Hp: 1359
     Attack: 109
     Attack2: 131
     Defense: 10
     MagicDefense: 5
     Agi: 23
     Vit: 46
     Int: 15
     Dex: 36
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 13
   - Id: 1538
     AegisName: G_GOBLIN_5
     Name: Goblin
     Level: 22
     Hp: 1952
     Attack: 105
     Attack2: 127
     Defense: 10
     MagicDefense: 5
     Agi: 22
     Vit: 22
     Int: 15
     Dex: 32
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 3074
     AttackMotion: 1874
+    ClientAttackMotion: 384
     DamageMotion: 480
     Ai: 13
   - Id: 1539
     AegisName: G_GOBLIN_LEADER
     Name: Lder Goblin
     Level: 64
     Hp: 20152
     Attack: 663
     Attack2: 752
     Defense: 48
     MagicDefense: 16
     Str: 5
     Agi: 55
     Vit: 37
     Int: 30
     Dex: 69
     Luk: 58
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 120
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 1056
     DamageMotion: 240
     Ai: 21
   - Id: 1540
     AegisName: G_GOLEM
     Name: Golem
     Level: 25
     Hp: 3900
     Attack: 175
     Attack2: 187
     Defense: 40
     Agi: 15
     Vit: 25
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1608
     AttackMotion: 816
+    ClientAttackMotion: 912
     DamageMotion: 396
     Ai: 17
   - Id: 1541
     AegisName: G_GREATEST_GENERAL
     Name: Guardio da Floresta
     Level: 40
     Hp: 3632
     Attack: 350
     Attack2: 400
     Defense: 15
     MagicDefense: 15
     Agi: 20
     Vit: 60
     Int: 55
     Dex: 82
     Luk: 140
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1152
     AttackMotion: 1152
+    ClientAttackMotion: 816
     DamageMotion: 384
     Ai: 10
   - Id: 1542
     AegisName: G_INCANTATION_SAMURA
     Name: Samurai Encarnado
     Level: 71
     Hp: 218652
     Attack: 1219
     Attack2: 2169
     Defense: 10
     MagicDefense: 51
     Str: 91
     Agi: 85
     Vit: 78
     Int: 85
     Dex: 150
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 135
     AttackDelay: 874
     AttackMotion: 1344
+    ClientAttackMotion: 1152
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1543
     AegisName: G_KAPHA
     Name: Kapha
     Level: 41
     Hp: 7892
     Attack: 399
     Attack2: 719
     Defense: 20
     MagicDefense: 38
     Agi: 51
     Vit: 49
     Int: 22
     Dex: 73
     Luk: 45
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 2012
     AttackMotion: 1728
+    ClientAttackMotion: 576
     DamageMotion: 672
     Ai: 04
   - Id: 1544
     AegisName: G_KARAKASA
     Name: Karakasa
     Level: 30
     Hp: 3092
     Attack: 141
     Attack2: 183
     Defense: 1
     MagicDefense: 5
     Agi: 45
     Vit: 12
     Int: 20
     Dex: 49
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 1638
     AttackMotion: 2016
+    ClientAttackMotion: 432
     DamageMotion: 576
     Ai: 01
   - Id: 1545
     AegisName: G_KOBOLD_1
     Name: Kobold
     Level: 36
     Hp: 3893
     Attack: 265
     Attack2: 318
     Defense: 15
     MagicDefense: 10
     Agi: 90
     Vit: 36
     Int: 30
     Dex: 52
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1028
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
   - Id: 1546
     AegisName: G_KOBOLD_2
     Name: Kobold
     Level: 31
     Hp: 2179
     Attack: 262
     Attack2: 324
     Defense: 15
     MagicDefense: 10
     Agi: 31
     Vit: 31
     Int: 20
     Dex: 46
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1528
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
   - Id: 1547
     AegisName: G_KOBOLD_3
     Name: Kobold
     Level: 31
     Hp: 2179
     Attack: 186
     Attack2: 216
     Defense: 15
     MagicDefense: 10
     Agi: 31
     Vit: 31
     Int: 20
     Dex: 88
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1228
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 13
   - Id: 1548
     AegisName: G_KOBOLD_LEADER
     Name: Lder Kobold
     Level: 65
     Hp: 18313
     Attack: 649
     Attack2: 958
     Defense: 37
     MagicDefense: 37
     Str: 5
     Agi: 90
     Vit: 36
     Int: 30
     Dex: 77
     Luk: 59
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1028
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 21
   - Id: 1549
     AegisName: G_LAVA_GOLEM
     Name: Golem de Lava
     Level: 77
     Hp: 24324
     Attack: 1541
     Attack2: 2049
     Defense: 65
     MagicDefense: 50
     Agi: 57
     Vit: 115
     Int: 70
     Dex: 76
     Luk: 68
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 2190
     AttackMotion: 2040
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 09
   - Id: 1550
     AegisName: G_LIVE_PEACH_TREE
     Name: Pessegueira Encantada
     JapaneseName: Live Peach Tree
     Level: 53
     Hp: 8905
     Attack: 301
     Attack2: 351
     Defense: 10
     MagicDefense: 38
     Str: 72
     Agi: 45
     Vit: 35
     Int: 39
     Dex: 80
     Luk: 5
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 410
     AttackDelay: 400
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 480
     Ai: 05
   - Id: 1551
     AegisName: G_MARSE
     Name: Marte
     Level: 31
     Hp: 5034
     Attack: 211
     Attack2: 252
     MagicDefense: 5
     Agi: 31
     Vit: 25
     Int: 5
     Dex: 52
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1956
     AttackMotion: 756
+    ClientAttackMotion: 468
     DamageMotion: 528
     Ai: 17
   - Id: 1552
     AegisName: G_MIYABI_NINGYO
     Name: Boneco de Miyabi
     JapaneseName: Miyabi Ningyo
     Level: 33
     Hp: 6300
     Attack: 250
     Attack2: 305
     Defense: 1
     MagicDefense: 20
     Agi: 52
     Vit: 15
     Int: 10
     Dex: 62
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1938
     AttackMotion: 2112
+    ClientAttackMotion: 1920
     DamageMotion: 768
     Ai: 17
     Modes:
       Detector: true
   - Id: 1553
     AegisName: G_MYST
     Name: Nvoa
     Level: 38
     Hp: 3745
     Attack: 365
     Attack2: 445
     MagicDefense: 40
     Agi: 38
     Vit: 18
+    Int: 0
     Dex: 53
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 21
   - Id: 1554
     AegisName: G_NIGHTMARE_TERROR
     Name: Pesadelo Sombrio
     Level: 78
     Hp: 22605
     Attack: 757
     Attack2: 1007
     Defense: 37
     MagicDefense: 37
     Agi: 76
     Vit: 55
     Int: 60
     Dex: 76
     Luk: 54
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1216
     AttackMotion: 816
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
   - Id: 1555
     AegisName: G_PARASITE
     Name: Parasita
     Level: 49
     Hp: 5188
     Attack: 215
     Attack2: 430
     Defense: 10
     MagicDefense: 19
     Agi: 40
     Vit: 30
     Int: 30
     Dex: 90
     Luk: 50
     AttackRange: 8
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 864
     AttackMotion: 864
+    ClientAttackMotion: 288
     DamageMotion: 672
     Ai: 10
   - Id: 1556
     AegisName: G_POISON_TOAD
     Name: Sapo Venenoso
     JapaneseName: Poison Toad
     Level: 46
     Hp: 6629
     Attack: 288
     Attack2: 408
     Defense: 5
     MagicDefense: 10
     Str: 20
     Agi: 34
     Vit: 19
     Int: 14
     Dex: 66
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 1148
     AttackMotion: 1728
+    ClientAttackMotion: 624
     DamageMotion: 864
     Ai: 01
   - Id: 1557
     AegisName: G_ROTAR_ZAIRO
     Name: Giro-Goblin
     Level: 25
     Hp: 1209
     Attack: 109
     Attack2: 137
     Defense: 4
     MagicDefense: 34
     Agi: 62
     Vit: 45
     Int: 26
     Dex: 55
     Luk: 5
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 2416
     AttackMotion: 2016
+    ClientAttackMotion: 1008
     DamageMotion: 432
     Ai: 05
   - Id: 1558
     AegisName: G_SAND_MAN
     Name: Arenoso
     Level: 34
     Hp: 3413
     Attack: 180
     Attack2: 205
     Defense: 10
     MagicDefense: 25
     Str: 24
     Agi: 34
     Vit: 58
     Int: 38
     Dex: 60
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 1672
     AttackMotion: 720
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 04
   - Id: 1559
     AegisName: G_SCORPION
     Name: Escorpio
     Level: 24
     Hp: 1109
     Attack: 80
     Attack2: 135
     Defense: 30
     Agi: 24
     Vit: 24
     Int: 5
     Dex: 52
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1564
     AttackMotion: 864
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 09
     Modes:
       Detector: true
   - Id: 1560
     AegisName: G_SHINOBI
     Name: Shinobi
     Level: 69
     Hp: 12700
     Attack: 460
     Attack2: 1410
     Defense: 34
     MagicDefense: 21
     Str: 85
     Agi: 85
     Vit: 25
     Int: 25
     Dex: 100
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     RaceGroups:
       Ninja: true
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1003
     AttackMotion: 1152
+    ClientAttackMotion: 2112
     DamageMotion: 336
     Ai: 21
   - Id: 1561
     AegisName: G_SMOKIE
     Name: Fumacento
     Level: 18
     Hp: 641
     Attack: 61
     Attack2: 72
     MagicDefense: 10
     Agi: 18
     Vit: 36
     Int: 25
     Dex: 26
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 420
     Ai: 17
   - Id: 1562
     AegisName: G_SOLDIER_SKELETON
     Name: Esqueleto Soldado
     Level: 29
     Hp: 2334
     Attack: 221
     Attack2: 245
     Defense: 10
     MagicDefense: 15
     Agi: 15
     Vit: 22
     Int: 5
     Dex: 40
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 2276
     AttackMotion: 576
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 04
   - Id: 1563
     AegisName: G_TENGU
     Name: Tengu
     Level: 65
     Hp: 16940
     Attack: 660
     Attack2: 980
     Defense: 12
     MagicDefense: 82
     Str: 90
     Agi: 42
     Vit: 69
     Int: 45
     Dex: 78
     Luk: 80
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1439
     AttackMotion: 1920
+    ClientAttackMotion: 624
     DamageMotion: 672
     Ai: 04
     Modes:
       Detector: true
   - Id: 1564
     AegisName: G_WICKED_NYMPH
     Name: Ninfa Perversa
     JapaneseName: Wicked Nymph
     Level: 63
     Hp: 16029
     Attack: 399
     Attack2: 1090
     Defense: 12
     MagicDefense: 75
     Agi: 64
     Vit: 12
     Int: 69
     Dex: 100
     Luk: 80
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 637
     AttackMotion: 1008
+    ClientAttackMotion: 576
     DamageMotion: 360
     Ai: 21
     Modes:
       Detector: true
   - Id: 1565
     AegisName: G_WILD_GINSENG
     Name: Ermito Selvagem
     JapaneseName: Wild Ginseng
     Level: 46
     Hp: 6900
     Attack: 220
     Attack2: 280
     Defense: 10
     MagicDefense: 20
     Str: 13
     Agi: 42
     Vit: 36
     Int: 55
     Dex: 66
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 140
     AttackDelay: 512
     AttackMotion: 756
+    ClientAttackMotion: 540
     DamageMotion: 360
     Ai: 17
   - Id: 1566
     AegisName: G_WRAITH_DEAD
     Name: Apario
     Level: 74
     Hp: 43021
     Attack: 1366
     Attack2: 1626
     Defense: 25
     MagicDefense: 30
     Str: 5
     Agi: 99
     Vit: 55
     Int: 75
     Dex: 115
     Luk: 45
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 175
     AttackDelay: 1816
     AttackMotion: 576
+    ClientAttackMotion: 720
     DamageMotion: 240
     Ai: 21
   - Id: 1567
     AegisName: G_ANCIENT_WORM
     Name: Verme Ancio
     Level: 67
     Hp: 22598
     Attack: 948
     Attack2: 1115
     Defense: 35
     MagicDefense: 30
     Str: 5
     Agi: 35
     Vit: 56
     Int: 55
     Dex: 81
     Luk: 72
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 165
     AttackDelay: 1792
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
   - Id: 1568
     AegisName: G_ANGELING
     Name: Angeling
     Level: 20
     Hp: 55000
     Attack: 120
     Attack2: 195
     MagicDefense: 70
     Agi: 50
     Vit: 20
     Int: 75
     Dex: 68
     Luk: 200
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 312
     DamageMotion: 672
     Ai: 21
     Class: Boss
   - Id: 1569
     AegisName: G_BLOODY_KNIGHT
     Name: Cavaleiro Sanguinrio
     Level: 82
     Hp: 57870
     Attack: 2150
     Attack2: 3030
     Defense: 60
     MagicDefense: 50
     Str: 88
     Agi: 75
     Vit: 70
     Int: 77
     Dex: 125
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 828
     AttackMotion: 528
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 21
   - Id: 1570
     AegisName: G_CRAMP
     Name: Cibra
     Level: 56
     Hp: 4720
     Attack: 395
     Attack2: 465
     MagicDefense: 5
     Agi: 85
     Vit: 35
     Int: 5
     Dex: 65
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 1000
     AttackMotion: 500
+    ClientAttackMotion: 648
     DamageMotion: 1000
     Ai: 09
   - Id: 1571
     AegisName: G_DEVIACE
     Name: Deviace
     Level: 47
     Hp: 19192
     Attack: 514
     Attack2: 674
     Defense: 10
     MagicDefense: 20
     Agi: 47
     Vit: 62
     Int: 48
     Dex: 62
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 1680
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 17
   - Id: 1572
     AegisName: G_DROPS
     Name: Drops
     Level: 3
     Hp: 55
     Attack: 10
     Attack2: 13
     Agi: 3
     Vit: 3
+    Int: 0
     Dex: 12
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1372
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
   - Id: 1573
     AegisName: G_ELDER
     Name: Ancio
     Level: 64
     Hp: 21592
     Attack: 421
     Attack2: 560
     Defense: 45
     MagicDefense: 68
     Agi: 76
     Vit: 68
     Int: 108
     Dex: 72
     Luk: 86
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 165
     AttackDelay: 1552
     AttackMotion: 1152
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 04
   - Id: 1574
     AegisName: G_ELDER_WILOW
     Name: Salgueiro Ancio
     Level: 20
     Hp: 693
     Attack: 58
     Attack2: 70
     Defense: 10
     MagicDefense: 30
     Agi: 20
     Vit: 25
     Int: 35
     Dex: 38
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1372
     AttackMotion: 672
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 09
   - Id: 1575
     AegisName: G_FLORA
     Name: Flora
     Level: 26
     Hp: 2092
     Attack: 242
     Attack2: 273
     Defense: 10
     MagicDefense: 35
     Agi: 26
     Vit: 35
     Int: 5
     Dex: 43
     Luk: 80
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1432
     AttackMotion: 432
+    ClientAttackMotion: 180
     DamageMotion: 576
     Ai: 10
   - Id: 1576
     AegisName: G_GHOSTRING
     Name: Ghostring
     Level: 18
     Hp: 73300
     Attack: 82
     Attack2: 122
     MagicDefense: 60
     Str: 40
     Agi: 27
     Vit: 18
     Int: 45
     Dex: 72
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1220
     AttackMotion: 1080
+    ClientAttackMotion: 336
     DamageMotion: 648
     Ai: 21
     Class: Boss
   - Id: 1577
     AegisName: G_GOBLIN_ARCHER
     Name: Goblin Arqueiro
     Level: 28
     Hp: 1750
     Attack: 89
     Attack2: 113
     Str: 10
     Agi: 15
     Vit: 20
     Int: 15
     Dex: 72
     Luk: 20
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1172
     AttackMotion: 672
+    ClientAttackMotion: 528
     DamageMotion: 420
     Ai: 05
   - Id: 1578
     AegisName: G_HORONG
     Name: Horong
     Level: 34
     Hp: 1939
     Attack: 275
     Attack2: 327
     Defense: 99
     MagicDefense: 50
     Agi: 34
     Vit: 10
+    Int: 0
     Dex: 50
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 1888
     AttackMotion: 1152
+    ClientAttackMotion: 552
     DamageMotion: 828
     Ai: 13
   - Id: 1579
     AegisName: G_HYDRA
     Name: Hidra
     Level: 14
     Hp: 660
     Attack: 22
     Attack2: 28
     MagicDefense: 40
     Agi: 14
     Vit: 14
+    Int: 0
     Dex: 40
     Luk: 2
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 800
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 10
   - Id: 1580
     AegisName: G_INCUBUS
     Name: Incubus
     Level: 75
     Hp: 17281
     Attack: 1408
     Attack2: 1873
     Defense: 58
     MagicDefense: 46
     Agi: 97
     Vit: 95
     Int: 103
     Dex: 89
     Luk: 87
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 850
     AttackMotion: 600
+    ClientAttackMotion: 420
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
   - Id: 1581
     AegisName: G_VOCAL
     Name: Vocal
     Level: 18
     Hp: 3016
     Attack: 71
     Attack2: 82
     Defense: 10
     MagicDefense: 30
     Str: 77
     Agi: 28
     Vit: 26
     Int: 30
     Dex: 53
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1080
     AttackMotion: 648
+    ClientAttackMotion: 600
     DamageMotion: 480
     Ai: 21
     Modes:
       Detector: true
   - Id: 1582
     AegisName: DEVILING
     Name: Deviling
     Level: 31
     Hp: 64500
     BaseExp: 211
     JobExp: 412
     Attack: 135
     Attack2: 270
     Defense: 5
     MagicDefense: 70
     Str: 30
     Agi: 50
     Vit: 20
     Int: 75
     Dex: 77
     Luk: 200
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1072
     AttackMotion: 1056
+    ClientAttackMotion: 864
     DamageMotion: 384
     Ai: 21
     Class: Boss
     Drops:
       - Item: Petite_DiablOfs_Wing
         Rate: 3000
       - Item: Zargon
         Rate: 4850
       - Item: Satanic_Chain
         Rate: 100
       - Item: Apple
         Rate: 5000
       - Item: Blade_Lost_In_Darkness
         Rate: 1
       - Item: Black_Dyestuffs
         Rate: 100
       - Item: Ghost_Scroll_1_3
         Rate: 100
       - Item: Deviling_Card
         Rate: 1
         StealProtected: true
   - Id: 1583
     AegisName: TAO_GUNKA
     Name: Tao Gunka
     Level: 70
     Hp: 193000
     BaseExp: 59175
     JobExp: 10445
     MvpExp: 29587
     Attack: 1450
     Attack2: 1770
     Defense: 20
     MagicDefense: 20
     Agi: 85
     Vit: 78
     Int: 35
     Dex: 140
     Luk: 60
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1020
     AttackMotion: 288
+    ClientAttackMotion: 384
     DamageMotion: 144
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Oridecon
         Rate: 6000
       - Item: Old_Violet_Box
         Rate: 3000
       - Item: Blue_Potion
         Rate: 6000
     Drops:
       - Item: Gemstone
         Rate: 4850
       - Item: Stone_Piece
         Rate: 4850
       - Item: Golden_Jewel
         Rate: 1000
       - Item: Binoculars
         Rate: 400
       - Item: White_Potion
         Rate: 3000
       - Item: Iron_Ore
         Rate: 1000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -21988,1448 +23405,1494 @@ Body:
     Name: Tamruan
     Level: 52
     Hp: 10234
     BaseExp: 3812
     JobExp: 55
     Attack: 489
     Attack2: 534
     Defense: 15
     MagicDefense: 35
     Str: 80
     Agi: 62
     Vit: 38
     Int: 75
     Dex: 72
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 140
     AttackDelay: 512
     AttackMotion: 1152
+    ClientAttackMotion: 384
     DamageMotion: 672
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Sword_Accessory
         Rate: 4850
       - Item: Broken_Armor_Piece
         Rate: 3000
       - Item: Katana_
         Rate: 40
       - Item: Bastard_Sword_
         Rate: 8
       - Item: Chain_Mail_
         Rate: 3
       - Item: Tamruan_Card
         Rate: 1
         StealProtected: true
   - Id: 1585
     AegisName: MIME_MONKEY
     Name: Macaco Mimado
     Level: 40
     Hp: 6000
     BaseExp: 200
     JobExp: 22
     Attack: 300
     Attack2: 350
     Defense: 40
     MagicDefense: 40
     Agi: 40
     Vit: 40
     Int: 40
     Dex: 40
     Luk: 30
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 240
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Jellopy
         Rate: 7000
       - Item: Knife_
         Rate: 100
       - Item: Sticky_Mucus
         Rate: 400
       - Item: Apple
         Rate: 1000
       - Item: Empty_Bottle
         Rate: 1500
       - Item: Poring_Doll
         Rate: 5
       - Item: Unripe_Apple
         Rate: 20
   - Id: 1586
     AegisName: LEAF_CAT
     Name: Gato de Folha
     Level: 38
     Hp: 2396
     BaseExp: 165
     JobExp: 1212
     Attack: 266
     Attack2: 307
     Defense: 5
     MagicDefense: 19
     Str: 25
     Agi: 67
     Vit: 12
     Int: 45
     Dex: 60
     Luk: 29
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 960
     AttackMotion: 864
+    ClientAttackMotion: 720
     DamageMotion: 720
     Ai: 02
     Drops:
       - Item: Great_Leaf
         Rate: 4365
       - Item: Leaflet_Of_Hinal
         Rate: 300
       - Item: Seed_Of_Yggdrasil
         Rate: 5
       - Item: Fish_Tail
         Rate: 1100
       - Item: Lemon
         Rate: 250
       - Item: Prawn
         Rate: 500
       - Item: Leaf_Clothes
         Rate: 5335
       - Item: Leaf_Cat_Card
         Rate: 1
         StealProtected: true
   - Id: 1587
     AegisName: KRABEN
     Name: Kraben
     Level: 50
     Hp: 5880
     BaseExp: 206
     JobExp: 1322
     Attack: 125
     Attack2: 765
     Defense: 5
     MagicDefense: 42
     Str: 50
     Agi: 125
     Int: 66
     Dex: 75
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 1152
     AttackMotion: 1536
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 09
     Drops:
       - Item: Zargon
         Rate: 3500
       - Item: Milk
         Rate: 3000
       - Item: Leaflet_Of_Aloe
         Rate: 1000
       - Item: Guard_
         Rate: 1
       - Item: Bamboo_Basket
         Rate: 4850
       - Item: Chilli
         Rate: 1000
       - Item: Old_Blue_Box
         Rate: 10
       - Item: Kraben_Card
         Rate: 1
         StealProtected: true
   - Id: 1588
     AegisName: ORC_XMAS
     Name: Orc Natalino
     Level: 24
     Hp: 1400
     BaseExp: 261
     JobExp: 160
     Attack: 104
     Attack2: 126
     Defense: 10
     MagicDefense: 5
     Agi: 24
     Vit: 48
     Int: 25
     Dex: 34
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 672
     DamageMotion: 288
     Ai: 01
     Drops:
       - Item: Iron
         Rate: 210
       - Item: Orcish_Voucher
         Rate: 5500
       - Item: Oridecon_Stone
         Rate: 40
       - Item: Packing_Paper
         Rate: 1600
       - Item: Battle_Axe_
         Rate: 10
       - Item: Gift_Box
         Rate: 15
       - Item: Packing_Ribbon
         Rate: 1600
       - Item: Orc_Warrior_Card
         Rate: 1
         StealProtected: true
   - Id: 1589
     AegisName: G_MANDRAGORA
     Name: Mandrgora
     Level: 12
     Hp: 405
     Attack: 26
     Attack2: 35
     MagicDefense: 25
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 36
     Luk: 15
     AttackRange: 4
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 10
   - Id: 1590
     AegisName: G_GEOGRAPHER
     Name: Planta Carnvora
     Level: 56
     Hp: 8071
     Attack: 467
     Attack2: 621
     Defense: 28
     MagicDefense: 26
     Agi: 66
     Vit: 47
     Int: 60
     Dex: 68
     Luk: 44
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1308
     AttackMotion: 1008
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
   - Id: 1591
     AegisName: A_LUNATIC
     Name: Luntico
     Level: 29
     Hp: 2334
     Attack: 221
     Attack2: 245
     Defense: 10
     MagicDefense: 20
     Agi: 15
     Vit: 22
     Int: 5
     Dex: 40
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1456
     AttackMotion: 456
+    ClientAttackMotion: 264
     DamageMotion: 336
     Ai: 01
     Class: Guardian
     Modes:
       KnockBackImmune: true
     Drops:
       - Item: Orange_Potion
         Rate: 2000
   - Id: 1592
     AegisName: A_MOBSTER
     Name: Yakuza
     Level: 40
     Hp: 8000
     Attack: 300
     Attack2: 355
     Defense: 20
     MagicDefense: 27
     Agi: 50
     Vit: 45
     Int: 45
     Dex: 73
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 560
+    ClientAttackMotion: 576
     DamageMotion: 580
     Ai: 03
     Class: Boss
     Drops:
       - Item: Stone
         Rate: 10000
       - Item: Wing_Of_Fly
         Rate: 2000
       - Item: Cutter__
         Rate: 3000
       - Item: Empty_Bottle
         Rate: 1000
       - Item: Popped_Rice
         Rate: 10000
   - Id: 1593
     AegisName: A_ANCIENT_MUMMY
     Name: Mmia Anci
     Level: 52
     Hp: 8613
     Attack: 830
     Attack2: 930
     Defense: 40
     MagicDefense: 27
     Str: 58
     Agi: 47
     Vit: 42
     Int: 5
     Dex: 69
     Luk: 26
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 175
     AttackDelay: 1772
     AttackMotion: 120
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 17
     Class: Guardian
     Modes:
       Aggressive: true
       KnockBackImmune: true
     Drops:
       - Item: Orange_Potion
         Rate: 2000
   - Id: 1594
     AegisName: G_FREEZER
     Name: Congelador
     Level: 72
     Hp: 8636
     Attack: 671
     Attack2: 983
     Defense: 55
     MagicDefense: 43
     Str: 69
     Agi: 41
     Vit: 59
     Int: 5
     Dex: 67
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 540
     DamageMotion: 528
     Ai: 21
   - Id: 1595
     AegisName: G_MARIN
     Name: Marin
     Level: 15
     Hp: 742
     Attack: 39
     Attack2: 43
     MagicDefense: 10
     Agi: 10
     Vit: 10
     Int: 5
     Dex: 35
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 01
   - Id: 1596
     AegisName: G_TAMRUAN
     Name: Tamruan
     Level: 52
     Hp: 10234
     Attack: 489
     Attack2: 534
     Defense: 15
     MagicDefense: 35
     Str: 80
     Agi: 62
     Vit: 38
     Int: 75
     Dex: 72
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 140
     AttackDelay: 512
     AttackMotion: 1152
+    ClientAttackMotion: 384
     DamageMotion: 672
     Ai: 13
     Modes:
       Detector: true
   - Id: 1597
     AegisName: G_GARGOYLE
     Name: Grgula
     Level: 48
     Hp: 3950
     Attack: 290
     Attack2: 360
     Defense: 10
     MagicDefense: 10
     Str: 15
     Agi: 61
     Vit: 20
     Int: 20
     Dex: 126
     Luk: 40
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1020
     AttackMotion: 720
+    ClientAttackMotion: 600
     DamageMotion: 384
     Ai: 05
     Modes:
       Detector: true
   - Id: 1598
     AegisName: G_BLAZZER
     Name: Labareda
     Level: 43
     Hp: 8252
     Attack: 533
     Attack2: 709
     Defense: 50
     MagicDefense: 40
     Agi: 52
     Vit: 50
     Int: 39
     Dex: 69
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 1732
     AttackMotion: 1332
+    ClientAttackMotion: 468
     DamageMotion: 540
     Ai: 20
     Modes:
       Detector: true
   - Id: 1599
     AegisName: G_WHISPER_BOSS
     Name: Cochicho
     Level: 34
     Hp: 5040
     Attack: 198
     Attack2: 239
     MagicDefense: 45
     Agi: 51
     Vit: 14
+    Int: 0
     Dex: 60
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 2536
     AttackMotion: 1536
+    ClientAttackMotion: 1344
     DamageMotion: 672
     Ai: 21
     Modes:
       Detector: true
   - Id: 1600
     AegisName: G_HEATER
     Name: Aquecedor
     Level: 68
     Hp: 11020
     Attack: 683
     Attack2: 1008
     Defense: 40
     MagicDefense: 42
     Str: 69
     Agi: 47
     Vit: 25
     Int: 5
     Dex: 71
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 1200
     DamageMotion: 528
     Ai: 21
   - Id: 1601
     AegisName: G_PERMETER
     Name: Batedor
     Level: 63
     Hp: 8228
     Attack: 943
     Attack2: 1211
     Defense: 46
     MagicDefense: 45
     Str: 69
     Agi: 59
     Vit: 60
     Int: 5
     Dex: 69
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 483
+    ClientAttackMotion: 720
     DamageMotion: 528
     Ai: 21
   - Id: 1602
     AegisName: G_SOLIDER
     Name: Soldado
     Level: 70
     Hp: 12099
     Attack: 797
     Attack2: 979
     Defense: 57
     MagicDefense: 43
     Str: 69
     Agi: 35
     Vit: 85
     Int: 5
     Dex: 74
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 1248
     DamageMotion: 528
     Ai: 21
   - Id: 1603
     AegisName: G_BIGFOOT
     Name: P Grande
     Level: 25
     Hp: 1619
     Attack: 198
     Attack2: 220
     Defense: 10
     Agi: 25
     Vit: 55
     Int: 15
     Dex: 20
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 17
   - Id: 1604
     AegisName: G_GIANT_HONET
     Name: Zango Gigante
     Level: 56
     Hp: 13105
     Attack: 650
     Attack2: 852
     Defense: 38
     MagicDefense: 43
     Str: 35
     Agi: 38
     Vit: 32
     Int: 10
     Dex: 71
     Luk: 64
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 155
     AttackDelay: 1292
     AttackMotion: 792
+    ClientAttackMotion: 648
     DamageMotion: 340
     Ai: 21
     Modes:
       Detector: true
   - Id: 1605
     AegisName: G_DARK_ILLUSION
     Name: Iluso das Trevas
     Level: 77
     Hp: 103631
     Attack: 1300
     Attack2: 1983
     Defense: 64
     MagicDefense: 70
     Str: 5
     Agi: 100
     Vit: 40
     Int: 100
     Dex: 97
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 145
     AttackDelay: 1024
     AttackMotion: 768
+    ClientAttackMotion: 5280
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1606
     AegisName: G_GARM_BABY
     Name: Filho de Hatii
     JapaneseName: Garm Baby
     Level: 61
     Hp: 20199
     Attack: 680
     Attack2: 1179
     Defense: 34
     MagicDefense: 13
     Str: 45
     Agi: 30
     Vit: 56
     Int: 55
     Dex: 85
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 450
     AttackDelay: 879
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
   - Id: 1607
     AegisName: G_GOBLINE_XMAS
     Name: Goblin Natalino
     Level: 25
     Hp: 1176
     Attack: 118
     Attack2: 140
     Defense: 10
     MagicDefense: 5
     Agi: 53
     Vit: 25
     Int: 20
     Dex: 38
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 21
   - Id: 1608
     AegisName: G_THIEF_BUG__
     Name: Besouro-Ladro Fmea
     Level: 19
     Hp: 583
     Attack: 76
     Attack2: 88
     Defense: 15
     MagicDefense: 5
     Agi: 29
     Vit: 16
     Int: 5
     Dex: 36
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 988
     AttackMotion: 288
+    ClientAttackMotion: 720
     DamageMotion: 768
     Ai: 13
     Modes:
       Detector: true
   - Id: 1609
     AegisName: G_DANCING_DRAGON
     Name: Zhu Po Long
     JapaneseName: Dancing Dragon
     Level: 54
     Hp: 9136
     BaseExp: 3030
     JobExp: 769
     Attack: 550
     Attack2: 789
     Defense: 39
     MagicDefense: 10
     Str: 55
     Agi: 62
     Vit: 55
     Int: 25
     Dex: 72
     Luk: 22
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 600
     AttackMotion: 840
+    ClientAttackMotion: 480
     DamageMotion: 504
     Ai: 02
     Class: Guardian
     Modes:
       KnockBackImmune: true
     Drops:
       - Item: Lucky_Candy
         Rate: 500
       - Item: Lucky_Candy_Cane
         Rate: 50
       - Item: Lucky_Cookie
         Rate: 20
       - Item: Carrot
         Rate: 10000
       - Item: Fire_Cracker
         Rate: 5000
       - Item: Handsei
         Rate: 100
         StealProtected: true
   - Id: 1610
     AegisName: A_MUNAK
     Name: Munak
     Level: 30
     Hp: 2872
     Attack: 40
     Attack2: 50
     Agi: 15
     Vit: 20
     Int: 5
     Dex: 120
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 2468
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 288
     Ai: 04
     Class: Boss
     Drops:
       - Item: Orange_Potion
         Rate: 2000
       - Item: Slow_Down_Potion
         Rate: 100
       - Item: Speed_Up_Potion
         Rate: 100
         StealProtected: true
   - Id: 1611
     AegisName: A_BON_GUN
     Name: Bongun
     Level: 32
     Hp: 3520
     Attack: 220
     Attack2: 260
     Str: 45
     Agi: 15
     Vit: 36
     Int: 10
     Dex: 48
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1720
     AttackMotion: 500
+    ClientAttackMotion: 960
     DamageMotion: 420
     Ai: 09
     Class: Boss
     Drops:
       - Item: Orange_Potion
         Rate: 2000
       - Item: Slow_Down_Potion
         Rate: 100
       - Item: Speed_Up_Potion
         Rate: 100
         StealProtected: true
   - Id: 1612
     AegisName: A_HYEGUN
     Name: Yao Jun
     JapaneseName: Hyegun
     Level: 56
     Hp: 9981
     Attack: 710
     Attack2: 1128
     Defense: 12
     MagicDefense: 10
     Str: 60
     Agi: 40
     Vit: 36
     Int: 10
     Dex: 73
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 180
     AttackDelay: 890
     AttackMotion: 1320
+    ClientAttackMotion: 1080
     DamageMotion: 720
     Ai: 04
     Class: Boss
     Drops:
       - Item: Orange_Potion
         Rate: 2000
       - Item: Slow_Down_Potion
         Rate: 100
       - Item: Speed_Up_Potion
         Rate: 100
         StealProtected: true
   - Id: 1613
     AegisName: METALING
     Name: Metaling
     Level: 26
     Hp: 889
     BaseExp: 492
     JobExp: 249
     Attack: 135
     Attack2: 270
     Defense: 5
     MagicDefense: 3
     Str: 30
     Agi: 15
     Vit: 10
     Int: 18
     Dex: 35
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 384
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
     Drops:
       - Item: Tube
         Rate: 4000
       - Item: Iron_Ore
         Rate: 1000
       - Item: Iron
         Rate: 500
       - Item: Large_Jellopy
         Rate: 1000
       - Item: Screw
         Rate: 200
       - Item: Crimson_Bolt_
         Rate: 5
       - Item: Jubilee
         Rate: 5000
       - Item: Metaling_Card
         Rate: 1
         StealProtected: true
   - Id: 1614
     AegisName: MINERAL
     Name: Mineral
     Level: 56
     Hp: 7950
     BaseExp: 3563
     JobExp: 1768
     Attack: 723
     Attack2: 812
     Defense: 29
     MagicDefense: 35
     Str: 60
     Agi: 52
     Vit: 35
     Int: 21
     Dex: 67
     Luk: 32
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 648
     AttackMotion: 480
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 17
     Drops:
       - Item: Fragment_Of_Crystal
         Rate: 3000
       - Item: Golden_Jewel
         Rate: 500
       - Item: Emperium
         Rate: 2
       - Item: Oridecon
         Rate: 80
       - Item: Emveretarcon
         Rate: 800
       - Item: Yellow_Gemstone
         Rate: 100
       - Item: Gold
         Rate: 2
       - Item: Mineral_Card
         Rate: 1
         StealProtected: true
   - Id: 1615
     AegisName: OBSIDIAN
     Name: Obsidiana
     Level: 50
     Hp: 8812
     BaseExp: 2799
     JobExp: 1802
     Attack: 841
     Attack2: 980
     Defense: 35
     MagicDefense: 5
     Str: 62
     Agi: 32
     Vit: 42
     Int: 24
     Dex: 61
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 350
     AttackDelay: 720
     AttackMotion: 864
+    ClientAttackMotion: 624
     DamageMotion: 504
     Ai: 04
     Drops:
       - Item: Dark_Crystal_Fragment
         Rate: 3000
       - Item: Crystal_Jewel
         Rate: 500
       - Item: Coal
         Rate: 500
       - Item: Elunium
         Rate: 50
       - Item: Steel
         Rate: 500
       - Item: Unholy_Touch
         Rate: 10
       - Item: Obsidian_Card
         Rate: 1
         StealProtected: true
   - Id: 1616
     AegisName: PITMAN
     Name: Mineiros
     Level: 43
     Hp: 5015
     BaseExp: 1799
     JobExp: 1083
     Attack: 290
     Attack2: 486
     Defense: 22
     MagicDefense: 26
+    Str: 0
     Agi: 15
     Vit: 5
     Int: 5
     Dex: 52
     Luk: 36
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 960
     AttackMotion: 336
+    ClientAttackMotion: 240
     DamageMotion: 300
     Ai: 17
     Drops:
       - Item: Old_Pick
         Rate: 3000
       - Item: Old_Steel_Plate
         Rate: 500
       - Item: Iron
         Rate: 800
       - Item: Steel
         Rate: 500
       - Item: Coal
         Rate: 100
       - Item: Lantern
         Rate: 1000
       - Item: Headlamp
         Rate: 80
       - Item: Pitman_Card
         Rate: 1
         StealProtected: true
   - Id: 1617
     AegisName: WASTE_STOVE
     Name: Fornalha Velha
     JapaneseName: Waste Stove
     Level: 68
     Hp: 15895
     BaseExp: 4412
     JobExp: 1135
     Attack: 692
     Attack2: 1081
     Defense: 23
     MagicDefense: 10
     Str: 20
     Agi: 69
     Vit: 55
     Int: 5
     Dex: 59
     Luk: 77
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1152
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Battered_Kettle
         Rate: 1000
       - Item: Burn_Tree
         Rate: 1000
       - Item: Iron
         Rate: 500
       - Item: Lusty_Iron
         Rate: 50
       - Item: Iron_Ore
         Rate: 1000
       - Item: Branch_Of_Dead_Tree
         Rate: 50
       - Item: Old_Steel_Plate
         Rate: 3800
       - Item: Waste_Stove_Card
         Rate: 1
         StealProtected: true
   - Id: 1618
     AegisName: UNGOLIANT
     Name: Ungoliant
     Level: 69
     Hp: 29140
     BaseExp: 8211
     JobExp: 142
     Attack: 1290
     Attack2: 2280
     Defense: 25
     MagicDefense: 25
     Str: 33
     Agi: 52
     Vit: 57
     Int: 25
     Dex: 119
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Insect
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 350
     AttackDelay: 420
     AttackMotion: 576
+    ClientAttackMotion: 240
     DamageMotion: 420
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Long_Limb
         Rate: 4500
       - Item: Jaws_Of_Ant
         Rate: 3500
       - Item: Colorful_Shell
         Rate: 1000
       - Item: Olivine
         Rate: 1500
       - Item: Fluorescent_Liquid
         Rate: 2500
       - Item: Dark_Red_Jewel
         Rate: 1500
       - Item: Boots_
         Rate: 500
       - Item: Ungoliant_Card
         Rate: 1
         StealProtected: true
   - Id: 1619
     AegisName: PORCELLIO
     Name: Porcellio
     Level: 28
     Hp: 1654
     BaseExp: 512
     JobExp: 346
     Attack: 82
     Attack2: 247
     MagicDefense: 8
+    Str: 0
     Agi: 31
     Vit: 21
     Int: 50
     Dex: 54
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 720
     AttackMotion: 360
+    ClientAttackMotion: 120
     DamageMotion: 360
     Ai: 02
     Modes:
       Detector: true
     Drops:
       - Item: Jubilee
         Rate: 5000
       - Item: Main_Gauche_
         Rate: 25
       - Item: Insect_Feeler
         Rate: 1000
       - Item: Single_Cell
         Rate: 3000
       - Item: Dew_Laden_Moss
         Rate: 2
       - Item: Fluorescent_Liquid
         Rate: 30
       - Item: Porcellio_Card
         Rate: 1
         StealProtected: true
   - Id: 1620
     AegisName: NOXIOUS
     Name: Nuvem Txica
     Level: 35
     Hp: 2038
     BaseExp: 698
     JobExp: 698
     Attack: 299
     Attack2: 400
     MagicDefense: 60
     Str: 12
     Agi: 41
     Vit: 10
     Int: 30
     Dex: 44
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 350
     AttackDelay: 768
     AttackMotion: 1440
+    ClientAttackMotion: 528
     DamageMotion: 672
     Ai: 04
     Drops:
       - Item: Poisonous_Gas
         Rate: 1000
       - Item: Mould_Powder
         Rate: 3000
       - Item: Anodyne
         Rate: 50
       - Item: Air_Pollutant
         Rate: 3000
       - Item: Old_Blue_Box
         Rate: 1
       - Item: Noxious_Card
         Rate: 1
         StealProtected: true
   - Id: 1621
     AegisName: VENOMOUS
     Name: Nuvem Venenosa
     Level: 42
     Hp: 4653
     BaseExp: 1780
     JobExp: 1280
     Attack: 422
     Attack2: 844
     MagicDefense: 49
     Str: 12
     Agi: 60
     Vit: 17
     Int: 19
     Dex: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 350
     AttackDelay: 768
     AttackMotion: 1440
+    ClientAttackMotion: 528
     DamageMotion: 672
     Ai: 04
     Drops:
       - Item: Air_Pollutant
         Rate: 5000
       - Item: Spawns
         Rate: 3000
       - Item: Poison_Powder
         Rate: 1000
       - Item: Poisonous_Gas
         Rate: 2000
       - Item: Old_Blue_Box
         Rate: 1
       - Item: Venomous_Card
         Rate: 1
         StealProtected: true
   - Id: 1622
     AegisName: TEDDY_BEAR
     Name: Ursinho
     Level: 71
     Hp: 8109
     BaseExp: 5891
     JobExp: 3455
     Attack: 621
     Attack2: 1432
     Defense: 19
     MagicDefense: 32
     Str: 5
     Agi: 155
     Vit: 32
     Int: 41
     Dex: 121
     Luk: 26
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 512
     AttackMotion: 780
+    ClientAttackMotion: 600
     DamageMotion: 504
     Ai: 20
     Drops:
       - Item: Screw
         Rate: 3800
       - Item: Honey
         Rate: 1000
       - Item: Oridecon_Hammer
         Rate: 300
       - Item: Gold_Lux
         Rate: 5
       - Item: Angry_Mouth
         Rate: 50
       - Item: Cursed_Lucky_Brooch
         Rate: 10
       - Item: Elunium
         Rate: 100
       - Item: Teddy_Bear_Card
         Rate: 1
         StealProtected: true
   - Id: 1623
     AegisName: RSX_0806
     Name: RSX-0806
     JapaneseName: RSX 0806
     Level: 86
     Hp: 560733
     BaseExp: 31010
     JobExp: 32011
     MvpExp: 15505
     Attack: 2740
     Attack2: 5620
     Defense: 39
     MagicDefense: 41
     Str: 85
     Agi: 51
     Vit: 30
     Int: 25
     Dex: 93
     Luk: 84
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 220
     AttackDelay: 128
     AttackMotion: 1104
+    ClientAttackMotion: 480
     DamageMotion: 240
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Dark_Blindfold
         Rate: 3500
       - Item: Crystal_Jewel__
         Rate: 5500
     Drops:
       - Item: Wheel
         Rate: 6000
       - Item: House_Auger
         Rate: 10
       - Item: House_Auger_
         Rate: 1
       - Item: Old_Violet_Box
         Rate: 1000
       - Item: Headlamp
         Rate: 5000
       - Item: Counter_Dagger
         Rate: 50
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -23442,267 +24905,275 @@ Body:
     AegisName: G_WASTE_STOVE
     Name: Fornalha Velha
     JapaneseName: Waste Stove
     Level: 68
     Hp: 15895
     Attack: 500
     Attack2: 889
     Defense: 23
     MagicDefense: 10
     Str: 20
     Agi: 69
     Vit: 55
     Int: 5
     Dex: 79
     Luk: 77
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 220
     AttackDelay: 1152
     AttackMotion: 528
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 04
   - Id: 1625
     AegisName: G_PORCELLIO
     Name: Porcellio
     Level: 43
     Hp: 5523
     BaseExp: 1024
     JobExp: 693
     Attack: 164
     Attack2: 494
     MagicDefense: 8
+    Str: 0
     Agi: 31
     Vit: 21
     Int: 50
     Dex: 64
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 720
     AttackMotion: 360
+    ClientAttackMotion: 120
     DamageMotion: 360
     Ai: 04
     Modes:
       Detector: true
   - Id: 1626
     AegisName: G_DARK_PRIEST
     Name: Espectro de Hellion
     Level: 88
     Hp: 286900
     BaseExp: 1
     JobExp: 1
     Attack: 50
     Attack2: 3150
     Defense: 25
     MagicDefense: 50
     Agi: 80
     Vit: 50
     Int: 99
     Dex: 130
     Luk: 99
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 432
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 21
     Class: Boss
     Drops:
       - Item: Eye_Of_Hellion
         Rate: 8000
       - Item: Eye_Of_Hellion
         Rate: 5000
       - Item: Eye_Of_Hellion
         Rate: 3000
       - Item: Eye_Of_Hellion
         Rate: 1000
       - Item: Eye_Of_Hellion
         Rate: 500
       - Item: Eye_Of_Hellion
         Rate: 100
   - Id: 1627
     AegisName: ANOPHELES
     Name: Anopheles
     Level: 23
     Hp: 100
     BaseExp: 99
     JobExp: 55
     Attack: 48
     Attack2: 63
     MagicDefense: 90
     Agi: 200
     Vit: 4
     Int: 5
     Dex: 120
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 140
     AttackMotion: 864
+    ClientAttackMotion: 384
     DamageMotion: 430
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Wing_Of_Fly
         Rate: 1000
       - Item: Spawns
         Rate: 500
       - Item: Anopheles_Card
         Rate: 1
         StealProtected: true
   - Id: 1628
     AegisName: MOLE
     Name: Holden
     JapaneseName: Mole
     Level: 36
     Hp: 2209
     BaseExp: 268
     JobExp: 172
     Attack: 52
     Attack2: 63
     MagicDefense: 5
     Str: 24
     Agi: 18
     Vit: 23
     Int: 30
     Dex: 45
     Luk: 5
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 140
     AttackMotion: 960
+    ClientAttackMotion: 240
     DamageMotion: 504
     Ai: 03
     Drops:
       - Item: Moustache_Of_Mole
         Rate: 5000
       - Item: Nail_Of_Mole
         Rate: 5000
       - Item: Super_Novice_Hat_
         Rate: 50
       - Item: Six_Shooter_
         Rate: 5
       - Item: Mole_Card
         Rate: 1
         StealProtected: true
   - Id: 1629
     AegisName: HILL_WIND
     Name: Vento da Colina
     Level: 43
     Hp: 3189
     BaseExp: 1800
     JobExp: 1100
     Attack: 290
     Attack2: 480
     Defense: 10
     MagicDefense: 15
     Str: 21
     Agi: 42
     Vit: 31
     Int: 50
     Dex: 41
     Luk: 23
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 336
     AttackMotion: 540
+    ClientAttackMotion: 360
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Meat
         Rate: 1000
       - Item: Monster's_Feed
         Rate: 1000
       - Item: Hill_Wind_Card
         Rate: 1
         StealProtected: true
   - Id: 1630
     AegisName: BACSOJIN_
     Name: Dama de Branco
     JapaneseName: Lady Branca
     Level: 85
     Hp: 253221
     BaseExp: 45250
     JobExp: 16445
     MvpExp: 22625
     Attack: 1868
     Attack2: 6124
     Defense: 20
     MagicDefense: 55
     Str: 52
     Agi: 65
     Vit: 44
     Int: 112
     Dex: 152
     Luk: 35
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 130
     AttackDelay: 576
     AttackMotion: 960
+    ClientAttackMotion: 768
     DamageMotion: 480
     Ai: 04
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Celestial_Robe
         Rate: 2000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Long_Hair
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Tantanmen
         Rate: 50
       - Item: Limpid_Celestial_Robe
         Rate: 3000
       - Item: Soft_Silk_Cloth
         Rate: 1000
       - Item: Red_Silk_Seal
         Rate: 100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -23717,680 +25188,696 @@ Body:
     JapaneseName: Chung E
     Level: 59
     Hp: 23900
     BaseExp: 4256
     JobExp: 920
     Attack: 460
     Attack2: 1050
     Defense: 8
     MagicDefense: 15
     Str: 38
     Agi: 65
     Vit: 43
     Int: 30
     Dex: 90
     Luk: 15
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1728
     AttackMotion: 816
+    ClientAttackMotion: 240
     DamageMotion: 1188
     Ai: 04
     Drops:
       - Item: Cyfar
         Rate: 4200
       - Item: Stuffed_Doll
         Rate: 100
       - Item: Hora_
         Rate: 10
       - Item: Honey
         Rate: 500
       - Item: Tantanmen
         Rate: 10
       - Item: Hair_Protector
         Rate: 50
       - Item: Chung_E_Card
         Rate: 1
         StealProtected: true
   - Id: 1632
     AegisName: GREMLIN
     Name: Gremlin
     Level: 53
     Hp: 9280
     BaseExp: 4355
     JobExp: 1768
     Attack: 329
     Attack2: 762
     Defense: 29
     MagicDefense: 25
     Str: 80
     Agi: 41
     Vit: 59
     Int: 75
     Dex: 62
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 140
     AttackDelay: 432
     AttackMotion: 540
+    ClientAttackMotion: 240
     DamageMotion: 432
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Will_Of_Darkness
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Violet_Jewel
         Rate: 100
       - Item: Boots_
         Rate: 1
       - Item: Bloody_Roar
         Rate: 1
       - Item: Old_Blue_Box
         Rate: 2
       - Item: Gremlin_Card
         Rate: 1
         StealProtected: true
   - Id: 1633
     AegisName: BEHOLDER
     Name: Beholder
     Level: 56
     Hp: 7950
     BaseExp: 4821
     JobExp: 3822
     Attack: 723
     Attack2: 812
     Defense: 17
     MagicDefense: 30
     Str: 60
     Agi: 62
     Vit: 25
     Int: 59
     Dex: 85
     Luk: 32
     AttackRange: 6
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 336
     AttackMotion: 840
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 17
     Drops:
       - Item: Prickly_Fruit
         Rate: 3000
       - Item: Anodyne
         Rate: 100
       - Item: Rough_Wind
         Rate: 100
       - Item: Elunium
         Rate: 10
       - Item: Old_Blue_Box
         Rate: 2
       - Item: Beholder_Card
         Rate: 1
         StealProtected: true
   - Id: 1634
     AegisName: SEYREN
     Name: Seyren Windsor
     JapaneseName: Seyren
     Level: 91
     Hp: 88402
     BaseExp: 100000
     JobExp: 116460
     Attack: 2100
     Attack2: 2530
     Defense: 63
     MagicDefense: 12
     Str: 90
     Agi: 89
     Vit: 72
     Int: 20
     Dex: 99
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 3000
       - Item: Dragon_Killer
         Rate: 2
       - Item: Claymore
         Rate: 200
       - Item: Old_Blue_Box
         Rate: 30
       - Item: Helm_
         Rate: 12
       - Item: Plate_Armor_
         Rate: 1
       - Item: Ruber
         Rate: 1
       - Item: Seyren_Card
         Rate: 1
         StealProtected: true
   - Id: 1635
     AegisName: EREMES
     Name: Eremes Guile
     JapaneseName: Eremes
     Level: 87
     Hp: 60199
     BaseExp: 100000
     JobExp: 99800
     Attack: 2020
     Attack2: 2320
     Defense: 23
     MagicDefense: 12
     Str: 45
     Agi: 138
     Vit: 31
     Int: 19
     Dex: 99
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Poison
     ElementLevel: 4
     WalkSpeed: 180
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Lab_Staff_Record
         Rate: 2000
       - Item: Krishna
         Rate: 1
       - Item: Pauldron
         Rate: 1
       - Item: Nail_Of_Loki
         Rate: 3
       - Item: Various_Jur
         Rate: 30
       - Item: Poison_Bottle
         Rate: 110
       - Item: Thief_Clothes_
         Rate: 2
       - Item: Eremes_Card
         Rate: 1
         StealProtected: true
   - Id: 1636
     AegisName: HARWORD
     Name: Howard Alt-Eisen
     JapaneseName: Harword
     Level: 83
     Hp: 78690
     BaseExp: 100000
     JobExp: 112540
     Attack: 1890
     Attack2: 2390
     Defense: 59
     MagicDefense: 10
     Str: 90
     Agi: 62
     Vit: 99
     Int: 35
     Dex: 98
     Luk: 66
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 4
     WalkSpeed: 180
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 09
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 3000
       - Item: Pauldron
         Rate: 1
       - Item: Vecer_Axe
         Rate: 1
       - Item: Two_Handed_Axe_
         Rate: 110
       - Item: Buckler_
         Rate: 10
       - Item: Clothes_Of_The_Lord
         Rate: 1
       - Item: Old_Blue_Box
         Rate: 50
       - Item: Harword_Card
         Rate: 1
         StealProtected: true
   - Id: 1637
     AegisName: MAGALETA
     Name: Margaretha Sorin
     JapaneseName: Magaleta
     Level: 90
     Hp: 61282
     BaseExp: 100000
     JobExp: 117800
     Attack: 1300
     Attack2: 2053
     Defense: 35
     MagicDefense: 60
     Agi: 9
     Vit: 97
     Int: 145
     Dex: 88
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 20
     Drops:
       - Item: Lab_Staff_Record
         Rate: 2000
       - Item: Croce_Staff
         Rate: 2
       - Item: Rod_
         Rate: 200
       - Item: Hardback
         Rate: 10
       - Item: Holy_Robe
         Rate: 1
       - Item: Old_Blue_Box
         Rate: 50
       - Item: Muffler_
         Rate: 10
       - Item: Magaleta_Card
         Rate: 1
         StealProtected: true
   - Id: 1638
     AegisName: SHECIL
     Name: Cecil Damon
     JapaneseName: Shecil
     Level: 82
     Hp: 58900
     BaseExp: 100000
     JobExp: 118260
     Attack: 1226
     Attack2: 1854
     Defense: 25
     MagicDefense: 15
     Agi: 145
     Vit: 27
     Int: 32
     Dex: 134
     Luk: 80
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 09
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 3000
       - Item: Imma_Arrow_Container
         Rate: 110
       - Item: Tights_
         Rate: 10
       - Item: CrossBow_
         Rate: 100
       - Item: Ori_Arrow_Container
         Rate: 150
       - Item: Old_Blue_Box
         Rate: 50
       - Item: Falken_Blitz
         Rate: 1
       - Item: Shecil_Card
         Rate: 1
         StealProtected: true
   - Id: 1639
     AegisName: KATRINN
     Name: Kathryne Keyron
     JapaneseName: Katrinn
     Level: 92
     Hp: 47280
     BaseExp: 100000
     JobExp: 116470
     Attack: 497
     Attack2: 1697
     Defense: 10
     MagicDefense: 74
     Agi: 5
     Vit: 77
     Int: 180
     Dex: 110
     Luk: 39
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 20
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 3000
       - Item: Old_Blue_Box
         Rate: 50
       - Item: La'cryma_Stick
         Rate: 1
       - Item: Survival_Rod2_
         Rate: 5
       - Item: Guard_
         Rate: 30
       - Item: Pair_Of_Red_Ribbon
         Rate: 1
       - Item: Shoes_
         Rate: 20
       - Item: Katrinn_Card
         Rate: 1
         StealProtected: true
   - Id: 1640
     AegisName: G_SEYREN
     Name: Lorde Seyren
     Level: 99
     Hp: 347590
     BaseExp: 18000
     JobExp: 10000
     Attack: 4238
     Attack2: 5040
     Defense: 72
     MagicDefense: 37
     Str: 120
     Agi: 110
     Vit: 81
     Int: 65
     Dex: 130
     Luk: 52
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1641
     AegisName: G_EREMES
     Name: Algoz Eremes
     Level: 99
     Hp: 211230
     BaseExp: 18000
     JobExp: 10000
     Attack: 3189
     Attack2: 5289
     Defense: 27
     MagicDefense: 39
     Str: 90
     Agi: 181
     Vit: 62
     Int: 37
     Dex: 122
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1642
     AegisName: G_HARWORD
     Name: Mestre-Ferreiro Howard
     JapaneseName: Whitesmith Harword
     Level: 99
     Hp: 310000
     BaseExp: 18000
     JobExp: 10000
     Attack: 4822
     Attack2: 5033
     Defense: 66
     MagicDefense: 36
     Str: 100
     Agi: 73
     Vit: 112
     Int: 35
     Dex: 136
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1643
     AegisName: G_MAGALETA
     Name: Sacerdotisa Margaretha
     JapaneseName: High Priest Magaleta
     Level: 99
     Hp: 182910
     BaseExp: 18000
     JobExp: 10000
     Attack: 1688
     Attack2: 2580
     Defense: 35
     MagicDefense: 78
     Agi: 84
     Vit: 64
     Int: 182
     Dex: 92
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1644
     AegisName: G_SHECIL
     Name: Atiradora de Elite Cecil
     JapaneseName: Sniper Shecil
     Level: 99
     Hp: 209000
     BaseExp: 18000
     JobExp: 10000
     Attack: 1892
     Attack2: 5113
     Defense: 22
     MagicDefense: 35
     Agi: 180
     Vit: 39
     Int: 67
     Dex: 193
     Luk: 130
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1645
     AegisName: G_KATRINN
     Name: Arquimaga Kathryne
     JapaneseName: High Wizard Katrinn
     Level: 99
     Hp: 189920
     BaseExp: 18000
     JobExp: 10000
     Attack: 497
     Attack2: 2094
     Defense: 10
     MagicDefense: 88
     Agi: 89
     Vit: 42
     Int: 223
     Dex: 128
     Luk: 93
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Old_Violet_Box
         Rate: 10
         StealProtected: true
   - Id: 1646
     AegisName: B_SEYREN
     Name: Lorde Seyren
     Level: 99
     Hp: 1647590
     BaseExp: 4835600
     JobExp: 1569970
     MvpExp: 2417800
     Attack: 7238
     Attack2: 11040
     Defense: 72
     MagicDefense: 37
     Str: 120
     Agi: 110
     Vit: 81
     Int: 65
     Dex: 130
     Luk: 52
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Edge
         Rate: 2500
       - Item: Full_Plate_Armor_
         Rate: 3500
       - Item: Grave_
         Rate: 9000
       - Item: Brionac
         Rate: 3500
       - Item: Longinus's_Spear
         Rate: 3000
       - Item: Dragon_Slayer
         Rate: 2500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24405,50 +25892,51 @@ Body:
     Level: 99
     Hp: 1411230
     BaseExp: 4083400
     JobExp: 1592380
     MvpExp: 2041700
     Attack: 4189
     Attack2: 8289
     Defense: 37
     MagicDefense: 39
     Str: 90
     Agi: 181
     Vit: 62
     Int: 37
     Dex: 122
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Moonlight_Sword
         Rate: 1500
       - Item: House_Auger
         Rate: 1500
       - Item: Glittering_Clothes
         Rate: 9000
       - Item: Exercise
         Rate: 3500
       - Item: Assasin_Dagger
         Rate: 3500
       - Item: Bloody_Roar
         Rate: 3500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24464,50 +25952,51 @@ Body:
     Level: 99
     Hp: 1460000
     BaseExp: 4002340
     JobExp: 1421000
     MvpExp: 2001170
     Attack: 7822
     Attack2: 8251
     Defense: 66
     MagicDefense: 36
     Str: 100
     Agi: 73
     Vit: 112
     Int: 35
     Dex: 136
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Mysteltainn_
         Rate: 3500
       - Item: Byeorrun_Gum
         Rate: 2500
       - Item: Clothes_Of_The_Lord
         Rate: 9000
       - Item: Sabbath
         Rate: 3500
       - Item: Great_Axe
         Rate: 3500
       - Item: Guillotine
         Rate: 2500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24522,50 +26011,51 @@ Body:
     JapaneseName: High Priest Magaleta
     Level: 99
     Hp: 1092910
     BaseExp: 4257000
     JobExp: 1318800
     MvpExp: 2128500
     Attack: 4688
     Attack2: 5580
     Defense: 35
     MagicDefense: 78
     Agi: 84
     Vit: 64
     Int: 182
     Dex: 92
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Berserk
         Rate: 3500
       - Item: Safety_Ring
         Rate: 2500
       - Item: Celestial_Robe
         Rate: 9000
       - Item: Book_Of_The_Apocalypse
         Rate: 3500
       - Item: Quadrille
         Rate: 3500
       - Item: Grand_Cross
         Rate: 2500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24580,50 +26070,51 @@ Body:
     JapaneseName: Sniper Shecil
     Level: 99
     Hp: 1349000
     BaseExp: 4093000
     JobExp: 1526000
     MvpExp: 2046500
     Attack: 4892
     Attack2: 9113
     Defense: 22
     MagicDefense: 35
     Agi: 180
     Vit: 39
     Int: 67
     Dex: 193
     Luk: 130
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 750
       - Item: Old_Blue_Box
         Rate: 750
       - Item: Luna_Bow
         Rate: 300
     Drops:
       - Item: Combat_Knife
         Rate: 350
       - Item: Sucsamad
         Rate: 350
       - Item: Old_Violet_Box
         Rate: 900
       - Item: Moonlight_Sword
         Rate: 150
       - Item: Grimtooth_
         Rate: 350
       - Item: Bow_Of_Rudra
         Rate: 150
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24638,50 +26129,51 @@ Body:
     JapaneseName: High Wizard Katrinn
     Level: 99
     Hp: 1069920
     BaseExp: 4008200
     JobExp: 1636700
     MvpExp: 2004100
     Attack: 1197
     Attack2: 4394
     Defense: 10
     MagicDefense: 88
     Agi: 89
     Vit: 42
     Int: 223
     Dex: 128
     Luk: 93
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Cursed_Dagger
         Rate: 3500
       - Item: Counter_Dagger
         Rate: 3500
       - Item: Critical_Ring
         Rate: 9000
       - Item: Robe_Of_Casting
         Rate: 2500
       - Item: Celestial_Robe
         Rate: 2500
       - Item: Survival_Rod_
         Rate: 3000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -24696,336 +26188,343 @@ Body:
     JapaneseName: Ygnizem
     Level: 58
     Hp: 11200
     BaseExp: 4870
     JobExp: 98
     Attack: 823
     Attack2: 1212
     Defense: 35
     MagicDefense: 8
     Str: 60
     Agi: 35
     Vit: 52
     Int: 18
     Dex: 79
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 145
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Lab_Staff_Record
         Rate: 1000
       - Item: Katzbalger
         Rate: 1
       - Item: Two_Hand_Sword_
         Rate: 20
       - Item: Saber_
         Rate: 20
       - Item: Padded_Armor_
         Rate: 10
       - Item: Slayer_
         Rate: 80
       - Item: Plate_Armor_
         Rate: 1
       - Item: Ygnizem_Card
         Rate: 1
         StealProtected: true
   - Id: 1653
     AegisName: WHIKEBAIN
     Name: Wickebine Tres
     JapaneseName: Whikebain
     Level: 62
     Hp: 7320
     BaseExp: 4204
     JobExp: 21
     Attack: 693
     Attack2: 889
     Defense: 9
     MagicDefense: 8
     Agi: 102
     Vit: 34
     Int: 20
     Dex: 83
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 2000
       - Item: Forturn_Sword
         Rate: 1
       - Item: Adventurere's_Suit_
         Rate: 40
       - Item: Gladius_
         Rate: 10
       - Item: Chain_Mail_
         Rate: 2
       - Item: Ring_Of_Rogue
         Rate: 2
       - Item: Coward_
         Rate: 10
       - Item: Whikebain_Card
         Rate: 1
         StealProtected: true
   - Id: 1654
     AegisName: ARMAIA
     Name: Armeyer Dinze
     JapaneseName: Armaia
     Level: 66
     Hp: 7110
     BaseExp: 4008
     JobExp: 35
     Attack: 750
     Attack2: 913
     Defense: 42
     MagicDefense: 6
     Str: 5
     Agi: 36
     Vit: 50
     Int: 15
     Dex: 89
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 1000
       - Item: Muffler_
         Rate: 1
       - Item: Buster_
         Rate: 50
       - Item: Battle_Axe_
         Rate: 40
       - Item: Mink_Coat
         Rate: 10
       - Item: Axe_
         Rate: 80
       - Item: Windhawk
         Rate: 10
       - Item: Armaia_Card
         Rate: 1
         StealProtected: true
   - Id: 1655
     AegisName: EREND
     Name: Errende Ebecee
     JapaneseName: Erend
     Level: 59
     Hp: 6980
     BaseExp: 4501
     JobExp: 67
     Attack: 896
     Attack2: 1159
     Defense: 14
     MagicDefense: 30
     Agi: 31
     Vit: 41
     Int: 93
     Dex: 67
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 130
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Armlet_Of_Prisoner
         Rate: 500
       - Item: Biretta_
         Rate: 5
       - Item: Morning_Star_
         Rate: 50
       - Item: Sword_Mace_
         Rate: 20
       - Item: Saint_Robe_
         Rate: 5
       - Item: Scapulare_
         Rate: 10
       - Item: Spike
         Rate: 1
       - Item: Erend_Card
         Rate: 1
         StealProtected: true
   - Id: 1656
     AegisName: KAVAC
     Name: Kavach Icarus
     JapaneseName: Kavac
     Level: 60
     Hp: 7899
     BaseExp: 4090
     JobExp: 86
     Attack: 684
     Attack2: 904
     Defense: 12
     MagicDefense: 5
     Str: 48
     Agi: 100
     Vit: 10
     Int: 15
     Dex: 118
     Luk: 40
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Lab_Staff_Record
         Rate: 2000
       - Item: Kakkung_
         Rate: 1
       - Item: Steel_Arrow_Container
         Rate: 100
       - Item: Great_Bow_
         Rate: 10
       - Item: Mantle_
         Rate: 5
       - Item: Sandals_
         Rate: 30
       - Item: Shoes_
         Rate: 2
       - Item: Kavac_Card
         Rate: 1
         StealProtected: true
   - Id: 1657
     AegisName: RAWREL
     Name: Laurell Weinder
     JapaneseName: Rawrel
     Level: 61
     Hp: 6168
     BaseExp: 4620
     JobExp: 30
     Attack: 430
     Attack2: 517
     Defense: 8
     MagicDefense: 48
     Agi: 41
     Vit: 5
     Int: 120
     Dex: 45
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Mementos
         Rate: 1000
       - Item: Staff_Of_Wing
         Rate: 1
       - Item: Guard_
         Rate: 5
       - Item: Staff_
         Rate: 50
       - Item: Silk_Robe_
         Rate: 10
       - Item: Silver_Robe_
         Rate: 30
       - Item: Clip
         Rate: 1
       - Item: Rawrel_Card
         Rate: 1
         StealProtected: true
   - Id: 1658
     AegisName: B_YGNIZEM
     Name: Egnigem Cenia
     JapaneseName: Ygnizem
     Level: 79
     Hp: 214200
     BaseExp: 258760
     JobExp: 86000
     MvpExp: 129380
     Attack: 3890
     Attack2: 5690
     Defense: 48
     MagicDefense: 25
     Str: 82
     Agi: 60
     Vit: 45
     Int: 31
     Dex: 110
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Broad_Sword_
         Rate: 1000
       - Item: Gift_Box
         Rate: 5000
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Schweizersabel
         Rate: 1000
       - Item: Formal_Suit
         Rate: 1000
       - Item: Boots_
         Rate: 1000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -25037,1050 +26536,1078 @@ Body:
   - Id: 1659
     AegisName: G_WHIKEBAIN
     Name: Wickebine Tres
     JapaneseName: Whikebain
     Level: 62
     Hp: 7320
     Attack: 593
     Attack2: 789
     Defense: 9
     MagicDefense: 12
     Agi: 102
     Vit: 34
     Int: 23
     Dex: 74
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Gift_Box
         Rate: 10
   - Id: 1660
     AegisName: G_ARMAIA
     Name: Armeyer Dinze
     JapaneseName: Armaia
     Level: 66
     Hp: 7110
     Attack: 650
     Attack2: 813
     Defense: 42
     MagicDefense: 6
     Str: 5
     Agi: 36
     Vit: 40
     Int: 15
     Dex: 80
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Gift_Box
         Rate: 10
   - Id: 1661
     AegisName: G_EREND
     Name: Errende Ebecee
     JapaneseName: Erend
     Level: 59
     Hp: 6980
     Attack: 796
     Attack2: 1059
     Defense: 14
     MagicDefense: 30
     Agi: 31
     Vit: 41
     Int: 93
     Dex: 60
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 130
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Gift_Box
         Rate: 10
   - Id: 1662
     AegisName: G_KAVAC
     Name: Kavach Icarus
     JapaneseName: Kavac
     Level: 60
     Hp: 7899
     Attack: 584
     Attack2: 804
     Defense: 12
     MagicDefense: 5
     Str: 48
     Agi: 100
     Vit: 10
     Int: 20
     Dex: 118
     Luk: 40
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Gift_Box
         Rate: 10
   - Id: 1663
     AegisName: G_RAWREL
     Name: Laurell Weinder
     JapaneseName: Rawrel
     Level: 61
     Hp: 6168
     Attack: 330
     Attack2: 417
     Defense: 8
     MagicDefense: 48
     Agi: 41
     Vit: 5
     Int: 100
     Dex: 45
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1008
     AttackMotion: 864
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Gift_Box
         Rate: 10
   - Id: 1664
     AegisName: POTON_CANON
     Name: Canho de Fton
     Level: 66
     Hp: 8000
     BaseExp: 3900
     JobExp: 1800
     Attack: 800
     Attack2: 900
     Defense: 10
     MagicDefense: 30
     Agi: 40
     Vit: 25
     Int: 20
     Dex: 80
     Luk: 80
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
     Drops:
       - Item: Large_Jellopy
         Rate: 5000
       - Item: Dark_Red_Jewel
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 1000
   - Id: 1665
     AegisName: POTON_CANON_1
     Name: Canho de Fton
     Level: 67
     Hp: 7500
     BaseExp: 4300
     JobExp: 2000
     Attack: 700
     Attack2: 800
     Defense: 15
     MagicDefense: 30
     Agi: 40
     Vit: 30
     Int: 40
     Dex: 86
     Luk: 80
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
     Drops:
       - Item: Large_Jellopy
         Rate: 5000
       - Item: Blue_Jewel
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 1000
       - Item: Destroyer
         Rate: 5
   - Id: 1666
     AegisName: POTON_CANON_2
     Name: Canho de Fton
     Level: 64
     Hp: 7100
     BaseExp: 3100
     JobExp: 2700
     Attack: 800
     Attack2: 900
     Defense: 8
     MagicDefense: 30
     Agi: 40
     Vit: 21
     Int: 29
     Dex: 80
     Luk: 91
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
     Drops:
       - Item: Large_Jellopy
         Rate: 5000
       - Item: Azure_Jewel
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 1000
   - Id: 1667
     AegisName: POTON_CANON_3
     Name: Canho de Fton
     Level: 65
     Hp: 7800
     BaseExp: 3800
     JobExp: 2300
     Attack: 700
     Attack2: 800
     Defense: 15
     MagicDefense: 30
     Agi: 40
     Vit: 23
     Int: 30
     Dex: 90
     Luk: 99
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
     Drops:
       - Item: Large_Jellopy
         Rate: 5000
       - Item: Golden_Jewel
         Rate: 1000
       - Item: Sticky_Mucus
         Rate: 1000
   - Id: 1668
     AegisName: ARCHDAM
     Name: Archdam
     Level: 79
     Hp: 25000
     BaseExp: 8000
     JobExp: 5000
     Attack: 1000
     Attack2: 2000
     Defense: 15
     MagicDefense: 15
     Str: 65
     Agi: 65
     Vit: 35
     Int: 75
     Dex: 75
     Luk: 15
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 580
     AttackMotion: 288
+    ClientAttackMotion: 192
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Screw
         Rate: 5000
       - Item: Steel
         Rate: 500
       - Item: Oridecon
         Rate: 200
       - Item: Elunium
         Rate: 200
       - Item: Gate_Keeper
         Rate: 5
       - Item: Gate_KeeperDD
         Rate: 5
       - Item: Archdam_Card
         Rate: 1
         StealProtected: true
   - Id: 1669
     AegisName: DIMIK
     Name: Dimik
     Level: 77
     Hp: 10000
     Attack: 1040
     Attack2: 1880
     Defense: 45
     MagicDefense: 28
     Str: 15
     Agi: 35
     Vit: 40
     Int: 15
     Dex: 120
     Luk: 42
     AttackRange: 5
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 576
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Dimik_Card
         Rate: 1
         StealProtected: true
   - Id: 1670
     AegisName: DIMIK_1
     Name: Dimik
     Level: 79
     Hp: 16000
     BaseExp: 6400
     JobExp: 3500
     Attack: 1140
     Attack2: 1980
     Defense: 45
     MagicDefense: 28
     Str: 15
     Agi: 88
     Vit: 20
     Int: 20
     Dex: 120
     Luk: 40
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Old_Steel_Plate
         Rate: 2000
       - Item: Transparent_Plate01
         Rate: 50
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Dusk
         Rate: 5
       - Item: Oridecon
         Rate: 10
       - Item: Imperial_Cooking_Kits
         Rate: 50
       - Item: Dimik_Card
         Rate: 1
         StealProtected: true
   - Id: 1671
     AegisName: DIMIK_2
     Name: Dimik
     Level: 89
     Hp: 29000
     BaseExp: 8000
     JobExp: 5000
     Attack: 1440
     Attack2: 2280
     Defense: 45
     MagicDefense: 28
     Str: 15
     Agi: 40
     Vit: 30
     Int: 30
     Dex: 150
     Luk: 70
     AttackRange: 5
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 576
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Old_Steel_Plate
         Rate: 2000
       - Item: Transparent_Plate02
         Rate: 50
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Thunder_P_
         Rate: 10
       - Item: Oridecon
         Rate: 10
       - Item: Imperial_Cooking_Kits
         Rate: 50
       - Item: Dimik_Card
         Rate: 1
         StealProtected: true
   - Id: 1672
     AegisName: DIMIK_3
     Name: Dimik
     Level: 80
     Hp: 19000
     BaseExp: 5900
     JobExp: 2800
     Attack: 1240
     Attack2: 2080
     Defense: 68
     MagicDefense: 28
     Str: 15
     Agi: 30
     Vit: 78
     Int: 20
     Dex: 120
     Luk: 30
     AttackRange: 5
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 576
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Old_Steel_Plate
         Rate: 2000
       - Item: Transparent_Plate03
         Rate: 50
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Hyper_Changer
         Rate: 10
       - Item: Oridecon
         Rate: 10
       - Item: Imperial_Cooking_Kits
         Rate: 50
       - Item: Dimik_Card
         Rate: 1
         StealProtected: true
   - Id: 1673
     AegisName: DIMIK_4
     Name: Dimik
     Level: 82
     Hp: 13900
     BaseExp: 5800
     JobExp: 4500
     Attack: 1840
     Attack2: 2840
     Defense: 45
     MagicDefense: 28
     Str: 15
     Agi: 20
     Vit: 20
     Int: 10
     Dex: 120
     Luk: 30
     AttackRange: 5
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 576
     AttackMotion: 720
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: Old_Steel_Plate
         Rate: 2000
       - Item: Transparent_Plate04
         Rate: 50
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Hyper_Changer
         Rate: 10
       - Item: Oridecon
         Rate: 10
       - Item: Imperial_Cooking_Kits
         Rate: 50
       - Item: Dimik_Card
         Rate: 1
         StealProtected: true
   - Id: 1674
     AegisName: MONEMUS
     Name: Monemus
     Level: 88
     Hp: 80000
     Attack: 2000
     Attack2: 3000
     Defense: 54
     MagicDefense: 25
+    Str: 0
     Vit: 90
     Int: 24
     Dex: 144
     Luk: 45
     AttackRange: 5
     SkillRange: 14
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1368
     AttackMotion: 1344
+    ClientAttackMotion: 480
     DamageMotion: 432
     Ai: 10
     Class: Boss
     Drops:
       - Item: Stone
         Rate: 2000
       - Item: Stone_Heart
         Rate: 1000
   - Id: 1675
     AegisName: VENATU
     Name: Venatu
     Level: 77
     Hp: 8000
     Attack: 1200
     Attack2: 1800
     Defense: 35
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 75
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 600
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Venatu_Card
         Rate: 1
         StealProtected: true
   - Id: 1676
     AegisName: VENATU_1
     Name: Venatu
     Level: 72
     Hp: 8900
     BaseExp: 4000
     JobExp: 2000
     Attack: 800
     Attack2: 1400
     Defense: 30
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 82
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 600
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Screw
         Rate: 2000
       - Item: Piece_Of_Crest1
         Rate: 350
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Drifter
         Rate: 5
       - Item: Elunium
         Rate: 10
       - Item: High_end_Cooking_Kits
         Rate: 100
       - Item: Venatu_Card
         Rate: 1
         StealProtected: true
   - Id: 1677
     AegisName: VENATU_2
     Name: Venatu
     Level: 80
     Hp: 9000
     BaseExp: 4000
     JobExp: 2000
     Attack: 900
     Attack2: 1500
     Defense: 30
     MagicDefense: 20
     Str: 5
     Agi: 82
     Vit: 32
     Int: 5
     Dex: 105
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 600
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Screw
         Rate: 2000
       - Item: Piece_Of_Crest2
         Rate: 500
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Long_Barrel_
         Rate: 10
       - Item: Elunium
         Rate: 10
       - Item: High_end_Cooking_Kits
         Rate: 100
       - Item: Venatu_Card
         Rate: 1
         StealProtected: true
   - Id: 1678
     AegisName: VENATU_3
     Name: Venatu
     Level: 78
     Hp: 9500
     BaseExp: 4500
     JobExp: 2000
     Attack: 800
     Attack2: 1400
     Defense: 30
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 68
     Int: 5
     Dex: 95
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 600
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Screw
         Rate: 2000
       - Item: Piece_Of_Crest3
         Rate: 400
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Hyper_Changer
         Rate: 10
       - Item: Elunium
         Rate: 10
       - Item: High_end_Cooking_Kits
         Rate: 100
       - Item: Venatu_Card
         Rate: 1
         StealProtected: true
   - Id: 1679
     AegisName: VENATU_4
     Name: Venatu
     Level: 75
     Hp: 12300
     BaseExp: 4000
     JobExp: 2000
     Attack: 800
     Attack2: 1400
     Defense: 30
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 24
     Int: 5
     Dex: 100
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 600
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Screw
         Rate: 2000
       - Item: Piece_Of_Crest4
         Rate: 300
       - Item: Steel
         Rate: 300
       - Item: Mystery_Piece
         Rate: 300
       - Item: Hyper_Changer
         Rate: 10
       - Item: Elunium
         Rate: 10
       - Item: High_end_Cooking_Kits
         Rate: 100
       - Item: Venatu_Card
         Rate: 1
         StealProtected: true
   - Id: 1680
     AegisName: HILL_WIND_1
     Name: Vento da Colina
     Level: 45
     Hp: 4233
     BaseExp: 2132
     JobExp: 1722
     Attack: 320
     Attack2: 510
     Defense: 10
     MagicDefense: 15
     Str: 21
     Agi: 42
     Vit: 31
     Int: 50
     Dex: 67
     Luk: 23
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 504
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Harpy's_Feather
         Rate: 4000
       - Item: Harpy's_Claw
         Rate: 3000
       - Item: Monster's_Feed
         Rate: 1000
       - Item: Blue_Herb
         Rate: 10
       - Item: Hill_Wind_Card
         Rate: 1
         StealProtected: true
   - Id: 1681
     AegisName: GEMINI
     Name: Gemini-S
     Level: 72
     Hp: 57870
     BaseExp: 22024
     JobExp: 9442
     Attack: 2150
     Attack2: 3030
     Defense: 60
     MagicDefense: 45
     Str: 88
     Agi: 75
     Vit: 70
     Int: 77
     Dex: 105
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1872
     AttackMotion: 360
+    ClientAttackMotion: 240
     DamageMotion: 864
     Ai: 04
     Class: Boss
     Drops:
       - Item: Skull
         Rate: 3000
       - Item: Old_Blue_Box
         Rate: 1000
       - Item: Butcher_
         Rate: 5
       - Item: Yellow_Slim_Potion
         Rate: 500
       - Item: White_Slim_Potion
         Rate: 400
       - Item: Cookbook08
         Rate: 6
       - Item: Stone_Of_Intelligence_
         Rate: 300
       - Item: Gemini_Card
         Rate: 1
         StealProtected: true
   - Id: 1682
     AegisName: REMOVAL
     Name: Exterminador
     JapaneseName: Removal
     Level: 55
     Hp: 10289
     BaseExp: 3831
     JobExp: 1278
     Attack: 558
     Attack2: 797
     Defense: 5
     MagicDefense: 20
     Agi: 20
     Vit: 56
     Int: 35
     Dex: 57
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1536
     AttackMotion: 1056
+    ClientAttackMotion: 336
     DamageMotion: 1152
     Ai: 04
     Drops:
       - Item: Empty_Bottle
         Rate: 5000
       - Item: Old_Steel_Plate
         Rate: 5000
       - Item: Gas_Mask
         Rate: 10
       - Item: Nice_Sweet_Potato
         Rate: 500
       - Item: Detrimindexta
         Rate: 50
       - Item: Karvodailnirol
         Rate: 100
       - Item: Fedora_
         Rate: 6
       - Item: Removal_Card
         Rate: 1
         StealProtected: true
   - Id: 1683
     AegisName: G_POTON_CANON
     Name: Canho de Fton
     Level: 46
     Hp: 7000
     Attack: 560
     Attack2: 570
     Defense: 5
     MagicDefense: 10
     Agi: 36
     Vit: 36
     Int: 20
     Dex: 56
     Luk: 30
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 04
   - Id: 1684
     AegisName: G_ARCHDAM
     Name: Archdam
     Level: 57
     Hp: 11000
     Attack: 600
     Attack2: 700
     Defense: 15
     MagicDefense: 15
     Str: 65
     Agi: 65
     Vit: 35
     Int: 75
     Dex: 75
     Luk: 15
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1080
     AttackMotion: 288
+    ClientAttackMotion: 192
     DamageMotion: 360
     Ai: 04
   - Id: 1685
     AegisName: APOCALIPS_H
     Name: Vesper
     Level: 97
     Hp: 640700
     BaseExp: 200000
     JobExp: 100000
     MvpExp: 100000
     Attack: 4000
     Attack2: 10000
     Defense: 50
     MagicDefense: 54
     Str: 100
     Agi: 50
     Vit: 30
     Int: 70
     Dex: 160
     Luk: 150
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 504
     AttackMotion: 912
+    ClientAttackMotion: 528
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Broken_Steel_Piece
         Rate: 5000
       - Item: Mystery_Piece
         Rate: 3000
       - Item: Old_Violet_Box
         Rate: 1000
       - Item: Vesper_Core01
         Rate: 100
       - Item: Vesper_Core02
         Rate: 100
       - Item: Vesper_Core03
         Rate: 100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -26094,141 +27621,144 @@ Body:
     Name: Filhote de Orc
     Level: 21
     Hp: 912
     BaseExp: 220
     JobExp: 220
     Attack: 135
     Attack2: 270
     Defense: 10
     MagicDefense: 10
     Str: 30
     Agi: 15
     Vit: 10
     Int: 18
     Dex: 35
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 672
     AttackMotion: 864
+    ClientAttackMotion: 504
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Large_Jellopy
         Rate: 1000
       - Item: Pacifier
         Rate: 100
       - Item: Viking_Helm
         Rate: 1
       - Item: Milk
         Rate: 5000
       - Item: Milk_Bottle
         Rate: 200
       - Item: Bib
         Rate: 100
       - Item: Orc_Baby_Card
         Rate: 1
         StealProtected: true
   - Id: 1687
     AegisName: GREEN_IGUANA
     Name: Grove
     JapaneseName: Green Iguana
     Level: 54
     Hp: 6444
     BaseExp: 2400
     JobExp: 2050
     Attack: 550
     Attack2: 650
     MagicDefense: 10
     Agi: 52
     Vit: 64
     Int: 5
     Dex: 98
     Luk: 14
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 720
     AttackMotion: 528
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 02
     Drops:
       - Item: Leaflet_Of_Aloe
         Rate: 1500
       - Item: Reptile_Tongue
         Rate: 1000
       - Item: Leaflet_Of_Hinal
         Rate: 1000
       - Item: Green_Herb
         Rate: 1000
       - Item: Monster's_Feed
         Rate: 2000
       - Item: Aloebera
         Rate: 10
       - Item: Green_Herb
         Rate: 1
       - Item: Green_Iguana_Card
         Rate: 1
         StealProtected: true
   - Id: 1688
     AegisName: LADY_TANEE
     Name: Lady Tanee
     Level: 89
     Hp: 493000
     BaseExp: 64995
     JobExp: 43222
     MvpExp: 32497
     Attack: 450
     Attack2: 2170
     Defense: 20
     MagicDefense: 44
     Agi: 125
     Vit: 48
     Int: 78
     Dex: 210
     Luk: 38
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 10
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Dex_Dish10
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Agi_Dish10
         Rate: 5000
       - Item: Tropical_Banana
         Rate: 4000
       - Item: Fantastic_Cooking_Kits
         Rate: 1000
       - Item: Banana_Hat
         Rate: 1000
       - Item: Elunium
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 2000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -26243,884 +27773,904 @@ Body:
     JapaneseName: Bacsojin
     Level: 85
     Hp: 253221
     BaseExp: 45250
     JobExp: 16445
     Attack: 1868
     Attack2: 6124
     Defense: 20
     MagicDefense: 55
     Str: 52
     Agi: 65
     Vit: 44
     Int: 112
     Dex: 152
     Luk: 35
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 130
     AttackDelay: 576
     AttackMotion: 960
+    ClientAttackMotion: 768
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1690
     AegisName: G_SPRING_RABBIT
     Name: Coelho
     Level: 12
     Hp: 15
     Defense: 100
     MagicDefense: 99
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 1120
     AttackMotion: 552
+    ClientAttackMotion: 2304
     DamageMotion: 511
     Ai: 02
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Hometown_Gift
         Rate: 100
       - Item: Lucky_Cookie01
         Rate: 300
       - Item: Lucky_Cookie03
         Rate: 300
       - Item: Bag_Of_Nuts
         Rate: 5000
   - Id: 1691
     AegisName: G_KRABEN
     Name: Kraben
     Level: 70
     Hp: 10880
     Attack: 125
     Attack2: 765
     Defense: 5
     MagicDefense: 42
     Str: 50
     Agi: 155
     Int: 66
     Dex: 112
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 1152
     AttackMotion: 1536
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 1
   - Id: 1692
     AegisName: BREEZE
     Name: Breeze
     Level: 56
     Hp: 5099
     BaseExp: 2390
     JobExp: 1340
     Attack: 94
     Attack2: 215
     Defense: 7
     MagicDefense: 32
     Agi: 96
     Vit: 6
     Int: 38
     Dex: 91
     Luk: 45
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 140
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 504
     Ai: 04
     Drops:
       - Item: Raccoon_Leaf
         Rate: 500
       - Item: Four_Leaf_Clover
         Rate: 10
       - Item: Centimental_Leaf
         Rate: 10
       - Item: Gust_Bow
         Rate: 10
       - Item: Branch_Of_Dead_Tree
         Rate: 10
       - Item: Centimental_Flower
         Rate: 10
       - Item: Rough_Wind
         Rate: 10
       - Item: Breeze_Card
         Rate: 1
         StealProtected: true
   - Id: 1693
     AegisName: PLASMA_Y
     Name: Plasma
     Level: 56
     Hp: 8400
     BaseExp: 2200
     JobExp: 2100
     Attack: 400
     Attack2: 900
     MagicDefense: 40
     Agi: 30
     Vit: 10
     Int: 83
     Dex: 105
     Luk: 45
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 608
     AttackMotion: 1440
+    ClientAttackMotion: 1296
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scell
         Rate: 100
       - Item: Gift_Box
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 2
       - Item: Yellow_Gemstone
         Rate: 100
       - Item: Gold
         Rate: 1
       - Item: Plasma_Card
         Rate: 1
         StealProtected: true
   - Id: 1694
     AegisName: PLASMA_R
     Name: Plasma
     Level: 43
     Hp: 5700
     BaseExp: 2000
     JobExp: 1000
     Attack: 300
     Attack2: 700
     MagicDefense: 30
     Agi: 30
     Vit: 5
     Int: 56
     Dex: 90
     Luk: 30
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 608
     AttackMotion: 1440
+    ClientAttackMotion: 1296
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scell
         Rate: 100
       - Item: Gift_Box
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 2
       - Item: Red_Gemstone
         Rate: 100
       - Item: Boody_Red
         Rate: 45
       - Item: Plasma_Card
         Rate: 1
         StealProtected: true
   - Id: 1695
     AegisName: PLASMA_G
     Name: Plasma
     Level: 47
     Hp: 7600
     BaseExp: 2000
     JobExp: 1000
     Attack: 300
     Attack2: 700
     MagicDefense: 30
     Agi: 30
     Vit: 5
     Int: 61
     Dex: 90
     Luk: 30
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 608
     AttackMotion: 1440
+    ClientAttackMotion: 1296
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scell
         Rate: 100
       - Item: Gift_Box
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 2
       - Item: Blue_Gemstone
         Rate: 100
       - Item: Yellow_Live
         Rate: 40
       - Item: Plasma_Card
         Rate: 1
         StealProtected: true
   - Id: 1696
     AegisName: PLASMA_P
     Name: Plasma
     Level: 49
     Hp: 5900
     BaseExp: 2000
     JobExp: 1000
     Attack: 300
     Attack2: 700
     MagicDefense: 30
     Agi: 30
     Vit: 5
     Int: 54
     Dex: 90
     Luk: 30
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 608
     AttackMotion: 1440
+    ClientAttackMotion: 1296
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scell
         Rate: 100
       - Item: Gift_Box
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 2
       - Item: Red_Gemstone
         Rate: 100
       - Item: Cardinal_Jewel_
         Rate: 100
       - Item: Plasma_Card
         Rate: 1
         StealProtected: true
   - Id: 1697
     AegisName: PLASMA_B
     Name: Plasma
     Level: 44
     Hp: 8200
     BaseExp: 2000
     JobExp: 1000
     Attack: 300
     Attack2: 700
     MagicDefense: 30
     Agi: 30
     Vit: 5
     Int: 73
     Dex: 90
     Luk: 30
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Water
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 608
     AttackMotion: 1440
+    ClientAttackMotion: 1296
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Scell
         Rate: 100
       - Item: Gift_Box
         Rate: 10
       - Item: Crystal_Jewel_
         Rate: 2
       - Item: Blue_Gemstone
         Rate: 100
       - Item: Crystal_Blue
         Rate: 35
       - Item: Plasma_Card
         Rate: 1
         StealProtected: true
   - Id: 1698
     AegisName: DEATHWORD
     Name: Palavra Morta
     JapaneseName: Deathword
     Level: 65
     Hp: 18990
     BaseExp: 2986
     JobExp: 4912
     Attack: 622
     Attack2: 1102
     Defense: 10
     MagicDefense: 40
     Str: 50
     Agi: 75
     Vit: 10
     Int: 20
     Dex: 140
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 176
     AttackMotion: 912
+    ClientAttackMotion: 528
     DamageMotion: 300
     Ai: 21
     Drops:
       - Item: Worn_Out_Page
         Rate: 4000
       - Item: Bookclip_In_Memory
         Rate: 300
       - Item: Legend_Of_Kafra01
         Rate: 50
       - Item: Bloody_Page
         Rate: 500
       - Item: Vidar's_Boots
         Rate: 10
       - Item: Cookbook08
         Rate: 2
       - Item: Cookbook09
         Rate: 1
       - Item: Deathword_Card
         Rate: 1
         StealProtected: true
   - Id: 1699
     AegisName: ANCIENT_MIMIC
     Name: Mmico Antigo
     Level: 60
     Hp: 8080
     BaseExp: 2950
     JobExp: 2650
     Attack: 530
     Attack2: 1697
     Defense: 20
     MagicDefense: 40
     Str: 50
     Agi: 100
     Vit: 30
     Int: 40
     Dex: 150
     Luk: 110
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 168
     AttackMotion: 480
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Old_Blue_Box
         Rate: 30
       - Item: Old_Violet_Box
         Rate: 1
       - Item: Gift_Box
         Rate: 50
       - Item: Shoes_
         Rate: 5
       - Item: Manteau_
         Rate: 1
       - Item: Fricco_Shoes
         Rate: 10
       - Item: Gold_Ring
         Rate: 100
       - Item: Ancient_Mimic_Card
         Rate: 1
         StealProtected: true
   - Id: 1700
     AegisName: OBSERVATION
     Name: Dama de Guarda
     JapaneseName: Observation
     Level: 81
     Hp: 65111
     BaseExp: 39872
     JobExp: 33120
     Attack: 1666
     Attack2: 2609
     Defense: 55
     MagicDefense: 55
     Str: 30
     Agi: 74
     Vit: 56
     Int: 126
     Dex: 145
     Luk: 114
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 432
     AttackMotion: 480
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Blue_Feather
         Rate: 500
       - Item: Ring_
         Rate: 1
       - Item: Cursed_Seal
         Rate: 100
       - Item: Golden_Jewel
         Rate: 1000
       - Item: Stone_Of_Intelligence_
         Rate: 100
       - Item: Hair_Band
         Rate: 10
       - Item: Golden_Bracelet
         Rate: 100
       - Item: Observation_Card
         Rate: 1
         StealProtected: true
   - Id: 1701
     AegisName: SHELTER
     Name: Senhora do Abrigo
     JapaneseName: Shelter
     Level: 80
     Hp: 38000
     BaseExp: 29010
     JobExp: 25110
     Attack: 1871
     Attack2: 1971
     Defense: 22
     MagicDefense: 63
     Str: 12
     Agi: 67
     Vit: 34
     Int: 167
     Dex: 157
     Luk: 120
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 160
     AttackDelay: 432
     AttackMotion: 420
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Red_Feather
         Rate: 200
       - Item: Cursed_Seal
         Rate: 1
       - Item: Stone_Of_Intelligence_
         Rate: 50
       - Item: Scarlet_Jewel
         Rate: 1000
       - Item: Skull
         Rate: 1000
       - Item: Cursed_Seal
         Rate: 50
       - Item: Shelter_Card
         Rate: 1
         StealProtected: true
   - Id: 1702
     AegisName: RETRIBUTION
     Name: Baronesa Retribuio
     JapaneseName: Retribution
     Level: 79
     Hp: 46666
     BaseExp: 28332
     JobExp: 33120
     Attack: 2022
     Attack2: 2288
     Defense: 35
     MagicDefense: 35
     Str: 30
     Agi: 142
     Vit: 66
     Int: 72
     Dex: 133
     Luk: 39
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 360
     AttackMotion: 480
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Red_Feather
         Rate: 400
       - Item: Ring_
         Rate: 1
       - Item: Stone_Of_Intelligence_
         Rate: 50
       - Item: Cardinal_Jewel
         Rate: 1000
       - Item: Manteau_
         Rate: 5
       - Item: Two_Hand_Sword_
         Rate: 10
       - Item: Cursed_Seal
         Rate: 50
       - Item: Retribution_Card
         Rate: 1
         StealProtected: true
   - Id: 1703
     AegisName: SOLACE
     Name: Lady Solace
     JapaneseName: Solace
     Level: 77
     Hp: 25252
     BaseExp: 21000
     JobExp: 25110
     Attack: 1392
     Attack2: 1462
     Defense: 21
     MagicDefense: 67
     Str: 12
     Agi: 76
     Vit: 29
     Int: 145
     Dex: 99
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 576
     AttackMotion: 420
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Blue_Feather
         Rate: 200
       - Item: Ring_
         Rate: 1
       - Item: Stone_Of_Intelligence_
         Rate: 50
       - Item: Dark_Red_Jewel
         Rate: 1000
       - Item: Harp_
         Rate: 50
       - Item: Harp
         Rate: 100
       - Item: Cursed_Seal
         Rate: 50
       - Item: Solace_Card
         Rate: 1
         StealProtected: true
   - Id: 1704
     AegisName: THA_ODIUM
     Name: Odium de Thanatos
     JapaneseName: Thanatos Odium
     Level: 92
     Hp: 72389
     BaseExp: 88420
     JobExp: 63880
     Attack: 2100
     Attack2: 2800
     Defense: 68
     MagicDefense: 30
     Str: 100
     Agi: 52
     Vit: 165
     Int: 62
     Dex: 185
     Luk: 90
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 432
     AttackMotion: 288
+    ClientAttackMotion: 192
     DamageMotion: 420
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
       - Item: Piece_Of_Memory_Blue
         Rate: 10000
       - Item: Old_Card_Album
         Rate: 10
       - Item: Goibne's_Shoulder_Arms
         Rate: 1000
       - Item: Tha_Odium_Card
         Rate: 1
         StealProtected: true
   - Id: 1705
     AegisName: THA_DESPERO
     Name: Despero de Thanatos
     JapaneseName: Thanatos Despero
     Level: 88
     Hp: 86666
     BaseExp: 62001
     JobExp: 51220
     Attack: 2182
     Attack2: 3082
     Defense: 38
     MagicDefense: 39
     Str: 100
     Agi: 167
     Vit: 79
     Int: 92
     Dex: 151
     Luk: 120
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 528
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
       - Item: Piece_Of_Memory_Red
         Rate: 10000
       - Item: Old_Card_Album
         Rate: 10
       - Item: Goibne's_Combat_Boots
         Rate: 1000
       - Item: Tha_Despero_Card
         Rate: 1
         StealProtected: true
   - Id: 1706
     AegisName: THA_MAERO
     Name: Maero de Thanatos
     JapaneseName: Thanatos Maero
     Level: 83
     Hp: 62000
     BaseExp: 56699
     JobExp: 63880
     Attack: 2022
     Attack2: 2288
     Defense: 29
     MagicDefense: 72
     Str: 100
     Agi: 176
     Vit: 30
     Int: 200
     Dex: 122
     Luk: 29
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 480
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
       - Item: Piece_Of_Memory_Purple
         Rate: 10000
       - Item: Old_Card_Album
         Rate: 10
       - Item: Goibne's_Armor
         Rate: 1000
       - Item: Tha_Maero_Card
         Rate: 1
         StealProtected: true
   - Id: 1707
     AegisName: THA_DOLOR
     Name: Pesar de Thanatos
     JapaneseName: Thanatos Dolor
     Level: 83
     Hp: 59922
     BaseExp: 43200
     JobExp: 51220
     Attack: 1392
     Attack2: 2092
     Defense: 21
     MagicDefense: 80
     Str: 100
     Agi: 76
     Vit: 29
     Int: 206
     Dex: 139
     Luk: 44
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 672
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
       - Item: Piece_Of_Memory_Green
         Rate: 10000
       - Item: Old_Card_Album
         Rate: 10
       - Item: Goibne's_Helmet
         Rate: 1000
       - Item: Tha_Dolor_Card
         Rate: 1
         StealProtected: true
   - Id: 1708
     AegisName: THANATOS
     Name: Memria de Thanatos
     JapaneseName: Thanatos
     Level: 99
     Hp: 445660
     BaseExp: 3666000
     JobExp: 2145060
     MvpExp: 1833000
     Attack: 3812
     Attack2: 7483
     Defense: 35
     MagicDefense: 35
     Str: 100
     Agi: 108
     Vit: 30
     Int: 86
     Dex: 147
     Luk: 32
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 120
     AttackDelay: 115
     AttackMotion: 816
+    ClientAttackMotion: 672
     DamageMotion: 504
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Treasure_Box
         Rate: 1000
       - Item: Morrigane's_Manteau
         Rate: 1000
       - Item: Piece_Of_Bone_Armor
         Rate: 5000
       - Item: Full_Plate_Armor_
         Rate: 5000
       - Item: Grave_
         Rate: 5000
       - Item: Wing_Of_Eagle
         Rate: 1000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -27135,461 +28685,472 @@ Body:
     JapaneseName: Thanatos Odium
     Level: 92
     Hp: 72389
     BaseExp: 10000
     JobExp: 5000
     Attack: 2100
     Attack2: 2800
     Defense: 68
     MagicDefense: 30
     Str: 100
     Agi: 52
     Vit: 165
     Int: 62
     Dex: 185
     Luk: 90
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 115
     AttackMotion: 288
+    ClientAttackMotion: 192
     DamageMotion: 420
     Ai: 20
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
   - Id: 1710
     AegisName: G_THA_DESPERO
     Name: Despero de Thanatos
     JapaneseName: Thanatos Despero
     Level: 88
     Hp: 86666
     BaseExp: 10000
     JobExp: 5000
     Attack: 2182
     Attack2: 3082
     Defense: 38
     MagicDefense: 39
     Str: 100
     Agi: 167
     Vit: 79
     Int: 92
     Dex: 151
     Luk: 120
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 528
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
   - Id: 1711
     AegisName: G_THA_MAERO
     Name: Maero de Thanatos
     JapaneseName: Thanatos Maero
     Level: 83
     Hp: 62000
     BaseExp: 10000
     JobExp: 5000
     Attack: 2022
     Attack2: 2288
     Defense: 29
     MagicDefense: 72
     Str: 100
     Agi: 176
     Vit: 30
     Int: 200
     Dex: 122
     Luk: 29
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 480
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
   - Id: 1712
     AegisName: G_THA_DOLOR
     Name: Pesar de Thanatos
     JapaneseName: Thanatos Dolor
     Level: 83
     Hp: 59922
     BaseExp: 10000
     JobExp: 5000
     Attack: 1392
     Attack2: 2092
     Defense: 21
     MagicDefense: 80
     Str: 100
     Agi: 76
     Vit: 29
     Int: 206
     Dex: 139
     Luk: 44
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Undead
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 160
     AttackMotion: 672
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 20
     Class: Boss
     Drops:
       - Item: Brigan
         Rate: 1000
       - Item: Crystal_Jewel_
         Rate: 500
       - Item: Crystal_Jewel__
         Rate: 100
   - Id: 1713
     AegisName: ACIDUS
     Name: Acidus
     Level: 80
     Hp: 51112
     BaseExp: 28043
     JobExp: 8023
     Attack: 1289
     Attack2: 2109
     Defense: 29
     MagicDefense: 69
     Agi: 71
     Vit: 55
     Int: 135
     Dex: 103
     Luk: 69
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 168
     AttackMotion: 1008
+    ClientAttackMotion: 528
     DamageMotion: 300
     Ai: 09
     Drops:
       - Item: Orange
         Rate: 5100
       - Item: Dragon_Canine
         Rate: 4000
       - Item: Treasure_Box
         Rate: 5
       - Item: Dragon_Scale
         Rate: 3589
       - Item: Dragonball_Yellow
         Rate: 800
       - Item: Inverse_Scale
         Rate: 10
       - Item: Stone_Buckler
         Rate: 50
       - Item: Acidus_Card
         Rate: 1
         StealProtected: true
   - Id: 1714
     AegisName: FERUS
     Name: Ferus
     Level: 70
     Hp: 29218
     BaseExp: 8093
     JobExp: 3952
     Attack: 1056
     Attack2: 1496
     Defense: 14
     MagicDefense: 45
     Agi: 78
     Vit: 45
     Int: 72
     Dex: 81
     Luk: 73
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 108
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 09
     Drops:
       - Item: Strawberry
         Rate: 2200
       - Item: Dragon_Canine
         Rate: 1000
       - Item: Dragon's_Skin
         Rate: 1000
       - Item: Dragon_Scale
         Rate: 2000
       - Item: Dragonball_Red
         Rate: 800
       - Item: Flame_Heart
         Rate: 20
       - Item: Magni_Cap
         Rate: 50
       - Item: Ferus_Card
         Rate: 1
         StealProtected: true
   - Id: 1715
     AegisName: NOVUS
     Name: Novus
     Level: 42
     Hp: 5430
     BaseExp: 1320
     JobExp: 1002
     Attack: 284
     Attack2: 384
     Defense: 20
     MagicDefense: 28
     Agi: 56
     Vit: 43
     Int: 45
     Dex: 124
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Dragon
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 110
     AttackDelay: 151
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Green_Herb
         Rate: 3000
       - Item: Cyfar
         Rate: 1035
       - Item: Dragon_Scale
         Rate: 589
       - Item: Novus_Card
         Rate: 1
         StealProtected: true
   - Id: 1716
     AegisName: ACIDUS_
     Name: Acidus
     Level: 76
     Hp: 39111
     BaseExp: 14392
     JobExp: 4203
     Attack: 1180
     Attack2: 2000
     Defense: 21
     MagicDefense: 47
     Agi: 78
     Vit: 31
     Int: 93
     Dex: 88
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 168
     AttackMotion: 768
+    ClientAttackMotion: 528
     DamageMotion: 360
     Ai: 09
     Drops:
       - Item: Blue_Potion
         Rate: 150
       - Item: Dragon_Canine
         Rate: 4000
       - Item: Blue_Herb
         Rate: 150
       - Item: Dragon_Scale
         Rate: 3589
       - Item: Dragonball_Blue
         Rate: 800
       - Item: Rough_Wind
         Rate: 20
       - Item: Dragonball_Blue
         Rate: 100
       - Item: Acidus__Card
         Rate: 1
         StealProtected: true
   - Id: 1717
     AegisName: FERUS_
     Name: Ferus
     Level: 69
     Hp: 21182
     BaseExp: 6750
     JobExp: 2230
     Attack: 930
     Attack2: 1170
     Defense: 14
     MagicDefense: 38
     Agi: 66
     Vit: 77
     Int: 60
     Dex: 79
     Luk: 35
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 120
     AttackDelay: 108
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 09
     Drops:
       - Item: Delicious_Fish
         Rate: 5100
       - Item: Dragon_Canine
         Rate: 1000
       - Item: Dragon_Scale
         Rate: 3589
       - Item: Dragonball_Green
         Rate: 800
       - Item: Great_Nature
         Rate: 20
       - Item: Dragonball_Green
         Rate: 100
       - Item: Ferus__Card
         Rate: 1
         StealProtected: true
   - Id: 1718
     AegisName: NOVUS_
     Name: Novus
     Level: 43
     Hp: 5830
     BaseExp: 1411
     JobExp: 1100
     Attack: 314
     Attack2: 414
     Defense: 24
     MagicDefense: 28
     Agi: 60
     Vit: 43
     Int: 39
     Dex: 119
     Luk: 43
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Dragon
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 252
     AttackMotion: 816
+    ClientAttackMotion: 528
     DamageMotion: 480
     Ai: 04
     Drops:
       - Item: Yellow_Herb
         Rate: 2000
       - Item: Cyfar
         Rate: 1035
       - Item: Dragon_Scale
         Rate: 589
       - Item: Novus__Card
         Rate: 1
         StealProtected: true
   - Id: 1719
     AegisName: DETALE
     Name: Detardeurus
     JapaneseName: Detale
     Level: 90
     Hp: 960000
     BaseExp: 291850
     JobExp: 123304
     MvpExp: 145925
     Attack: 4560
     Attack2: 5548
     Defense: 66
     MagicDefense: 59
     Str: 100
     Agi: 90
     Vit: 30
     Int: 136
     Dex: 140
     Luk: 56
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 432
     AttackMotion: 936
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Morpheus's_Armlet
         Rate: 1000
       - Item: Morpheus's_Ring
         Rate: 1000
       - Item: Treasure_Box
         Rate: 5000
       - Item: Scale_Of_Red_Dragon
         Rate: 3589
       - Item: Int_Dish10
         Rate: 1000
       - Item: Pole_Axe
         Rate: 100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -27603,459 +29164,479 @@ Body:
     Name: Hydrolancer
     JapaneseName: Hydro
     Level: 89
     Hp: 308230
     BaseExp: 83450
     JobExp: 2480
     Attack: 2554
     Attack2: 3910
     Defense: 52
     MagicDefense: 62
     Agi: 96
     Vit: 110
     Int: 86
     Dex: 94
     Luk: 32
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 140
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Dragon's_Skin
         Rate: 4000
       - Item: Dragon_Canine
         Rate: 4000
       - Item: Tri_Headed_Dragon_Head
         Rate: 3880
       - Item: Morpheus's_Hood
         Rate: 500
       - Item: Morrigane's_Helm
         Rate: 500
       - Item: Vit_Dish10
         Rate: 300
       - Item: Fricca_Circlet
         Rate: 500
       - Item: Hydro_Card
         Rate: 1
         StealProtected: true
   - Id: 1721
     AegisName: DRAGON_EGG
     Name: Ovo de Drago
     Level: 43
     Hp: 18322
     BaseExp: 6740
     Attack: 1
     Attack2: 2
     Defense: 78
     MagicDefense: 60
     Vit: 56
     Int: 67
     Luk: 63
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 24
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
     Drops:
       - Item: Elunium
         Rate: 5
       - Item: Piece_Of_Egg_Shell
         Rate: 100
       - Item: Crystal_Jewel_
         Rate: 10
       - Item: Crystal_Jewel__
         Rate: 5
       - Item: Dark_Red_Jewel
         Rate: 10
       - Item: Skyblue_Jewel
         Rate: 10
       - Item: Golden_Jewel
         Rate: 10
       - Item: Dragon_Egg_Card
         Rate: 1
         StealProtected: true
   - Id: 1722
     AegisName: EVENT_JAKK
     Name: Jakk
     Level: 99
     Hp: 10310
     BaseExp: 103
     JobExp: 100
     Attack: 115
     Attack2: 182
     Defense: 5
     MagicDefense: 11
     Agi: 28
     Vit: 18
     Int: 13
     Dex: 35
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 240
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 648
     Ai: 01
     Drops:
       - Item: Pumpkin_Bucket
         Rate: 1000
       - Item: Pumpkin_Head
         Rate: 1000
       - Item: Pumpkin
         Rate: 1000
       - Item: Pumpkin_Hat
         Rate: 10000
         StealProtected: true
   - Id: 1723
     AegisName: A_SHECIL
     Name: Cecil Damon
     JapaneseName: Shecil Damon
     Level: 82
     Hp: 30000
     Attack: 600
     Attack2: 900
     Defense: 25
     MagicDefense: 15
     Agi: 145
     Vit: 27
     Int: 32
     Dex: 134
     Luk: 80
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1008
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
   - Id: 1724
     AegisName: A_POTON_CANON
     Name: Canho de Fton
     Level: 66
     Hp: 8000
     Attack: 1000
     Attack2: 1300
     Defense: 10
     MagicDefense: 30
     Agi: 40
     Vit: 25
     Int: 20
     Dex: 80
     Luk: 80
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1536
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 480
     Ai: 10
   - Id: 1725
     AegisName: R_PORING
     Name: Poring
     Level: 1
     Hp: 50
     Attack: 7
     Attack2: 10
     MagicDefense: 5
+    Int: 0
     Dex: 6
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 02
   - Id: 1726
     AegisName: R_LUNATIC
     Name: Luntico
     Level: 3
     Hp: 60
     Attack: 9
     Attack2: 12
     MagicDefense: 20
     Agi: 3
     Vit: 3
     Int: 10
     Dex: 8
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1456
     AttackMotion: 456
+    ClientAttackMotion: 264
     DamageMotion: 336
     Ai: 02
   - Id: 1727
     AegisName: R_SAVAGE_BABE
     Name: Beb Selvagem
     Level: 7
     Hp: 182
     Attack: 20
     Attack2: 25
     Agi: 7
     Vit: 14
     Int: 5
     Dex: 12
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1624
     AttackMotion: 624
+    ClientAttackMotion: 312
     DamageMotion: 576
     Ai: 02
   - Id: 1728
     AegisName: R_DESERT_WOLF_B
     Name: Lobo do Deserto Bebe
     JapaneseName: Lobo do Deserto Bebe
     Level: 9
     Hp: 164
     Attack: 30
     Attack2: 36
     Agi: 9
     Vit: 9
     Int: 5
     Dex: 21
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1600
     AttackMotion: 900
+    ClientAttackMotion: 216
     DamageMotion: 240
     Ai: 02
   - Id: 1729
     AegisName: R_BAPHOMET_
     Name: Bafom Jr..
     Level: 50
     Hp: 8578
     Attack: 487
     Attack2: 590
     Defense: 15
     MagicDefense: 25
     Agi: 75
     Vit: 55
     Dex: 93
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 868
     AttackMotion: 480
+    ClientAttackMotion: 216
     DamageMotion: 120
     Ai: 02
     Modes:
       Detector: true
   - Id: 1730
     AegisName: R_DEVIRUCHI
     Name: Deviruchi
     Level: 46
     Hp: 7360
     Attack: 475
     Attack2: 560
     Defense: 10
     MagicDefense: 25
     Agi: 69
     Vit: 40
     Int: 55
     Dex: 87
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 980
     AttackMotion: 600
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 02
     Modes:
       Detector: true
   - Id: 1731
     AegisName: G_DOPPELGANGER
     Name: Doppelganger
     Level: 72
     Hp: 12000000
     BaseExp: 3000000
     JobExp: 2000000
     Attack: 5000
     Attack2: 10000
     Defense: 99
     MagicDefense: 99
     Str: 88
     Agi: 180
     Vit: 70
     Int: 75
     Dex: 180
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 480
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Warrior_Symbol
         Rate: 10000
   - Id: 1732
     AegisName: G_TREASURE_BOX
     Name: Ba de Tesouro
     Level: 98
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: 3rd_Floor_Pass
         Rate: 1000
   - Id: 1733
     AegisName: KIEL
     Name: Kiel
     JapaneseName: Kiel
     Level: 90
     Hp: 523000
     BaseExp: 36500
     JobExp: 23405
     Attack: 1682
     Attack2: 3311
     Defense: 28
     MagicDefense: 32
     Str: 100
     Agi: 112
     Vit: 76
     Int: 89
     Dex: 156
     Luk: 102
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 140
     AttackDelay: 1152
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1734
     AegisName: KIEL_
     Name: Kiel D-01
     Level: 90
     Hp: 1523000
     BaseExp: 2356200
     JobExp: 512602
     MvpExp: 1178100
     Attack: 3280
     Attack2: 6560
     Defense: 28
     MagicDefense: 32
     Str: 100
     Agi: 130
     Vit: 30
     Int: 160
     Dex: 199
     Luk: 180
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 130
     AttackDelay: 1152
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Old_Card_Album
         Rate: 2000
     Drops:
       - Item: Pocket_Watch
         Rate: 3000
       - Item: Old_Violet_Box
         Rate: 3000
       - Item: Morrigane's_Pendant
         Rate: 1000
       - Item: Glittering_Clothes
         Rate: 1000
       - Item: Survival_Rod_
         Rate: 500
       - Item: Counter_Dagger
         Rate: 500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -28069,570 +29650,592 @@ Body:
     Name: Alicel
     Level: 75
     Hp: 37520
     BaseExp: 8890
     JobExp: 5420
     Attack: 1800
     Attack2: 2770
     Defense: 30
     MagicDefense: 30
     Str: 50
     Agi: 58
     Vit: 50
     Int: 51
     Dex: 92
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 1080
     AttackMotion: 480
+    ClientAttackMotion: 240
     DamageMotion: 504
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Burnt_Parts
         Rate: 2000
       - Item: Sturdy_Iron_Piece
         Rate: 3000
       - Item: Steel
         Rate: 200
       - Item: Screw
         Rate: 500
       - Item: Drill_Katar
         Rate: 5
       - Item: Elunium
         Rate: 10
       - Item: Vali's_Manteau
         Rate: 20
       - Item: Alicel_Card
         Rate: 1
         StealProtected: true
   - Id: 1736
     AegisName: ALIOT
     Name: Aliot
     Level: 75
     Hp: 48290
     BaseExp: 13020
     JobExp: 4006
     Attack: 950
     Attack2: 2470
     Defense: 35
     MagicDefense: 15
     Str: 50
     Agi: 32
     Vit: 87
     Int: 12
     Dex: 68
     Luk: 19
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1296
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Burnt_Parts
         Rate: 2000
       - Item: Sturdy_Iron_Piece
         Rate: 3000
       - Item: Falcon_Robe
         Rate: 10
       - Item: Screw
         Rate: 500
       - Item: Claw_
         Rate: 10
       - Item: Elunium
         Rate: 10
       - Item: Curved_Sword
         Rate: 15
       - Item: Aliot_Card
         Rate: 1
         StealProtected: true
   - Id: 1737
     AegisName: ALIZA
     Name: Aliza
     Level: 69
     Hp: 19000
     BaseExp: 6583
     JobExp: 3400
     Attack: 750
     Attack2: 1100
     Defense: 8
     MagicDefense: 5
     Str: 74
     Agi: 74
     Vit: 52
     Int: 35
     Dex: 110
     Luk: 140
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 220
     AttackDelay: 1440
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 17
     Drops:
       - Item: Brigan
         Rate: 4000
       - Item: Morpheus's_Shawl
         Rate: 10
       - Item: Rosary_
         Rate: 10
       - Item: Alice's_Apron
         Rate: 5
       - Item: Imperial_Cooking_Kits
         Rate: 50
       - Item: Sway_Apron
         Rate: 1
       - Item: Orleans_Server
         Rate: 5
       - Item: Aliza_Card
         Rate: 1
         StealProtected: true
   - Id: 1738
     AegisName: CONSTANT
     Name: Constante
     Level: 55
     Hp: 10000
     BaseExp: 3230
     JobExp: 116
     Attack: 460
     Attack2: 580
     Defense: 12
     MagicDefense: 12
     Str: 50
     Agi: 28
     Vit: 26
     Int: 47
     Dex: 66
     Luk: 14
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 720
     AttackMotion: 360
+    ClientAttackMotion: 216
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Burnt_Parts
         Rate: 100
       - Item: Sturdy_Iron_Piece
         Rate: 1500
       - Item: Tube
         Rate: 10
       - Item: Steel
         Rate: 10
       - Item: Elunium_Stone
         Rate: 10
   - Id: 1739
     AegisName: G_ALICEL
     Name: Alicel
     Level: 75
     Hp: 37520
     Attack: 1600
     Attack2: 2570
     Defense: 30
     MagicDefense: 30
     Str: 50
     Agi: 60
     Vit: 50
     Int: 51
     Dex: 92
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1080
     AttackMotion: 480
+    ClientAttackMotion: 2112
     DamageMotion: 504
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Sturdy_Iron_Piece
         Rate: 500
   - Id: 1740
     AegisName: G_ALIOT
     Name: Aliot
     Level: 75
     Hp: 43290
     Attack: 950
     Attack2: 2070
     Defense: 35
     MagicDefense: 15
     Str: 50
     Agi: 32
     Vit: 87
     Int: 12
     Dex: 68
     Luk: 19
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1296
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 13
     Modes:
       Detector: true
     Drops:
       - Item: Sturdy_Iron_Piece
         Rate: 500
   - Id: 1741
     AegisName: G_COOKIE_XMAS
     Name: Cookie
     Level: 28
     Hp: 2090
     Attack: 140
     Attack2: 170
     MagicDefense: 50
     Agi: 24
     Vit: 30
     Int: 53
     Dex: 45
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 1248
     AttackMotion: 1248
+    ClientAttackMotion: 336
     DamageMotion: 240
     Ai: 04
   - Id: 1742
     AegisName: G_CARAT
     Name: Carat
     Level: 51
     Hp: 5200
     Attack: 330
     Attack2: 417
     MagicDefense: 25
     Agi: 41
     Vit: 45
     Int: 5
     Dex: 85
     Luk: 155
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1078
     AttackMotion: 768
+    ClientAttackMotion: 576
     DamageMotion: 384
     Ai: 04
     Modes:
       Detector: true
   - Id: 1743
     AegisName: G_MYSTCASE
     Name: Presente
     Level: 38
     Hp: 3450
     Attack: 160
     Attack2: 360
     Defense: 5
     MagicDefense: 10
     Str: 65
     Agi: 50
     Vit: 25
     Int: 5
     Dex: 48
     Luk: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 1248
     AttackMotion: 1248
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 04
   - Id: 1744
     AegisName: G_WILD_ROSE
     Name: Rosa Selvagem
     Level: 38
     Hp: 2980
     Attack: 315
     Attack2: 360
     MagicDefense: 15
     Str: 65
     Agi: 85
     Vit: 15
     Int: 35
     Dex: 65
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 964
     AttackMotion: 864
+    ClientAttackMotion: 840
     DamageMotion: 288
     Ai: 04
   - Id: 1745
     AegisName: G_CONSTANT
     Name: Constante
     Level: 55
     Hp: 1000
     Attack: 460
     Attack2: 580
     Defense: 12
     MagicDefense: 12
     Str: 50
     Agi: 28
     Vit: 26
     Int: 47
     Dex: 66
     Luk: 14
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 110
     AttackDelay: 720
     AttackMotion: 360
+    ClientAttackMotion: 216
     DamageMotion: 360
     Ai: 05
     Modes:
       Detector: true
     Drops:
       - Item: Sturdy_Iron_Piece
         Rate: 500
   - Id: 1746
     AegisName: G_ALIZA
     Name: Aliza
     Level: 69
     Hp: 15000
     Attack: 750
     Attack2: 1100
     Defense: 8
     MagicDefense: 5
     Str: 74
     Agi: 74
     Vit: 52
     Int: 35
     Dex: 110
     Luk: 140
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1440
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 600
     Ai: 04
     Drops:
       - Item: Sturdy_Iron_Piece
         Rate: 500
   - Id: 1747
     AegisName: G_SNAKE
     Name: Serpente
     JapaneseName: Serpente
     Level: 15
     Hp: 471
     Attack: 46
     Attack2: 55
     Agi: 15
     Vit: 15
     Int: 10
     Dex: 35
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
   - Id: 1748
     AegisName: G_ANACONDAQ
     Name: Anaconda
     Level: 23
     Hp: 1109
     Attack: 124
     Attack2: 157
     Agi: 23
     Vit: 28
     Int: 10
     Dex: 36
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
   - Id: 1749
     AegisName: G_MEDUSA
     Name: Medusa
     Level: 79
     Hp: 22408
     Attack: 827
     Attack2: 1100
     Defense: 48
     MagicDefense: 38
     Agi: 74
     Vit: 50
     Int: 57
     Dex: 77
     Luk: 69
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 1720
     AttackMotion: 1320
+    ClientAttackMotion: 1080
     DamageMotion: 360
     Ai: 04
     Modes:
       Detector: true
   - Id: 1750
     AegisName: G_RED_PLANT
     Name: Planta Vermelha
     Level: 1
     Hp: 100
     Attack: 100
     Attack2: 200
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
     Luk: 100
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 960
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
   - Id: 1751
     AegisName: RANDGRIS
     Name: Valquria Randgris
     Level: 99
     Hp: 3567200
     BaseExp: 2854900
     JobExp: 3114520
     MvpExp: 1427450
     Attack: 5560
     Attack2: 9980
     Defense: 25
     MagicDefense: 42
     Str: 100
     Agi: 120
     Vit: 30
     Int: 120
     Dex: 220
     Luk: 210
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 576
+    ClientAttackMotion: 504
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Old_Card_Album
         Rate: 2000
     Drops:
       - Item: Valhalla_Flower
         Rate: 90
       - Item: Valkyrie_Armor
         Rate: 160
       - Item: Valkyrie_Manteau
         Rate: 300
       - Item: Valkyrie_Shoes
         Rate: 300
       - Item: Helm_
         Rate: 500
       - Item: Bloody_Edge
         Rate: 250
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -28643,611 +30246,630 @@ Body:
     AegisName: SKOGUL
     Name: Skogul
     Level: 70
     Hp: 87544
     BaseExp: 27620
     JobExp: 10
     Attack: 1110
     Attack2: 1930
     Defense: 20
     MagicDefense: 15
     Agi: 69
     Vit: 70
     Int: 50
     Dex: 67
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 190
     AttackDelay: 720
     AttackMotion: 384
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 3500
       - Item: Brigan
         Rate: 1000
       - Item: Red_Gemstone
         Rate: 1000
       - Item: Rouge
         Rate: 500
       - Item: Skul_Ring
         Rate: 100
       - Item: Elunium_Stone
         Rate: 500
       - Item: Blood_Tears
         Rate: 5
       - Item: Skogul_Card
         Rate: 1
         StealProtected: true
   - Id: 1753
     AegisName: FRUS
     Name: Frus
     Level: 69
     Hp: 83422
     BaseExp: 20620
     JobExp: 10
     Attack: 1110
     Attack2: 1780
     Defense: 20
     MagicDefense: 15
     Agi: 69
     Vit: 60
     Int: 50
     Dex: 76
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 480
     AttackMotion: 576
+    ClientAttackMotion: 192
     DamageMotion: 432
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 3500
       - Item: Brigan
         Rate: 1000
       - Item: Red_Gemstone
         Rate: 1000
       - Item: Earring_
         Rate: 3
       - Item: Mantle_
         Rate: 10
       - Item: Elunium_Stone
         Rate: 500
       - Item: Frus_Card
         Rate: 1
         StealProtected: true
   - Id: 1754
     AegisName: SKEGGIOLD
     Name: Skeggiold
     Level: 81
     Hp: 295200
     BaseExp: 91100
     JobExp: 10
     Attack: 1400
     Attack2: 2020
     Defense: 12
     MagicDefense: 24
     Str: 80
     Agi: 100
     Vit: 50
     Int: 72
     Dex: 90
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 672
     AttackMotion: 780
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 6000
       - Item: Angelic_Chain
         Rate: 1
       - Item: Soft_Feather
         Rate: 1000
       - Item: Divine_Cross
         Rate: 25
       - Item: Rune_Of_Darkness
         Rate: 1000
       - Item: Silk_Robe_
         Rate: 100
       - Item: Odin's_Blessing
         Rate: 100
       - Item: Skeggiold_Card
         Rate: 1
         StealProtected: true
   - Id: 1755
     AegisName: SKEGGIOLD_
     Name: Skeggiold
     Level: 83
     Hp: 315200
     BaseExp: 99200
     JobExp: 10
     Attack: 1600
     Attack2: 2050
     Defense: 15
     MagicDefense: 24
     Str: 80
     Agi: 120
     Vit: 60
     Int: 85
     Dex: 98
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 672
     AttackMotion: 780
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 6000
       - Item: Angelic_Chain
         Rate: 1
       - Item: Soft_Feather
         Rate: 1000
       - Item: Divine_Cross
         Rate: 25
       - Item: Rune_Of_Darkness
         Rate: 1000
       - Item: Silk_Robe_
         Rate: 100
       - Item: Odin's_Blessing
         Rate: 100
       - Item: Skeggiold_Card
         Rate: 1
         StealProtected: true
   - Id: 1756
     AegisName: G_HYDRO
     Name: Hydrolancer
     JapaneseName: Hydrolancer
     Level: 89
     Hp: 308230
     Attack: 2554
     Attack2: 3910
     Defense: 52
     MagicDefense: 62
     Agi: 96
     Vit: 110
     Int: 86
     Dex: 94
     Luk: 32
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 140
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 04
     Class: Boss
   - Id: 1757
     AegisName: G_ACIDUS
     Name: Acidus
     Level: 80
     Hp: 51112
     Attack: 1289
     Attack2: 2109
     Defense: 39
     MagicDefense: 69
     Agi: 71
     Vit: 55
     Int: 135
     Dex: 103
     Luk: 69
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 168
     AttackMotion: 1008
+    ClientAttackMotion: 528
     DamageMotion: 300
     Ai: 04
   - Id: 1758
     AegisName: G_FERUS
     Name: Ferus
     Level: 70
     Hp: 29218
     Attack: 1056
     Attack2: 1496
     Defense: 34
     MagicDefense: 45
     Agi: 78
     Vit: 45
     Int: 72
     Dex: 81
     Luk: 73
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 108
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 04
   - Id: 1759
     AegisName: G_ACIDUS_
     Name: Acidus
     Level: 76
     Hp: 39111
     Attack: 1180
     Attack2: 2000
     Defense: 31
     MagicDefense: 47
     Agi: 78
     Vit: 31
     Int: 93
     Dex: 88
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 180
     AttackDelay: 168
     AttackMotion: 768
+    ClientAttackMotion: 528
     DamageMotion: 360
     Ai: 04
   - Id: 1760
     AegisName: G_FERUS_
     Name: Ferus
     Level: 69
     Hp: 21182
     Attack: 930
     Attack2: 1170
     Defense: 24
     MagicDefense: 38
     Agi: 66
     Vit: 77
     Int: 60
     Dex: 79
     Luk: 35
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 120
     AttackDelay: 108
     AttackMotion: 576
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 04
   - Id: 1761
     AegisName: G_SKOGUL
     Name: Skogul
     Level: 70
     Hp: 57544
     Attack: 1110
     Attack2: 1930
     Defense: 20
     MagicDefense: 15
     Agi: 69
     Vit: 70
     Int: 50
     Dex: 67
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 720
     AttackMotion: 384
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 500
   - Id: 1762
     AegisName: G_FRUS
     Name: Frus
     Level: 69
     Hp: 53422
     Attack: 1110
     Attack2: 1780
     Defense: 20
     MagicDefense: 15
     Agi: 69
     Vit: 60
     Int: 50
     Dex: 76
     Luk: 52
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 130
     AttackDelay: 480
     AttackMotion: 576
+    ClientAttackMotion: 192
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 500
   - Id: 1763
     AegisName: G_SKEGGIOLD
     Name: Skeggiold
     Level: 81
     Hp: 100200
     Attack: 1400
     Attack2: 3410
     Defense: 12
     MagicDefense: 24
     Str: 80
     Agi: 100
     Vit: 50
     Int: 72
     Dex: 90
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 672
     AttackMotion: 780
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 04
     Class: Boss
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 500
   - Id: 1764
     AegisName: G_SKEGGIOLD_
     Name: Skeggiold
     Level: 83
     Hp: 103000
     Attack: 1600
     Attack2: 4110
     Defense: 15
     MagicDefense: 24
     Str: 80
     Agi: 120
     Vit: 60
     Int: 85
     Dex: 98
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 672
     AttackMotion: 780
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 04
     Class: Boss
     Drops:
       - Item: Rune_Of_Darkness
         Rate: 500
   - Id: 1765
     AegisName: G_RANDGRIS
     Name: Valkyrie
     Level: 99
     Hp: 1567200
     BaseExp: 10000
     JobExp: 10000
     Attack: 5560
     Attack2: 9980
     Defense: 25
     MagicDefense: 42
     Str: 100
     Agi: 120
     Vit: 80
     Int: 120
     Dex: 220
     Luk: 210
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 576
+    ClientAttackMotion: 504
     DamageMotion: 480
     Ai: 21
     Class: Boss
     Drops:
       - Item: Valhalla_Flower
         Rate: 50
       - Item: Old_Violet_Box
         Rate: 100
       - Item: Valkyrja's_Shield
         Rate: 50
   - Id: 1766
     AegisName: EM_ANGELING
     Name: Angeling
     Level: 99
     Hp: 128430
     Attack: 60
     Attack2: 71
     Defense: 40
     MagicDefense: 50
     Agi: 17
     Vit: 80
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 312
     DamageMotion: 384
     Ai: 17
     Class: Guardian
     Modes:
+      Mvp: true
       Aggressive: true
       ChangeChase: true
       KnockBackImmune: true
     MvpDrops:
       - Item: Jellopy
         Rate: 5000
       - Item: Jellopy
         Rate: 5000
       - Item: Poring_Doll
         Rate: 5000
   - Id: 1767
     AegisName: EM_DEVILING
     Name: Deviling
     Level: 99
     Hp: 128430
     Attack: 60
     Attack2: 71
     Defense: 40
     MagicDefense: 50
     Agi: 17
     Vit: 80
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 864
     DamageMotion: 384
     Ai: 17
     Class: Guardian
     Modes:
+      Mvp: true
       Aggressive: true
       ChangeChase: true
       KnockBackImmune: true
     MvpDrops:
       - Item: Jellopy
         Rate: 5000
       - Item: Jellopy
         Rate: 5000
       - Item: Poring_Doll
         Rate: 5000
   - Id: 1768
     AegisName: GLOOMUNDERNIGHT
     Name: Pesar Noturno
     Level: 89
     Hp: 2298000
     BaseExp: 962175
     JobExp: 276445
     MvpExp: 481087
     Attack: 5880
     Attack2: 9516
     Defense: 10
     MagicDefense: 20
     Str: 100
     Agi: 115
     Vit: 98
     Int: 78
     Dex: 111
     Luk: 50
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1344
     AttackMotion: 2880
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Will_Of_Darkness_
         Rate: 7000
       - Item: Blade_Lost_In_Darkness
         Rate: 4000
       - Item: Old_Hilt
         Rate: 2000
       - Item: Old_Card_Album
         Rate: 5000
       - Item: Celestial_Robe
         Rate: 1000
       - Item: Hurricane_Fury
         Rate: 100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -29258,501 +30880,512 @@ Body:
     AegisName: AGAV
     Name: Agav
     Level: 73
     Hp: 29620
     BaseExp: 9780
     JobExp: 6622
     Attack: 103
     Attack2: 1109
     Defense: 15
     MagicDefense: 35
     Agi: 32
     Vit: 27
     Int: 132
     Dex: 69
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Suspicious_Hat
         Rate: 2500
       - Item: High_Fashion_Sandals
         Rate: 2
       - Item: Bloody_Rune
         Rate: 4000
       - Item: Memorize_Book
         Rate: 1
       - Item: Holy_Arrow_Quiver
         Rate: 50
       - Item: Bloody_Rune
         Rate: 100
       - Item: Agav_Card
         Rate: 1
         StealProtected: true
   - Id: 1770
     AegisName: ECHIO
     Name: Echio
     Level: 69
     Hp: 34900
     BaseExp: 13560
     JobExp: 4300
     Attack: 750
     Attack2: 1800
     Defense: 33
     MagicDefense: 11
     Str: 74
     Agi: 74
     Vit: 52
     Int: 35
     Dex: 59
     Luk: 56
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Suspicious_Hat
         Rate: 2500
       - Item: Seed_Of_Yggdrasil
         Rate: 10
       - Item: Bloody_Rune
         Rate: 4000
       - Item: Beret
         Rate: 20
       - Item: Holy_Arrow_Quiver
         Rate: 20
       - Item: Bloody_Rune
         Rate: 100
       - Item: Divine_Cloth
         Rate: 20
       - Item: Echio_Card
         Rate: 1
         StealProtected: true
   - Id: 1771
     AegisName: VANBERK
     Name: Vanberk
     Level: 59
     Hp: 9988
     BaseExp: 4203
     JobExp: 901
     Attack: 230
     Attack2: 660
     Defense: 24
     MagicDefense: 6
     Str: 69
     Agi: 66
     Vit: 39
     Int: 29
     Dex: 51
     Luk: 41
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: White_Mask
         Rate: 2500
       - Item: Royal_Jelly
         Rate: 10
       - Item: Bloody_Rune
         Rate: 1000
       - Item: Beret
         Rate: 10
       - Item: Scalpel
         Rate: 5
       - Item: Bloody_Rune
         Rate: 100
       - Item: Vanberk_Card
         Rate: 1
         StealProtected: true
   - Id: 1772
     AegisName: ISILLA
     Name: Isilla
     Level: 62
     Hp: 8297
     BaseExp: 3001
     JobExp: 3001
     Attack: 89
     Attack2: 733
     Defense: 11
     MagicDefense: 19
     Agi: 28
     Vit: 12
     Int: 97
     Dex: 57
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 360
     DamageMotion: 432
     Ai: 04
     Drops:
       - Item: White_Mask
         Rate: 2500
       - Item: High_Fashion_Sandals
         Rate: 1
       - Item: Bloody_Rune
         Rate: 1000
       - Item: Gold_Ring
         Rate: 10
       - Item: Ring
         Rate: 1
       - Item: Bloody_Rune
         Rate: 100
       - Item: Isilla_Card
         Rate: 1
         StealProtected: true
   - Id: 1773
     AegisName: HODREMLIN
     Name: Hodremlin
     Level: 61
     Hp: 12180
     BaseExp: 6782
     JobExp: 2022
     Attack: 845
     Attack2: 1678
     Defense: 29
     MagicDefense: 25
     Str: 80
     Agi: 41
     Vit: 81
     Int: 56
     Dex: 62
     Luk: 11
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 140
     AttackDelay: 960
     AttackMotion: 528
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Prickly_Fruit_
         Rate: 1000
       - Item: Will_Of_Darkness
         Rate: 1000
       - Item: Boots_
         Rate: 2
       - Item: Sticky_Mucus
         Rate: 1000
       - Item: Bloody_Rune
         Rate: 1000
       - Item: Starsand_Of_Witch
         Rate: 2000
       - Item: Shadow_Walk
         Rate: 10
       - Item: Hodremlin_Card
         Rate: 1
         StealProtected: true
   - Id: 1774
     AegisName: SEEKER
     Name: Rastreador
     Level: 65
     Hp: 10090
     BaseExp: 5671
     JobExp: 4278
     Attack: 723
     Attack2: 852
     Defense: 17
     MagicDefense: 30
     Str: 60
     Agi: 52
     Vit: 34
     Int: 143
     Dex: 107
     Luk: 27
     AttackRange: 6
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 190
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 300
     Ai: 20
     Drops:
       - Item: Prickly_Fruit_
         Rate: 1000
       - Item: Will_Of_Darkness
         Rate: 1000
       - Item: Elunium
         Rate: 20
       - Item: Starsand_Of_Witch
         Rate: 4000
       - Item: Bloody_Rune
         Rate: 1000
       - Item: Berdysz
         Rate: 20
       - Item: Seeker_Card
         Rate: 1
         StealProtected: true
   - Id: 1775
     AegisName: SNOWIER
     Name: Yeti
     Level: 60
     Hp: 19230
     BaseExp: 5882
     JobExp: 2699
     Attack: 770
     Attack2: 1347
     Defense: 22
     MagicDefense: 12
     Str: 73
     Agi: 46
     Vit: 72
     Int: 15
     Dex: 52
     Luk: 25
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Water
     ElementLevel: 2
     WalkSpeed: 220
     AttackDelay: 936
     AttackMotion: 1020
+    ClientAttackMotion: 660
     DamageMotion: 420
     Ai: 04
     Drops:
       - Item: Ice_Heart
         Rate: 3000
       - Item: Ice_Piece
         Rate: 1000
       - Item: Elunium_Stone
         Rate: 100
       - Item: Blue_Herb
         Rate: 50
       - Item: White_Herb
         Rate: 500
       - Item: Icicle_Fist
         Rate: 3
       - Item: Crystal_Blue
         Rate: 100
       - Item: Snowier_Card
         Rate: 1
         StealProtected: true
   - Id: 1776
     AegisName: SIROMA
     Name: Siroma
     Level: 42
     Hp: 6800
     BaseExp: 2230
     JobExp: 1005
     Attack: 220
     Attack2: 440
     Defense: 12
     MagicDefense: 8
     Str: 33
     Agi: 23
     Vit: 52
     Int: 11
     Dex: 40
     Luk: 19
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Water
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 432
     AttackMotion: 648
+    ClientAttackMotion: 432
     DamageMotion: 240
     Ai: 02
     Drops:
       - Item: Ice_Heart
         Rate: 1000
       - Item: Ice_Piece
         Rate: 500
       - Item: Blue_Herb
         Rate: 10
       - Item: Crystal_Blue
         Rate: 20
       - Item: Siroma_Card
         Rate: 1
         StealProtected: true
   - Id: 1777
     AegisName: ICE_TITAN
     Name: Tit de Gelo
     Level: 60
     Hp: 38200
     BaseExp: 13872
     JobExp: 7928
     Attack: 1090
     Attack2: 1570
     Defense: 71
     MagicDefense: 15
     Str: 99
     Agi: 34
     Vit: 88
     Int: 10
     Dex: 79
     Luk: 29
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Water
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 861
     AttackMotion: 660
+    ClientAttackMotion: 600
     DamageMotion: 144
     Ai: 04
     Drops:
       - Item: Ice_Heart
         Rate: 5000
       - Item: Ice_Piece
         Rate: 3000
       - Item: Frozen_Rose
         Rate: 100
       - Item: Oridecon
         Rate: 10
       - Item: Elunium
         Rate: 30
       - Item: Mistic_Frozen
         Rate: 100
       - Item: Ice_Titan_Card
         Rate: 1
         StealProtected: true
   - Id: 1778
     AegisName: GAZETI
     Name: Gazeti
     Level: 55
     Hp: 12300
     BaseExp: 5758
     JobExp: 2075
     Attack: 512
     Attack2: 612
     Defense: 65
     MagicDefense: 25
     Agi: 12
     Vit: 20
     Int: 60
     Dex: 101
     Luk: 5
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Water
     ElementLevel: 1
     WalkSpeed: 190
     AttackDelay: 576
     AttackMotion: 370
+    ClientAttackMotion: 300
     DamageMotion: 270
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Ice_Heart
         Rate: 3000
       - Item: Ice_Piece
         Rate: 3000
       - Item: Elunium
         Rate: 20
       - Item: Frozen_Bow
         Rate: 1
       - Item: Gazeti_Card
         Rate: 1
         StealProtected: true
   - Id: 1779
     AegisName: KTULLANUX
     Name: Ktullanux
     Level: 98
     Hp: 4417000
     BaseExp: 2720050
     JobExp: 1120020
     MvpExp: 1360025
     Attack: 1680
     Attack2: 10360
     Defense: 40
     MagicDefense: 42
     Str: 85
     Agi: 126
     Vit: 30
     Int: 125
     Dex: 177
     Luk: 112
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Water
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 432
     AttackMotion: 840
+    ClientAttackMotion: 660
     DamageMotion: 216
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Ice_Scale
         Rate: 9000
       - Item: Old_Card_Album
         Rate: 3000
       - Item: Clack_Of_Servival
         Rate: 3000
       - Item: Herald_Of_GOD
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Yggdrasilberry
         Rate: 5000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -29763,266 +31396,272 @@ Body:
     AegisName: MUSCIPULAR
     Name: Muscipular
     Level: 57
     Hp: 4332
     BaseExp: 1706
     JobExp: 1706
     Attack: 521
     Attack2: 726
     Defense: 12
     MagicDefense: 12
     Agi: 53
     Vit: 39
     Int: 25
     Dex: 92
     Luk: 51
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 672
     AttackMotion: 648
+    ClientAttackMotion: 504
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Sticky_Poison
         Rate: 3000
       - Item: Blossom_Of_Maneater
         Rate: 3000
       - Item: Singing_Flower
         Rate: 2
       - Item: Root_Of_Maneater
         Rate: 2000
       - Item: Stem
         Rate: 1000
       - Item: Deadly_Noxious_Herb
         Rate: 3
       - Item: Muscipular_Card
         Rate: 1
         StealProtected: true
   - Id: 1781
     AegisName: DROSERA
     Name: Drosera
     Level: 46
     Hp: 7221
     BaseExp: 2612
     JobExp: 1022
     Attack: 389
     Attack2: 589
     Defense: 10
     MagicDefense: 13
     Agi: 30
     Vit: 27
     Int: 17
     Dex: 76
     Luk: 41
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 864
     AttackMotion: 576
+    ClientAttackMotion: 504
     DamageMotion: 336
     Ai: 10
     Drops:
       - Item: Sticky_Poison
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Blossom_Of_Maneater
         Rate: 2000
       - Item: Root_Of_Maneater
         Rate: 2000
       - Item: Bitter_Herb
         Rate: 3
       - Item: Stem
         Rate: 1000
       - Item: Drosera_Card
         Rate: 1
         StealProtected: true
   - Id: 1782
     AegisName: ROWEEN
     Name: Roween
     Level: 31
     Hp: 5716
     BaseExp: 1669
     JobExp: 1266
     Attack: 298
     Attack2: 377
     MagicDefense: 7
     Str: 51
     Agi: 39
     Vit: 48
     Int: 18
     Dex: 67
     Luk: 19
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 412
     AttackMotion: 840
+    ClientAttackMotion: 600
     DamageMotion: 300
     Ai: 07
     Drops:
       - Item: Rotten_Meat
         Rate: 3000
       - Item: Animal's_Skin
         Rate: 3000
       - Item: Wind_Of_Verdure
         Rate: 50
       - Item: Combo_Battle_Glove
         Rate: 2
       - Item: Roween_Card
         Rate: 1
         StealProtected: true
   - Id: 1783
     AegisName: GALION
     Name: Galion
     Level: 44
     Hp: 32240
     BaseExp: 10020
     JobExp: 3368
     Attack: 336
     Attack2: 441
     Defense: 11
     MagicDefense: 12
     Str: 51
     Agi: 52
     Vit: 59
     Int: 25
     Dex: 72
     Luk: 32
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 864
     AttackMotion: 624
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 07
     Class: Boss
     Drops:
       - Item: Rotten_Meat
         Rate: 3000
       - Item: Animal's_Skin
         Rate: 3000
       - Item: Rough_Wind
         Rate: 10
       - Item: Ulfhedinn
         Rate: 5
       - Item: Galion_Card
         Rate: 1
         StealProtected: true
   - Id: 1784
     AegisName: STAPO
     Name: Stapo
     Level: 23
     Hp: 666
     BaseExp: 332
     JobExp: 221
     Attack: 135
     Attack2: 370
     Defense: 90
     MagicDefense: 5
     Str: 12
     Agi: 11
     Vit: 15
     Int: 12
     Dex: 23
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 936
     AttackMotion: 792
+    ClientAttackMotion: 648
     DamageMotion: 432
     Ai: 02
     Drops:
       - Item: Jellopy
         Rate: 1000
       - Item: Jubilee
         Rate: 1000
       - Item: Apple
         Rate: 1000
       - Item: Large_Jellopy
         Rate: 100
       - Item: Yellow_Live
         Rate: 10
       - Item: Seismic_Fist
         Rate: 3
       - Item: Stapo_Card
         Rate: 1
         StealProtected: true
   - Id: 1785
     AegisName: ATROCE
     Name: Atroce
     Level: 82
     Hp: 1008420
     BaseExp: 295550
     JobExp: 118895
     MvpExp: 147775
     Attack: 2526
     Attack2: 3646
     Defense: 25
     MagicDefense: 25
     Str: 100
     Agi: 87
     Vit: 30
     Int: 49
     Dex: 89
     Luk: 72
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 600
+    ClientAttackMotion: 480
     DamageMotion: 240
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Bloody_Rune
         Rate: 7000
       - Item: Seed_Of_Yggdrasil
         Rate: 1000
       - Item: Ring_
         Rate: 1000
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Yggdrasilberry
         Rate: 5000
       - Item: Ulle_Cap
         Rate: 100
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -30033,1400 +31672,1463 @@ Body:
         StealProtected: true
   - Id: 1786
     AegisName: G_AGAV
     Name: Agav
     Level: 73
     Hp: 25620
     Attack: 103
     Attack2: 909
     Defense: 15
     MagicDefense: 35
     Agi: 32
     Vit: 27
     Int: 132
     Dex: 69
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Suspicious_Hat
         Rate: 1
   - Id: 1787
     AegisName: G_ECHIO
     Name: Echio
     Level: 69
     Hp: 36900
     Attack: 750
     Attack2: 1500
     Defense: 33
     MagicDefense: 11
     Str: 74
     Agi: 74
     Vit: 52
     Int: 35
     Dex: 59
     Luk: 56
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 768
     AttackMotion: 360
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Suspicious_Hat
         Rate: 1
   - Id: 1788
     AegisName: G_ICE_TITAN
     Name: Tit de Gelo
     Level: 60
     Hp: 32900
     Attack: 1090
     Attack2: 1570
     Defense: 71
     MagicDefense: 15
     Str: 99
     Agi: 34
     Vit: 88
     Int: 10
     Dex: 79
     Luk: 29
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Water
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 861
     AttackMotion: 660
+    ClientAttackMotion: 600
     DamageMotion: 144
     Ai: 20
     Drops:
       - Item: Ice_Heart
         Rate: 1
   - Id: 1789
     AegisName: ICEICLE
     Name: Estalactitico
     Level: 38
     Hp: 10
     BaseExp: 5
     JobExp: 5
     Attack: 241
     Attack2: 1082
     MagicDefense: 10
     Agi: 10
     Vit: 10
     Int: 10
     Dex: 172
     Luk: 5
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Water
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 1344
+    ClientAttackMotion: 1152
     Ai: 10
     Drops:
       - Item: Ice_Piece
         Rate: 1000
       - Item: Ice_Piece
         Rate: 1000
       - Item: Ice_Piece
         Rate: 1000
       - Item: Ice_Piece
         Rate: 500
       - Item: Ice_Piece
         Rate: 500
       - Item: Ice_Piece
         Rate: 500
       - Item: Ice_Piece
         Rate: 500
       - Item: Ice_Piece
         Rate: 500
         StealProtected: true
   - Id: 1790
     AegisName: G_RAFFLESIA
     Name: Rafflesia
     Level: 17
     Hp: 1333
     Attack: 105
     Attack2: 127
     MagicDefense: 2
     Agi: 18
     Vit: 24
     Int: 11
     Dex: 37
     Luk: 10
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 512
     AttackMotion: 528
+    ClientAttackMotion: 432
     DamageMotion: 240
     Ai: 04
     Drops:
       - Item: Golden_Jewel_
         Rate: 3000
       - Item: Red_Jewel_
         Rate: 4000
       - Item: Blue_Jewel_
         Rate: 2000
   - Id: 1791
     AegisName: G_GALION
     Name: Galion
     Level: 44
     Hp: 32240
     Attack: 336
     Attack2: 441
     Defense: 11
     MagicDefense: 12
     Str: 51
     Agi: 52
     Vit: 59
     Int: 25
     Dex: 72
     Luk: 32
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 864
     AttackMotion: 624
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 07
     Class: Boss
   - Id: 1792
     AegisName: SOCCER_BALL
     Name: Bola de Futebol
     Level: 1
     Hp: 1000
     Defense: 127
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 96
     AttackMotion: 96
     DamageMotion: 96
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
   - Id: 1793
     AegisName: G_MEGALITH
     Name: Megalith
     Level: 45
     Hp: 5300
     Attack: 264
     Attack2: 314
     Defense: 50
     MagicDefense: 25
     Agi: 45
     Vit: 60
     Int: 5
     Dex: 95
     Luk: 5
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 200
     AttackDelay: 1332
     AttackMotion: 1332
+    ClientAttackMotion: 936
     DamageMotion: 672
     Ai: 21
   - Id: 1794
     AegisName: G_ROWEEN
     Name: Roween
     Level: 31
     Hp: 5716
     Attack: 298
     Attack2: 377
     MagicDefense: 7
     Str: 51
     Agi: 39
     Vit: 48
     Int: 18
     Dex: 67
     Luk: 19
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 412
     AttackMotion: 840
+    ClientAttackMotion: 600
     DamageMotion: 300
     Ai: 20
   - Id: 1795
     AegisName: BLOODY_KNIGHT_
     Name: Cavaleiro Sanguinrio
     Level: 82
     Hp: 800000
     Attack: 10000
     Attack2: 30000
     Defense: 60
     MagicDefense: 60
     Str: 88
     Agi: 121
     Vit: 100
     Int: 100
     Dex: 125
     Luk: 55
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 828
     AttackMotion: 528
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 21
     Class: Boss
     Drops:
       - Item: Pole_Axe
         Rate: 100
       - Item: Grave_
         Rate: 100
       - Item: Pauldron
         Rate: 200
       - Item: Full_Plate_Armor_
         Rate: 300
       - Item: Celestial_Robe
         Rate: 200
       - Item: Survival_Rod2_
         Rate: 200
       - Item: Old_Violet_Box
         Rate: 7000
       - Item: Anti_Spell_Bead
         Rate: 10000
         StealProtected: true
   - Id: 1796
     AegisName: AUNOE
     Name: Aunoe
     Level: 62
     Hp: 21297
     BaseExp: 4102
     JobExp: 4102
     Attack: 89
     Attack2: 733
     Defense: 11
     MagicDefense: 19
     Agi: 28
     Vit: 12
     Int: 97
     Dex: 57
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 768
     AttackMotion: 432
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: White_Mask
         Rate: 2500
       - Item: High_Fashion_Sandals
         Rate: 2
       - Item: Bloody_Rune
         Rate: 4000
       - Item: Memorize_Book
         Rate: 1
       - Item: Holy_Arrow_Quiver
         Rate: 50
       - Item: Bloody_Rune
         Rate: 100
       - Item: Musika
         Rate: 5
   - Id: 1797
     AegisName: FANAT
     Name: Fanat
     Level: 62
     Hp: 21297
     BaseExp: 4102
     JobExp: 4102
     Attack: 89
     Attack2: 733
     Defense: 11
     MagicDefense: 19
     Agi: 28
     Vit: 12
     Int: 97
     Dex: 57
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 250
     AttackDelay: 768
     AttackMotion: 432
+    ClientAttackMotion: 576
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Kandura
         Rate: 10
       - Item: High_Fashion_Sandals
         Rate: 2
       - Item: Bloody_Rune
         Rate: 4000
       - Item: Memorize_Book
         Rate: 1
       - Item: Holy_Arrow_Quiver
         Rate: 50
       - Item: White_Mask
         Rate: 2500
   - Id: 1798
     AegisName: TREASURE_BOX_
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
+    Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Gem_Of_Ruin
         Rate: 10000
   - Id: 1799
     AegisName: G_SEYREN_
     Name: Lorde Seyren
     Level: 99
     Hp: 347590
     BaseExp: 18000
     JobExp: 10000
     Attack: 4238
     Attack2: 5040
     Defense: 72
     MagicDefense: 37
     Str: 120
     Agi: 110
     Vit: 81
     Int: 65
     Dex: 130
     Luk: 52
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1800
     AegisName: G_EREMES_
     Name: Algoz Eremes
     Level: 99
     Hp: 211230
     BaseExp: 18000
     JobExp: 10000
     Attack: 3189
     Attack2: 5289
     Defense: 27
     MagicDefense: 39
     Str: 90
     Agi: 181
     Vit: 62
     Int: 37
     Dex: 122
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1801
     AegisName: G_HARWORD_
     Name: Mestre-Ferreiro Howard
     JapaneseName: Mestre-Ferreiro Howard
     Level: 99
     Hp: 310000
     BaseExp: 18000
     JobExp: 10000
     Attack: 4822
     Attack2: 5033
     Defense: 66
     MagicDefense: 36
     Str: 100
     Agi: 73
     Vit: 112
     Int: 35
     Dex: 136
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1802
     AegisName: G_MAGALETA_
     Name: Sacerdotisa Margaretha
     JapaneseName: Sacerdotisa Margaretha
     Level: 99
     Hp: 182910
     BaseExp: 18000
     JobExp: 10000
     Attack: 1688
     Attack2: 2580
     Defense: 35
     MagicDefense: 78
     Agi: 84
     Vit: 64
     Int: 182
     Dex: 92
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1803
     AegisName: G_SHECIL_
     Name: Atiradora de Elite Cecil
     JapaneseName: Atiradora de Elite Cecil
     Level: 99
     Hp: 209000
     BaseExp: 18000
     JobExp: 10000
     Attack: 1892
     Attack2: 5113
     Defense: 22
     MagicDefense: 35
     Agi: 180
     Vit: 39
     Int: 67
     Dex: 193
     Luk: 130
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 20
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1804
     AegisName: G_KATRINN_
     Name: Arquimaga Kathryne
     JapaneseName: Arquimaga Kathryne
     Level: 99
     Hp: 189920
     BaseExp: 18000
     JobExp: 10000
     Attack: 497
     Attack2: 2094
     Defense: 10
     MagicDefense: 88
     Agi: 89
     Vit: 42
     Int: 223
     Dex: 128
     Luk: 93
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 300
   - Id: 1805
     AegisName: B_SEYREN_
     Name: Lorde Seyren
     Level: 99
     Hp: 1647590
     BaseExp: 4835600
     JobExp: 1569970
     Attack: 7238
     Attack2: 11040
     Defense: 72
     MagicDefense: 37
     Str: 120
     Agi: 110
     Vit: 81
     Int: 65
     Dex: 130
     Luk: 52
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1806
     AegisName: B_EREMES_
     Name: Algoz Eremes
     Level: 99
     Hp: 1411230
     BaseExp: 4083400
     JobExp: 1592380
     Attack: 4189
     Attack2: 8289
     Defense: 37
     MagicDefense: 39
     Str: 90
     Agi: 181
     Vit: 62
     Int: 37
     Dex: 122
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Poison
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1807
     AegisName: B_HARWORD_
     Name: Mestre-Ferreiro Howard
     JapaneseName: Mestre-Ferreiro Howard
     Level: 99
     Hp: 1460000
     BaseExp: 4002340
     JobExp: 1421000
     Attack: 7822
     Attack2: 8251
     Defense: 66
     MagicDefense: 36
     Str: 100
     Agi: 73
     Vit: 112
     Int: 35
     Dex: 136
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1808
     AegisName: B_MAGALETA_
     Name: Sacerdotisa Margaretha
     JapaneseName: Sacerdotisa Margaretha
     Level: 99
     Hp: 1092910
     BaseExp: 4257000
     JobExp: 1318800
     Attack: 4688
     Attack2: 5580
     Defense: 35
     MagicDefense: 78
     Agi: 84
     Vit: 64
     Int: 182
     Dex: 92
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1809
     AegisName: B_SHECIL_
     Name: Atiradora de Elite Cecil
     JapaneseName: Atiradora de Elite Cecil
     Level: 99
     Hp: 1349000
     BaseExp: 4093000
     JobExp: 1526000
     Attack: 4892
     Attack2: 9113
     Defense: 22
     MagicDefense: 35
     Agi: 180
     Vit: 39
     Int: 67
     Dex: 193
     Luk: 130
     AttackRange: 14
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1810
     AegisName: B_KATRINN_
     Name: Arquimaga Kathryne
     JapaneseName: Arquimaga Kathryne
     Level: 99
     Hp: 1069920
     BaseExp: 4008200
     JobExp: 1636700
     Attack: 1197
     Attack2: 4394
     Defense: 10
     MagicDefense: 88
     Agi: 89
     Vit: 42
     Int: 223
     Dex: 128
     Luk: 93
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Mind
         Rate: 10000
   - Id: 1811
     AegisName: G_SMOKIE_
     Name: Fumacento
     JapaneseName: Fumacento
     Level: 18
     Hp: 641
     Attack: 61
     Attack2: 72
     MagicDefense: 10
     Agi: 18
     Vit: 36
     Int: 25
     Dex: 26
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 480
     DamageMotion: 420
     Ai: 17
     Drops:
       - Item: Sunglasses
         Rate: 100
       - Item: Tiger_Skin_Panties
         Rate: 500
       - Item: Aloebera
         Rate: 1000
       - Item: Ice_Cream
         Rate: 2000
       - Item: Bamboo_Basket
         Rate: 500
   - Id: 1812
     AegisName: EVENT_LUDE
     Name: Lude
     JapaneseName: Lude
     Level: 99
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
     AttackDelay: 890
     AttackMotion: 960
+    ClientAttackMotion: 288
     DamageMotion: 480
+    Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Pumpkin_Bucket
         Rate: 5000
       - Item: Pumpkin_Head
         Rate: 5000
       - Item: Pumpkin
         Rate: 5000
       - Item: Pumpkin_Mojo
         Rate: 5000
   - Id: 1813
     AegisName: EVENT_HYDRO
     Name: Hydrolancer
     JapaneseName: Hydrolancer
     Level: 99
     Hp: 1880000
     BaseExp: 4000000
     JobExp: 2000000
     Attack: 15000
     Attack2: 47767
     Defense: 60
     MagicDefense: 55
     Agi: 142
     Vit: 200
     Int: 250
     Dex: 189
     Luk: 32
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 972
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Evil_Dragon_Head
         Rate: 10000
       - Item: Dragon_Killer
         Rate: 500
       - Item: Gemmed_Crown
         Rate: 500
       - Item: Pole_Axe
         Rate: 500
       - Item: Int_Dish10
         Rate: 1500
       - Item: Treasure_Box
         Rate: 5500
   - Id: 1814
     AegisName: EVENT_MOON
     Name: Flor do Luar
     Level: 80
     Hp: 30000
     BaseExp: 30000
     JobExp: 30000
     Attack: 500
     Attack2: 800
     Defense: 50
     MagicDefense: 50
     Agi: 35
     Vit: 45
     Int: 112
     Dex: 69
     Luk: 93
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1276
     AttackMotion: 576
+    ClientAttackMotion: 120
     DamageMotion: 288
     Ai: 21
     Class: Boss
   - Id: 1815
     AegisName: EVENT_RICECAKE
     Name: Bolinho de Arroz
     Level: 12
     Hp: 20
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     AttackRange: 1
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1320
+    ClientAttackMotion: 504
     DamageMotion: 300
+    Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Small_Rice_Dough
         Rate: 10000
       - Item: Small_Rice_Dough
         Rate: 10000
       - Item: Small_Rice_Dough
         Rate: 10000
       - Item: Small_Rice_Dough
         Rate: 10000
       - Item: Small_Rice_Dough
         Rate: 10000
       - Item: Small_Rice_Dough
         Rate: 5000
       - Item: Small_Rice_Dough
         Rate: 4000
       - Item: Small_Rice_Dough
         Rate: 3000
         StealProtected: true
   - Id: 1816
     AegisName: EVENT_GOURD
     Name: Gourd
     Level: 12
     Hp: 1000
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     AttackRange: 1
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 96
     AttackMotion: 96
     DamageMotion: 96
+    Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Apple
         Rate: 10000
   - Id: 1817
     AegisName: EVENT_DETALE
     Name: Detardeurus
     JapaneseName: Detardeurus
     Level: 99
     Hp: 8880000
     BaseExp: 4500000
     JobExp: 2500000
     Attack: 32767
     Attack2: 65534
     Defense: 65
     MagicDefense: 65
     Agi: 142
     Vit: 200
     Int: 250
     Dex: 189
     Luk: 50
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 972
     AttackMotion: 936
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Dragon_Spirit
         Rate: 10000
       - Item: Dragon_Wing
         Rate: 500
       - Item: Wizardy_Staff
         Rate: 500
       - Item: Bloody_Roar
         Rate: 500
       - Item: Int_Dish10
         Rate: 1500
       - Item: Luk_Dish10
         Rate: 1500
   - Id: 1818
     AegisName: EVENT_ALARM
     Name: Alarme
     Level: 58
     Hp: 10647
     Attack: 1
     Attack2: 2
     Defense: 15
     MagicDefense: 15
     Agi: 62
     Vit: 72
     Int: 10
     Dex: 85
     Luk: 45
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1020
     AttackMotion: 500
+    ClientAttackMotion: 540
     DamageMotion: 768
     Ai: 21
     Drops:
       - Item: Piece_Of_Cogwheel
         Rate: 7000
         StealProtected: true
   - Id: 1819
     AegisName: EVENT_BATHORY
     Name: Bathory
     Level: 44
     Hp: 5415
     Attack: 198
     Attack2: 398
     MagicDefense: 60
     Agi: 76
     Vit: 24
     Int: 85
     Dex: 65
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1504
     AttackMotion: 840
+    ClientAttackMotion: 288
     DamageMotion: 900
     Ai: 21
     Drops:
       - Item: Wooden_Block_
         Rate: 2000
   - Id: 1820
     AegisName: EVENT_BIGFOOT
     Name: P Grande
     Level: 25
     Hp: 1619
     Attack: 198
     Attack2: 220
     Defense: 10
     Agi: 25
     Vit: 55
     Int: 15
     Dex: 20
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 17
     Drops:
       - Item: Wooden_Block_
         Rate: 2000
   - Id: 1821
     AegisName: EVENT_DESERT_WOLF
     Name: Lobo do Deserto
     Level: 27
     Hp: 1716
     Attack: 169
     Attack2: 208
     MagicDefense: 10
     Str: 56
     Agi: 27
     Vit: 45
     Int: 15
     Dex: 56
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1120
     AttackMotion: 420
+    ClientAttackMotion: 216
     DamageMotion: 288
     Ai: 13
     Drops:
       - Item: Wooden_Block_
         Rate: 2000
   - Id: 1822
     AegisName: EVENT_DEVIRUCHI
     Name: Deviruchi
     Level: 46
     Hp: 6666
     Attack: 475
     Attack2: 560
     Defense: 10
     MagicDefense: 25
     Agi: 69
     Vit: 40
     Int: 55
     Dex: 70
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 980
     AttackMotion: 600
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Wooden_Block_
         Rate: 3000
   - Id: 1823
     AegisName: EVENT_FREEZER
     Name: Congelador
     Level: 72
     Hp: 8636
     Attack: 671
     Attack2: 983
     Defense: 55
     MagicDefense: 43
     Str: 69
     Agi: 41
     Vit: 59
     Int: 5
     Dex: 67
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 540
     DamageMotion: 528
     Ai: 21
     Drops:
       - Item: Wooden_Block_
         Rate: 3000
   - Id: 1824
     AegisName: EVENT_GARM_BABY
     Name: Filhote de Hatii
     JapaneseName: Filhote de Hatii
     Level: 61
     Hp: 20199
     Attack: 680
     Attack2: 1179
     Defense: 34
     MagicDefense: 13
     Str: 45
     Agi: 30
     Vit: 56
     Int: 55
     Dex: 85
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 450
     AttackDelay: 879
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Wooden_Block_
         Rate: 5000
   - Id: 1825
     AegisName: EVENT_GOBLINE_XMAS
     Name: Goblin Natalino
     Level: 25
     Hp: 1176
     Attack: 118
     Attack2: 140
     Defense: 10
     MagicDefense: 5
     Agi: 53
     Vit: 25
     Int: 20
     Dex: 38
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 1120
     AttackMotion: 620
+    ClientAttackMotion: 384
     DamageMotion: 240
     Ai: 21
     Drops:
       - Item: Wooden_Block_
         Rate: 5000
   - Id: 1826
     AegisName: EVENT_MYST
     Name: Nvoa
     Level: 38
     Hp: 3745
     Attack: 365
     Attack2: 445
     MagicDefense: 40
     Agi: 38
     Vit: 18
+    Int: 0
     Dex: 53
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Wooden_Block_
         Rate: 3000
   - Id: 1827
     AegisName: EVENT_SASQUATCH
     Name: Sasquatch
     Level: 30
     Hp: 3163
     Attack: 250
     Attack2: 280
     Defense: 5
     Str: 75
     Agi: 25
     Vit: 60
     Int: 10
     Dex: 34
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1260
     AttackMotion: 192
+    ClientAttackMotion: 1092
     DamageMotion: 192
     Ai: 21
     Drops:
       - Item: Wooden_Block_
         Rate: 3000
   - Id: 1828
     AegisName: EVENT_GULLINBURSTI
     Name: Gullinbrusti
     Level: 20
     Hp: 20
     Attack: 59
     Attack2: 72
     Defense: 100
     MagicDefense: 99
     Agi: 14
     Vit: 14
+    Int: 0
     Dex: 19
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 21
+    Class: Boss
+    Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
     Drops:
       - Item: Bag_Of_Rice
         Rate: 6000
       - Item: Lucky_Candy
         Rate: 9000
       - Item: Lucky_Candy_Cane
         Rate: 8000
   - Id: 1829
     AegisName: SWORD_GUARDIAN
     Name: Espadachim Guardio
     JapaneseName: Espadachim Guardio
     Level: 86
     Hp: 152533
     BaseExp: 155013
     JobExp: 122604
     Attack: 7590
     Attack2: 9140
     Defense: 60
     MagicDefense: 33
     Str: 110
     Agi: 40
     Vit: 54
     Int: 65
     Dex: 125
     Luk: 65
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -31509,99 +33211,101 @@ Body:
     Name: Salamandra
     Level: 91
     Hp: 97934
     BaseExp: 72000
     JobExp: 55000
     Attack: 7590
     Attack2: 10860
     Defense: 65
     MagicDefense: 50
     Str: 90
     Agi: 55
     Vit: 44
     Int: 45
     Dex: 180
     Luk: 25
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 160
     AttackDelay: 140
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Burning_Heart
         Rate: 3000
       - Item: Flame_Heart
         Rate: 30
       - Item: Red_Gemstone
         Rate: 100
       - Item: Lesser_Elemental_Ring
         Rate: 1
       - Item: Berserk_Guitar
         Rate: 50
       - Item: Ring_
         Rate: 1
       - Item: Meteo_Plate_Armor
         Rate: 20
       - Item: Salamander_Card
         Rate: 1
         StealProtected: true
   - Id: 1832
     AegisName: IFRIT
     Name: Ifrit
     Level: 99
     Hp: 7700000
     BaseExp: 3154321
     JobExp: 3114520
     MvpExp: 1577160
     Attack: 13530
     Attack2: 17000
     Defense: 40
     MagicDefense: 50
     Str: 120
     Agi: 180
     Vit: 25
     Int: 190
     Dex: 199
     Luk: 50
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 4
     WalkSpeed: 130
     AttackDelay: 212
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Blue_Box
         Rate: 5000
       - Item: Old_Card_Album
         Rate: 2000
     Drops:
       - Item: Flame_Heart
         Rate: 10000
       - Item: Spiritual_Ring
         Rate: 300
       - Item: Ring_Of_Flame_Lord
         Rate: 20
       - Item: Ring_Of_Resonance
         Rate: 20
       - Item: Hell_Fire
         Rate: 200
       - Item: Fire_Brand
         Rate: 200
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -31615,332 +33319,341 @@ Body:
     Name: Kasa
     Level: 85
     Hp: 80375
     BaseExp: 49000
     JobExp: 38000
     Attack: 3030
     Attack2: 3500
     Defense: 23
     MagicDefense: 70
     Str: 45
     Agi: 110
     Vit: 31
     Int: 200
     Dex: 140
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 800
     AttackMotion: 600
+    ClientAttackMotion: 540
     DamageMotion: 288
     Ai: 21
     Class: Boss
     Drops:
       - Item: Burning_Heart
         Rate: 3000
       - Item: Hot_Hair
         Rate: 2500
       - Item: Flame_Heart
         Rate: 30
       - Item: Lesser_Elemental_Ring
         Rate: 1
       - Item: Flame_Sprits_Armor
         Rate: 10
       - Item: Burning_Bow
         Rate: 10
       - Item: Piercing_Staff
         Rate: 10
       - Item: Kasa_Card
         Rate: 1
         StealProtected: true
   - Id: 1834
     AegisName: G_SALAMANDER
     Name: Salamandra
     Level: 91
     Hp: 97934
     Attack: 9590
     Attack2: 12860
     Defense: 65
     MagicDefense: 60
     Str: 90
     Agi: 55
     Vit: 44
     Int: 45
     Dex: 180
     Luk: 25
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 160
     AttackDelay: 140
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 21
     Class: Boss
   - Id: 1835
     AegisName: G_KASA
     Name: Kasa
     Level: 85
     Hp: 80375
     Attack: 3030
     Attack2: 3500
     Defense: 23
     MagicDefense: 70
     Str: 45
     Agi: 158
     Vit: 31
     Int: 250
     Dex: 160
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 800
     AttackMotion: 600
+    ClientAttackMotion: 540
     DamageMotion: 288
     Ai: 21
     Class: Boss
   - Id: 1836
     AegisName: MAGMARING
     Name: Magmaring
     Level: 40
     Hp: 5300
     BaseExp: 2110
     JobExp: 1910
     Attack: 550
     Attack2: 700
     Defense: 25
     MagicDefense: 24
     Str: 40
     Agi: 60
     Vit: 30
     Int: 10
     Dex: 60
     Luk: 17
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1472
     AttackMotion: 384
+    ClientAttackMotion: 336
     DamageMotion: 288
     Ai: 02
     Drops:
       - Item: Burning_Heart
         Rate: 3000
       - Item: Elunium_Stone
         Rate: 34
       - Item: Magmaring_Card
         Rate: 1
         StealProtected: true
   - Id: 1837
     AegisName: IMP
     Name: Imp
     JapaneseName: Imp
     Level: 76
     Hp: 46430
     BaseExp: 25200
     JobExp: 11077
     Attack: 1059
     Attack2: 1509
     Defense: 27
     MagicDefense: 50
     Str: 37
     Agi: 76
     Vit: 30
     Int: 150
     Dex: 99
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 824
     AttackMotion: 432
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Hot_Hair
         Rate: 3000
       - Item: Huuma_Blaze
         Rate: 3
       - Item: Live_Coal
         Rate: 2500
       - Item: Heart_Breaker
         Rate: 10
       - Item: Electric_Eel
         Rate: 25
       - Item: Flaming_Ice
         Rate: 20
       - Item: Imp_Card
         Rate: 1
         StealProtected: true
   - Id: 1838
     AegisName: KNOCKER
     Name: Golpeador
     Level: 50
     Hp: 7755
     BaseExp: 2202
     JobExp: 4023
     Attack: 889
     Attack2: 990
     Defense: 28
     MagicDefense: 50
     Str: 25
     Agi: 44
     Vit: 50
     Int: 62
     Dex: 65
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1548
     AttackMotion: 384
+    ClientAttackMotion: 240
     DamageMotion: 288
     Ai: 17
     Modes:
       Detector: true
     Drops:
       - Item: Great_Nature
         Rate: 30
       - Item: Coal
         Rate: 150
       - Item: Elder_Pixie's_Beard
         Rate: 5500
       - Item: Elven_Ears
         Rate: 1
       - Item: Ribbon
         Rate: 10
       - Item: Thorny_Buckler
         Rate: 3
       - Item: Earth_Bow
         Rate: 5
       - Item: Knocker_Card
         Rate: 1
         StealProtected: true
   - Id: 1839
     AegisName: BYORGUE
     Name: Byorgue
     Level: 86
     Hp: 38133
     BaseExp: 19000
     JobExp: 9500
     Attack: 1340
     Attack2: 2590
     Defense: 20
     MagicDefense: 13
     Str: 25
     Agi: 80
     Vit: 12
     Int: 30
     Dex: 70
     Luk: 10
     AttackRange: 2
     SkillRange: 14
     ChaseRange: 16
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 170
     AttackDelay: 800
     AttackMotion: 600
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Drill_Katar
         Rate: 50
       - Item: Assassin_Mask_
         Rate: 3
       - Item: Scalpel
         Rate: 150
       - Item: Agi_Dish07
         Rate: 500
       - Item: Old_Blue_Box
         Rate: 40
       - Item: Rider_Insignia_
         Rate: 1
       - Item: Vroken_Sword
         Rate: 4365
       - Item: Byorgue_Card
         Rate: 1
         StealProtected: true
   - Id: 1840
     AegisName: GOLDEN_SAVAGE
     Name: Grande Selvagem
     Level: 99
     Hp: 500
     BaseExp: 1
     JobExp: 1
     Attack: 500
     Attack2: 700
     Defense: 100
     MagicDefense: 99
+    Str: 0
     Int: 50
     Dex: 120
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 17
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       KnockBackImmune: true
     Drops:
       - Item: Leaf_Of_Yggdrasil
         Rate: 3000
       - Item: Treasure_Box
         Rate: 100
       - Item: Old_Card_Album
         Rate: 5
       - Item: Gold
         Rate: 500
       - Item: Emperium
         Rate: 100
       - Item: Golden_Gear_
         Rate: 1
       - Item: New_Year_Rice_Cake_1
         Rate: 3000
       - Item: New_Year_Rice_Cake_2
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -31950,173 +33663,205 @@ Body:
     AegisName: G_SNAKE_
     Name: Serpente
     Level: 15
     Hp: 10
     BaseExp: 1
     JobExp: 1
     Attack: 46
     Attack2: 55
     Defense: 100
     MagicDefense: 99
     Agi: 15
     Vit: 15
     Int: 10
     Dex: 35
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 01
+    Class: Boss
+    Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
     Drops:
       - Item: Gold_Coin_US
         Rate: 2000
       - Item: Green_Ale_US
         Rate: 200
       - Item: Treasure_Box_
         Rate: 10
   - Id: 1842
     AegisName: G_ANACONDAQ_
     Name: Anaconda
     Level: 23
     Hp: 15
     BaseExp: 1
     JobExp: 1
     Attack: 124
     Attack2: 157
     Defense: 100
     MagicDefense: 99
     Agi: 23
     Vit: 28
     Int: 10
     Dex: 36
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 17
+    Class: Boss
+    Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
     Drops:
       - Item: Gold_Coin_US
         Rate: 3500
       - Item: Green_Ale_US
         Rate: 400
       - Item: Treasure_Box_
         Rate: 20
   - Id: 1843
     AegisName: G_SIDE_WINDER_
     Name: Sorrateiro
     Level: 43
     Hp: 18
     BaseExp: 1
     JobExp: 1
     Attack: 240
     Attack2: 320
     Defense: 100
     MagicDefense: 99
     Str: 38
     Agi: 43
     Vit: 40
     Int: 15
     Dex: 115
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 09
+    Class: Boss
+    Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
     Drops:
       - Item: Gold_Coin_US
         Rate: 7000
       - Item: Green_Ale_US
         Rate: 600
       - Item: Treasure_Box_
         Rate: 30
   - Id: 1844
     AegisName: G_ISIS_
     Name: Isis
     Level: 47
     Hp: 25
     BaseExp: 1
     JobExp: 1
     Attack: 423
     Attack2: 507
     Defense: 100
     MagicDefense: 99
     Str: 38
     Agi: 65
     Vit: 43
     Int: 50
     Dex: 66
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1384
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 336
     Ai: 09
+    Class: Boss
     Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
       Detector: true
     Drops:
       - Item: Gold_Coin_US
         Rate: 8000
       - Item: Green_Ale_US
         Rate: 800
       - Item: Treasure_Box_
         Rate: 50
   - Id: 1845
     AegisName: G_TREASURE_BOX_
     Name: Ba do Tesouro
     Level: 98
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Gold_Coin_US
         Rate: 10000
       - Item: Gold_Coin_US
         Rate: 10000
       - Item: Gold_Coin_US
         Rate: 10000
       - Item: Treasure_Box_
         Rate: 10000
       - Item: Green_Ale_US
         Rate: 2500
       - Item: Gold_Coin_US
         Rate: 5000
       - Item: Green_Ale_US
         Rate: 2500
       - Item: Green_Ale_US
         Rate: 2500
         StealProtected: true
   - Id: 1846
     AegisName: DREAMMETAL
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -32148,984 +33893,1016 @@ Body:
     AegisName: EVENT_PORING
     Name: Poring
     Level: 98
     Hp: 10000000
     BaseExp: 1000000
     JobExp: 1000000
     Attack: 15000
     Attack2: 20000
     Defense: 60
     MagicDefense: 60
     Agi: 60
     Vit: 120
     Int: 120
     Dex: 160
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1848
     AegisName: EVENT_BAPHOMET
     Name: Bafom
     Level: 50
     Hp: 45000
     BaseExp: 1000
     JobExp: 1000
     Attack: 1500
     Attack2: 3000
     Defense: 10
     MagicDefense: 10
     Agi: 60
     Vit: 15
     Int: 15
     Dex: 160
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1849
     AegisName: EVENT_OSIRIS
     Name: Osris
     Level: 60
     Hp: 125000
     BaseExp: 2000
     JobExp: 2000
     Attack: 3500
     Attack2: 5000
     Defense: 20
     MagicDefense: 20
     Agi: 60
     Vit: 25
     Int: 25
     Dex: 160
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 1072
     AttackMotion: 672
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 21
     Class: Boss
   - Id: 1850
     AegisName: EVENT_ORCHERO
     Name: Orc Heri
     Level: 50
     Hp: 175000
     BaseExp: 3000
     JobExp: 3000
     Attack: 4000
     Attack2: 5500
     Defense: 25
     MagicDefense: 45
     Agi: 60
     Vit: 35
     Int: 80
     Dex: 160
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 1678
     AttackMotion: 780
+    ClientAttackMotion: 660
     DamageMotion: 648
     Ai: 21
     Class: Boss
   - Id: 1851
     AegisName: EVENT_MOBSTER
     Name: Yakuza
     Level: 61
     Hp: 7991
     BaseExp: 2
     JobExp: 2
     Attack: 500
     Attack2: 1000
     Defense: 45
     MagicDefense: 35
     Str: 76
     Agi: 46
     Vit: 20
     Int: 35
     Dex: 76
     Luk: 55
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 560
+    ClientAttackMotion: 576
     DamageMotion: 580
+    Class: Boss
     Ai: 21
   - Id: 1852
     AegisName: G_EM_ANGELING
     Name: Angeling
     Level: 99
     Hp: 120
     Attack: 60
     Attack2: 71
     Defense: 100
     MagicDefense: 99
     Agi: 17
     Vit: 80
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 312
     DamageMotion: 384
     Ai: 21
     Class: Boss
   - Id: 1853
     AegisName: G_EM_DEVILING
     Name: Deviling
     Level: 99
     Hp: 120
     Attack: 60
     Attack2: 71
     Defense: 100
     MagicDefense: 99
     Agi: 17
     Vit: 80
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 864
     DamageMotion: 384
     Ai: 21
     Class: Boss
   - Id: 1854
     AegisName: E_MUKA
     Name: Muka
     Level: 17
     Hp: 610
     BaseExp: 273
     JobExp: 120
     Attack: 40
     Attack2: 49
     Defense: 5
     MagicDefense: 5
     Str: 15
     Agi: 15
     Vit: 30
     Int: 5
     Dex: 20
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 02
     Drops:
       - Item: Yellow_Live
         Rate: 70
       - Item: Cactus_Needle
         Rate: 9000
       - Item: Empty_Bottle
         Rate: 2000
       - Item: Kaong
         Rate: 400
       - Item: Red_Herb
         Rate: 1000
       - Item: Guisarme
         Rate: 50
       - Item: Iron_Ore
         Rate: 250
       - Item: Muka_Card
         Rate: 1
         StealProtected: true
   - Id: 1855
     AegisName: E_POISONSPORE
     Name: Esporo Venenoso
     Level: 19
     Hp: 665
     BaseExp: 186
     JobExp: 93
     Attack: 89
     Attack2: 101
     Agi: 19
     Vit: 25
+    Int: 0
     Dex: 24
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Poison_Spore
         Rate: 9000
       - Item: Hat_
         Rate: 20
       - Item: Green_Herb
         Rate: 550
       - Item: Gulaman
         Rate: 60
       - Item: Karvodailnirol
         Rate: 50
       - Item: Mushroom_Spore
         Rate: 1200
       - Item: Zargon
         Rate: 5
       - Item: Poison_Spore_Card
         Rate: 1
         StealProtected: true
   - Id: 1856
     AegisName: E_MAGNOLIA
     Name: Magnlia
     Level: 26
     Hp: 3195
     BaseExp: 393
     JobExp: 248
     Attack: 120
     Attack2: 151
     Defense: 5
     MagicDefense: 30
     Agi: 26
     Vit: 26
+    Int: 0
     Dex: 39
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Water
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1560
     AttackMotion: 360
+    ClientAttackMotion: 192
     DamageMotion: 360
     Ai: 02
     Modes:
       Detector: true
     Drops:
       - Item: Old_Frying_Pan
         Rate: 9000
       - Item: Garlet
         Rate: 800
       - Item: Scell
         Rate: 100
       - Item: Zargon
         Rate: 10
       - Item: Black_Ladle
         Rate: 40
       - Item: Leche_Flan
         Rate: 400
       - Item: High_end_Cooking_Kits
         Rate: 5
       - Item: Magnolia_Card
         Rate: 1
         StealProtected: true
   - Id: 1857
     AegisName: E_MARIN
     Name: Marin
     Level: 15
     Hp: 742
     BaseExp: 66
     JobExp: 44
     Attack: 39
     Attack2: 43
     MagicDefense: 10
     Agi: 10
     Vit: 10
     Int: 5
     Dex: 35
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 01
     Drops:
       - Item: Garlet
         Rate: 3200
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Cold_Scroll_2_1
         Rate: 100
       - Item: Skyblue_Jewel
         Rate: 40
       - Item: Ube_Jam
         Rate: 75
       - Item: Candy
         Rate: 350
       - Item: Poring_Hat
         Rate: 1
       - Item: Marin_Card
         Rate: 1
         StealProtected: true
   - Id: 1858
     AegisName: E_PLANKTON
     Name: Plankton
     Level: 10
     Hp: 354
     BaseExp: 23
     JobExp: 18
     Attack: 26
     Attack2: 31
     MagicDefense: 5
     Agi: 10
     Vit: 10
+    Int: 0
     Dex: 15
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 3
     WalkSpeed: 400
     AttackDelay: 2208
     AttackMotion: 1008
+    ClientAttackMotion: 576
     DamageMotion: 324
     Ai: 01
     Drops:
       - Item: Single_Cell
         Rate: 9000
       - Item: Sago
         Rate: 300
       - Item: Sticky_Mucus
         Rate: 700
       - Item: Alchol
         Rate: 4
       - Item: Empty_Bottle
         Rate: 1000
       - Item: Dew_Laden_Moss
         Rate: 20
       - Item: Center_Potion
         Rate: 50
       - Item: Plankton_Card
         Rate: 1
         StealProtected: true
   - Id: 1859
     AegisName: E_MANDRAGORA
     Name: Mandrgora
     Level: 12
     Hp: 405
     BaseExp: 45
     JobExp: 32
     Attack: 26
     Attack2: 35
     MagicDefense: 25
     Agi: 12
     Vit: 24
+    Int: 0
     Dex: 36
     Luk: 15
     AttackRange: 4
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 1000
     AttackDelay: 1768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 10
     Drops:
       - Item: Yellow_Live
         Rate: 50
       - Item: Stem
         Rate: 9000
       - Item: Spear_
         Rate: 30
       - Item: Langka
         Rate: 350
       - Item: Shoot
         Rate: 300
       - Item: Four_Leaf_Clover
         Rate: 3
       - Item: Whip_Of_Earth
         Rate: 10
       - Item: Mandragora_Card
         Rate: 1
         StealProtected: true
   - Id: 1860
     AegisName: E_COCO
     Name: Koko
     Level: 17
     Hp: 817
     BaseExp: 120
     JobExp: 78
     Attack: 56
     Attack2: 67
     Str: 24
     Agi: 17
     Vit: 34
     Int: 20
     Dex: 24
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1864
     AttackMotion: 864
+    ClientAttackMotion: 504
     DamageMotion: 1008
     Ai: 17
     Drops:
       - Item: Acorn
         Rate: 9000
       - Item: Hood_
         Rate: 20
       - Item: Fluff
         Rate: 3000
       - Item: Animal's_Skin
         Rate: 2500
       - Item: Sweet_Potato
         Rate: 500
       - Item: Sandals_
         Rate: 25
       - Item: Sweet_Bean
         Rate: 600
       - Item: Coco_Card
         Rate: 1
         StealProtected: true
   - Id: 1861
     AegisName: E_CHOCO
     Name: Choco
     Level: 43
     Hp: 4278
     BaseExp: 1265
     JobExp: 1265
     Attack: 315
     Attack2: 402
     Defense: 5
     MagicDefense: 5
     Str: 65
     Agi: 68
     Vit: 55
     Int: 45
     Dex: 65
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 360
     DamageMotion: 1000
     Ai: 09
     Drops:
       - Item: Claw_Of_Monkey
         Rate: 5335
       - Item: Yoyo_Tail
         Rate: 7000
       - Item: Elunium
         Rate: 53
       - Item: Banana
         Rate: 5000
       - Item: Tropical_Banana
         Rate: 20
       - Item: Sweet_Banana
         Rate: 1000
       - Item: Yggdrasilberry
         Rate: 25
       - Item: Choco_Card
         Rate: 1
         StealProtected: true
   - Id: 1862
     AegisName: E_MARTIN
     Name: Martin
     Level: 18
     Hp: 1109
     BaseExp: 134
     JobExp: 86
     Attack: 52
     Attack2: 63
     MagicDefense: 5
     Str: 12
     Agi: 18
     Vit: 30
     Int: 15
     Dex: 15
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1480
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 480
     Ai: 01
     Drops:
       - Item: Moustache_Of_Mole
         Rate: 9000
       - Item: Macapuno
         Rate: 500
       - Item: Jur_
         Rate: 10
       - Item: Goggle_
         Rate: 5
       - Item: Safety_Helmet
         Rate: 1
       - Item: Battered_Pot
         Rate: 10
       - Item: Goggle
         Rate: 15
       - Item: Martin_Card
         Rate: 1
         StealProtected: true
   - Id: 1863
     AegisName: E_SPRING_RABBIT
     Name: Coelho
     Level: 25
     Hp: 4500
     Attack: 292
     Attack2: 406
     Defense: 14
     MagicDefense: 10
     Str: 20
     Agi: 15
     Vit: 15
     Int: 5
     Dex: 15
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 160
     AttackDelay: 1120
     AttackMotion: 552
+    ClientAttackMotion: 756
     DamageMotion: 511
     Ai: 02
     Drops:
       - Item: Peeps
         Rate: 5000
       - Item: Jelly_Bean
         Rate: 5000
       - Item: Marshmallow
         Rate: 5000
   - Id: 1864
     AegisName: ZOMBIE_SLAUGHTER
     Name: Massacre
     Level: 77
     Hp: 43000
     BaseExp: 12000
     JobExp: 8500
     Attack: 1055
     Attack2: 1655
     Defense: 35
     MagicDefense: 45
     Agi: 30
     Vit: 50
     Dex: 75
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 676
     AttackMotion: 648
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Clattering_Skull
         Rate: 3000
       - Item: Platinum_Shotel
         Rate: 10
       - Item: Mementos
         Rate: 1500
       - Item: Broken_Farming_Utensil
         Rate: 3000
       - Item: Sticky_Mucus
         Rate: 3000
       - Item: Zombie_Slaughter_Card
         Rate: 1
         StealProtected: true
   - Id: 1865
     AegisName: RAGGED_ZOMBIE
     Name: Zumbi Dilacerado
     Level: 75
     Hp: 25000
     BaseExp: 8500
     JobExp: 5500
     Attack: 1200
     Attack2: 1500
     Defense: 25
     MagicDefense: 35
     Agi: 77
     Vit: 25
     Int: 10
     Dex: 101
     Luk: 50
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 576
+    ClientAttackMotion: 336
     DamageMotion: 420
     Ai: 21
     Drops:
       - Item: Clattering_Skull
         Rate: 3000
       - Item: Tidal_Shoes
         Rate: 15
       - Item: Mementos
         Rate: 1500
       - Item: Skel_Bone
         Rate: 4500
       - Item: Expert_Ring
         Rate: 2
       - Item: Wasteland_Outlaw
         Rate: 10
       - Item: Ragged_Zombie_Card
         Rate: 1
         StealProtected: true
   - Id: 1866
     AegisName: HELL_POODLE
     Name: Co Infernal
     Level: 71
     Hp: 9000
     BaseExp: 4000
     JobExp: 3000
     Attack: 400
     Attack2: 600
     Defense: 35
     MagicDefense: 20
     Str: 5
     Agi: 26
     Vit: 14
     Int: 5
     Dex: 39
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 140
     AttackDelay: 824
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 360
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Monster's_Feed
         Rate: 5000
       - Item: Tooth_Blade
         Rate: 10
       - Item: Wild_Beast_Claw
         Rate: 10
       - Item: Skel_Bone
         Rate: 4500
       - Item: Well_Dried_Bone
         Rate: 20
       - Item: Animal's_Skin
         Rate: 5500
       - Item: Pet_Food
         Rate: 400
       - Item: Hell_Poodle_Card
         Rate: 1
         StealProtected: true
   - Id: 1867
     AegisName: BANSHEE
     Name: Banshee
     Level: 81
     Hp: 35111
     BaseExp: 17000
     JobExp: 12000
     Attack: 1666
     Attack2: 2609
     Defense: 30
     MagicDefense: 55
     Str: 30
     Agi: 74
     Int: 120
     Dex: 75
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 504
+    ClientAttackMotion: 432
     DamageMotion: 504
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Old_White_Cloth
         Rate: 3000
       - Item: Orleans_Gown
         Rate: 10
       - Item: Scalpel
         Rate: 10
       - Item: Wool_Scarf
         Rate: 10
       - Item: Mementos
         Rate: 1500
       - Item: Brigan
         Rate: 5335
       - Item: Banshee_Card
         Rate: 1
         StealProtected: true
   - Id: 1868
     AegisName: G_BANSHEE
     Name: Banshee
     Level: 81
     Hp: 35111
     Attack: 1666
     Attack2: 2609
     Defense: 30
     MagicDefense: 55
     Str: 30
     Agi: 74
     Int: 120
     Dex: 120
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 504
+    ClientAttackMotion: 432
     DamageMotion: 504
     Ai: 21
     Modes:
       Detector: true
   - Id: 1869
     AegisName: FLAME_SKULL
     Name: Crnio Flamejante
     Level: 60
     Hp: 10080
     BaseExp: 3000
     JobExp: 2600
     Attack: 100
     Attack2: 1200
     Defense: 20
     MagicDefense: 40
     Str: 50
     Agi: 100
     Vit: 30
     Int: 40
     Dex: 140
     Luk: 110
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 972
     AttackMotion: 648
+    ClientAttackMotion: 504
     DamageMotion: 432
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Skull
         Rate: 5000
       - Item: Black_Leather_Boots
         Rate: 20
       - Item: Lever_Action_Rifle
         Rate: 20
       - Item: Horrendous_Mouth
         Rate: 6000
       - Item: Flame_Skull_Card
         Rate: 1
         StealProtected: true
   - Id: 1870
     AegisName: NECROMANCER
     Name: Necromante
     Level: 88
     Hp: 98000
     BaseExp: 45000
     JobExp: 35000
     Attack: 3500
     Attack2: 4000
     MagicDefense: 40
     Agi: 50
     Int: 190
     Dex: 166
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 1816
     AttackMotion: 1320
+    ClientAttackMotion: 780
     DamageMotion: 420
     Ai: 21
     Class: Boss
     Drops:
       - Item: Clattering_Skull
         Rate: 3000
       - Item: Lich_Bone_Wand
         Rate: 20
       - Item: Skel_Bone
         Rate: 4500
       - Item: Mithril_Magic_Cape
         Rate: 10
       - Item: Blue_Gemstone
         Rate: 100
       - Item: Amulet
         Rate: 100
       - Item: Rent_Spell_Book
         Rate: 1500
       - Item: Necromancer_Card
         Rate: 1
         StealProtected: true
   - Id: 1871
     AegisName: FALLINGBISHOP
     Name: Bispo Decadente
     JapaneseName: Bispo Decadente
     Level: 80
     Hp: 3333333
     BaseExp: 1111111
     JobExp: 1111111
     MvpExp: 555555
     Attack: 3220
     Attack2: 5040
     Defense: 50
     Agi: 80
     Vit: 15
     Int: 126
     Dex: 120
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 432
     AttackMotion: 1152
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Seed_Of_Yggdrasil
         Rate: 3500
       - Item: Crystal_Jewel__
         Rate: 2000
     Drops:
       - Item: Holy_Water
         Rate: 10000
       - Item: Long_Horn
         Rate: 1000
       - Item: Spiritual_Ring
         Rate: 500
       - Item: Hunting_Spear
         Rate: 1000
       - Item: Elunium
         Rate: 5432
       - Item: Blessed_Wand
         Rate: 2000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -33135,109 +34912,112 @@ Body:
   - Id: 1872
     AegisName: BEELZEBUB_FLY
     Name: Mosca Infernal
     Level: 66
     Hp: 500000
     Attack: 1200
     Attack2: 2000
     Defense: 25
     MagicDefense: 15
     Str: 33
     Agi: 105
     Vit: 60
     Int: 15
     Dex: 72
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     Element: Wind
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 676
     AttackMotion: 576
+    ClientAttackMotion: 252
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1873
     AegisName: BEELZEBUB
     Name: Belzebu
     Level: 98
     Hp: 6666666
     Attack: 4100
     Attack2: 4960
     Defense: 40
     MagicDefense: 35
     Str: 6
     Agi: 110
     Vit: 200
     Int: 250
     Dex: 120
     Luk: 66
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 100
     AttackMotion: 576
+    ClientAttackMotion: 252
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1874
     AegisName: BEELZEBUB_
     Name: Belzebu
     Level: 98
     Hp: 6666666
     BaseExp: 6666666
     JobExp: 6666666
     MvpExp: 3333333
     Attack: 10000
     Attack2: 13410
     Defense: 40
     MagicDefense: 40
     Str: 6
     Agi: 110
     Vit: 200
     Int: 250
     Dex: 166
     Luk: 66
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 212
     AttackMotion: 504
+    ClientAttackMotion: 252
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Yggdrasilberry
         Rate: 5000
       - Item: Box_Of_Grudge
         Rate: 5500
     Drops:
       - Item: Broken_Crown
         Rate: 9000
       - Item: Variant_Shoes
         Rate: 2000
       - Item: Death_Note
         Rate: 2000
       - Item: Destruction_Rod
         Rate: 2000
       - Item: Bison_Horn
         Rate: 2000
       - Item: Elunium
         Rate: 5432
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -33251,419 +35031,436 @@ Body:
     Name: Tristan III
     JapaneseName: Tristan III
     Level: 80
     Hp: 43000
     BaseExp: 1
     JobExp: 1
     Attack: 1366
     Attack2: 1626
     Defense: 25
     MagicDefense: 30
     Str: 5
     Agi: 10
     Vit: 10
     Int: 69
     Dex: 70
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 175
     AttackDelay: 1816
     AttackMotion: 1152
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Broken_Crown
         Rate: 9000
       - Item: Sticky_Mucus
         Rate: 9000
   - Id: 1876
     AegisName: E_LORD_OF_DEATH
     Name: Senhor dos Mortos
     Level: 99
     Hp: 99000000
     BaseExp: 131343
     JobExp: 43345
     Attack: 3430
     Attack2: 4232
     Defense: 75
     MagicDefense: 73
     Str: 120
     Agi: 120
     Vit: 120
     Int: 169
     Dex: 150
     Luk: 106
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 1446
     AttackMotion: 1296
+    ClientAttackMotion: 768
     DamageMotion: 360
     Ai: 21
     Class: Boss
   - Id: 1877
     AegisName: CRYSTAL_5
     Name: Cristal
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: GOLD_ID4
         Rate: 10
       - Item: Gift_Box
         Rate: 100
   - Id: 1878
     AegisName: E_SHINING_PLANT
     Name: Planta Brilhante
     Level: 1
     Hp: 20
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
+    Dex: 0
     Luk: 90
     AttackRange: 1
     SkillRange: 7
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Holy
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 1
     AttackMotion: 1
+    ClientAttackMotion: 2016
     DamageMotion: 1
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Love_Flower
         Rate: 3000
       - Item: Pointed_Scale
         Rate: 1500
       - Item: Green_Herb
         Rate: 500
       - Item: Red_Herb
         Rate: 2000
       - Item: Yellow_Herb
         Rate: 1500
       - Item: Fluff
         Rate: 500
   - Id: 1879
     AegisName: ECLIPSE_P
     Name: Coelho
     JapaneseName: Coelho
     Level: 6
     Hp: 1800
     Attack: 20
     Attack2: 26
     MagicDefense: 40
     Agi: 36
     Vit: 6
+    Int: 0
     Dex: 11
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1456
     AttackMotion: 456
+    ClientAttackMotion: 264
     DamageMotion: 336
     Ai: 21
     Class: Boss
   - Id: 1880
     AegisName: WOOD_GOBLIN
     Name: Leshij
     Level: 42
     Hp: 6982
     BaseExp: 2201
     JobExp: 1552
     Attack: 600
     Attack2: 620
     Defense: 32
     MagicDefense: 3
     Agi: 5
     Vit: 45
     Int: 45
     Dex: 55
     Luk: 155
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 320
     AttackDelay: 2304
     AttackMotion: 840
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 01
     Drops:
       - Item: Iron_Wrist
         Rate: 5
       - Item: Solid_Twig
         Rate: 4000
       - Item: Log
         Rate: 2000
       - Item: Resin
         Rate: 2000
       - Item: Feather_Of_Birds
         Rate: 500
       - Item: Piece_Of_Egg_Shell
         Rate: 500
       - Item: Egg
         Rate: 50
   - Id: 1881
     AegisName: LES
     Name: Les
     Level: 39
     Hp: 3080
     BaseExp: 1521
     JobExp: 912
     Attack: 102
     Attack2: 113
     MagicDefense: 17
     Agi: 33
     Vit: 12
     Int: 32
     Dex: 52
     Luk: 38
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 230
     AttackDelay: 1728
     AttackMotion: 720
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 03
     Drops:
       - Item: Sharp_Leaf
         Rate: 2000
       - Item: Green_Herb
         Rate: 1000
       - Item: Shoot
         Rate: 1000
       - Item: Stem
         Rate: 2500
       - Item: Centimental_Leaf
         Rate: 1
       - Item: Leaflet_Of_Aloe
         Rate: 500
       - Item: Blue_Herb
         Rate: 50
   - Id: 1882
     AegisName: VAVAYAGA
     Name: Baba-Yaga
     Level: 49
     Hp: 7444
     BaseExp: 2583
     JobExp: 2583
     Attack: 255
     Attack2: 387
     Defense: 4
     MagicDefense: 29
     Agi: 76
     Vit: 24
     Int: 88
     Dex: 55
     Luk: 18
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 1
     WalkSpeed: 270
     AttackDelay: 1536
     AttackMotion: 600
+    ClientAttackMotion: 420
     DamageMotion: 420
     Ai: 04
     Drops:
       - Item: Old_Magic_Circle
         Rate: 1000
       - Item: Yaga_Pestle
         Rate: 5000
       - Item: Release_Of_Wish
         Rate: 10
       - Item: Pill
         Rate: 150
       - Item: Piece_Of_Cake
         Rate: 1500
       - Item: Milk
         Rate: 1500
       - Item: Bread
         Rate: 1500
   - Id: 1883
     AegisName: UZHAS
     Name: Kikimora
     Level: 61
     Hp: 13707
     BaseExp: 4002
     JobExp: 3003
     Attack: 293
     Attack2: 960
     Defense: 11
     MagicDefense: 34
     Agi: 33
     Vit: 19
     Int: 72
     Dex: 75
     Luk: 77
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Water
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 576
     AttackMotion: 672
+    ClientAttackMotion: 480
     DamageMotion: 384
     Ai: 04
     Drops:
       - Item: Leaflet_Of_Hinal
         Rate: 900
       - Item: Ancient_Magic
         Rate: 5
       - Item: Bitter_Herb
         Rate: 100
       - Item: Fruit_Of_Mastela
         Rate: 100
       - Item: Sticky_Webfoot
         Rate: 3500
       - Item: Delicious_Fish
         Rate: 1500
       - Item: Old_Blue_Box
         Rate: 3
   - Id: 1884
     AegisName: MAVKA
     Name: Mavka
     Level: 63
     Hp: 19200
     BaseExp: 8301
     JobExp: 6353
     Attack: 589
     Attack2: 623
     Defense: 32
     MagicDefense: 19
     Agi: 42
     Vit: 55
     Int: 35
     Dex: 89
     Luk: 177
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 1536
     AttackMotion: 504
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 04
     Drops:
       - Item: Principles_Of_Magic
         Rate: 5
       - Item: Singing_Flower
         Rate: 300
       - Item: Singing_Plant
         Rate: 300
       - Item: Illusion_Flower
         Rate: 50
       - Item: Crystal_Mirror
         Rate: 1500
       - Item: Witherless_Rose
         Rate: 300
       - Item: Blue_Herb
         Rate: 3000
   - Id: 1885
     AegisName: GOPINICH
     Name: Gorynych
     Level: 85
     Hp: 299321
     BaseExp: 45250
     JobExp: 16445
     MvpExp: 22625
     Attack: 1868
     Attack2: 6124
     Defense: 20
     MagicDefense: 42
     Str: 50
     Agi: 65
     Vit: 55
     Int: 103
     Dex: 152
     Luk: 35
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1536
     AttackMotion: 864
+    ClientAttackMotion: 648
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Old_Violet_Box
         Rate: 4000
       - Item: Ring_
         Rate: 200
       - Item: Int_Dish10
         Rate: 1000
       - Item: Ixion_Wing
         Rate: 100
       - Item: Pole_Axe
         Rate: 5
       - Item: Treasure_Box
         Rate: 5000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -33671,843 +35468,918 @@ Body:
         Rate: 1
   - Id: 1886
     AegisName: G_MAVKA
     Name: Mavka
     Level: 63
     Hp: 19200
     Attack: 589
     Attack2: 623
     Defense: 32
     MagicDefense: 19
     Agi: 42
     Vit: 55
     Int: 35
     Dex: 89
     Luk: 177
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 1536
     AttackMotion: 504
+    ClientAttackMotion: 384
     DamageMotion: 360
     Ai: 04
   - Id: 1887
     AegisName: FREEZER_R
     Name: Congelador
     Level: 72
     Hp: 8636
     Attack: 671
     Attack2: 983
     Defense: 55
     MagicDefense: 43
     Str: 69
     Agi: 41
     Vit: 59
     Int: 5
     Dex: 67
     Luk: 100
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1452
     AttackMotion: 483
+    ClientAttackMotion: 540
     DamageMotion: 528
     Ai: 21
     Drops:
       - Item: Cyfar
         Rate: 2000
       - Item: Ice_Piece
         Rate: 2000
   - Id: 1888
     AegisName: GARM_BABY_R
     Name: Filhote de Hatii
     JapaneseName: Filhote de Hatii
     Level: 61
     Hp: 15199
     BaseExp: 100
     JobExp: 100
     Attack: 680
     Attack2: 1580
     Defense: 24
     MagicDefense: 13
     Str: 45
     Agi: 30
     Vit: 36
     Int: 55
     Dex: 85
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Water
     ElementLevel: 2
     WalkSpeed: 450
     AttackDelay: 879
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 04
     Drops:
       - Item: Ice_Piece
         Rate: 2000
   - Id: 1889
     AegisName: GARM_R
     Name: Guarda de Marozka
     Level: 73
     Hp: 100000
     BaseExp: 1000
     JobExp: 1000
     Attack: 900
     Attack2: 2200
     Defense: 20
     MagicDefense: 23
     Str: 85
     Agi: 126
     Vit: 10
     Int: 50
     Dex: 95
     Luk: 60
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Water
     ElementLevel: 4
     WalkSpeed: 400
     AttackDelay: 608
     AttackMotion: 408
+    ClientAttackMotion: 312
     DamageMotion: 336
     Ai: 21
     Class: Boss
     Drops:
       - Item: Cyfar
         Rate: 2000
       - Item: Ice_Piece
         Rate: 2000
   - Id: 1890
     AegisName: GOPINICH_R
     Name: Koshei o Imortal
     Level: 85
     Hp: 299321
     BaseExp: 1000
     JobExp: 1000
     Attack: 1868
     Attack2: 6124
     Defense: 20
     MagicDefense: 42
     Str: 50
     Agi: 65
     Vit: 55
     Int: 50
     Dex: 152
     Luk: 35
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1536
     AttackMotion: 864
+    ClientAttackMotion: 648
     DamageMotion: 432
     Ai: 20
   - Id: 1891
     AegisName: G_RANDGRIS_
     Name: Valkyrie
     Level: 99
     Hp: 1567200
     Attack: 5560
     Attack2: 9980
     Defense: 25
     MagicDefense: 42
     Str: 100
     Agi: 120
     Vit: 80
     Int: 120
     Dex: 220
     Luk: 210
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Holy
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 576
+    ClientAttackMotion: 504
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1892
     AegisName: G_LOLI_RURI
     Name: Loli Ruri
     Level: 71
     Hp: 23470
     Attack: 1476
     Attack2: 2317
     Defense: 39
     MagicDefense: 44
+    Str: 0
     Agi: 66
     Vit: 54
     Int: 74
     Dex: 81
     Luk: 43
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 125
     AttackDelay: 747
     AttackMotion: 1632
+    ClientAttackMotion: 1440
     DamageMotion: 576
     Ai: 04
     Modes:
       Detector: true
   - Id: 1893
     AegisName: G_KNIGHT_OF_ABYSS
     Name: Cavaleiro do Abismo
     JapaneseName: Cavaleiro do Abismo
     Level: 79
     Hp: 36140
     Attack: 1600
     Attack2: 2150
     Defense: 55
     MagicDefense: 50
     Str: 66
     Agi: 68
     Vit: 64
     Int: 25
     Dex: 135
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 300
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 720
     DamageMotion: 1000
     Ai: 21
   - Id: 1894
     AegisName: POURING
     Name: Pouring
     Level: 50
     Hp: 100000
     Attack: 550
     Attack2: 1450
     Defense: 20
     MagicDefense: 50
     Str: 45
     Agi: 30
     Vit: 36
     Int: 55
     Dex: 85
     Luk: 30
     AttackRange: 1
     Size: Small
     Race: Plant
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 300
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 07
     Class: Boss
     Drops:
       - Item: Cold_Medicine
         Rate: 8335
   - Id: 1895
     AegisName: EVENT_SEYREN
     Name: Seyren Windsor
     JapaneseName: Seyren Windsor
     Level: 91
     Hp: 88402
     Attack: 2100
     Attack2: 2530
     Defense: 63
     MagicDefense: 12
     Str: 90
     Agi: 89
     Vit: 72
     Int: 20
     Dex: 99
     Luk: 25
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 170
     AttackDelay: 76
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 20
   - Id: 1896
     AegisName: EVENT_KATRINN
     Name: Kathryne Keyron
     JapaneseName: Kathryne Keyron
     Level: 92
     Hp: 47280
     Attack: 497
     Attack2: 1697
     Defense: 10
     MagicDefense: 74
     Agi: 5
     Vit: 77
     Int: 180
     Dex: 110
     Luk: 39
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1152
     AttackMotion: 384
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 20
   - Id: 1897
     AegisName: EVENT_BAPHOMET_
     Name: Bafom
     Level: 81
     Hp: 668000
     Attack: 3220
     Attack2: 4040
     Defense: 35
     MagicDefense: 45
     Agi: 152
     Vit: 30
     Int: 85
     Dex: 120
     Luk: 95
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1898
     AegisName: EVENT_ZOMBIE
     Name: Zumbi
     Level: 12
     Hp: 434
     Attack: 67
     Attack2: 79
     MagicDefense: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 2612
     AttackMotion: 912
+    ClientAttackMotion: 816
     DamageMotion: 288
     Ai: 04
     Drops:
       - Item: Jade_Plate
         Rate: 10000
   - Id: 1899
     AegisName: SWORD_GUARDIAN_
     Name: Espadachim Guardio
     Level: 86
     Hp: 152533
     Attack: 7590
     Attack2: 9140
     Defense: 60
     MagicDefense: 33
     Str: 110
     Agi: 40
     Vit: 54
     Int: 65
     Dex: 125
     Luk: 65
     AttackRange: 2
     SkillRange: 14
     ChaseRange: 16
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 170
     AttackDelay: 140
     AttackMotion: 384
     DamageMotion: 288
     Ai: 05
     Class: Guardian
+#  - Id: 1900
+#    AegisName: BOW_GUARDIAN_
+#    Name: Archer Guardian
+#    Level: 80
+#    Hp: 80404
+#    Attack: 1840
+#    Attack2: 2520
+#    Defense: 40
+#    MagicDefense: 62
+#    Str: 95
+#    Agi: 80
+#    Vit: 33
+#    Int: 90
+#    Dex: 165
+#    Luk: 55
+#    AttackRange: 12
+#    SkillRange: 14
+#    ChaseRange: 16
+#    Size: Large
+#    Race: Demihuman
+#    Element: Neutral
+#    ElementLevel: 4
+#    WalkSpeed: 170
+#    AttackDelay: 76
+#    AttackMotion: 384
+#    DamageMotion: 288
+#    Ai: 05
+#    Modes:
+#      NoRandomWalk: true
     Modes:
       KnockBackImmune: true
   - Id: 1901
     AegisName: E_CONDOR
     Name: Condor
     Level: 5
     Hp: 8000
     BaseExp: 100
     JobExp: 100
     Attack: 200
     Attack2: 400
     Defense: 10
     MagicDefense: 15
     Agi: 13
     Vit: 10
     Int: 25
     Dex: 95
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Angel
     Element: Holy
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1148
     AttackMotion: 648
+    ClientAttackMotion: 504
     DamageMotion: 480
     Ai: 03
     Drops:
       - Item: Heart_Box
         Rate: 5000
   - Id: 1902
     AegisName: E_TREASURE1
     Name: Ba do Tesouro
     Level: 99
     Hp: 49
     Defense: 100
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Holy
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Gold_Key77
         Rate: 1000
   - Id: 1903
     AegisName: E_TREASURE2
     Name: Ba do Tesouro
     Level: 99
     Hp: 49
     Defense: 100
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Holy
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Silver_Key77
         Rate: 1000
   - Id: 1904
     AegisName: BOMBPORING
     Name: Bomb Poring
     Level: 28
     Hp: 1000000
     BaseExp: 461
     JobExp: 284
     Attack: 120
     Attack2: 320
     Defense: 100
     MagicDefense: 99
     Agi: 28
     Vit: 28
+    Int: 0
     Dex: 33
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1672
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 13
+    Class: Boss
+    Modes:
+      IgnoreMagic: true
+      IgnoreMelee: true
+      IgnoreMisc: true
+      IgnoreRanged: true
   - Id: 1905
     AegisName: BARRICADE
     Name: Barricada
     Level: 98
     Hp: 120000
     Agi: 17
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     RaceGroups:
       Gvg: true
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Boss
   - Id: 1906
     AegisName: BARRICADE_
     Name: Barricada
     Level: 98
     Hp: 150
     Defense: 100
     MagicDefense: 99
     Agi: 17
     Int: 80
     Dex: 126
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1907
     AegisName: S_EMPEL_1
     Name: Runa Guardi
     Level: 90
     Hp: 120000
     Attack: 1
     Attack2: 2
     Defense: 40
     MagicDefense: 50
     Size: Small
     Race: Formless
     RaceGroups:
       Gvg: true
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Boss
   - Id: 1908
     AegisName: S_EMPEL_2
     Name: Runa Guardi
     Level: 90
     Hp: 120000
     Attack: 1
     Attack2: 2
     Defense: 40
     MagicDefense: 50
     Size: Small
     Race: Formless
     RaceGroups:
       Gvg: true
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Boss
   - Id: 1909
     AegisName: OBJ_A
     Name: Armazm de Comida
     Level: 90
     Hp: 250
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 288
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1910
     AegisName: OBJ_B
     Name: Depsito de Comida
     Level: 90
     Hp: 250
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 288
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1911
     AegisName: OBJ_NEUTRAL
     Name: Bandeira Neutra
     Level: 90
     Hp: 150
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1912
     AegisName: OBJ_FLAG_A
     Name: Bandeira de Leo
     Level: 90
     Hp: 150
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1913
     AegisName: OBJ_FLAG_B
     Name: Bandeira de guia
     Level: 90
     Hp: 150
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1914
     AegisName: OBJ_A2
     Name: Cristal Azul
     Level: 90
     Hp: 250
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1915
     AegisName: OBJ_B2
     Name: Cristal Cor-de-Rosa
     Level: 90
     Hp: 250
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1288
     AttackMotion: 288
+    ClientAttackMotion: 0
     DamageMotion: 384
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       Detector: true
       KnockBackImmune: true
   - Id: 1916
     AegisName: MOROCC
     Name: Imperador de Morroc
     Level: 99
     Hp: 8388607
     BaseExp: 6700000
     JobExp: 4500000
     Attack: 32000
     Attack2: 32001
     Defense: 29
     MagicDefense: 65
     Str: 140
     Agi: 160
     Vit: 30
     Int: 250
     Dex: 180
     Luk: 50
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1917
     AegisName: MOROCC_
     Name: Morroc Ferido
     Level: 99
     Hp: 8388607
     BaseExp: 3600000
     JobExp: 3000000
     MvpExp: 1800000
     Attack: 15000
     Attack2: 18000
     Defense: 29
     MagicDefense: 65
     Str: 140
     Agi: 160
     Vit: 30
     Int: 250
     Dex: 180
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Yggdrasilberry
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Violet_Box
         Rate: 5000
     Drops:
       - Item: Diabolus_Helmet
         Rate: 150
       - Item: Diabolus_Robe
         Rate: 700
       - Item: Diabolus_Armor
         Rate: 700
       - Item: Diabolus_Boots
         Rate: 700
       - Item: Dark_Crystal
         Rate: 9000
       - Item: Dark_Debris
         Rate: 9000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -34516,2370 +36388,2489 @@ Body:
     Name: Sombra da Inveja
     Level: 97
     Hp: 190000
     BaseExp: 61000
     JobExp: 140000
     Attack: 7000
     Attack2: 8600
     Defense: 20
     MagicDefense: 35
     Str: 150
     Agi: 152
     Vit: 30
     Int: 180
     Dex: 186
     Luk: 70
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 110
     AttackDelay: 576
     AttackMotion: 540
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Herald_Of_GOD
         Rate: 10
       - Item: Dark_Crystal
         Rate: 1000
       - Item: Dark_Debris
         Rate: 3000
       - Item: Elunium
         Rate: 160
       - Item: Brigan
         Rate: 4850
       - Item: Diabolus_Manteau
         Rate: 3
       - Item: Nemesis
         Rate: 20
   - Id: 1919
     AegisName: MOROCC_2
     Name: Sombra da Gula
     Level: 97
     Hp: 190000
     BaseExp: 65000
     JobExp: 120000
     Attack: 3500
     Attack2: 5100
     Defense: 20
     MagicDefense: 5
     Str: 120
     Agi: 83
     Vit: 20
     Int: 10
     Dex: 166
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 540
+    ClientAttackMotion: 360
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Skin_Of_Ventus
         Rate: 3
       - Item: Dark_Crystal
         Rate: 1000
       - Item: Dark_Debris
         Rate: 3000
       - Item: Oridecon
         Rate: 160
       - Item: Cyfar
         Rate: 3500
       - Item: Cross_Shield
         Rate: 15
   - Id: 1920
     AegisName: MOROCC_3
     Name: Sombra da Vaidade
     Level: 96
     Hp: 143000
     BaseExp: 50000
     JobExp: 80000
     Attack: 3400
     Attack2: 5000
     Defense: 15
     MagicDefense: 37
     Str: 40
     Agi: 200
     Vit: 20
     Int: 60
     Dex: 100
     Luk: 37
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 212
     AttackMotion: 540
+    ClientAttackMotion: 216
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Ragamuffin_Cape
         Rate: 10
       - Item: Dark_Crystal
         Rate: 1000
       - Item: Dark_Debris
         Rate: 3000
       - Item: Elunium
         Rate: 160
       - Item: Brigan
         Rate: 4850
       - Item: Cursed_Hand
         Rate: 3
       - Item: Bloody_Eater
         Rate: 15
   - Id: 1921
     AegisName: MOROCC_4
     Name: Sombra da Ira
     Level: 98
     Hp: 150000
     BaseExp: 51000
     JobExp: 70000
     Attack: 3000
     Attack2: 4025
     Defense: 18
     MagicDefense: 54
     Str: 60
     Agi: 60
     Vit: 30
     Int: 220
     Dex: 125
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1536
     AttackMotion: 540
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 21
     Class: Boss
     Drops:
       - Item: Diabolus_Ring
         Rate: 5
       - Item: Dark_Crystal
         Rate: 1000
       - Item: Dark_Debris
         Rate: 3000
       - Item: Oridecon
         Rate: 160
       - Item: Cyfar
         Rate: 3500
       - Item: Exorcism_Bible
         Rate: 20
   - Id: 1922
     AegisName: G_MOROCC_1
     Name: Sombra da Inveja
     Level: 97
     Hp: 1200000
     Attack: 16000
     Attack2: 16001
     Defense: 20
     MagicDefense: 35
     Str: 150
     Agi: 152
     Vit: 30
     Int: 180
     Dex: 186
     Luk: 70
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 110
     AttackDelay: 576
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1923
     AegisName: G_MOROCC_2
     Name: Sombra da Gula
     Level: 97
     Hp: 1200000
     Attack: 16000
     Attack2: 16001
     Defense: 20
     MagicDefense: 5
     Str: 120
     Agi: 83
     Vit: 20
     Int: 10
     Dex: 166
     Luk: 50
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1924
     AegisName: G_MOROCC_3
     Name: Sombra da Vaidade
     Level: 96
     Hp: 1200000
     Attack: 16000
     Attack2: 16001
     Defense: 15
     MagicDefense: 37
     Str: 40
     Agi: 200
     Vit: 20
     Int: 60
     Dex: 100
     Luk: 37
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Undead
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 212
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1925
     AegisName: G_MOROCC_4
     Name: Sombra da Ira
     Level: 98
     Hp: 1200000
     Attack: 16000
     Attack2: 16001
     Defense: 18
     MagicDefense: 54
     Str: 60
     Agi: 60
     Vit: 30
     Int: 220
     Dex: 125
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1536
     AttackMotion: 540
+    ClientAttackMotion: 336
     DamageMotion: 432
     Ai: 21
     Class: Boss
   - Id: 1926
     AegisName: JAKK_H
     Name: Jakk
     Level: 38
     Hp: 300
     Attack: 5
     Attack2: 10
     Defense: 5
     MagicDefense: 30
     Agi: 38
     Vit: 38
     Int: 43
     Dex: 75
     Luk: 45
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1180
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 648
     Ai: 21
     Drops:
       - Item: Pumpkin_Head
         Rate: 3000
       - Item: Pumpkin_Head
         Rate: 3000
       - Item: Pumpkin
         Rate: 3000
       - Item: Pumpkin
         Rate: 3000
       - Item: Pumpkin
         Rate: 3000
   - Id: 1927
     AegisName: WHISPER_H
     Name: Sussurro
     Level: 34
     Hp: 100
     Attack: 5
     Attack2: 10
     MagicDefense: 45
     Agi: 51
     Vit: 14
+    Int: 0
     Dex: 60
+    Luk: 0
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1960
     AttackMotion: 960
+    ClientAttackMotion: 720
     DamageMotion: 504
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Transparent_Cloth
         Rate: 5000
       - Item: Transparent_Cloth
         Rate: 5000
   - Id: 1928
     AegisName: DEVIRUCHI_H
     Name: Deviruchi
     Level: 46
     Hp: 500
     Attack: 5
     Attack2: 10
     Defense: 10
     MagicDefense: 25
     Agi: 69
     Vit: 40
     Int: 55
     Dex: 70
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 980
     AttackMotion: 600
+    ClientAttackMotion: 288
     DamageMotion: 384
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Petite_DiablOfs_Horn
         Rate: 3000
       - Item: Petite_DiablOfs_Wing
         Rate: 3000
   - Id: 1929
     AegisName: BAPHOMET_I
     Name: Bafom
     Level: 98
     Hp: 4520000
     BaseExp: 4520000
     JobExp: 2520000
     Attack: 16000
     Attack2: 16001
     Defense: 35
     MagicDefense: 45
     Agi: 152
     Vit: 5
     Int: 85
     Dex: 200
     Luk: 95
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 384
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Drops:
       - Item: Bapho_Doll
         Rate: 500
       - Item: Pauldron
         Rate: 7000
       - Item: Tae_Goo_Lyeon
         Rate: 5000
       - Item: Bloody_Iron_Ball
         Rate: 100
       - Item: Celestial_Robe
         Rate: 7000
       - Item: Holy_Robe
         Rate: 7000
       - Item: Crescent_Scythe
         Rate: 9000
       - Item: Baphomet_Card
         Rate: 1
         StealProtected: true
   - Id: 1930
     AegisName: PIAMETTE
     Name: Piamete
     Level: 90
     Hp: 3000000
     Attack: 15000
     Attack2: 20000
     Defense: 35
     MagicDefense: 35
     Agi: 66
     Vit: 5
     Int: 99
     Dex: 120
     Luk: 15
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 432
     AttackMotion: 768
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1931
     AegisName: WISH_MAIDEN
     Name: Donzela do Desejo
     Level: 98
     Hp: 3567200
     Attack: 32000
     Attack2: 32001
     Defense: 25
     MagicDefense: 42
     Str: 100
     Agi: 120
     Vit: 30
     Int: 120
     Dex: 220
     Luk: 210
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Angel
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 576
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 21
     Class: Boss
   - Id: 1932
     AegisName: GARDEN_KEEPER
     Name: Segurana do Jardim
     Level: 80
     Hp: 100
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 01
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       KnockBackImmune: true
     Drops:
       - Item: Crystal_Key
         Rate: 9000
   - Id: 1933
     AegisName: GARDEN_WATCHER
     Name: Vigia do Jardim
     Level: 81
     Hp: 300000
     Attack: 1666
     Attack2: 2609
     Defense: 55
     MagicDefense: 55
     Str: 30
     Agi: 74
     Vit: 56
     Int: 126
     Dex: 145
     Luk: 114
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Angel
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 432
     AttackMotion: 480
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 21
     Class: Boss
   - Id: 1934
     AegisName: BLUE_FLOWER
     Name: Flor Azul
     Level: 98
     Hp: 10000
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 0
     DamageMotion: 576
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       KnockBackImmune: true
   - Id: 1935
     AegisName: RED_FLOWER
     Name: Flor Vermelha
     Level: 98
     Hp: 10000
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 0
     DamageMotion: 576
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       KnockBackImmune: true
   - Id: 1936
     AegisName: YELL_FLOWER
     Name: Flor Amarela
     Level: 98
     Hp: 10000
     Attack: 1
     Attack2: 2
     Defense: 100
     MagicDefense: 99
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 768
     AttackMotion: 768
+    ClientAttackMotion: 0
     DamageMotion: 576
     Class: Guardian
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
       KnockBackImmune: true
   - Id: 1937
     AegisName: CONSTANT_
     Name: Constante
     Level: 55
     Hp: 10000
     Attack: 460
     Attack2: 580
     Defense: 12
     MagicDefense: 12
     Str: 50
     Agi: 28
     Vit: 26
     Int: 47
     Dex: 66
     Luk: 14
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 720
     AttackMotion: 360
+    ClientAttackMotion: 216
     DamageMotion: 360
     Ai: 04
   - Id: 1938
     AegisName: TREASURE_BOX41
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Goddess_Tear
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Pauldron
         Rate: 40
       - Item: Healing_Staff
         Rate: 150
       - Item: Wild_Beast_Claw
         Rate: 150
         StealProtected: true
   - Id: 1939
     AegisName: TREASURE_BOX42
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Valkyrie_Token
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Celestial_Robe
         Rate: 40
       - Item: Berdysz
         Rate: 150
       - Item: Inverse_Scale
         Rate: 150
         StealProtected: true
   - Id: 1940
     AegisName: TREASURE_BOX43
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Brynhild_Armor_Piece
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Scalpel
         Rate: 150
       - Item: Heart_Breaker
         Rate: 150
       - Item: Blood_Tears
         Rate: 150
         StealProtected: true
   - Id: 1941
     AegisName: TREASURE_BOX44
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Hero_Remains
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Platinum_Shotel
         Rate: 150
       - Item: Burning_Bow
         Rate: 150
       - Item: Divine_Cross
         Rate: 50
         StealProtected: true
   - Id: 1942
     AegisName: TREASURE_BOX45
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Andvari_Ring
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Muscle_Cutter
         Rate: 150
       - Item: Orc_Archer_Bow
         Rate: 150
       - Item: Icicle_Fist
         Rate: 150
         StealProtected: true
   - Id: 1943
     AegisName: TREASURE_BOX46
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Dusk_Glow
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Battle_Hook
         Rate: 150
       - Item: Frozen_Bow
         Rate: 150
       - Item: Combo_Battle_Glove
         Rate: 150
         StealProtected: true
   - Id: 1944
     AegisName: TREASURE_BOX47
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Dawn_Essence
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Ahlspiess
         Rate: 150
       - Item: Earth_Bow
         Rate: 150
       - Item: Ulfhedinn
         Rate: 50
         StealProtected: true
   - Id: 1945
     AegisName: TREASURE_BOX48
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Cold_Moonlight
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Lich_Bone_Wand
         Rate: 150
       - Item: Gust_Bow
         Rate: 150
       - Item: Seismic_Fist
         Rate: 150
         StealProtected: true
   - Id: 1946
     AegisName: TREASURE_BOX49
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     RaceGroups:
       Treasure: true
     Element: Neutral
     ElementLevel: 1
     Class: Boss
     Drops:
       - Item: Hazy_Starlight
         Rate: 80
       - Item: Union_Of_Tribe
         Rate: 500
       - Item: Branch_Of_Dead_Tree_Box
         Rate: 10000
       - Item: Oridecon
         Rate: 4850
       - Item: Elunium
         Rate: 7275
       - Item: Piercing_Staff
         Rate: 150
       - Item: Drill_Katar
         Rate: 150
       - Item: Mithril_Magic_Cape
         Rate: 50
         StealProtected: true
   - Id: 1947
     AegisName: PIAMETTE_
     Name: Piamete
     Level: 90
     Hp: 500000
     Attack: 5000
     Attack2: 6000
     Defense: 35
     MagicDefense: 35
     Agi: 66
     Vit: 5
     Int: 99
     Dex: 120
     Luk: 15
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 432
     AttackMotion: 768
+    ClientAttackMotion: 288
     DamageMotion: 576
     Ai: 21
     Class: Boss
   - Id: 1948
     AegisName: G_YGNIZEM
     Name: Egnigem Cenia
     JapaneseName: Egnigem Cenia
     Level: 58
     Hp: 11200
     Attack: 823
     Attack2: 1212
     Defense: 35
     MagicDefense: 8
     Str: 60
     Agi: 35
     Vit: 52
     Int: 18
     Dex: 79
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 145
     AttackDelay: 576
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 288
     Ai: 04
   - Id: 1949
     AegisName: B_S_GUARDIAN
     Name: Guardio do Campo
     Level: 86
     Hp: 457599
     Attack: 7590
     Attack2: 9140
     Defense: 60
     MagicDefense: 33
     Str: 110
     Agi: 40
     Vit: 5
     Int: 65
     Dex: 125
     Luk: 65
     AttackRange: 2
     SkillRange: 14
     ChaseRange: 16
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 170
     AttackDelay: 140
     AttackMotion: 384
     DamageMotion: 288
     Ai: 05
+    Class: Boss
   - Id: 1950
     AegisName: B_B_GUARDIAN
     Name: Guardio do Campo
     Level: 80
     Hp: 241212
     Attack: 1840
     Attack2: 2520
     Defense: 40
     MagicDefense: 62
     Str: 95
     Agi: 80
     Vit: 5
     Int: 90
     Dex: 165
     Luk: 55
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 4
     WalkSpeed: 170
     AttackDelay: 76
     AttackMotion: 384
     DamageMotion: 288
     Ai: 05
+    Class: Boss
   - Id: 1951
     AegisName: CRYSTAL_6
     Name: Cristal
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_2
         Rate: 4900
       - Item: Banana_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Yggdrasilberry
         Rate: 200
         StealProtected: true
   - Id: 1952
     AegisName: CRYSTAL_7
     Name: Cristal
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_4
         Rate: 4900
       - Item: Apple_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Seed_Of_Yggdrasil
         Rate: 250
         StealProtected: true
   - Id: 1953
     AegisName: CRYSTAL_8
     Name: Cristal
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_1
         Rate: 4900
       - Item: Carrot_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Branch_Of_Dead_Tree
         Rate: 300
         StealProtected: true
   - Id: 1954
     AegisName: CRYSTAL_9
     Name: Cristal
     Level: 1
     Hp: 15
     Defense: 100
     MagicDefense: 99
     Dex: 999
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 190
+    ClientAttackMotion: 960
     Ai: 25
     Class: Boss
     Modes:
       IgnoreMagic: true
       IgnoreMelee: true
       IgnoreMisc: true
       IgnoreRanged: true
     Drops:
       - Item: Piece_Of_Cake
         Rate: 3800
       - Item: Candy_Striper
         Rate: 4500
       - Item: White_Chocolate
         Rate: 5000
       - Item: Gift_Box_3
         Rate: 4900
       - Item: Grape_Juice
         Rate: 6500
       - Item: Chocolate
         Rate: 5000
       - Item: Old_Blue_Box
         Rate: 100
         StealProtected: true
   - Id: 1955
     AegisName: TREASURE_BOX_I
     Name: Ba do Tesouro
     Level: 99
+    Str: 0
+    Agi: 0
+    Vit: 0
+    Int: 0
     Dex: 999
+    Luk: 0
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
+    Class: Boss
     Ai: 02
     Drops:
       - Item: Tresure_Box_WoE
         Rate: 3000
       - Item: Soul_Crystal
         Rate: 4000
   - Id: 1956
     AegisName: NAGHT_SIEGER
     Name: Naght Sieger
     Level: 99
     Hp: 8000000
     BaseExp: 4000000
     JobExp: 2000000
     Attack: 32000
     Attack2: 64000
     Defense: 60
     MagicDefense: 40
     Agi: 50
     Vit: 80
     Int: 220
     Dex: 220
     Luk: 30
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     WalkSpeed: 100
     AttackDelay: 76
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 504
     Ai: 21
     Class: Boss
     Drops:
       - Item: Twin_Edge_B
         Rate: 9000
       - Item: Twin_Edge_R
         Rate: 9000
       - Item: Flame_Manteau
         Rate: 9000
       - Item: Bone_Helm
         Rate: 9000
       - Item: Old_Card_Album
         Rate: 9000
       - Item: Pauldron
         Rate: 9000
       - Item: Turquoise
         Rate: 9000
   - Id: 1957
     AegisName: ENTWEIHEN
     Name: Entweihen Crothen
     Level: 90
     Hp: 5400000
     BaseExp: 2700000
     JobExp: 1350000
     Attack: 32000
     Attack2: 40000
     Defense: 44
     MagicDefense: 66
     Agi: 70
     Vit: 40
     Int: 250
     Dex: 220
     Luk: 30
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 4
     AttackDelay: 140
     AttackMotion: 540
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 10
     Class: Boss
     Drops:
       - Item: Thorn_Staff
         Rate: 9000
       - Item: Holy_Stick
         Rate: 9000
       - Item: Celestial_Robe
         Rate: 9000
       - Item: Lich_Bone_Wand
         Rate: 9000
       - Item: Old_Card_Album
         Rate: 9000
       - Item: Survival_Rod_
         Rate: 9000
       - Item: Agate
         Rate: 9000
       - Item: Ant_Buyanne_Card
         Rate: 1
         StealProtected: true
   - Id: 1958
     AegisName: G_ENTWEIHEN_R
     Name: Esqueleto Espinhoso
     Level: 89
     Hp: 5400000
     Attack: 4040
     Attack2: 4720
     Defense: 44
     MagicDefense: 66
     Agi: 35
     Vit: 33
     Int: 180
     Dex: 125
     Luk: 30
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 4
     AttackDelay: 432
     AttackMotion: 288
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 10
     Class: Boss
   - Id: 1959
     AegisName: G_ENTWEIHEN_H
     Name: Esqueleto Espinhoso
     Level: 89
     Hp: 350000
     Attack: 2040
     Attack2: 2720
     Defense: 44
     MagicDefense: 66
     Agi: 35
     Vit: 33
     Int: 180
     Dex: 125
     Luk: 30
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Small
     Race: Demon
     Element: Ghost
     ElementLevel: 4
     AttackDelay: 2864
     AttackMotion: 288
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 10
     Class: Boss
   - Id: 1960
     AegisName: G_ENTWEIHEN_M
     Name: Esqueleto Espinhoso
     Level: 89
     Hp: 5400000
     Attack: 2040
     Attack2: 2720
     Defense: 44
     MagicDefense: 66
     Agi: 35
     Vit: 33
     Int: 180
     Dex: 125
     Luk: 30
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 4
     AttackDelay: 1024
     AttackMotion: 288
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 10
     Class: Boss
   - Id: 1961
     AegisName: G_ENTWEIHEN_S
     Name: Esqueleto Espinhoso
     Level: 89
     Hp: 5400000
     Attack: 2040
     Attack2: 2720
     Defense: 44
     MagicDefense: 66
     Agi: 35
     Vit: 33
     Int: 180
     Dex: 125
     Luk: 30
     AttackRange: 12
     SkillRange: 14
     ChaseRange: 16
     Size: Small
     Race: Demon
     Element: Dark
     ElementLevel: 4
     AttackDelay: 2864
     AttackMotion: 288
+    ClientAttackMotion: 420
     DamageMotion: 576
     Ai: 10
     Class: Boss
   - Id: 1962
     AegisName: ANTONIO_
     Name: Ladro Natalino
     Level: 10
     Hp: 15
     Attack: 13
     Attack2: 20
     Defense: 100
     MagicDefense: 99
     Int: 50
     Dex: 100
     Luk: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 720
     AttackMotion: 720
+    ClientAttackMotion: 432
     DamageMotion: 432
     Ai: 02
   - Id: 1963
     AegisName: P_CHUNG_E
     Name: Boneca do Ano Novo
     Level: 49
     Hp: 23900
     BaseExp: 2396
     JobExp: 993
     Attack: 460
     Attack2: 1050
     Defense: 8
     MagicDefense: 15
     Str: 38
     Agi: 65
     Vit: 43
     Int: 30
     Dex: 90
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 170
     AttackDelay: 1728
     AttackMotion: 816
+    ClientAttackMotion: 240
     DamageMotion: 1188
     Ai: 21
   - Id: 1964
     AegisName: NIGHTMARE_T
     Name: Pesadelo
     Level: 30
     Hp: 2000
     BaseExp: 512
     JobExp: 387
     Attack: 100
     Attack2: 200
     MagicDefense: 40
     Agi: 100
     Dex: 100
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Ghost
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1816
     AttackMotion: 816
+    ClientAttackMotion: 720
     DamageMotion: 432
     Class: Boss
     Drops:
       - Item: Blue_Potion
         Rate: 2000
       - Item: Blue_Herb
         Rate: 3000
       - Item: Test_Certificate
         Rate: 5000
   - Id: 1965
     AegisName: M_WILD_ROSE
     Name: Rosa Selvagem
     Level: 38
     Hp: 4000
     Sp: 50
     Attack: 100
     Attack2: 145
     MagicDefense: 15
+    Str: 0
     Agi: 85
     Vit: 15
     Int: 35
     Dex: 65
     Luk: 80
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 964
     AttackMotion: 864
+    ClientAttackMotion: 840
     DamageMotion: 288
     Class: Boss
   - Id: 1966
     AegisName: M_DOPPELGANGER
     Name: Doppelganger
     Level: 72
     Hp: 7800
     Sp: 200
     Attack: 200
     Attack2: 250
     Defense: 30
     MagicDefense: 20
+    Str: 0
     Agi: 38
     Vit: 30
     Int: 35
     Dex: 65
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 100
     AttackDelay: 300
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 288
     Class: Boss
   - Id: 1967
     AegisName: M_YGNIZEM
     Name: Egnigem Cenia
     JapaneseName: Egnigem Cenia
     Level: 79
     Hp: 7800
     Sp: 200
     Attack: 200
     Attack2: 250
     Defense: 30
     MagicDefense: 20
+    Str: 0
     Agi: 38
     Vit: 30
     Int: 35
     Dex: 65
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 300
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 288
     Class: Boss
   - Id: 1968
     AegisName: E_STROUF
     Name: Strouf
     Level: 48
     Hp: 11990
     BaseExp: 6160
     JobExp: 4196
     Attack: 200
     Attack2: 1250
     Defense: 5
     MagicDefense: 50
     Agi: 40
     Vit: 45
     Int: 92
     Dex: 43
     Luk: 65
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Fish
     Element: Water
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 108
     DamageMotion: 384
     Class: Boss
     Drops:
       - Item: Fin
         Rate: 5335
       - Item: Oridecon_Stone
         Rate: 230
       - Item: Granpa_Beard
         Rate: 4
       - Item: Trident_
         Rate: 4
       - Item: Feather
         Rate: 3000
       - Item: Skyblue_Jewel
         Rate: 40
       - Item: Gill
         Rate: 1500
       - Item: Strouf_Card
         Rate: 1
         StealProtected: true
   - Id: 1969
     AegisName: E_MARC
     Name: Cavalo-Marinho
     Level: 36
     Hp: 6900
     BaseExp: 1976
     JobExp: 1250
     Attack: 220
     Attack2: 280
     Defense: 5
     MagicDefense: 10
     Agi: 36
     Vit: 36
     Int: 20
     Dex: 56
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1272
     AttackMotion: 72
+    ClientAttackMotion: 216
     DamageMotion: 480
     Class: Boss
     Drops:
       - Item: Mistic_Frozen
         Rate: 36
       - Item: Gill
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 190
       - Item: Fin
         Rate: 1000
       - Item: Skyblue_Jewel
         Rate: 20
       - Item: Blue_Gemstone
         Rate: 200
       - Item: White_Herb
         Rate: 700
       - Item: Marc_Card
         Rate: 1
         StealProtected: true
   - Id: 1970
     AegisName: E_OBEAUNE
     Name: Obeaune
     Level: 31
     Hp: 3952
     BaseExp: 1288
     JobExp: 814
     Attack: 141
     Attack2: 165
     MagicDefense: 40
     Agi: 31
     Vit: 31
     Int: 55
     Dex: 74
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 288
     Class: Boss
     Drops:
       - Item: Mistic_Frozen
         Rate: 26
       - Item: Heart_Of_Mermaid
         Rate: 9000
       - Item: Fin_Helm
         Rate: 2
       - Item: Saint_Robe_
         Rate: 20
       - Item: Skyblue_Jewel
         Rate: 20
       - Item: Fin
         Rate: 500
       - Item: Witherless_Rose
         Rate: 60
       - Item: Obeaune_Card
         Rate: 1
         StealProtected: true
   - Id: 1971
     AegisName: E_VADON
     Name: Vadon
     Level: 19
     Hp: 1017
     BaseExp: 270
     JobExp: 170
     Attack: 74
     Attack2: 85
     Defense: 20
     Agi: 19
     Vit: 16
     Int: 10
     Dex: 36
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Fish
     Element: Water
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1632
     AttackMotion: 432
+    ClientAttackMotion: 420
     DamageMotion: 540
     Class: Boss
     Drops:
       - Item: Crystal_Blue
         Rate: 40
       - Item: Nipper
         Rate: 9000
       - Item: Garlet
         Rate: 3000
       - Item: Padded_Armor_
         Rate: 10
       - Item: Solid_Shell
         Rate: 100
       - Item: Elunium_Stone
         Rate: 80
       - Item: Blue_Gemstone
         Rate: 50
       - Item: Vadon_Card
         Rate: 1
         StealProtected: true
   - Id: 1972
     AegisName: E_MARINA
     Name: Marina
     Level: 21
     Hp: 2087
     BaseExp: 436
     JobExp: 280
     Attack: 84
     Attack2: 106
     MagicDefense: 5
     Agi: 21
     Vit: 21
+    Int: 0
     Dex: 36
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 400
     AttackDelay: 2280
     AttackMotion: 1080
+    ClientAttackMotion: 288
     DamageMotion: 864
     Class: Boss
     Drops:
       - Item: Single_Cell
         Rate: 5000
       - Item: Sticky_Mucus
         Rate: 1500
       - Item: Crystal_Blue
         Rate: 90
       - Item: Mistic_Frozen
         Rate: 4
       - Item: Blue_Gemstone
         Rate: 200
       - Item: Deadly_Noxious_Herb
         Rate: 40
       - Item: Marina_Card
         Rate: 1
         StealProtected: true
   - Id: 1973
     AegisName: E_PORING
     Name: Poring
     Level: 1
     Hp: 50
     BaseExp: 2
     JobExp: 1
     Attack: 7
     Attack2: 10
     MagicDefense: 5
+    Int: 0
     Dex: 6
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Class: Boss
     Drops:
       - Item: Jellopy
         Rate: 7000
       - Item: Sticky_Mucus
         Rate: 400
       - Item: Apple
         Rate: 1000
       - Item: Empty_Bottle
         Rate: 1500
       - Item: Water_Of_Blessing
         Rate: 3000
   - Id: 1974
     AegisName: BANSHEE_MASTER
     Name: Senhora das Banshees
     Level: 84
     Hp: 47222
     BaseExp: 30000
     JobExp: 24000
     Attack: 2666
     Attack2: 3609
     Defense: 20
     MagicDefense: 40
     Str: 30
     Agi: 74
     Int: 180
     Dex: 105
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 676
     AttackMotion: 504
+    ClientAttackMotion: 432
     DamageMotion: 504
     Ai: 20
     Modes:
       Detector: true
     Drops:
       - Item: Brigan
         Rate: 5335
       - Item: Old_White_Cloth
         Rate: 3000
       - Item: Orleans_Gown
         Rate: 10
       - Item: Cursed_Star
         Rate: 2
       - Item: Wool_Scarf
         Rate: 10
       - Item: Mementos
         Rate: 1500
       - Item: Shadow_Guard
         Rate: 20
       - Item: Banshee_Master_Card
         Rate: 1
         StealProtected: true
   - Id: 1975
     AegisName: BEHOLDER_MASTER
     Name: Mestre Beholder
     JapaneseName: Mestre Beholder
     Level: 70
     Hp: 24150
     BaseExp: 9000
     JobExp: 11400
     Attack: 1723
     Attack2: 2300
     Defense: 17
     MagicDefense: 30
     Str: 60
     Agi: 62
     Vit: 25
     Int: 89
     Dex: 85
     Luk: 32
     AttackRange: 6
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 190
     AttackDelay: 336
     AttackMotion: 840
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Prickly_Fruit
         Rate: 3000
       - Item: Anodyne
         Rate: 100
       - Item: Rough_Wind
         Rate: 100
       - Item: Elunium
         Rate: 10
       - Item: Chameleon_Armor
         Rate: 10
       - Item: Old_Blue_Box
         Rate: 2
       - Item: Linen_Glove
         Rate: 2
   - Id: 1976
     AegisName: COBALT_MINERAL
     Name: Cobalto
     Level: 72
     Hp: 29665
     BaseExp: 12332
     JobExp: 10379
     Attack: 1446
     Attack2: 2979
     Defense: 40
     MagicDefense: 30
     Str: 60
     Agi: 77
     Vit: 35
     Int: 57
     Dex: 77
     Luk: 32
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 2
     WalkSpeed: 200
     AttackDelay: 648
     AttackMotion: 480
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Fragment_Of_Crystal
         Rate: 3000
       - Item: Golden_Jewel
         Rate: 500
       - Item: Elemental_Sword
         Rate: 5
       - Item: Oridecon
         Rate: 80
       - Item: Emveretarcon
         Rate: 800
       - Item: Yellow_Gemstone
         Rate: 100
       - Item: Gold
         Rate: 2
       - Item: Emperium
         Rate: 2
         StealProtected: true
   - Id: 1977
     AegisName: HEAVY_METALING
     Name: Metaling Pesado
     Level: 73
     Hp: 28433
     BaseExp: 9320
     JobExp: 8831
     Attack: 1350
     Attack2: 1700
     Defense: 40
     MagicDefense: 30
     Str: 30
     Agi: 65
     Vit: 28
     Int: 40
     Dex: 77
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 200
     AttackDelay: 384
     AttackMotion: 672
+    ClientAttackMotion: 288
     DamageMotion: 480
     Ai: 20
     Drops:
       - Item: Tube
         Rate: 4000
       - Item: Iron_Ore
         Rate: 1000
       - Item: Iron
         Rate: 500
       - Item: Large_Jellopy
         Rate: 1000
       - Item: Screw
         Rate: 200
       - Item: Dagger_Of_Hunter
         Rate: 5
       - Item: Jubilee
         Rate: 5000
   - Id: 1978
     AegisName: HELL_APOCALIPS
     Name: Apocalipse Infernal
     JapaneseName: Apocalipse Infernal
     Level: 86
     Hp: 65433
     BaseExp: 46666
     JobExp: 32000
     Attack: 5733
     Attack2: 6073
     Defense: 62
     MagicDefense: 23
     Agi: 48
     Vit: 30
     Int: 98
     Dex: 110
     Luk: 85
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 250
     AttackDelay: 1840
     AttackMotion: 1440
+    ClientAttackMotion: 528
     DamageMotion: 384
     Ai: 20
     Drops:
       - Item: Broken_Steel_Piece
         Rate: 5335
       - Item: Steel
         Rate: 2500
       - Item: Mystery_Piece
         Rate: 2400
       - Item: Wheel
         Rate: 2200
       - Item: Manteau_
         Rate: 20
       - Item: Elunium
         Rate: 5
       - Item: Life_Link
         Rate: 1
       - Item: Cardo
         Rate: 1
         StealProtected: true
   - Id: 1979
     AegisName: ZAKUDAM
     Name: Zakudam
     JapaneseName: Zukadam
     Level: 82
     Hp: 43699
     BaseExp: 27213
     JobExp: 16300
     Attack: 2000
     Attack2: 3227
     Defense: 30
     MagicDefense: 30
     Str: 65
     Agi: 65
     Vit: 35
     Int: 75
     Dex: 80
     Luk: 15
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Neutral
     ElementLevel: 3
     WalkSpeed: 180
     AttackDelay: 580
     AttackMotion: 288
+    ClientAttackMotion: 240
     DamageMotion: 360
     Ai: 21
     Drops:
       - Item: Screw
         Rate: 5000
       - Item: Steel
         Rate: 500
       - Item: Oridecon
         Rate: 200
       - Item: Elunium
         Rate: 200
       - Item: Gate_Keeper
         Rate: 5
       - Item: Gate_KeeperDD
         Rate: 5
       - Item: Improved_Tights
         Rate: 10
   - Id: 1980
     AegisName: KUBLIN
     Name: Kublin
     JapaneseName: Kubkin
     Level: 85
     Hp: 1176000
     BaseExp: 100000
     JobExp: 100000
     MvpExp: 50000
     Attack: 1180
     Attack2: 1400
     Defense: 20
     MagicDefense: 10
     Agi: 106
     Vit: 25
     Int: 40
     Dex: 72
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 964
     AttackMotion: 648
+    ClientAttackMotion: 360
     DamageMotion: 300
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Pickaxe
         Rate: 10000
     Drops:
       - Item: Iron
         Rate: 270
       - Item: Scell
         Rate: 9000
       - Item: Oridecon_Stone
         Rate: 43
       - Item: Goblini_Mask
         Rate: 3
       - Item: Red_Herb
         Rate: 1800
   - Id: 1981
     AegisName: I_HIGH_ORC
     Name: Soldado Orc
     Level: 88
     Hp: 111111
     BaseExp: 3618
     JobExp: 1639
     Attack: 428
     Attack2: 533
     Defense: 15
     MagicDefense: 5
     Str: 55
     Agi: 46
     Vit: 55
     Int: 35
     Dex: 82
     Luk: 40
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demihuman
     Element: Fire
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1500
     AttackMotion: 500
+    ClientAttackMotion: 336
     DamageMotion: 1000
     Ai: 21
   - Id: 1982
     AegisName: I_ORC_ARCHER
     Name: Orc Arqueiro
     Level: 85
     Hp: 62000
     BaseExp: 1729
     JobExp: 1787
     Attack: 1310
     Attack2: 1390
     Defense: 10
     MagicDefense: 5
     Agi: 44
     Vit: 25
     Int: 20
     Dex: 125
     Luk: 20
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 300
     AttackDelay: 1960
     AttackMotion: 620
+    ClientAttackMotion: 864
     DamageMotion: 480
     Ai: 09
   - Id: 1983
     AegisName: I_ORC_SKELETON
     Name: Zenorc
     Level: 87
     Hp: 80087
     BaseExp: 4501
     JobExp: 67
     Attack: 896
     Attack2: 1159
     Defense: 14
     MagicDefense: 30
     Agi: 31
     Vit: 41
     Int: 93
     Dex: 67
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Undead
     Element: Undead
     ElementLevel: 1
     WalkSpeed: 130
     AttackDelay: 2420
     AttackMotion: 720
+    ClientAttackMotion: 288
     DamageMotion: 648
     Ai: 04
   - Id: 1984
     AegisName: I_ORC_LADY
     Name: Guarda de Elite Orc
     Level: 58
     Hp: 50058
     BaseExp: 4870
     JobExp: 98
     Attack: 823
     Attack2: 1212
     Defense: 35
     MagicDefense: 10
     Str: 60
     Agi: 35
     Vit: 52
     Int: 18
     Dex: 79
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 145
     AttackDelay: 1050
     AttackMotion: 900
+    ClientAttackMotion: 540
     DamageMotion: 288
     Ai: 21
   - Id: 1985
     AegisName: DANDELION
     Name: Dente_de_Leo
     Level: 37
     Hp: 5176
     Attack: 305
     Attack2: 360
     MagicDefense: 10
     Str: 28
     Agi: 19
     Vit: 32
+    Int: 0
     Dex: 63
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1772
     AttackMotion: 72
+    ClientAttackMotion: 504
     DamageMotion: 384
     Ai: 21
   - Id: 1986
     AegisName: TATACHO
     Name: Tatacho
     Level: 106
     Hp: 39500
     BaseExp: 23700
     JobExp: 13825
     Attack: 10000
     Attack2: 11000
     Defense: 20
     MagicDefense: 17
     Str: 106
     Agi: 40
     Vit: 30
     Int: 25
     Dex: 115
     Luk: 6
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     RaceGroups:
       Manuk: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 07
     Drops:
       - Item: Lunakaligo
         Rate: 20
       - Item: Cello
         Rate: 10
       - Item: Fur
         Rate: 4000
       - Item: Peaked_Hat
         Rate: 3000
       - Item: Delicious_Fish
         Rate: 3100
       - Item: Sweet_Potato
         Rate: 3000
       - Item: Tatacho_Card
         Rate: 1
         StealProtected: true
   - Id: 1987
     AegisName: CENTIPEDE
     Name: Centopia
     Level: 110
     Hp: 45662
     BaseExp: 27397
     JobExp: 15982
     Attack: 15000
     Attack2: 16000
     Defense: 40
     MagicDefense: 25
     Str: 112
     Agi: 43
     Vit: 30
     Int: 5
     Dex: 131
     Luk: 12
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     RaceGroups:
       Manuk: true
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Cold_Heart
         Rate: 2
       - Item: Black_Cat
         Rate: 2
       - Item: Cursed_Lyre
         Rate: 10
       - Item: Short_Leg
         Rate: 5335
       - Item: Zargon
         Rate: 5000
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Solid_Shell
         Rate: 2500
       - Item: Centipede_Card
         Rate: 1
         StealProtected: true
   - Id: 1988
     AegisName: NEPENTHES
     Name: Nepenthes
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -36887,333 +38878,340 @@ Body:
     Hp: 10350
     BaseExp: 5175
     JobExp: 2587
     Attack: 415
     Attack2: 565
     Defense: 25
     MagicDefense: 10
     Str: 75
     Agi: 20
     Vit: 30
     Int: 5
     Dex: 65
     Luk: 5
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     RaceGroups:
       Manuk: true
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 500
     AttackMotion: 576
+    ClientAttackMotion: 288
     DamageMotion: 504
     Ai: 10
     Drops:
       - Item: Mandragora_Cap
         Rate: 1
       - Item: Stem_Of_Nepenthes
         Rate: 1
       - Item: Harp_Of_Nepenthes
         Rate: 1
       - Item: Nepenthes_Bow
         Rate: 1
       - Item: Strong_Bine
         Rate: 3000
       - Item: Yellow_Live
         Rate: 50
       - Item: Stem
         Rate: 9000
   - Id: 1989
     AegisName: HILLSRION
     Name: Leo da Montanha
     Level: 105
     Hp: 34600
     BaseExp: 20760
     JobExp: 12110
     Attack: 5000
     Attack2: 5500
     Defense: 28
     MagicDefense: 15
     Str: 105
     Agi: 60
     Vit: 30
     Int: 15
     Dex: 115
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     RaceGroups:
       Manuk: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 400
     AttackMotion: 780
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 13
     Drops:
       - Item: Sprint_Shoes
         Rate: 10
       - Item: Horn_Of_Hilthrion
         Rate: 20
       - Item: Horn_Of_Hilsrion
         Rate: 3000
       - Item: Fur
         Rate: 2000
       - Item: Wild_Beast_Claw
         Rate: 10
       - Item: Soft_Feather
         Rate: 120
       - Item: Brigan
         Rate: 4850
       - Item: Hilsrion_Card
         Rate: 1
         StealProtected: true
   - Id: 1990
     AegisName: HARDROCK_MOMMOTH
     Name: Mamute Rochoso
     Level: 115
     Hp: 4137000
     BaseExp: 827400
     JobExp: 413700
     Attack: 30000
     Attack2: 36000
     Defense: 50
     MagicDefense: 60
     Str: 115
     Agi: 35
     Int: 30
     Dex: 150
     Luk: 15
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     RaceGroups:
       Manuk: true
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 660
+    ClientAttackMotion: 300
     DamageMotion: 588
     Ai: 21
     Class: Boss
     Drops:
       - Item: Bone_Head
         Rate: 100
       - Item: Tournament_Shield
         Rate: 200
       - Item: Ivory_Lance
         Rate: 500
       - Item: Ivory_Knife
         Rate: 400
       - Item: Hard_Skin
         Rate: 9000
       - Item: Snowy_Horn
         Rate: 20
       - Item: Elunium
         Rate: 9000
   - Id: 1991
     AegisName: TENDRILRION
     Name: Leo de Vinhas
     JapaneseName: Leo de Vinhas
     Level: 113
     Hp: 3657330
     BaseExp: 731466
     JobExp: 365733
     Attack: 20000
     Attack2: 24000
     Defense: 33
     MagicDefense: 30
     Str: 113
     Agi: 60
     Int: 45
     Dex: 147
     Luk: 13
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     RaceGroups:
       Splendide: true
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 500
     AttackMotion: 960
+    ClientAttackMotion: 780
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Leather_Of_Tendrilion
         Rate: 500
       - Item: Death_Guidance
         Rate: 100
       - Item: Eraser
         Rate: 100
       - Item: Horn_Of_Tendrilion
         Rate: 9000
       - Item: Fur
         Rate: 4000
       - Item: Tough_Vines
         Rate: 5335
       - Item: Stiff_Horn
         Rate: 4850
   - Id: 1992
     AegisName: CORNUS
     Name: Cornus
     Level: 108
     Hp: 41220
     BaseExp: 30854
     JobExp: 4427
     Attack: 12000
     Attack2: 13000
     Defense: 35
     MagicDefense: 80
     Str: 110
     Agi: 45
     Vit: 80
     Int: 200
     Dex: 105
     Luk: 10
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     RaceGroups:
       Splendide: true
     Element: Holy
     ElementLevel: 3
     WalkSpeed: 120
     AttackDelay: 1000
     AttackMotion: 624
+    ClientAttackMotion: 192
     DamageMotion: 300
     Ai: 03
     Drops:
       - Item: Sprint_Mail
         Rate: 10
       - Item: Angelic_Ring
         Rate: 1
       - Item: Mystic_Horn
         Rate: 4000
       - Item: Soft_Feather
         Rate: 3000
       - Item: Horseshoe
         Rate: 6000
       - Item: Snowy_Horn
         Rate: 2
       - Item: Long_Horn
         Rate: 1
       - Item: Cornus_Card
         Rate: 1
         StealProtected: true
   - Id: 1993
     AegisName: NAGA
     Name: Naga
     Level: 111
     Hp: 46708
     BaseExp: 30360
     JobExp: 16348
     Attack: 8000
     Attack2: 8800
     Defense: 38
     MagicDefense: 15
     Str: 113
     Agi: 42
     Vit: 30
     Int: 108
     Dex: 122
     Luk: 13
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     RaceGroups:
       Splendide: true
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 400
     AttackMotion: 864
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Armor_Of_Naga
         Rate: 10
       - Item: Shield_Of_Naga
         Rate: 10
       - Item: Battle_Fork
         Rate: 10
       - Item: Scale_Of_Snakes
         Rate: 5000
       - Item: Scales_Shell
         Rate: 3500
       - Item: Shining_Scales
         Rate: 2000
       - Item: Pike_
         Rate: 20
   - Id: 1994
     AegisName: LUCIOLA_VESPA
     Name: Vespa Vagalume
     Level: 104
     Hp: 32600
     BaseExp: 16300
     JobExp: 11410
     Attack: 9000
     Attack2: 9900
     Defense: 29
     MagicDefense: 5
     Str: 104
     Agi: 56
     Vit: 30
     Int: 20
     Dex: 116
     Luk: 4
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Insect
     RaceGroups:
       Splendide: true
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 110
     AttackDelay: 1000
     AttackMotion: 864
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 08
     Modes:
       Detector: true
     Drops:
       - Item: Sprint_Ring
         Rate: 2
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Bee_Sting
         Rate: 9000
       - Item: Honey
         Rate: 300
       - Item: Wind_Of_Verdure
         Rate: 160
       - Item: Royal_Jelly
         Rate: 200
       - Item: Solid_Shell
         Rate: 3000
       - Item: Luciola_Vespa_Card
         Rate: 1
         StealProtected: true
   - Id: 1995
     AegisName: PINGUICULA
     Name: Pinguicula
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -37221,628 +39219,744 @@ Body:
     Hp: 13680
     BaseExp: 6840
     JobExp: 3420
     Attack: 600
     Attack2: 720
     Defense: 25
     MagicDefense: 5
     Str: 102
     Agi: 23
     Vit: 30
     Int: 10
     Dex: 86
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     RaceGroups:
       Splendide: true
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 700
     AttackMotion: 600
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 13
     Drops:
       - Item: Pinguicula_Corsage
         Rate: 1
       - Item: Whip_Of_Balance
         Rate: 10
       - Item: Centimental_Leaf
         Rate: 10
       - Item: Sharp_Leaf
         Rate: 5000
       - Item: Great_Leaf
         Rate: 2000
       - Item: Browny_Root
         Rate: 3000
       - Item: Flower
         Rate: 1000
+#  - Id: 1996
+#    AegisName: BACSOJIN_T
+#    Name: White Lady
+#    JapaneseName: Bacsojin
+#    Level: 85
+#    Hp: 253221
+#    BaseExp: 45250
+#    JobExp: 16445
+#    Attack: 1868
+#    Attack2: 6124
+#    Defense: 20
+#    MagicDefense: 55
+#    Str: 52
+#    Agi: 65
+#    Vit: 44
+#    Int: 112
+#    Dex: 152
+#    Luk: 35
+#    AttackRange: 3
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Demihuman
+#    Element: Wind
+#    ElementLevel: 3
+#    WalkSpeed: 130
+#    AttackDelay: 576
+#    AttackMotion: 960
+#    DamageMotion: 480
+#    Ai: 21
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: White_Snake_Hat
+#        Rate: 500
   - Id: 1997
     AegisName: G_TATACHO
     Name: Tatacho
     Level: 106
     Hp: 39500
     Attack: 10000
     Attack2: 11000
     Defense: 20
     MagicDefense: 17
     Str: 106
     Agi: 40
     Vit: 30
     Int: 25
     Dex: 115
     Luk: 6
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     RaceGroups:
       Manuk: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 768
+    ClientAttackMotion: 480
     DamageMotion: 360
     Ai: 07
   - Id: 1998
     AegisName: G_HILLSRION
     Name: Leo da Montanha
     Level: 105
     Hp: 34600
     Attack: 5000
     Attack2: 5500
     Defense: 28
     MagicDefense: 15
     Str: 105
     Agi: 60
     Vit: 30
     Int: 15
     Dex: 115
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Brute
     RaceGroups:
       Manuk: true
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 100
     AttackDelay: 400
     AttackMotion: 780
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 13
   - Id: 1999
     AegisName: CENTIPEDE_LARVA
     Name: Larva de Centopia
     Level: 80
     Hp: 12000
     BaseExp: 3600
     JobExp: 4800
     Attack: 948
     Attack2: 1115
     Defense: 20
     MagicDefense: 20
     Str: 80
     Agi: 33
     Vit: 15
     Int: 3
     Dex: 75
     Luk: 10
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Insect
     RaceGroups:
       Manuk: true
     Element: Poison
     ElementLevel: 1
     WalkSpeed: 150
     AttackDelay: 1000
     AttackMotion: 792
+    ClientAttackMotion: 576
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
     Drops:
       - Item: Boots_
         Rate: 9
       - Item: Crystal_Jewel__
         Rate: 50
       - Item: Short_Leg
         Rate: 5335
       - Item: Zargon
         Rate: 5000
       - Item: Worm_Peelings
         Rate: 9000
       - Item: Solid_Shell
         Rate: 2500
       - Item: Centipede_Larva_Card
         Rate: 1
         StealProtected: true
+#  - Id: 2000
+#    AegisName: M_GAMEMASTER
+#    Name: Game Master
+#    JapaneseName: Male Game Master
+#    Level: 50
+#    Hp: 7000
+#    BaseExp: 3982
+#    JobExp: 1766
+#    Sp: 250
+#    Attack: 25
+#    Attack2: 25
+#    Defense: 10
+#    MagicDefense: 10
+#    Str: 44
+#    Agi: 121
+#    Vit: 5
+#    Int: 60
+#    Dex: 75
+#    Luk: 110
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Demihuman
+#    Element: Neutral
+#    ElementLevel: 1
+#    WalkSpeed: 200
+#    AttackDelay: 300
+#    AttackMotion: 384
+#    DamageMotion: 288
+#    Ai: 21
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Moon_Cake
+#        Rate: 1000
   - Id: 2008
     AegisName: WOOMAWANG
     Name: Woomawang
     Level: 82
     Hp: 4000000
     BaseExp: 100000
     JobExp: 100000
     Attack: 8000
     Attack2: 10000
     Defense: 40
     MagicDefense: 40
     Str: 60
     Agi: 110
     Vit: 200
     Int: 250
     Dex: 166
     Luk: 66
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 828
     AttackMotion: 528
+    ClientAttackMotion: 288
     DamageMotion: 192
     Ai: 21
   - Id: 2009
     AegisName: WOOMAWANG_
     Name: Woomawang
     Level: 82
     Hp: 2000000
     BaseExp: 100000
     JobExp: 100000
     Attack: 16000
     Attack2: 20000
     Defense: 40
     MagicDefense: 40
     Str: 60
     Agi: 110
     Vit: 200
     Int: 250
     Dex: 166
     Luk: 66
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Ghost
     ElementLevel: 2
     WalkSpeed: 100
     AttackDelay: 414
     AttackMotion: 1080
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 21
     Drops:
       - Item: Cowking's_Nose_Ring
         Rate: 10000
   - Id: 2010
     AegisName: G_MAJORUROS
     Name: Ox
     Level: 66
     Hp: 500000
     BaseExp: 10
     JobExp: 10
     Attack: 1200
     Attack2: 3200
     Defense: 25
     MagicDefense: 15
     Str: 65
     Agi: 50
     Vit: 20
     Int: 20
     Dex: 85
     Luk: 48
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Ghost
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 1100
     AttackMotion: 960
+    ClientAttackMotion: 1728
     DamageMotion: 780
     Class: Boss
+#  - Id: 2011
+#    AegisName: E_GHOUL
+#    Name: Ghoul
+#    Level: 40
+#    Hp: 99999
+#    BaseExp: 1088
+#    JobExp: 622
+#    Attack: 2100
+#    Attack2: 2500
+#    Defense: 100
+#    MagicDefense: 20
+#    Agi: 20
+#    Vit: 29
+#    Dex: 180
+#    Luk: 20
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Undead
+#    Element: Undead
+#    ElementLevel: 2
+#    WalkSpeed: 100
+#    AttackDelay: 2456
+#    AttackMotion: 912
+#    DamageMotion: 504
+#    Modes:
+#      NoRandomWalk: true
   - Id: 2013
     AegisName: DRACO
     Name: Draco
     Level: 82
     Hp: 18300
     BaseExp: 6100
     JobExp: 4100
     Attack: 410
     Attack2: 710
     Defense: 10
     MagicDefense: 5
     Agi: 23
     Vit: 30
     Int: 34
     Dex: 62
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 576
     AttackMotion: 960
+    ClientAttackMotion: 420
     DamageMotion: 504
     Ai: 03
     Drops:
       - Item: Dragon's_Mane
         Rate: 3000
       - Item: Dragon's_Skin
         Rate: 100
       - Item: Dragon_Canine
         Rate: 100
       - Item: Dragon_Train
         Rate: 1000
       - Item: Dragon_Scale
         Rate: 1000
       - Item: Honey
         Rate: 500
       - Item: Draco_Card
         Rate: 1
         StealProtected: true
   - Id: 2014
     AegisName: DRACO_EGG
     Name: Ovo de Draco
     Level: 67
     Hp: 9822
     BaseExp: 1200
     JobExp: 1600
     Attack: 1
     Attack2: 2
     Defense: 56
     MagicDefense: 40
     Vit: 56
     Int: 34
     Luk: 63
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Dragon
     Element: Earth
     ElementLevel: 4
     WalkSpeed: 1000
     AttackDelay: 24
     AttackMotion: 1
+    ClientAttackMotion: 0
     DamageMotion: 1
     Drops:
       - Item: Piece_Of_Egg_Shell
         Rate: 5000
       - Item: Egg_Shell
         Rate: 20
   - Id: 2015
     AegisName: PINGUICULA_D
     Name: Pinguicula Sombria
     Level: 83
     Hp: 8780
     BaseExp: 7740
     JobExp: 5200
     Attack: 600
     Attack2: 1450
     Defense: 15
     MagicDefense: 5
     Agi: 23
     Vit: 22
     Int: 12
     Dex: 89
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Poison
     ElementLevel: 2
     WalkSpeed: 290
     AttackDelay: 1426
     AttackMotion: 600
+    ClientAttackMotion: 360
     DamageMotion: 360
     Ai: 13
     Drops:
       - Item: Sharp_Leaf
         Rate: 5000
       - Item: Great_Leaf
         Rate: 2000
       - Item: Browny_Root
         Rate: 3000
       - Item: Karvodailnirol
         Rate: 10
       - Item: Withered_Flower
         Rate: 1000
   - Id: 2016
     AegisName: AQUA_ELEMENTAL
     Name: Elemental da gua
     Level: 83
     Hp: 33220
     BaseExp: 5430
     JobExp: 15300
     Attack: 400
     Attack2: 1600
     Defense: 8
     MagicDefense: 12
     Agi: 23
     Vit: 19
     Int: 87
     Dex: 77
     Luk: 2
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Water
     ElementLevel: 4
     WalkSpeed: 230
     AttackDelay: 504
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 09
     Drops:
       - Item: Crystalized_Teardrop
         Rate: 1000
       - Item: Fluorescent_Liquid
         Rate: 5000
       - Item: Tiny_Waterbottle
         Rate: 100
       - Item: Aqua_Elemental_Card
         Rate: 1
         StealProtected: true
   - Id: 2017
     AegisName: RATA
     Name: Rata
     Level: 107
     Hp: 216600
     BaseExp: 70012
     JobExp: 34000
     Attack: 8000
     Attack2: 15000
     Defense: 32
     MagicDefense: 52
     Agi: 51
     Vit: 22
     Int: 132
     Dex: 99
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 792
     AttackMotion: 540
+    ClientAttackMotion: 420
     DamageMotion: 420
     Ai: 20
     Drops:
       - Item: Unripe_Acorn
         Rate: 5000
       - Item: Acorn
         Rate: 5000
       - Item: Piece_Of_Darkness
         Rate: 500
       - Item: Veteran_Hammer
         Rate: 100
   - Id: 2018
     AegisName: DUNEYRR
     Name: Duneyrr
     Level: 107
     Hp: 265100
     BaseExp: 83030
     JobExp: 52000
     Attack: 16000
     Attack2: 19000
     Defense: 39
     MagicDefense: 35
     Agi: 60
     Vit: 45
     Int: 89
     Dex: 105
     Luk: 15
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 672
     AttackMotion: 420
+    ClientAttackMotion: 300
     DamageMotion: 360
     Ai: 20
     Drops:
       - Item: Carrot
         Rate: 5000
       - Item: Fur
         Rate: 4000
       - Item: Piece_Of_Darkness
         Rate: 500
       - Item: Eyes_Stone_Ring
         Rate: 1
       - Item: Veteran_Sword
         Rate: 10
       - Item: Veteran_Axe
         Rate: 100
   - Id: 2019
     AegisName: ANCIENT_TREE
     Name: rvore Anci
     Level: 102
     Hp: 30030
     BaseExp: 11020
     JobExp: 8900
     Attack: 13200
     Attack2: 17400
     Defense: 39
     MagicDefense: 43
     Agi: 30
     Vit: 73
     Int: 58
     Dex: 45
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Plant
     Element: Earth
     ElementLevel: 3
     WalkSpeed: 290
     AttackDelay: 504
     AttackMotion: 960
+    ClientAttackMotion: 480
     DamageMotion: 576
     Ai: 13
     Drops:
       - Item: Tough_Vines
         Rate: 1000
       - Item: Great_Leaf
         Rate: 1000
       - Item: Log
         Rate: 5000
       - Item: Dead_Tree_Cane
         Rate: 10
       - Item: Vital_Tree_Shoes
         Rate: 30
   - Id: 2020
     AegisName: RHYNCHO
     Name: Ryncho
     Level: 85
     Hp: 18900
     BaseExp: 2040
     JobExp: 6000
     Attack: 350
     Attack2: 2300
     Defense: 5
     MagicDefense: 19
     Agi: 56
     Vit: 12
     Int: 35
     Dex: 89
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 3
     WalkSpeed: 240
     AttackDelay: 576
     AttackMotion: 660
+    ClientAttackMotion: 300
     DamageMotion: 420
     Ai: 13
     Drops:
       - Item: Fluorescent_Liquid
         Rate: 5000
       - Item: Karvodailnirol
         Rate: 5
       - Item: Crystal_Of_Soul_01
         Rate: 500
   - Id: 2021
     AegisName: PHYLLA
     Name: Phylla
     Level: 85
     Hp: 23880
     BaseExp: 3040
     JobExp: 6600
     Attack: 350
     Attack2: 2550
     Defense: 8
     MagicDefense: 22
     Agi: 59
     Vit: 15
     Int: 25
     Dex: 99
     Luk: 10
     AttackRange: 10
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 3
     WalkSpeed: 240
     AttackDelay: 360
     AttackMotion: 780
+    ClientAttackMotion: 540
     DamageMotion: 432
     Ai: 05
     Drops:
       - Item: Fluorescent_Liquid
         Rate: 5000
       - Item: Detrimindexta
         Rate: 5
       - Item: Crystal_Of_Soul_02
         Rate: 500
   - Id: 2022
     AegisName: S_NYDHOG
     Name: Sombra de Nidhogg
     Level: 117
     Hp: 3450000
     BaseExp: 4800000
     JobExp: 3900000
     MvpExp: 2400000
     Attack: 17000
     Attack2: 49000
     Defense: 60
     MagicDefense: 75
     Agi: 34
     Vit: 62
     Int: 236
     Dex: 188
     Luk: 34
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Dragon
     Element: Dark
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 1596
     AttackMotion: 1620
+    ClientAttackMotion: 576
     DamageMotion: 864
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Card_Album
         Rate: 2000
     Drops:
       - Item: Dark_Red_Scale
         Rate: 5000
       - Item: Treasure_Box
         Rate: 5000
       - Item: Gold_Ring
         Rate: 5000
       - Item: Cardo
         Rate: 500
       - Item: Katzbalger
         Rate: 500
       - Item: Pole_Axe
         Rate: 500
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -37852,501 +39966,692 @@ Body:
     AegisName: DARK_SHADOW
     Name: Sombra Obscura
     Level: 114
     Hp: 42900
     BaseExp: 21000
     JobExp: 14000
     Attack: 10000
     Attack2: 15000
     Defense: 35
     MagicDefense: 44
     Agi: 23
     Vit: 12
     Int: 145
     Dex: 102
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 220
     AttackDelay: 768
     AttackMotion: 1776
+    ClientAttackMotion: 912
     DamageMotion: 648
     Ai: 09
     Modes:
       Detector: true
     Drops:
       - Item: Piece_Of_Black_Cloth
         Rate: 5000
       - Item: Skul_Ring
         Rate: 1000
       - Item: Dagger_Of_Hunter
         Rate: 5
       - Item: Piece_Of_Darkness
         Rate: 1000
       - Item: Eyes_Stone_Ring
         Rate: 5
       - Item: Bradium_Stonehammer
         Rate: 10
       - Item: Dark_Shadow_Card
         Rate: 1
         StealProtected: true
   - Id: 2024
     AegisName: BRADIUM_GOLEM
     Name: Golem de Bradium
     Level: 101
     Hp: 45200
     BaseExp: 14000
     JobExp: 18920
     Attack: 12000
     Attack2: 13000
     Defense: 78
     MagicDefense: 22
+    Str: 0
     Agi: 10
     Vit: 82
     Int: 25
     Dex: 60
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     RaceGroups:
       Golem: true
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1008
     AttackMotion: 1200
+    ClientAttackMotion: 480
     DamageMotion: 540
     Ai: 20
     Drops:
       - Item: Stone_Piece
         Rate: 3000
       - Item: Stone_Heart
         Rate: 5000
       - Item: Purified_Bradium
         Rate: 500
       - Item: Bradium_Shield
         Rate: 10
+#  - Id: 2025
+#    AegisName: MYSTCASE_EVENT
+#    Name: Mystcase
+#    Level: 10
+#    Hp: 15
+#    Attack: 160
+#    Attack2: 360
+#    Defense: 99
+#    MagicDefense: 99
+#    Str: 65
+#    Agi: 50
+#    Vit: 25
+#    Int: 5
+#    Dex: 48
+#    Luk: 75
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Formless
+#    Element: Neutral
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1248
+#    AttackMotion: 1248
+#    DamageMotion: 432
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Fire_Cracker_Xmas
+#        Rate: 5000
+#        StealProtected: true
   - Id: 2026
     AegisName: DANDELION_
     Name: Dandelion Fugitivo
     Level: 90
     Hp: 552000
     BaseExp: 50000
     JobExp: 25000
     Attack: 3050
     Attack2: 4300
     Defense: 25
     MagicDefense: 35
     Agi: 66
     Vit: 66
     Int: 45
     Dex: 88
     Luk: 66
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 1
     WalkSpeed: 230
     AttackDelay: 1772
     AttackMotion: 72
+    ClientAttackMotion: 504
     DamageMotion: 384
     Ai: 21
     Drops:
       - Item: Old_Frying_Pan
         Rate: 5000
       - Item: Delicious_Fish
         Rate: 500
       - Item: Spoon_Stub
         Rate: 2000
       - Item: Mushroom
         Rate: 3000
       - Item: Outdoor_Cooking_Kits
         Rate: 500
       - Item: Green_Herb
         Rate: 5000
       - Item: Piece_Of_Egg_Shell
         Rate: 3000
       - Item: Tree_Root
         Rate: 2000
         StealProtected: true
   - Id: 2027
     AegisName: G_DARK_SHADOW
     Name: Sombra Obscura
     Level: 114
     Hp: 42900
     Attack: 10000
     Attack2: 15000
     Defense: 35
     MagicDefense: 44
     Agi: 23
     Vit: 12
     Int: 145
     Dex: 102
     Luk: 60
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Formless
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 220
     AttackDelay: 768
     AttackMotion: 1776
+    ClientAttackMotion: 912
     DamageMotion: 648
     Ai: 21
     Modes:
       Detector: true
+#  - Id: 2028
+#    AegisName: E_MINOROUS
+#    Name: Minorous
+#    Level: 1
+#    Hp: 741
+#    BaseExp: 10
+#    Attack: 30
+#    Attack2: 48
+#    Defense: 2
+#    MagicDefense: 5
+#    Str: 6
+#    Agi: 4
+#    Vit: 6
+#    Int: 6
+#    Dex: 5
+#    Luk: 3
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Large
+#    Race: Brute
+#    Element: Fire
+#    ElementLevel: 2
+#    WalkSpeed: 200
+#    AttackDelay: 1360
+#    AttackMotion: 960
+#    DamageMotion: 432
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Coin
+#        Rate: 5000
+#        StealProtected: true
   - Id: 2030
     AegisName: HIDEN_PRIEST
     Name: Hiden Priest
     Level: 90
     Hp: 240000
     Attack: 1300
     Attack2: 1983
     MagicDefense: 30
     Agi: 32
     Vit: 40
     Int: 100
     Dex: 82
     Luk: 40
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Undead
     ElementLevel: 4
     WalkSpeed: 150
     AttackDelay: 432
     AttackMotion: 432
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 21
     Class: Boss
     Drops:
       - Item: Pope's_Cookie
         Rate: 5000
   - Id: 2031
     AegisName: DANDELION_H
     Name: Dandelion
     Level: 80
     Hp: 120000
     Attack: 305
     Attack2: 610
     MagicDefense: 10
     Agi: 19
     Vit: 32
+    Int: 0
     Dex: 63
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Dark
     ElementLevel: 2
     WalkSpeed: 250
     AttackDelay: 1772
     AttackMotion: 72
+    ClientAttackMotion: 504
     DamageMotion: 384
     Ai: 21
     Class: Boss
     Drops:
       - Item: Pope's_Cookie
         Rate: 5000
+#  - Id: 2032
+#    AegisName: GUARDIAN_FOREST
+#    Name: Forest Guardian
+#    JapaneseName: Tirfing
+#    Level: 50
+#    Hp: 8578
+#    Sp: 15
+#    Attack: 1000
+#    Attack2: 1103
+#    Defense: 15
+#    MagicDefense: 25
+#    Str: 64
+#    Agi: 75
+#    Vit: 55
+#    Int: 5
+#    Dex: 93
+#    Luk: 45
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Small
+#    Race: Demon
+#    Element: Dark
+#    ElementLevel: 1
+#    WalkSpeed: 100
+#    AttackDelay: 868
+#    AttackMotion: 480
+#    DamageMotion: 120
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Gold_Tulip
+#        Rate: 10000
   - Id: 2042
     AegisName: SILVERSNIPER
     Name: Silver Sniper
     Level: 100
     Hp: 4500
     Attack: 300
     Attack2: 300
     Defense: 80
     MagicDefense: 10
     Str: 10
     Agi: 60
     Vit: 10
     Int: 10
     Dex: 100
     Luk: 10
     AttackRange: 9
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 960
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Steel
         Rate: 1000
   - Id: 2043
     AegisName: MAGICDECOY_FIRE
     Name: Magic Decoy
     Level: 100
     Hp: 2500
     Attack: 150
     Attack2: 150
     Defense: 16
     MagicDefense: 60
     Str: 10
     Agi: 10
     Vit: 10
     Int: 100
     Dex: 50
     Luk: 10
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Fire
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Steel
         Rate: 1000
   - Id: 2044
     AegisName: MAGICDECOY_WATER
     Name: Magic Decoy
     Level: 100
     Hp: 2500
     Attack: 150
     Attack2: 150
     Defense: 16
     MagicDefense: 60
     Str: 10
     Agi: 10
     Vit: 10
     Int: 100
     Dex: 50
     Luk: 10
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Water
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Steel
         Rate: 1000
   - Id: 2045
     AegisName: MAGICDECOY_EARTH
     Name: Magic Decoy
     Level: 100
     Hp: 2500
     Attack: 150
     Attack2: 150
     Defense: 16
     MagicDefense: 60
     Str: 10
     Agi: 10
     Vit: 10
     Int: 100
     Dex: 50
     Luk: 10
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Steel
         Rate: 1000
   - Id: 2046
     AegisName: MAGICDECOY_WIND
     Name: Magic Decoy
     Level: 100
     Hp: 2500
     Attack: 150
     Attack2: 150
     Defense: 16
     MagicDefense: 60
     Str: 10
     Agi: 10
     Vit: 10
     Int: 100
     Dex: 50
     Luk: 10
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Formless
     Element: Wind
     ElementLevel: 1
     WalkSpeed: 1000
     AttackDelay: 504
     AttackMotion: 1020
+    ClientAttackMotion: 288
     DamageMotion: 360
     Ai: 10
     Drops:
       - Item: Steel
         Rate: 1000
   - Id: 2047
     AegisName: W_NAGA
     Name: Naga
     Level: 99
     Hp: 46708
     Attack: 492
     Attack2: 605
     Defense: 61
     MagicDefense: 15
     Str: 113
     Agi: 42
     Vit: 30
     Int: 18
     Dex: 122
     Luk: 13
     AttackRange: 3
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 400
     AttackMotion: 864
+    ClientAttackMotion: 720
     DamageMotion: 432
     Ai: 21
     Drops:
       - Item: Scale_Of_Snakes
         Rate: 5000
+#  - Id: 2048
+#    AegisName: W_PINGUICULA_D
+#    Name: Dark Pinguicula
+#    Level: 1
+#    Hp: 50
+#    Attack: 7
+#    Attack2: 10
+#    MagicDefense: 5
+#    Dex: 6
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Modes:
+#      NoRandomWalk: true
   - Id: 2049
     AegisName: W_BRADIUM_GOLEM
     Name: Golem de Bradium
     Level: 99
     Hp: 45200
     Attack: 720
     Attack2: 886
     Defense: 125
     MagicDefense: 18
+    Str: 0
     Agi: 10
     Vit: 82
     Int: 2
     Dex: 60
     Luk: 12
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Formless
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 300
     AttackDelay: 1008
     AttackMotion: 1200
+    ClientAttackMotion: 480
     DamageMotion: 540
     Ai: 04
     Modes:
       CastSensorIdle: true
     Drops:
       - Item: Purified_Bradium
         Rate: 500
+#  - Id: 2050
+#    AegisName: W_AQUA_ELEMENTAL
+#    Name: Aqua Elemental
+#    JapaneseName: Zherlthsh
+#    Level: 1
+#    Hp: 50
+#    Attack: 7
+#    Attack2: 10
+#    Defense: 1
+#    MagicDefense: 5
+#    Dex: 6
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Modes:
+#      NoRandomWalk: true
+#    Drops:
+#      - Item: Fools_Day_Box
+#        Rate: 5000
   - Id: 2057
     AegisName: E_CRAMP
     Name: Cibra
     Level: 1
     Hp: 50
     Attack: 7
     Attack2: 10
     MagicDefense: 5
     Dex: 6
     Luk: 30
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
+    ClientAttackMotion: 648
     DamageMotion: 480
     Class: Boss
+#  - Id: 2058
+#    AegisName: M_MIMIC
+#    Name: Mimic
+#    JapaneseName: Poporing
+#    Level: 1
+#    Hp: 50
+#    Attack: 7
+#    Attack2: 10
+#    MagicDefense: 5
+#    Dex: 6
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Modes:
+#      NoRandomWalk: true
   - Id: 2068
     AegisName: BOITATA
     Name: Boitat
     Level: 93
     Hp: 1283990
     BaseExp: 74288
     JobExp: 77950
     MvpExp: 37144
     Attack: 3304
     Attack2: 4266
     Defense: 32
     MagicDefense: 66
     Str: 140
     Agi: 99
     Vit: 30
     Int: 109
     Dex: 100
     Luk: 90
     AttackRange: 2
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Brute
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 1152
     AttackMotion: 1152
+    ClientAttackMotion: 240
     DamageMotion: 576
     Ai: 21
     Class: Boss
     Modes:
       Mvp: true
     MvpDrops:
       - Item: Old_Violet_Box
         Rate: 5500
       - Item: Old_Violet_Box
         Rate: 5000
       - Item: Old_Card_Album
         Rate: 2000
     Drops:
       - Item: Treasure_Box
         Rate: 5000
       - Item: Hurricane_Fury
         Rate: 100
       - Item: Hunting_Spear
         Rate: 100
       - Item: Yggdrasilberry
         Rate: 500
       - Item: Elunium
         Rate: 1000
       - Item: Oridecon
         Rate: 1000
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -38356,415 +40661,472 @@ Body:
     AegisName: IARA
     Name: Iara
     Level: 79
     Hp: 18952
     BaseExp: 5517
     JobExp: 1500
     Attack: 614
     Attack2: 713
     MagicDefense: 76
     Str: 69
     Agi: 14
     Vit: 41
     Int: 60
     Dex: 69
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Fish
     Element: Water
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 384
     AttackMotion: 672
+    ClientAttackMotion: 384
     DamageMotion: 288
     Ai: 17
     Drops:
       - Item: Mistic_Frozen
         Rate: 5
       - Item: Heart_Of_Mermaid
         Rate: 9000
       - Item: Fin
         Rate: 500
       - Item: Witherless_Rose
         Rate: 50
       - Item: Crystal_Mirror
         Rate: 100
       - Item: Illusion_Flower
         Rate: 10
       - Item: Mage_Coat
         Rate: 1
   - Id: 2070
     AegisName: PIRANHA
     Name: Piranha
     Level: 75
     Hp: 15882
     BaseExp: 3877
     JobExp: 2023
     Attack: 549
     Attack2: 590
     Defense: 7
     MagicDefense: 12
     Str: 69
     Agi: 45
     Vit: 30
     Int: 30
     Dex: 66
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Fish
     Element: Water
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 768
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 864
     Ai: 04
     Drops:
       - Item: Gill
         Rate: 600
       - Item: Mistic_Frozen
         Rate: 5
       - Item: Sharp_Scale
         Rate: 9000
       - Item: Tooth_Of_Ancient_Fish
         Rate: 500
       - Item: Lip_Of_Ancient_Fish
         Rate: 500
       - Item: Scalpel
         Rate: 1
       - Item: Fisherman's_Dagger
         Rate: 5
   - Id: 2071
     AegisName: HEADLESS_MULE
     Name: Mula sem Cabea
     Level: 80
     Hp: 20065
     BaseExp: 6666
     JobExp: 4111
     Attack: 903
     Attack2: 960
     Defense: 33
     MagicDefense: 44
     Str: 68
     Agi: 51
     Vit: 50
     Int: 35
     Dex: 67
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Demon
     Element: Fire
     ElementLevel: 3
     WalkSpeed: 165
     AttackDelay: 1216
     AttackMotion: 816
+    ClientAttackMotion: 288
     DamageMotion: 432
     Ai: 04
     Modes:
       Detector: true
     Drops:
       - Item: Burning_Horse_Shoe
         Rate: 4000
       - Item: Plate_Armor_
         Rate: 5
       - Item: Burning_Heart
         Rate: 1000
       - Item: Hot_Hair
         Rate: 1000
       - Item: Inverse_Scale
         Rate: 1
       - Item: Plate_Armor_
         Rate: 1
       - Item: Jamadhar_
         Rate: 2
   - Id: 2072
     AegisName: JAGUAR
     Name: Esprito da Terra
     Level: 71
     Hp: 12590
     BaseExp: 1820
     JobExp: 1012
     Attack: 538
     Attack2: 580
     Defense: 44
     MagicDefense: 15
     Str: 69
     Agi: 30
     Vit: 45
     Int: 5
     Dex: 59
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Earth
     ElementLevel: 2
     WalkSpeed: 150
     AttackDelay: 576
     AttackMotion: 1248
+    ClientAttackMotion: 432
     DamageMotion: 480
     Ai: 17
     Drops:
       - Item: Leopard_Skin
         Rate: 3000
       - Item: Leopard_Talon
         Rate: 2000
       - Item: Animal's_Skin
         Rate: 1000
       - Item: Oridecon_Stone
         Rate: 40
       - Item: Claw_
         Rate: 1
   - Id: 2073
     AegisName: TOUCAN
     Name: Esprito do Ar
     Level: 70
     Hp: 10555
     BaseExp: 1002
     JobExp: 1552
     Attack: 478
     Attack2: 513
     Defense: 12
     MagicDefense: 12
     Str: 54
     Agi: 14
     Vit: 40
     Int: 35
     Dex: 44
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Brute
     Element: Wind
     ElementLevel: 2
     WalkSpeed: 155
     AttackDelay: 960
     AttackMotion: 1440
+    ClientAttackMotion: 300
     DamageMotion: 960
     Ai: 03
     Drops:
       - Item: Talon
         Rate: 3000
       - Item: Cyfar
         Rate: 1000
       - Item: Blue_Herb
         Rate: 50
       - Item: Yellow_Herb
         Rate: 100
       - Item: Flower_Ring
         Rate: 200
   - Id: 2074
     AegisName: CURUPIRA
     Name: Curupira
     Level: 68
     Hp: 8669
     BaseExp: 1209
     JobExp: 850
     Attack: 409
     Attack2: 444
     Defense: 42
     MagicDefense: 12
     Str: 32
     Agi: 23
     Vit: 38
     Int: 20
     Dex: 45
     Luk: 10
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demihuman
     Element: Earth
     ElementLevel: 1
     WalkSpeed: 250
     AttackDelay: 528
     AttackMotion: 480
+    ClientAttackMotion: 192
     DamageMotion: 384
     Ai: 07
     Drops:
       - Item: Meat
         Rate: 3000
       - Item: Elunium_Stone
         Rate: 250
       - Item: Emveretarcon
         Rate: 10
       - Item: Tiger_Skin_Panties
         Rate: 500
       - Item: Mace_
         Rate: 100
+#  - Id: 2075
+#    AegisName: E_VADON_X
+#    Name: Vadon
+#    Level: 1
+#    Hp: 50
+#    Attack: 7
+#    Attack2: 10
+#    MagicDefense: 5
+#    Dex: 6
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Modes:
+#      NoRandomWalk: true
   - Id: 2076
     AegisName: S_WIND_GHOST
     Name: Shadow of Deception
     Level: 105
     Hp: 190800
     Attack: 462
     Attack2: 957
     Defense: 64
     MagicDefense: 51
     Str: 62
     Agi: 44
     Vit: 25
     Int: 105
     Dex: 85
     Luk: 20
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Wind
     ElementLevel: 3
     WalkSpeed: 150
     AttackDelay: 1056
     AttackMotion: 1056
+    ClientAttackMotion: 720
     DamageMotion: 336
     Ai: 21
     Modes:
       Detector: true
   - Id: 2077
     AegisName: S_SKOGUL
     Name: Shadow of Illusion
     Level: 105
     Hp: 244400
     Attack: 910
     Attack2: 1166
     Defense: 72
     MagicDefense: 15
     Str: 100
     Agi: 88
     Vit: 63
     Int: 99
     Dex: 95
     Luk: 37
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 190
     AttackDelay: 720
     AttackMotion: 384
+    ClientAttackMotion: 360
     DamageMotion: 480
     Ai: 20
     Modes:
       Detector: true
   - Id: 2078
     AegisName: S_SUCCUBUS
     Name: Shadow of Pleasure
     Level: 105
     Hp: 206660
     Attack: 880
     Attack2: 1204
     Defense: 76
     MagicDefense: 48
     Str: 100
     Agi: 70
     Vit: 45
     Int: 110
     Dex: 102
     Luk: 85
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Demon
     Element: Dark
     ElementLevel: 3
     WalkSpeed: 155
     AttackDelay: 1306
     AttackMotion: 1056
+    ClientAttackMotion: 576
     DamageMotion: 288
     Ai: 21
     Modes:
       Detector: true
+#  - Id: 2079
+#    AegisName: CRYSTAL_H
+#    Name: Crystal
+#    Level: 1
+#    Hp: 50
+#    Attack: 7
+#    Attack2: 10
+#    MagicDefense: 5
+#    Dex: 6
+#    Luk: 30
+#    AttackRange: 1
+#    SkillRange: 10
+#    ChaseRange: 12
+#    Size: Medium
+#    Race: Plant
+#    Element: Water
+#    ElementLevel: 1
+#    WalkSpeed: 400
+#    AttackDelay: 1872
+#    AttackMotion: 672
+#    DamageMotion: 480
+#    Modes:
+#      NoRandomWalk: true
   - Id: 2081
     AegisName: E_HYDRA
     Name: Hydra
     JapaneseName: Hydra
     Level: 14
     Hp: 660
     Attack: 22
     Attack2: 28
     Defense: 100
     MagicDefense: 100
     Agi: 14
     Vit: 14
     Dex: 40
     Luk: 2
     AttackRange: 7
     SkillRange: 10
     ChaseRange: 12
     Size: Small
     Race: Plant
     Element: Water
     ElementLevel: 2
     WalkSpeed: 1000
     AttackDelay: 800
     AttackMotion: 432
+    ClientAttackMotion: 336
     DamageMotion: 600
     Class: Guardian
   - Id: 2082
     AegisName: G_PIRANHA
     Name: Piranha
     Level: 75
     Hp: 15882
     Attack: 549
     Attack2: 590
     Defense: 7
     MagicDefense: 12
     Str: 69
     Agi: 45
     Vit: 30
     Int: 30
     Dex: 66
     Luk: 35
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Large
     Race: Fish
     Element: Water
     ElementLevel: 3
     WalkSpeed: 200
     AttackDelay: 768
     AttackMotion: 480
+    ClientAttackMotion: 288
     DamageMotion: 864
     Ai: 20
   - Id: 2158
     AegisName: S_HORNET
     Name: Zanzou
     Level: 1
     Hp: 60
     BaseExp: 27
     JobExp: 20
     Attack: 8
     Attack2: 9
     Defense: 2
     MagicDefense: 5
     Str: 6
     Dex: 6
     Luk: 5
     AttackRange: 1
     SkillRange: 10
     ChaseRange: 12
     Size: Medium
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
diff --git a/ajustar/mob_db.yml b/ajustar/mob_db.yml
index 32e1528699e048405410a0a06b0c1b50039f34da..473124aad6b157cf5d0c1a08c72275fc4f046ec5 100644
--- a/ajustar/mob_db.yml
+++ b/ajustar/mob_db.yml
@@ -38818,26 +41180,26 @@ Body:
     Race: Plant
     Element: Water
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
     DamageMotion: 480
     Ai: 02
   - Id: 2308
     AegisName: KO_ZANZOU
     Name: Zanzou
     Level: 1
     Hp: 50
     Attack: 1
     Attack2: 1
     AttackRange: 1
     SkillRange: 1
     ChaseRange: 1
     Size: Medium
     Race: Demihuman
     Element: Neutral
     ElementLevel: 1
     WalkSpeed: 400
     AttackDelay: 1872
     AttackMotion: 672
-    DamageMotion: 480
+    DamageMotion: 480
 
EOF
)