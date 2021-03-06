; Constants

gm_SEGALogo:			equ ptr_GM_Sega-GameModeArray	; $00
gm_TitleScreen:			equ ptr_GM_Title-GameModeArray	; $04
gm_DemoMode:			equ ptr_GM_Demo-GameModeArray	; $08
gm_PlayMode:			equ ptr_GM_Level-GameModeArray	; $0C
gm_SpecialStage:		equ ptr_GM_Special-GameModeArray; $10
gm_Continue                    equ $14

Obj_Id                         equ $00
Obj_Flags                      equ $01
Obj_Art_VRAM                   equ $02
Obj_Map                        equ $04
Obj_X                          equ $08
Obj_Sub_Y                      equ $0A
Obj_Y                          equ $0C
Obj_Speed                      equ $10
Obj_Speed_Y                    equ $12
Obj_Inertia                    equ $14
Obj_Height_2                   equ $16
Obj_Width_2                    equ $17
Obj_Priority                   equ $18
Obj_Width                      equ $19
Obj_Map_Id                     equ $1A
Obj_Ani_Frame                  equ $1B
Obj_Ani_Number                 equ $1C
Obj_Ani_Flag                   equ $1D
Obj_Ani_Time                   equ $1E
Obj_Ani_Time_2                 equ $1F
Obj_Col_Flags                  equ $20
Obj_Col_Prop                   equ $21
Obj_Status                     equ $22
Obj_Respaw_Ref                 equ $23
Obj_Routine                    equ $24
Obj_Routine_2                  equ $25
Obj_Angle                      equ $26
Obj_Flip_Angle                 equ $27
Obj_Subtype                    equ $28
Obj_Timer                      equ $2A
Obj_Control_Var_00             equ $2C
Obj_Control_Var_01             equ $2D
Obj_Control_Var_02             equ $2E
Obj_Control_Var_03             equ $2F
Obj_Control_Var_04             equ $30
Obj_Control_Var_05             equ $31
Obj_Control_Var_06             equ $32
Obj_Control_Var_07             equ $33  
Obj_Control_Var_08             equ $34
Obj_Control_Var_09             equ $35
Obj_Control_Var_0A             equ $36
Obj_Control_Var_0B             equ $37
Obj_Control_Var_0C             equ $38
Obj_Control_Var_0D             equ $39
Obj_Control_Var_0E             equ $3A
Obj_Control_Var_0F             equ $3B
Obj_Control_Var_10             equ $3C
Obj_Control_Var_11             equ $3D
Obj_Control_Var_12             equ $3E
Obj_Control_Var_13             equ $3F
Obj_Size                       equ $40

Obj_Player_Flip_Flag           equ $29
Obj_Player_Status              equ $2B
Obj_P_Flips_Remaining          equ $2C
Obj_Player_Flip_Speed          equ $2D
Obj_Player_Control             equ $2E
Obj_P_Invunerblt_Time          equ $30
Obj_P_Invcbility_Time          equ $32
Obj_P_Spd_Shoes_Time           equ $34
Obj_Player_Next_Tilt           equ $36
Obj_Player_Tilt                equ $37
Obj_Player_St_Convex           equ $38
Obj_Player_Spdsh_Flag          equ $39
Obj_Player_Spdsh_Cnt           equ $3A
Obj_Player_Jump                equ $3C
Obj_Player_Last                equ $3D
Obj_Player_Top_Solid           equ $3E
Obj_Player_LRB_Solid           equ $3F

Obj_Boss_Routine               equ $0A
Obj_Boss_Ani_Map               equ $0B
Obj_Ani_Boss_Cnt               equ $0F 
Obj_Ani_Boss_Frame             equ $15
Obj_Boss_Hit                   equ $21
Obj_Ani_Boss_Routine           equ $26
Obj_Boss_Hit_2                 equ $32

HTz_Robotnik_Pos_X             equ $10
HTz_Robotnik_Pos_Y             equ $12 

NGHz_Robotnik_Pos_X            equ $10
NGHz_Robotnik_Pos_Y            equ $12
NGHz_Hammer_Pos_X              equ $16
NGHz_Hammer_Pos_Y              equ $18
NGHz_Ship_Boost_Pos_X          equ $1C
NGHz_Ship_Boost_Pos_Y          equ $1E

DHz_Front_Drill_Pos_X          equ $10
DHz_Front_Drill_Pos_Y          equ $12
DHz_Ship_Boost_Pos_X           equ $16
DHz_Ship_Boost_Pos_Y           equ $18
DHz_Robotnik_Pos_X             equ $1C
DHz_Robotnik_Pos_Y             equ $1E
DHz_Back_Drill_Pos_X           equ $22
DHz_Back_Drill_Pos_Y           equ $24

CNz_R_Catcher_Pos_X            equ $10
CNz_R_Catcher_Pos_Y            equ $12
CNz_Boss_Ship_Pos_X            equ $16
CNz_Boss_Ship_Pos_Y            equ $18
CNz_Robotnik_Pos_X             equ $1C
CNz_Robotnik_Pos_Y             equ $1E
CNz_L_Catcher_Pos_X            equ $22
CNz_L_Catcher_Pos_Y            equ $24
CNz_L_Catcher_Pos_Y_1          equ $2E
CNz_R_Catcher_Fall_Y           equ $34
CNz_L_Catcher_Fall_Y           equ $3A

Obj_Page_Size_2P               equ $0C

Obj_Size                       equ $40

; Level Select Text
_0 = $00
_1 = $01
_2 = $02                
_A = $11
_B = $12
_C = $13
_D = $14                
_E = $15
_F = $16
_G = $17
_H = $18
_I = $19
_J = $1A
_K = $1B
_L = $1C
_M = $1D
_N = $1E
_O = $1F
_P = $20
_Q = $21
_R = $22
_S = $23
_T = $24
_U = $25
_V = $26
_W = $27
_X = $28
_Y = $0F
_Z = $10
__ = $FF 

; Z80

Z80_RAM_Start                  equ $A00000

; I/O

IO_Hardware_Version            equ $A10001 
IO_Joypad_Port_0               equ $A10003
IO_Port_0_Control              equ $A10008
IO_Port_1_Control              equ $A1000A
IO_Expansion_Control           equ $A1000C

Z80_Bus_Request                equ $A11100
Z80_Reset                      equ $A11200 

; VDP

VDP_Data_Port                  equ $C00000
VDP_Control_Port               equ $C00004

; RAM

M68K_RAM_Start                 equ $FFFF0000

SS_Ram_Layout_Address          equ M68K_RAM_Start+$4000

Level_Map_Buffer               equ M68K_RAM_Start+$8000
Level_Map_Bg_Buffer            equ Level_Map_Buffer+$0080

Blocks_Mem_Address             equ M68K_RAM_Start+$9000

Obj_Memory_Address             equ M68K_RAM_Start+$B000
Player_One                     equ Obj_Memory_Address
Player_One_Position_X          equ Player_One+Obj_X
Player_One_Position_Y          equ Player_One+Obj_Y
Player_Two                     equ Obj_Memory_Address+Obj_Size
Player_Two_Position_X          equ Player_Two+Obj_X
Player_Two_Position_Y          equ Player_Two+Obj_Y
Title_Card_RAM_Obj_Data        equ Obj_Memory_Address+Obj_Size+Obj_Size
HUD_RAM_Obj_Data               equ Obj_Memory_Address+$0380
Level_Results_RAM_Obj_Data     equ Obj_Memory_Address+$05C0

Obj_Start_Addr_2P              equ M68K_RAM_Start+$BE00
Obj_Page_01_2P_Addr            equ M68K_RAM_Start+$C100
Obj_Page_02_2P_Addr            equ M68K_RAM_Start+$C400
Obj_Page_03_2P_Addr            equ M68K_RAM_Start+$C700
Obj_Page_04_2P_Addr            equ M68K_RAM_Start+$CA00
Obj_Page_05_2P_Addr            equ M68K_RAM_Start+$CD00

Special_Stage_Memory_Address   equ M68K_RAM_Start+$D000

Primary_Colision_Data_Buffer   equ M68K_RAM_Start+$D000
Secundary_Colision_Data_Buffer equ M68K_RAM_Start+$D600

DMA_Buffer_List                equ M68K_RAM_Start+$DC00
DMA_Buffer_List_End            equ M68K_RAM_Start+$DCFC

Scroll_Buffer_Data             equ M68K_RAM_Start+$E000
Camera_X                       equ M68K_RAM_Start+$EE00 
Camera_Y                       equ M68K_RAM_Start+$EE04 
Camera_X_x2                    equ M68K_RAM_Start+$EE08 
Camera_Y_x4                    equ M68K_RAM_Start+$EE0C 
Camera_Y_x4_Mod_10             equ M68K_RAM_Start+$EE14 
Camera_X_x8                    equ M68K_RAM_Start+$EE10 
Camera_X_x4                    equ M68K_RAM_Start+$EE18
Camera_Y_x4_Mod_10_2           equ M68K_RAM_Start+$EE1C
Camera_X_2                     equ M68K_RAM_Start+$EE20 
Camera_Y_2                     equ M68K_RAM_Start+$EE24
Scroll_Flag_Array              equ M68K_RAM_Start+$EE50
Scroll_Flag_Array_2            equ M68K_RAM_Start+$EEA0
Horizontal_Scrolling           equ M68K_RAM_Start+$EEB0
Vertical_Scrolling             equ M68K_RAM_Start+$EEB2
Horizontal_Scrolling_Sub       equ M68K_RAM_Start+$EEB4
Vertical_Scrolling_Sub         equ M68K_RAM_Start+$EEB6
Sonic_Level_Limits_Min_X       equ M68K_RAM_Start+$EEC8
Sonic_Level_Limits_Max_X       equ M68K_RAM_Start+$EECA
Sonic_Level_Limits_Min_Y       equ M68K_RAM_Start+$EECC
Sonic_Level_Limits_Max_Y       equ M68K_RAM_Start+$EECE
Level_Scroll_Flag              equ M68K_RAM_Start+$EEDC
Vertical_Scroll_Flag           equ M68K_RAM_Start+$EEDE
Dyn_Resize_Routine             equ M68K_RAM_Start+$EEDF
Miles_Level_Limits_Min_X       equ M68K_RAM_Start+$EEF8
Miles_Level_Limits_Max_X       equ M68K_RAM_Start+$EEFA
Miles_Level_Limits_Max_Y       equ M68K_RAM_Start+$EEFE
Game_Mode                      equ M68K_RAM_Start+$F600
Control_Ports_Buffer_Data      equ M68K_RAM_Start+$F604
Timer_Count_Down               equ M68K_RAM_Start+$F614 
Horizontal_Interrupt_Count     equ M68K_RAM_Start+$F624
Scanlines_Count                equ M68K_RAM_Start+$F625
VBlank_Index                   equ M68K_RAM_Start+$F62A
Pause_Status                   equ M68K_RAM_Start+$F63A
Water_Level                    equ M68K_RAM_Start+$F646
Water_Level_Change             equ M68K_RAM_Start+$F648
Water_Level_New                equ M68K_RAM_Start+$F64A
PLC_Buffer                     equ M68K_RAM_Start+$F680
Refresh_Level_Layout           equ M68K_RAM_Start+$F720
Water_Level_Flag               equ M68K_RAM_Start+$F730
Boss_Animate_Buffer            equ M68K_RAM_Start+$F740
Boss_Move_Buffer               equ M68K_RAM_Start+$F750
Sonic_Max_Speed                equ M68K_RAM_Start+$F760
Sonic_Acceleration             equ M68K_RAM_Start+$F762
Sonic_Deceleration             equ M68K_RAM_Start+$F764
Current_Colision_Pointer       equ M68K_RAM_Start+$F796
Boss_Defeated_Flag             equ M68K_RAM_Start+$F7A7
Boss_Flag                      equ M68K_RAM_Start+$F7AA
Player_Status_Flag             equ M68K_RAM_Start+$F7CA
Palette_Buffer                 equ M68K_RAM_Start+$FB00
Palette_Underwater_Buffer      equ M68K_RAM_Start+$FB80
Exception_Index                equ M68K_RAM_Start+$FC44
StackPointer                   equ M68K_RAM_Start+$FE00
Debug_Mode_Flag_Index          equ M68K_RAM_Start+$FE08
Level_Id                       equ M68K_RAM_Start+$FE10
Act_Id                         equ M68K_RAM_Start+$FE11
Life_Count                     equ M68K_RAM_Start+$FE12
Special_Stage_Id               equ M68K_RAM_Start+$FE16
Super_Sonic_Flag               equ M68K_RAM_Start+$FE19
Ring_Life_Flag                 equ M68K_RAM_Start+$FE1B
HUD_Life_Refresh_Flag          equ M68K_RAM_Start+$FE1C
HUD_Rings_Refresh_Flag         equ M68K_RAM_Start+$FE1D
HUD_Timer_Refresh_Flag         equ M68K_RAM_Start+$FE1E
HUD_Score_Refresh_Flag         equ M68K_RAM_Start+$FE1F
Ring_Count                     equ M68K_RAM_Start+$FE20
Time_Count                     equ M68K_RAM_Start+$FE22
Time_Count_Minutes             equ M68K_RAM_Start+$FE23
Time_Count_Seconds             equ M68K_RAM_Start+$FE24
Time_Count_CentiSeconds        equ M68K_RAM_Start+$FE25
Score_Count                    equ M68K_RAM_Start+$FE26
Shield_Flag                    equ M68K_RAM_Start+$FE2C
Invincibility_Flag             equ M68K_RAM_Start+$FE2D
Hi_Speed_Flag                  equ M68K_RAM_Start+$FE2E
Saved_Level_Flag               equ M68K_RAM_Start+$FE30
Emerald_Count                  equ M68K_RAM_Start+$FE57
Emerald_Collected_Flag_List    equ M68K_RAM_Start+$FE58
Object_Frame_Buffer            equ M68K_RAM_Start+$FEA0
Miles_Max_Speed                equ M68K_RAM_Start+$FEC0
Miles_Acceleration             equ M68K_RAM_Start+$FEC2
Miles_Deceleration             equ M68K_RAM_Start+$FEC4
Two_Player_Flag                equ M68K_RAM_Start+$FFD8
Sound_Buffer_Id                equ M68K_RAM_Start+$FFE0
Auto_Control_Player_Flag       equ M68K_RAM_Start+$FFF0
Hardware_Id                    equ M68K_RAM_Start+$FFF8 
Debug_Mode_Active_Flag         equ M68K_RAM_Start+$FFFA 
Init_Flag                      equ M68K_RAM_Start+$FFFC

; ---------------------------------------------------------------------------
; VRAM and tile art base addresses.
; VRAM Reserved regions.
VRAM_Plane_A_Name_Table                  = $C000	; Extends until $CFFF
VRAM_Plane_B_Name_Table                  = $E000	; Extends until $EFFF
VRAM_Plane_A_Name_Table_2P               = $A000	; Extends until $AFFF
VRAM_Plane_B_Name_Table_2P               = $8000	; Extends until $8FFF
VRAM_Plane_Table_Size                    = $1000	; 64 cells x 32 cells x 2 bytes per cell
VRAM_Sprite_Attribute_Table              = $F800	; Extends until $FA7F
VRAM_Sprite_Attribute_Table_Size         = $0280	; 640 bytes
VRAM_Horiz_Scroll_Table                  = $FC00	; Extends until $FF7F
VRAM_Horiz_Scroll_Table_Size             = $0380	; 224 lines * 2 bytes per entry * 2 PNTs

; VDP
Color_RAM_Address equ $C0000000
VRAM_ADDR_CMD:  equ $40000000
VSRAM_ADDR_CMD: equ $40000010

VDPREG_MODE1:     equ $8000  ; Mode register #1
VDPREG_MODE2:     equ $8100  ; Mode register #2
VDPREG_MODE3:     equ $8B00  ; Mode register #3
VDPREG_MODE4:     equ $8C00  ; Mode register #4

VDPREG_PLANEA:    equ $8200  ; Plane A table address
VDPREG_PLANEB:    equ $8400  ; Plane B table address
VDPREG_SPRITE:    equ $8500  ; Sprite table address
VDPREG_WINDOW:    equ $8300  ; Window table address
VDPREG_HSCROLL:   equ $8D00  ; HScroll table address

VDPREG_SIZE:      equ $9000  ; Plane A and B size
VDPREG_WINX:      equ $9100  ; Window X split position
VDPREG_WINY:      equ $9200  ; Window Y split position
VDPREG_INCR:      equ $8F00  ; Autoincrement
VDPREG_BGCOL:     equ $8700  ; Background color
VDPREG_HRATE:     equ $8A00  ; HBlank interrupt rate

VDPREG_DMALEN_L:  equ $9300  ; DMA length (low)
VDPREG_DMALEN_H:  equ $9400  ; DMA length (high)
VDPREG_DMASRC_L:  equ $9500  ; DMA source (low)
VDPREG_DMASRC_M:  equ $9600  ; DMA source (mid)
VDPREG_DMASRC_H:  equ $9700  ; DMA source (high)

GFXMODE_256x224:      equ %00000000
GFXMODE_320x224:      equ %10000001
GFXMODE_256x448:      equ %00000110
GFXMODE_320x448:      equ %10000111
GFXMODE_256x224_SH:   equ %00001000
GFXMODE_320x224_SH:   equ %10001001
GFXMODE_256x448_SH:   equ %00001110
GFXMODE_320x448_SH:   equ %10001111