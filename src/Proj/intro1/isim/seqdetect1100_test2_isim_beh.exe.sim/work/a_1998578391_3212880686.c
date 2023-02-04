/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Proj/intro1/seqdetect1100.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1998578391_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB17;

LAB18:
LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = (unsigned char)0;

LAB33:    if (t2 != 0)
        goto LAB28;

LAB30:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB42;

LAB43:    t2 = (unsigned char)0;

LAB44:    if (t2 != 0)
        goto LAB40;

LAB41:
LAB29:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB54;

LAB55:    t2 = (unsigned char)0;

LAB56:    if (t2 != 0)
        goto LAB51;

LAB53:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB65;

LAB66:    t2 = (unsigned char)0;

LAB67:    if (t2 != 0)
        goto LAB63;

LAB64:
LAB52:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB77;

LAB78:    t2 = (unsigned char)0;

LAB79:    if (t2 != 0)
        goto LAB74;

LAB76:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB88;

LAB89:    t2 = (unsigned char)0;

LAB90:    if (t2 != 0)
        goto LAB86;

LAB87:
LAB75:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t14 = (t0 + 4750);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 2U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t4 = (t0 + 4748);
    t10 = 1;
    if (2U == 2U)
        goto LAB11;

LAB12:    t10 = 0;

LAB13:    t3 = t10;
    goto LAB10;

LAB11:    t11 = 0;

LAB14:    if (t11 < 2U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t12 = (t8 + t11);
    t13 = (t4 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB12;

LAB16:    t11 = (t11 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(52, ng0);
    t13 = (t0 + 4754);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB19:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4752);
    t7 = 1;
    if (2U == 2U)
        goto LAB22;

LAB23:    t7 = 0;

LAB24:    t2 = t7;
    goto LAB21;

LAB22:    t11 = 0;

LAB25:    if (t11 < 2U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB23;

LAB27:    t11 = (t11 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(57, ng0);
    t13 = (t0 + 4758);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB31:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4756);
    t7 = 1;
    if (2U == 2U)
        goto LAB34;

LAB35:    t7 = 0;

LAB36:    t2 = t7;
    goto LAB33;

LAB34:    t11 = 0;

LAB37:    if (t11 < 2U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB35;

LAB39:    t11 = (t11 + 1);
    goto LAB37;

LAB40:    xsi_set_current_line(60, ng0);
    t13 = (t0 + 4762);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB42:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4760);
    t7 = 1;
    if (2U == 2U)
        goto LAB45;

LAB46:    t7 = 0;

LAB47:    t2 = t7;
    goto LAB44;

LAB45:    t11 = 0;

LAB48:    if (t11 < 2U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB46;

LAB50:    t11 = (t11 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(65, ng0);
    t13 = (t0 + 4766);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB52;

LAB54:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4764);
    t7 = 1;
    if (2U == 2U)
        goto LAB57;

LAB58:    t7 = 0;

LAB59:    t2 = t7;
    goto LAB56;

LAB57:    t11 = 0;

LAB60:    if (t11 < 2U)
        goto LAB61;
    else
        goto LAB59;

LAB61:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB58;

LAB62:    t11 = (t11 + 1);
    goto LAB60;

LAB63:    xsi_set_current_line(68, ng0);
    t13 = (t0 + 4770);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB52;

LAB65:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4768);
    t7 = 1;
    if (2U == 2U)
        goto LAB68;

LAB69:    t7 = 0;

LAB70:    t2 = t7;
    goto LAB67;

LAB68:    t11 = 0;

LAB71:    if (t11 < 2U)
        goto LAB72;
    else
        goto LAB70;

LAB72:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB69;

LAB73:    t11 = (t11 + 1);
    goto LAB71;

LAB74:    xsi_set_current_line(73, ng0);
    t13 = (t0 + 4774);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB75;

LAB77:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4772);
    t7 = 1;
    if (2U == 2U)
        goto LAB80;

LAB81:    t7 = 0;

LAB82:    t2 = t7;
    goto LAB79;

LAB80:    t11 = 0;

LAB83:    if (t11 < 2U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB81;

LAB85:    t11 = (t11 + 1);
    goto LAB83;

LAB86:    xsi_set_current_line(76, ng0);
    t13 = (t0 + 4778);
    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 2U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB75;

LAB88:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4776);
    t7 = 1;
    if (2U == 2U)
        goto LAB91;

LAB92:    t7 = 0;

LAB93:    t2 = t7;
    goto LAB90;

LAB91:    t11 = 0;

LAB94:    if (t11 < 2U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t9 = (t5 + t11);
    t12 = (t1 + t11);
    if (*((unsigned char *)t9) != *((unsigned char *)t12))
        goto LAB92;

LAB96:    t11 = (t11 + 1);
    goto LAB94;

}


extern void work_a_1998578391_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1998578391_3212880686_p_0};
	xsi_register_didat("work_a_1998578391_3212880686", "isim/seqdetect1100_test2_isim_beh.exe.sim/work/a_1998578391_3212880686.didat");
	xsi_register_executes(pe);
}
