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
static const char *ng0 = "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/Convertor.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_0588827742_0142608284_p_0(char *t0)
{
    char t17[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t18;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t2 = (t13 >= 100);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t5 = (t13 < 100);
    if (t5 == 1)
        goto LAB17;

LAB18:    t2 = (unsigned char)0;

LAB19:    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t2 = (t13 < 10);
    if (t2 != 0)
        goto LAB20;

LAB22:
LAB21:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = xsi_get_transient_memory(4U);
    memset(t3, 0, 4U);
    t7 = t3;
    memset(t7, (unsigned char)3, 4U);
    t8 = (t0 + 4184);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(30, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t3 = t1;
    memset(t3, (unsigned char)3, 4U);
    t4 = (t0 + 4248);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(31, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t3 = t1;
    memset(t3, (unsigned char)3, 4U);
    t4 = (t0 + 4312);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 7112U);
    t13 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t4, t1);
    t7 = (t0 + 4376);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t13;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 4504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4568);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 4632);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t15 = (t14 - 100);
    t1 = (t0 + 4376);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t15;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t14 = (t13 + 1);
    t1 = (t0 + 4504);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1992U);
    t7 = *((char **)t1);
    t15 = *((int *)t7);
    t16 = (t15 - 10);
    t1 = (t0 + 4376);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t14 = (t13 + 1);
    t1 = (t0 + 4440);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t6 = (t14 >= 10);
    t2 = t6;
    goto LAB19;

LAB20:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = (t0 + 4568);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t14;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t17, t13, 4);
    t4 = (t17 + 12U);
    t18 = *((unsigned int *)t4);
    t18 = (t18 * 1U);
    t2 = (4U != t18);
    if (t2 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 4184);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t17, t13, 4);
    t4 = (t17 + 12U);
    t18 = *((unsigned int *)t4);
    t18 = (t18 * 1U);
    t2 = (4U != t18);
    if (t2 == 1)
        goto LAB25;

LAB26:    t7 = (t0 + 4248);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t13 = *((int *)t3);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t17, t13, 4);
    t4 = (t17 + 12U);
    t18 = *((unsigned int *)t4);
    t18 = (t18 * 1U);
    t2 = (4U != t18);
    if (t2 == 1)
        goto LAB27;

LAB28:    t7 = (t0 + 4312);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4632);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    xsi_size_not_matching(4U, t18, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(4U, t18, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(4U, t18, 0);
    goto LAB28;

}


extern void work_a_0588827742_0142608284_init()
{
	static char *pe[] = {(void *)work_a_0588827742_0142608284_p_0};
	xsi_register_didat("work_a_0588827742_0142608284", "isim/tb_Convertor_isim_beh.exe.sim/work/a_0588827742_0142608284.didat");
	xsi_register_executes(pe);
}
