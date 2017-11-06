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
static const char *ng0 = "D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander/ula.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3735238183_3212880686_p_0(char *t0)
{
    char t23[16];
    char t39[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t40;
    unsigned char t41;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6083);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB11:    t5 = (t0 + 6086);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 6089);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 6092);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 6095);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 6098);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 6101);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t30 = (7 - 6);
    t31 = (t30 * 1U);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t39 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 6;
    t8 = (t6 + 4U);
    *((int *)t8) = 0;
    t8 = (t6 + 8U);
    *((int *)t8) = -1;
    t4 = (0 - 6);
    t40 = (t4 * -1);
    t40 = (t40 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t40;
    t3 = xsi_base_array_concat(t3, t23, t5, (char)97, t1, t39, (char)99, (unsigned char)2, (char)101);
    t40 = (7U + 1U);
    t32 = (8U != t40);
    if (t32 == 1)
        goto LAB31;

LAB32:    t8 = (t0 + 3656);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_fast(t8);

LAB2:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t4 = (7 - 7);
    t30 = (t4 * -1);
    t31 = (1U * t30);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t32 = *((unsigned char *)t1);
    t41 = (t32 == (unsigned char)3);
    if (t41 != 0)
        goto LAB33;

LAB35:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032U);
    t3 = (t0 + 6106);
    t6 = (t23 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 0;
    t8 = (t6 + 4U);
    *((int *)t8) = 7;
    t8 = (t6 + 8U);
    *((int *)t8) = 1;
    t4 = (7 - 0);
    t30 = (t4 * 1);
    t30 = (t30 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t30;
    t32 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t3, t23);
    if (t32 != 0)
        goto LAB36;

LAB37:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 6116);
    t3 = (t0 + 3720);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);

LAB34:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(59, ng0);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t24 = (t0 + 5952U);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t26 = (t0 + 5968U);
    t28 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t23, t25, t24, t27, t26);
    t29 = (t23 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    t33 = (t0 + 3656);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t28, 8U);
    xsi_driver_first_trans_fast(t33);
    goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5968U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3656);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5968U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3656);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952U);
    t3 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t23, t2, t1);
    t5 = (t23 + 12U);
    t30 = *((unsigned int *)t5);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB25;

LAB26:    t6 = (t0 + 3656);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3656);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5968U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t23, t2, t1, t5, t3);
    t8 = (t23 + 12U);
    t30 = *((unsigned int *)t8);
    t31 = (1U * t30);
    t32 = (8U != t31);
    if (t32 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3656);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB9:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t30 = (7 - 7);
    t31 = (t30 * 1U);
    t38 = (0 + t31);
    t1 = (t2 + t38);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t39 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 7;
    t8 = (t6 + 4U);
    *((int *)t8) = 1;
    t8 = (t6 + 8U);
    *((int *)t8) = -1;
    t4 = (1 - 7);
    t40 = (t4 * -1);
    t40 = (t40 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t40;
    t3 = xsi_base_array_concat(t3, t23, t5, (char)99, (unsigned char)2, (char)97, t1, t39, (char)101);
    t40 = (1U + 7U);
    t32 = (8U != t40);
    if (t32 == 1)
        goto LAB29;

LAB30:    t8 = (t0 + 3656);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB18:;
LAB19:    xsi_size_not_matching(8U, t31, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(8U, t31, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t31, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t31, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t31, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t40, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(8U, t40, 0);
    goto LAB32;

LAB33:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 6104);
    t6 = (t0 + 3720);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 2U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB34;

LAB36:    xsi_set_current_line(72, ng0);
    t8 = (t0 + 6114);
    t11 = (t0 + 3720);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 2U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB34;

}

static void work_a_3735238183_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3735238183_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3735238183_3212880686_p_0,(void *)work_a_3735238183_3212880686_p_1};
	xsi_register_didat("work_a_3735238183_3212880686", "isim/neander_isim_beh.exe.sim/work/a_3735238183_3212880686.didat");
	xsi_register_executes(pe);
}
