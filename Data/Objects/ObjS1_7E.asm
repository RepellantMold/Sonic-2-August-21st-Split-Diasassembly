;===============================================================================
; Objeto 0x7E - Tela com a pontuação e bonificação do Estágio Especial
; ->>>
;===============================================================================
; loc_BF3E:
                moveq   #0, D0
                move.b  Obj_Routine(A0), D0                              ; $0024
                move.w  loc_BF4C(PC, D0), D1
                jmp     loc_BF4C(PC, D1) 
;-------------------------------------------------------------------------------
loc_BF4C:
                dc.w    loc_BF62-loc_BF4C
                dc.w    loc_BFDA-loc_BF4C
                dc.w    loc_C012-loc_BF4C
                dc.w    loc_C020-loc_BF4C
                dc.w    loc_C012-loc_BF4C
                dc.w    loc_C07A-loc_BF4C
                dc.w    loc_C012-loc_BF4C
                dc.w    loc_C084-loc_BF4C
                dc.w    loc_C012-loc_BF4C
                dc.w    loc_C07A-loc_BF4C
                dc.w    loc_C0A8-loc_BF4C  
;-------------------------------------------------------------------------------
loc_BF62:
                tst.l   (PLC_Buffer).w                               ; $FFFFF680
                beq.s   loc_BF6A
                rts
loc_BF6A:
                move.l  A0, A1
                lea     (Special_Stage_Results_Screen_Pos), A2 ; loc_C0BC
                moveq   #3, D1
                cmpi.w  #$32, (Ring_Count).w                       ; $FFFFFE20
                bcs.s   loc_BF7E
                addq.w  #1, D1
loc_BF7E:
                move.b  Obj_Id(A0), Obj_Id(A1)                    ; $0000, $0000
                move.w  (A2)+, Obj_X(A1)                                 ; $0008
                move.w  (A2)+, Obj_Control_Var_04(A1)                    ; $0030
                move.w  (A2)+, Obj_Sub_Y(A1)                             ; $000A
                move.b  (A2)+, Obj_Routine(A1)                           ; $0024
                move.b  (A2)+, Obj_Map_Id(A1)                            ; $001A
                move.l  #Special_Stage_Results_Mappings, Obj_Map(A1) ; loc_C5AA, $0004
                move.w  #$8580, Obj_Art_VRAM(A1)                         ; $0002
                bsr     ModifySpriteAttr_2P_A1                 ; loc_DBDA
                move.b  #0, Obj_Flags(A1)                              ; $0001
                lea     Obj_Size(A1), A1                                 ; $0040
                dbra    D1, loc_BF7E
                moveq   #7, D0
                move.b  (Emerald_Count).w, D1                        ; $FFFFFE57
                beq.s   loc_BFD6
                moveq   #0, D0
                cmpi.b  #6, D1
                bne.s   loc_BFD6
                moveq   #8, D0
                move.w  #$18, Obj_X(A0)                                ; $0008
                move.w  #$0118, Obj_Control_Var_04(A0)                   ; $0030
loc_BFD6:
                move.b  D0, Obj_Map_Id(A0)                               ; $001A  
;-------------------------------------------------------------------------------
loc_BFDA:
                moveq   #$10, D1
                move.w  Obj_Control_Var_04(A0), D0                       ; $0030
                cmp.w   Obj_X(A0), D0                                    ; $0008
                beq.s   loc_C000
                bge.s   loc_BFEA
                neg.w   D1
loc_BFEA:
                add.w   D1, Obj_X(A0)                                    ; $0008
loc_BFEE:
                move.w  Obj_X(A0), D0                                    ; $0008
                bmi.s   loc_BFFE
                cmpi.w  #$200, D0
                bcc.s   loc_BFFE
                bra     DisplaySprite                          ; loc_D322
loc_BFFE:
                rts
loc_C000:
                cmpi.b  #2, Obj_Map_Id(A0)                             ; $001A
                bne.s   loc_BFEE
                addq.b  #2, Obj_Routine(A0)                            ; $0024
                move.w  #$B4, Obj_Ani_Time(A0)                         ; $001E
;-------------------------------------------------------------------------------
loc_C012:
                subq.w  #1, Obj_Ani_Time(A0)                           ; $001E
                bne.s   loc_C01C
                addq.b  #2, Obj_Routine(A0)                            ; $0024
loc_C01C:
                bra     DisplaySprite                          ; loc_D322   
;-------------------------------------------------------------------------------
loc_C020:
                bsr     DisplaySprite                          ; loc_D322
                move.b  #1, ($FFFFF7D6).w
                tst.w   ($FFFFF7D4).w
                beq.s   loc_C052
                subi.w  #$A, ($FFFFF7D4).w
                moveq   #$A, D0
                jsr     (AddPoints)                            ; Offset_0x02D2D4
                move.b  ($FFFFFE0F).w, D0
                andi.b  #3, D0
                bne.s   loc_C078
                move.w  #$CD, D0
                jmp     (Play_Sfx)                             ; loc_1512
loc_C052:
                move.w  #$C5, D0
                jsr     (Play_Sfx)                             ; loc_1512
                addq.b  #2, Obj_Routine(A0)                            ; $0024
                move.w  #$B4, Obj_Ani_Time(A0)                         ; $001E
                cmpi.w  #$32, (Ring_Count).w                       ; $FFFFFE20
                bcs.s   loc_C078
                move.w  #$3C, Obj_Ani_Time(A0)                         ; $001E
                addq.b  #4, Obj_Routine(A0)                            ; $0024
loc_C078:
                rts       
;-------------------------------------------------------------------------------
loc_C07A:
                move.w  #1, ($FFFFFE02).w
                bra     DisplaySprite                          ; loc_D322   
;-------------------------------------------------------------------------------
loc_C084:
                move.b  #$4, ($FFFFB6DA).w
                move.b  #$14, ($FFFFB6E4).w
                move.w  #$00BF, D0
                jsr     (Play_Sfx)                             ; loc_1512
                addq.b  #2, Obj_Routine(A0)                            ; $0024
                move.w  #$168, Obj_Ani_Time(A0)                         ; $001E
                bra     DisplaySprite                          ; loc_D322  
;-------------------------------------------------------------------------------
loc_C0A8:
                move.b  ($FFFFFE0F).w, D0
                andi.b  #$F, D0
                bne.s   loc_C0B8
                bchg    #0, Obj_Map_Id(A0)                              ; $001A
loc_C0B8:
                bra     DisplaySprite                          ; loc_D322 
;-------------------------------------------------------------------------------
Special_Stage_Results_Screen_Pos:                              ; loc_C0BC
                dc.w    $0020, $0120, $00C4, $0200
                dc.w    $0320, $0120, $0118, $0201
                dc.w    $0360, $0120, $0128, $0202
                dc.w    $01EC, $011C, $00C4, $0203
                dc.w    $03A0, $0120, $0138, $0206                   
;===============================================================================
; Objeto 0x7E - Tela com a pontuação e bonificação do Estágio Especial
; <<<-
;===============================================================================