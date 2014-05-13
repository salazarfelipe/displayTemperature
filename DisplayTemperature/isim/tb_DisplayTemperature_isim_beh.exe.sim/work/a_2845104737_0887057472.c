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
static const char *ng0 = "/home/felipe/Documentos/UTP/Electronica2/DisplayTemperature/DisplaySelector.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2845104737_0887057472_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3624);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 2152U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 + 1);
    t3 = (t0 + 3704);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t9;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 1);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 2);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 3);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 4);
    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB6;

LAB8:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 3768);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(25, ng0);
    t1 = (t0 + 6184);
    t4 = (t0 + 3832);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 3768);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 6188);
    t4 = (t0 + 3832);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB12;

LAB14:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 3768);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 6192);
    t4 = (t0 + 3832);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB15;

LAB17:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 6196);
    t7 = (t0 + 3768);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 6204);
    t4 = (t0 + 3832);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 3704);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}


extern void work_a_2845104737_0887057472_init()
{
	static char *pe[] = {(void *)work_a_2845104737_0887057472_p_0};
	xsi_register_didat("work_a_2845104737_0887057472", "isim/tb_DisplayTemperature_isim_beh.exe.sim/work/a_2845104737_0887057472.didat");
	xsi_register_executes(pe);
}
