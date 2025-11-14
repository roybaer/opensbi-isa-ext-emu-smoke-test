_start:
        auipc   sp, 0x1
        addi    sp, sp, 1024

        # test Zba extension
        lla     a0, str_zba
        call    print_str16

        # add.uw
        li      t0, 0xffffffff
        li      t1, 0x80000000
        add.uw  a0, t0, t1
        li      t2, 0x17fffffff
        sub     a0, a0, t2
        call    print_success
        # sh1add
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh1add  a0, t0, t1
        li      t2, 0x280000002
        sub     a0, a0, t2
        call    print_success
        # sh1add.uw
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh1add.uw a0, t0, t1
        li      t2, 0x80000002
        sub     a0, a0, t2
        call    print_success
        # sh2add
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh2add  a0, t0, t1
        li      t2, 0x480000004
        sub     a0, a0, t2
        call    print_success
        # sh2add.uw
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh2add.uw a0, t0, t1
        li      t2, 0x80000004
        sub     a0, a0, t2
        call    print_success
        # sh3add
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh3add  a0, t0, t1
        li      t2, 0x880000008
        sub     a0, a0, t2
        call    print_success
        # sh3add.uw
        li      t0, 0x100000001
        li      t1, 0x80000000
        sh3add.uw a0, t0, t1
        li      t2, 0x80000008
        sub     a0, a0, t2
        call    print_success
        # slli.uw
        li      t0, 0x100000001
        slli.uw a0, t0, 4
        li      t1, 0x10
        sub     a0, a0, t1
        call    print_success

        # test Zbb extension
        lla     a0, str_zbb
        call    print_str16

        # andn
        li      t0, 0xf0f0f0f0f0f0f0f0
        li      t1, 0x1010101010101010
        andn    a0, t0, t1
        li      t2, 0xe0e0e0e0e0e0e0e0
        sub     a0, a0, t2
        call    print_success
        # orn
        li      t0, 0xf0f0f0f0f0f0f0f0
        li      t1, 0x0101010101010101
        orn     a0, t0, t1
        li      t2, 0xfefefefefefefefe
        sub     a0, a0, t2
        call    print_success
        # xnor
        li      t0, 0xf0f0f0f0f0f0f0f0
        li      t1, 0x1111111111111111
        xnor    a0, t0, t1
        li      t2, 0x1e1e1e1e1e1e1e1e
        sub     a0, a0, t2
        call    print_success
        # clz
        li      t0, 0x0000020000000001
        clz     a0, t0
        li      t2, 22
        sub     a0, a0, t2
        call    print_success
        # clzw
        li      t0, 0x0000020000000001
        clzw    a0, t0
        li      t2, 31
        sub     a0, a0, t2
        call    print_success
        # ctz
        li      t0, 0x0000020000000000
        ctz     a0, t0
        li      t2, 41
        sub     a0, a0, t2
        call    print_success
        # ctzw
        li      t0, 0x0000020000000000
        ctzw    a0, t0
        li      t2, 32
        sub     a0, a0, t2
        call    print_success
        # cpop
        li      t0, 0x0000020000000001
        cpop    a0, t0
        li      t2, 2
        sub     a0, a0, t2
        call    print_success
        # cpopw
        li      t0, 0x0000020000000001
        cpopw   a0, t0
        li      t2, 1
        sub     a0, a0, t2
        call    print_success
        # max
        li      t0, 0x0000000000000001
        li      t1, 0xffffffffffffffff
        max     a0, t0, t1
        li      t2, 0x0000000000000001
        sub     a0, a0, t2
        call    print_success
        # maxu
        li      t0, 0x0000000000000001
        li      t1, 0xffffffffffffffff
        maxu    a0, t0, t1
        li      t2, 0xffffffffffffffff
        sub     a0, a0, t2
        call    print_success
        # min
        li      t0, 0x0000000000000001
        li      t1, 0xffffffffffffffff
        min     a0, t0, t1
        li      t2, 0xffffffffffffffff
        sub     a0, a0, t2
        call    print_success
        # minu
        li      t0, 0x0000000000000001
        li      t1, 0xffffffffffffffff
        minu    a0, t0, t1
        li      t2, 0x0000000000000001
        sub     a0, a0, t2
        call    print_success
        # sext.b
        li      t0, 0x8181818181818181
        sext.b  a0, t0
        li      t2, 0xffffffffffffff81
        sub     a0, a0, t2
        call    print_success
        # sext.h
        li      t0, 0x8181818181818181
        sext.h  a0, t0
        li      t2, 0xffffffffffff8181
        sub     a0, a0, t2
        call    print_success
        # zext.h
        li      t0, 0x8181818181818181
        zext.h  a0, t0
        li      t2, 0x0000000000008181
        sub     a0, a0, t2
        call    print_success
        # rol
        li      t0, 0x1122334455667788
        li      t1, 4
        rol     a0, t0, t1
        li      t2, 0x1223344556677881
        sub     a0, a0, t2
        call    print_success
        # rolw
        li      t0, 0x1122334455667788
        li      t1, 4
        rolw    a0, t0, t1
        li      t2, 0x0000000056677885
        sub     a0, a0, t2
        call    print_success
        # ror
        li      t0, 0x1122334455667788
        li      t1, 4
        ror     a0, t0, t1
        li      t2, 0x8112233445566778
        sub     a0, a0, t2
        call    print_success
        # rori
        li      t0, 0x1122334455667788
        rori    a0, t0, 4
        li      t2, 0x8112233445566778
        sub     a0, a0, t2
        call    print_success
        # roriw
        li      t0, 0x1122334455667788
        roriw   a0, t0, 4
        li      t2, 0xffffffff85566778
        sub     a0, a0, t2
        call    print_success
        # rorw
        li      t0, 0x1122334455667788
        li      t1, 4
        rorw    a0, t0, t1
        li      t2, 0xffffffff85566778
        sub     a0, a0, t2
        call    print_success
        # orc.b
        li      t0, 0x0000020000000001
        orc.b   a0, t0
        li      t2, 0x0000ff00000000ff
        sub     a0, a0, t2
        call    print_success
        # rev8
        li      t0, 0x0102030405060708
        rev8    a0, t0
        li      t2, 0x0807060504030201
        sub     a0, a0, t2
        call    print_success

        # test Zbs extension
        lla     a0, str_zbs
        call    print_str16

        # bclr
        li      t0, 0xffffffff00000000
        li      t2, 0
        bclr    t0, t0, t2
        li      t2, 32
        bclr    t0, t0, t2
        li      t2, 63
        bclr    t0, t0, t2
        li      t1, 0x7ffffffe00000000
        call    print_success
        # bclri
        li      t0, 0xffffffff00000000
        bclri   t0, t0, 0
        bclri   t0, t0, 32
        bclri   t0, t0, 63
        li      t1, 0x7ffffffe00000000
        call    print_success
        # bext
        li      t0, 0xffffffff00000000
        li      t1, 0
        bext    t3, t0, t1
        li      t1, 32
        bext    t2, t0, t1
        slli    t3, t3, 1
        or      t3, t3, t2
        li      t1, 0x01
        sub     a0, t3, t1
        call    print_success
        # bexti
        li      t0, 0xffffffff00000000
        bexti   t3, t0, 0
        bexti   t2, t0, 32
        slli    t3, t3, 1
        or      t3, t3, t2
        li      t1, 0x01
        sub     a0, t3, t1
        call    print_success
        # binv
        li      t0, 0xffffffff00000000
        li      t2, 0
        binv    t0, t0, t2
        li      t2, 32
        binv    t0, t0, t2
        li      t2, 63
        binv    t0, t0, t2
        li      t1, 0x7ffffffe00000001
        call    print_success
        # binvi
        li      t0, 0xffffffff00000000
        binvi   t0, t0, 0
        binvi   t0, t0, 32
        binvi   t0, t0, 63
        li      t1, 0x7ffffffe00000001
        call    print_success
        # bseti
        bseti   t0, zero, 0
        bseti   t0, t0, 5
        bseti   t0, t0, 63
        li      t1, 0x8000000000000021
        sub     a0, t0, t1
        call    print_success
        # bset
        li      t2, 0
        bset    t0, zero, t2
        li      t2, 5
        bset    t0, t0, t2
        li      t2, 63
        bset    t0, t0, t2
        li      t1, 0x8000000000000021
        sub     a0, t0, t1
        call    print_success

        # test Zfhmin
        lla     a0, str_zfhmin
        call    print_str16

        # flh
        j       .after_var_for_zfhmin
        .var_for_zfhmin:
        .half   0x3400
        .after_var_for_zfhmin:
        lla     t0, .var_for_zfhmin
        flh     f0, 0(t0)
        fmv.x.w a0, f0
        li      t1, 0xffffffffffff3400
        sub     a0, a0, t1
        call    print_success
        # fsh
        lla     t0, .var_for_zfhmin
        li      t1, 0xffff3a00
        fmv.w.x f0, t1
        fsh     f0, 0(t0)
        lhu     a0, 0(t0)
        li      t1, 0x3a00
        sub     a0, a0, t1
        call    print_success
        # fmv.x.h
        li      t0, 0xffffffffffff3400
        fmv.d.x f0, t0
        fmv.x.h a0, f0
        li      t0, 0x0000000000003400
        sub     a0, a0, t0
        call    print_success
        # fmv.h.x
        li      t0, 0xdeadbeefcafe3400
        fmv.h.x f0, t0
        fmv.x.d a0, f0
        li      t0, 0xffffffffffff3400
        sub     a0, a0, t0
        call    print_success
        # fcvt.s.h
        li      t0, 0xffff3a00
        fmv.w.x f0, t0
        fcvt.s.h f1, f0
        fmv.x.w a0, f1
        li      t0, 0x3f400000
        sub     a0, a0, t0
        call    print_success
        # fcvt.h.s
        li      t0, 0x3f400000
        fmv.w.x f0, t0
        fcvt.h.s f1, f0, rtz
        fmv.x.w a0, f1
        li      t0, 0xffffffffffff3a00
        sub     a0, a0, t0
        call    print_success
        # fcvt.d.h
        li      t0, 0xffff3a00
        fmv.w.x f0, t0
        fcvt.d.h f1, f0
        fmv.x.d a0, f1
        li      t0, 0x3fe8000000000000
        sub     a0, a0, t0
        call    print_success
        # fcvt.h.d
        li      t0, 0x3fe8000000000000
        fmv.d.x f0, t0
        fcvt.h.d f1, f0, rtz
        fmv.x.w a0, f1
        li      t0, 0xffffffffffff3a00
        sub     a0, a0, t0
        call    print_success

        # test Zicond, RVA23
        lla     a0, str_zicond
        call    print_str16

        # czero.eqz rd, rs1, rs2
        li      t0, 42
        li      t1, 0
        czero.eqz a0, t0, t1
        li      t2, 0
        sub     a0, a0, t2
        call    print_success
        # czero.nez rd, rs1, rs2
        li      t0, 42
        li      t1, 0
        czero.nez a0, t0, t1
        li      t2, 42
        sub     a0, a0, t2
        call    print_success

        # test Zimop, RVA23
        lla     a0, str_zimop
        call    print_str16

        # mop.r.[0-31] rd, rs
        mop.r.0 a0, zero
        call    print_success
        # mop.rr.[0-7] rd, rs1, rs2
        mop.rr.0 a0, zero, zero
        call    print_success

        # test Zcmop, RVA23
        lla     a0, str_zcmop
        call    print_str16

        # c.mop.[1,3,5,7,9,11,13,15]
        c.mop.1
        li      a0, 0
        call    print_success

        # test Zcb, RVA23
        lla     a0, str_zcb
        call    print_str16

        # c.lbu rd', uimm(rs1')
        j       .after_var_for_zcb
        .var_for_zcb:
        .byte   1, 2, 3, 4
        .after_var_for_zcb:
        lla     s0, .var_for_zcb
        c.lbu   a0, 2(s0)
        addi    a0, a0, -3
        call    print_success
        # c.lhu rd', uimm(rs1')
        lla     s0, .var_for_zcb
        addi    s0, s0, 1
        c.lhu   a0, 0(s0)
        addi    a0, a0, -0x302
        call    print_success
        # c.lh rd', uimm(rs1')
        lla     s0, .var_for_zcb
        c.lh    a0, 0(s0)
        addi    a0, a0, -0x201
        call    print_success
        # c.sb rs2', uimm(rs1')
        lla     s0, .var_for_zcb
        li      a0, 1
        c.sb    a0, 1(s0)
        lbu     a0, 1(s0)
        addi    a0, a0, -1
        call    print_success
        # c.sh rs2', uimm(rs1')
        lla     s0, .var_for_zcb
        li      a0, 1
        c.sh    a0, 2(s0)
        lhu     a0, 2(s0)
        addi    a0, a0, -1
        call    print_success
        # c.zext.b rsd'
        li      a0, 0x1122334455667788
        c.zext.b a0
        li      t2, 0x0000000000000088
        sub     a0, a0, t2
        call    print_success
        # c.sext.b rsd'
        li      a0, 0x1122334455667788
        c.sext.b a0
        li      t2, 0xffffffffffffff88
        sub     a0, a0, t2
        call    print_success
        # c.zext.h rsd'
        li      a0, 0xf0f0f0f0f0f0f0f0
        c.zext.h a0
        li      t2, 0x000000000000f0f0
        sub     a0, a0, t2
        call    print_success
        # c.sext.h rsd'
        li      a0, 0xf0f0f0f0f0f0f0f0
        c.zext.h a0
        li      t2, 0x000000000000f0f0
        sub     a0, a0, t2
        call    print_success
        # c.zext.w rsd'
        li      a0, 0xf0f0f0f0f0f0f0f0
        c.zext.w a0
        li      t2, 0x00000000f0f0f0f0
        sub     a0, a0, t2
        call    print_success
        # c.not rsd'
        li      a0, 0xffffffffffffffff
        c.not   a0
        call    print_success
        # c.mul rsd', rs2'
        li      s0, 300
        li      s1, 500
        c.mul   s0, s1
        li      a0, 150000
        sub     a0, a0, s0
        call    print_success

        # test Zfa, RVA23
        lla     a0, str_zfa
        call    print_str16

        # fli.s imm
        fli.s   f0, 0.25
        fmv.x.d a0, f0
        li      t2, 0xffffffff3e800000
        sub     a0, a0, t2
        call    print_success
        # fli.d imm
        fli.d   f0, 0.25
        fmv.x.d a0, f0
        li      t2, 0x3fd0000000000000
        sub     a0, a0, t2
        call    print_success
        # fli.h imm
        fli.h   f0, 0.25
        fmv.x.d a0, f0
        li      t2, 0xffffffffffff3400
        sub     a0, a0, t2
        call    print_success
        # fminm.s
        li      t0, 0xffffffff3e800000
        fmv.s.x f0, t0
        fmv.s.x f1, zero
        fminm.s f2, f0, f1
        fmv.x.d a0, f2
        li      t0, 0xffffffff00000000
        sub     a0, a0, t0
        call    print_success
        # fmaxm.s
        li      t0, 0xffffffff3e800000
        fmv.s.x f0, t0
        fmv.s.x f1, zero
        fmaxm.s f2, f0, f1
        fmv.x.d a0, f2
        sub     a0, a0, t0
        call    print_success
        # fminm.d
        li      t0, 0xbfd0000000000000
        fmv.d.x f0, t0
        fmv.d.x f1, zero
        fminm.d f2, f0, f1
        fmv.x.d a0, f2
        sub     a0, a0, t0
        call    print_success
        # fmaxm.d
        li      t0, 0xbfd0000000000000
        fmv.d.x f0, t0
        fmv.d.x f1, zero
        fmaxm.d f2, f0, f1
        fmv.x.d a0, f2
        sub     a0, a0, zero
        call    print_success
        # fminm.h
        li      t0, 0xffffffffffff3400
        li      t1, 0xffffffffffff3500
        fmv.d.x f0, t0
        fmv.d.x f1, t1
        fminm.h f2, f0, f1
        fmv.x.d a0, f2
        sub     a0, a0, t0
        call    print_success
        # fmaxm.h
        li      t0, 0xffffffffffffb400
        li      t1, 0xffffffffffffb500
        fmv.d.x f0, t0
        fmv.d.x f1, t1
        fmaxm.h f2, f0, f1
        fmv.x.d a0, f2
        sub     a0, a0, t0
        call    print_success
        # fround.s
        li      t0, 0xffffffff418c0000
        fmv.d.x f0, t0
        fround.s f1, f0, rmm
        fmv.x.d a0, f1
        li      t0, 0xffffffff41900000
        sub     a0, a0, t0
        call    print_success
        # froundnx.s
        li      t0, 0xffffffffc18c0000
        fmv.d.x f0, t0
        froundnx.s f1, f0, rup
        fmv.x.d a0, f1
        li      t0, 0xffffffffc1880000
        sub     a0, a0, t0
        call    print_success
        # fround.d
        li      t0, 0x0000000000000001
        fmv.d.x f0, t0
        fround.d f1, f0, rmm
        fmv.x.d a0, f1
        li      t0, 0x0000000000000000
        sub     a0, a0, t0
        call    print_success
        # froundnx.d
        li      t0, 0x8000000000000001
        fmv.d.x f0, t0
        froundnx.d f1, f0, rtz
        fmv.x.d a0, f1
        li      t0, 0x8000000000000000
        sub     a0, a0, t0
        call    print_success
        # fround.h
        li      t0, 0xffffffffffff3f00
        fmv.d.x f0, t0
        fround.h f1, f0, rmm
        fmv.x.d a0, f1
        li      t0, 0xffffffffffff4000
        sub     a0, a0, t0
        call    print_success
        # froundnx.h
        li      t0, 0xffffffffffffbd00
        fmv.d.x f0, t0
        fround.h f1, f0, rmm
        fmv.x.d a0, f1
        li      t0, 0xffffffffffffbc00
        sub     a0, a0, t0
        call    print_success
        # fcvtmod.w.d
        li      t0, 0x4132d687e3d70a3d
        fmv.d.x f0, t0
        fcvtmod.w.d a0, f0, rtz
        li      t0, 1234567
        sub     a0, a0, t0
        call    print_success
        # fleq.s
        li      t0, 0xffffffff3e800000
        fmv.d.x f0, t0
        fmv.d.x f1, zero
        fleq.s  a0, f0, f1
        sub     a0, a0, zero
        call    print_success
        # fltq.s
        li      t0, 0xffffffff3e800000
        fmv.d.x f0, t0
        fmv.s.x f1, zero
        fltq.s  a0, f1, f0
        addi    a0, a0, -1
        call    print_success
        # fleq.d
        li      t0, 0x7ff8000000000000
        fmv.d.x f0, t0
        li      t1, 0x7ffc000000000000
        fmv.d.x f1, t1
        fleq.d  a0, f0, f1
        sub     a0, a0, zero
        call    print_success
        # fltq.d
        li      t0, 0x7ff8000000000000
        fmv.d.x f0, t0
        li      t1, 0x7ffc000000000000
        fmv.d.x f1, t1
        fltq.d  a0, f0, f1
        sub     a0, a0, zero
        call    print_success
        # fleq.h
        li      t0, 0xffffffffffffb400
        li      t1, 0xffffffffffffb500
        fmv.d.x f0, t0
        fmv.d.x f1, t1
        fleq.h  a0, f1, f0
        addi    a0, a0, -1
        call    print_success
        # fltq.h
        li      t0, 0xffffffffffffb400
        li      t1, 0xffffffffffffb500
        fmv.d.x f0, t0
        fmv.d.x f1, t1
        fltq.h  a0, f0, f1
        sub     a0, a0, zero
        call    print_success

        # test Zbc, RVA23 expansion option
        lla     a0, str_zbc
        call    print_str16

        # clmul
        li      t0, 0x1122334455667788
        li      t1, 0xc
        clmul   a0, t0, t1
        li      t2, 0xcd995733feaa6260
        sub     a0, a0, t2
        call    print_success
        # clmulh
        li      t0, 0x1122334455667788
        li      t1, 0x0101000000000000
        clmulh  a0, t0, t1
        li      t2, 0x0011331177113311
        sub     a0, a0, t2
        call    print_success
        # clmulr
        li      t0, 0x1122334455667788
        li      t1, 0x0008000800000000
        clmulr  a0, t0, t1
        li      t2, 0x0001122226666222
        sub     a0, a0, t2
        call    print_success

        # test Zawrs, RVA23
        lla     a0, str_zawrs
        call    print_str16

        # wrs.nto
        j       .after_var_for_zawrs
        .var_for_zawrs:
        .word   1
        .after_var_for_zawrs:
        lla     t0, .var_for_zawrs
        sc.w    t1, t0, (t0)
        wrs.nto
        mv      a0, zero
        call    print_success
        # wrs.sto
        lla     t0, .var_for_zawrs
        sc.w    t1, t0, (t0)
        wrs.sto
        mv      a0, zero
        call    print_success

        # test Zicbom, RVA22
        lla     a0, str_zicbom
        call    print_str16

        # cbo.clean
        lla     t0, str_zicbom
        cbo.clean (t0)
        mv      a0, zero
        call    print_success
        # cbo.flush
        lla     t0, str_zicbom
        cbo.flush (t0)
        mv      a0, zero
        call    print_success
        # cbo.inval
        lla     t0, str_zicbom
        cbo.inval (t0)
        mv      a0, zero
        call    print_success

        # test Zvbb, RVA23
        lla     a0, str_zvbb
        call    print_str16
        # check availability of V
        csrr    a0, sstatus
        li      a1, 0x600
        and     a1, a1, a0
        beqz    a1, .no_v

        j       .after_vars_for_zvbb
        .var_vect1:
        .byte   0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
        .var_vect2:
        .byte   0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa
        .var_vect3:
        .half   0x1234, 0x2345, 0x3456, 0x4567, 0x5678, 0x6789, 0x789a, 0x89ab
        .var_vect3_brev:
        .half   0x2c48, 0xa2c4, 0x6a2c, 0xe6a2, 0x1e6a, 0x91e6, 0x591e, 0xd591
        .var_vect3_brev8:
        .half   0x482c, 0xc4a2, 0x2c6a, 0xa2e6, 0x6a1e, 0xe691, 0x1e59, 0x91d5
        .var_vect3_rev8:
        .half   0x3412, 0x4523, 0x5634, 0x6745, 0x7856, 0x8967, 0x9a78, 0xab89
        .var_vect4:
        .word   0x0038f060, 0x80000000, 0x00000000, 0x000004c1
        .var_vect4_clz:
        .word   10, 0, 32, 21
        .var_vect4_ctz:
        .word   5, 31, 32, 0
        .var_vect4_cpop:
        .word   9, 1, 0, 4
        .var_vect5:
        .dword  0x0123456789abcdef, 0x1122334455667788
        .var_vect6:
        .dword  40, 20
        .var_vect5_rol:
        .dword  0xabcdef0123456789, 0x3445566778811223
        .var_vect5_ror:
        .dword  0x6789abcdef012345, 0x6778811223344556
        .var_vect3_wsll:
        .word   0x00123400, 0x00234500, 0x00345600, 0x00456700
        .after_vars_for_zvbb:
        # vandn.vv
        vsetivli zero, 16, e8, m1, ta, ma
        lla     t0, .var_vect1
        vle8.v  v1, (t0)
        lla     t0, .var_vect2
        vle8.v  v2, (t0)
        vxor.vi v3, v2, -1
        vand.vv v3, v1, v3
        vandn.vv v4, v1, v2
        vsub.vv v0, v3, v4
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vandn.vx
        # vbrev.v
        vsetivli zero, 8, e16, m1, ta, ma
        lla     t0, .var_vect3
        vle16.v v1, (t0)
        lla     t0, .var_vect3_brev
        vle16.v v2, (t0)
        vbrev.v v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vbrev8.v
        vsetivli zero, 8, e16, m1, ta, ma
        lla     t0, .var_vect3
        vle16.v v1, (t0)
        lla     t0, .var_vect3_brev8
        vle16.v v2, (t0)
        vbrev8.v v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vrev8.v
        vsetivli zero, 8, e16, m1, ta, ma
        lla     t0, .var_vect3
        vle16.v v1, (t0)
        lla     t0, .var_vect3_rev8
        vle16.v v2, (t0)
        vrev8.v v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vclz.v
        vsetivli zero, 4, e32, m1, ta, ma
        lla     t0, .var_vect4
        vle32.v v1, (t0)
        lla     t0, .var_vect4_clz
        vle32.v v2, (t0)
        vclz.v  v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vctz.v
        vsetivli zero, 4, e32, m1, ta, ma
        lla     t0, .var_vect4
        vle32.v v1, (t0)
        lla     t0, .var_vect4_ctz
        vle32.v v2, (t0)
        vctz.v  v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vcpop.v
        vsetivli zero, 4, e32, m1, ta, ma
        lla     t0, .var_vect4
        vle32.v v1, (t0)
        lla     t0, .var_vect4_cpop
        vle32.v v2, (t0)
        vcpop.v v0, v1
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vrol.[vv,vx]
        vsetivli zero, 2, e64, m1, ta, ma
        lla     t0, .var_vect5
        vle64.v v1, (t0)
        lla     t0, .var_vect6
        vle64.v v2, (t0)
        lla     t0, .var_vect5_rol
        vle64.v v3, (t0)
        vrol.vv v0, v1, v2
        vsub.vv v0, v0, v3
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vror.[vv,vx,vi]
        vsetivli zero, 2, e64, m1, ta, ma
        lla     t0, .var_vect5
        vle64.v v1, (t0)
        lla     t0, .var_vect6
        vle64.v v2, (t0)
        lla     t0, .var_vect5_ror
        vle64.v v3, (t0)
        vror.vv v0, v1, v2
        vsub.vv v0, v0, v3
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success
        # vwsll.[vv,vx,vi]
        vsetivli zero, 4, e16, m1, ta, ma
        lla     t0, .var_vect3
        vle16.v v1, (t0)
        vsetivli zero, 4, e32, m1, ta, ma
        lla     t0, .var_vect3_wsll
        vle32.v v2, (t0)
        vsetivli zero, 4, e16, m1, ta, ma
        vwsll.vi v0, v1, 8
        vsetivli zero, 4, e32, m1, ta, ma
        vsub.vv v0, v0, v2
        vredor.vs v0, v0, v0
        vmv.x.s a0, v0
        call    print_success


        .no_v:

        # test Supm, RVA23
        j       .after_var_for_supm
        .var_for_supm:
        .word   1
        .after_var_for_supm:
        lla     a0, str_supm
        call    print_str16
        # set up pointer masking
        li      a7, 0x46574654  # SBI_EXT_FWFT
        li      a6, 0  # SBI_EXT_FWFT_SET
        li      a0, 5  # SBI_FWFT_POINTER_MASKING_PMLEN
        li      a1, 7  # number of bits to mask
        ecall
        # try to write variable with pointer masking
        lla     t0, .var_for_supm
        li      t1, 0xaa00000000000000
        or      t1, t0, t1
        li      t2, 2
        sw      t2, (t1)
        lw      t3, (t0)
        addi    a0, t3, -2
        call    print_success
        # disable pointer masking
        li      a7, 0x46574654  # SBI_EXT_FWFT
        li      a6, 0  # SBI_EXT_FWFT_SET
        li      a0, 5  # SBI_FWFT_POINTER_MASKING_PMLEN
        li      a1, 0  # number of bits to mask


        # try to shut down the system/emulator
        li      a7, 0x53525354
        li      a0, 0
        li      a1, 0
        ecall

        # disable interrupts
        csrwi   sip, 0
        csrwi   sie, 0
        # wait for interrupt (i.e. forever)
        wfi


print_success:
        li      a7, 1
        beq     a0, zero, .plus

        li      a0, '-'
        ecall
        j       .lf

        .plus:
        li      a0, '+'
        ecall
        j       .lf

        .lf:
        li      a0, '\r'
        li      a7, 1
        ecall
        li      a0, '\n'
        li      a7, 1
        ecall

        ret


print_str16:
        li      a7, 0x4442434e
        li      a6, 0
        mv      a1, a0
        li      a2, 0
        li      a0, 16
        ecall
        ret

# .section .rodata

str_zba:
.string "\r\nTest Zba    \r\n"
str_zbb:
.string "\r\nTest Zbb    \r\n"
str_zbs:
.string "\r\nTest Zbs    \r\n"
str_zfhmin:
.string "\r\nTest Zfhmin \r\n"
str_zicond:
.string "\r\nTest Zicond \r\n"
str_zimop:
.string "\r\nTest Zimop  \r\n"
str_zcmop:
.string "\r\nTest Zcmop  \r\n"
str_zcb:
.string "\r\nTest Zcb    \r\n"
str_zfa:
.string "\r\nTest Zfa    \r\n"
str_zbc:
.string "\r\nTest Zbc    \r\n"
str_zawrs:
.string "\r\nTest Zawrs  \r\n"
str_zicbom:
.string "\r\nTest Zicbom \r\n"
str_zvbb:
.string "\r\nTest Zvbb   \r\n"
str_supm:
.string "\r\nTest Supm   \r\n"
