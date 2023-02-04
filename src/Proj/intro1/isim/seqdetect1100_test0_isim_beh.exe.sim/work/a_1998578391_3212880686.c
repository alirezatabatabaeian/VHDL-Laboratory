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
    int t9;
    unsigned char t10;
    char *t11;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2952);
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
        goto LAB13;

LAB14:    t2 = (unsigned char)0;

LAB15:    if (t2 != 0)
        goto LAB11;

LAB12:
LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = (unsigned char)0;

LAB26:    if (t2 != 0)
        goto LAB22;

LAB23:
LAB17:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB30;

LAB31:    t2 = (unsigned char)0;

LAB32:    if (t2 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = (unsigned char)0;

LAB37:    if (t2 != 0)
        goto LAB33;

LAB34:
LAB28:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = (unsigned char)0;

LAB43:    if (t2 != 0)
        goto LAB38;

LAB40:    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB46;

LAB47:    t2 = (unsigned char)0;

LAB48:    if (t2 != 0)
        goto LAB44;

LAB45:
LAB39:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1648U);
    t11 = *((char **)t4);
    t4 = (t11 + 0);
    *((int *)t4) = 1;
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t4 = (t0 + 1648U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 == 0);
    t3 = t10;
    goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB13:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 0);
    t2 = t7;
    goto LAB15;

LAB16:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 2;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

LAB19:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 1);
    t2 = t7;
    goto LAB21;

LAB22:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

LAB24:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 1);
    t2 = t7;
    goto LAB26;

LAB27:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 3;
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB28;

LAB30:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 2);
    t2 = t7;
    goto LAB32;

LAB33:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 2;
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB28;

LAB35:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 2);
    t2 = t7;
    goto LAB37;

LAB38:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB39;

LAB41:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 3);
    t2 = t7;
    goto LAB43;

LAB44:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1648U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3032);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB39;

LAB46:    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t7 = (t9 == 3);
    t2 = t7;
    goto LAB48;

}


extern void work_a_1998578391_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1998578391_3212880686_p_0};
	xsi_register_didat("work_a_1998578391_3212880686", "isim/seqdetect1100_test0_isim_beh.exe.sim/work/a_1998578391_3212880686.didat");
	xsi_register_executes(pe);
}
