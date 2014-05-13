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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/ModuloTX.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1521058056_0906927424_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t11;
    unsigned char t12;
    int t13;
    unsigned char t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 3304);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3384);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 7;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t4 = (t9 == 1);
    if (t4 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 2);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 3);
    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB6;

LAB8:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3384);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t12 = (t11 >= 0);
    if (t12 == 1)
        goto LAB17;

LAB18:    t4 = (unsigned char)0;

LAB19:    if (t4 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 0);
    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB12;

LAB14:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 1672U);
    t8 = *((char **)t1);
    t15 = *((int *)t8);
    t16 = (t15 - 7);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t7 + t19);
    t20 = *((unsigned char *)t1);
    t10 = (t0 + 3384);
    t21 = (t10 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t20;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t11 = (t9 - 1);
    t1 = (t0 + 3448);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t13 = *((int *)t6);
    t14 = (t13 <= 7);
    t4 = t14;
    goto LAB19;

LAB20:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3512);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 3;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3384);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3448);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

}


extern void work_a_1521058056_0906927424_init()
{
	static char *pe[] = {(void *)work_a_1521058056_0906927424_p_0};
	xsi_register_didat("work_a_1521058056_0906927424", "isim/tb_DisplayTemperature_isim_beh.exe.sim/work/a_1521058056_0906927424.didat");
	xsi_register_executes(pe);
}
