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
static const char *ng0 = "Function binto7seg ended without a return statement";
static const char *ng1 = "D:/Documents/Google Drive/Eng Comp/UFGRS/INF/sistemas digitais/neander/neander.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


char *work_a_3504579868_3212880686_sub_2522173435_3057020925(char *t1, char *t2, char *t3)
{
    char t5[24];
    char t6[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    int t54;
    char *t55;
    int t57;
    char *t58;
    int t60;
    char *t61;
    char *t63;
    char *t64;
    int t65;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t5 + 4U);
    t11 = (t3 != 0);
    if (t11 == 1)
        goto LAB3;

LAB2:    t12 = (t5 + 12U);
    *((char **)t12) = t6;
    t13 = (t1 + 20510);
    t15 = xsi_mem_cmp(t13, t3, 4U);
    if (t15 == 1)
        goto LAB5;

LAB22:    t16 = (t1 + 20514);
    t18 = xsi_mem_cmp(t16, t3, 4U);
    if (t18 == 1)
        goto LAB6;

LAB23:    t19 = (t1 + 20518);
    t21 = xsi_mem_cmp(t19, t3, 4U);
    if (t21 == 1)
        goto LAB7;

LAB24:    t22 = (t1 + 20522);
    t24 = xsi_mem_cmp(t22, t3, 4U);
    if (t24 == 1)
        goto LAB8;

LAB25:    t25 = (t1 + 20526);
    t27 = xsi_mem_cmp(t25, t3, 4U);
    if (t27 == 1)
        goto LAB9;

LAB26:    t28 = (t1 + 20530);
    t30 = xsi_mem_cmp(t28, t3, 4U);
    if (t30 == 1)
        goto LAB10;

LAB27:    t31 = (t1 + 20534);
    t33 = xsi_mem_cmp(t31, t3, 4U);
    if (t33 == 1)
        goto LAB11;

LAB28:    t34 = (t1 + 20538);
    t36 = xsi_mem_cmp(t34, t3, 4U);
    if (t36 == 1)
        goto LAB12;

LAB29:    t37 = (t1 + 20542);
    t39 = xsi_mem_cmp(t37, t3, 4U);
    if (t39 == 1)
        goto LAB13;

LAB30:    t40 = (t1 + 20546);
    t42 = xsi_mem_cmp(t40, t3, 4U);
    if (t42 == 1)
        goto LAB14;

LAB31:    t43 = (t1 + 20550);
    t45 = xsi_mem_cmp(t43, t3, 4U);
    if (t45 == 1)
        goto LAB15;

LAB32:    t46 = (t1 + 20554);
    t48 = xsi_mem_cmp(t46, t3, 4U);
    if (t48 == 1)
        goto LAB16;

LAB33:    t49 = (t1 + 20558);
    t51 = xsi_mem_cmp(t49, t3, 4U);
    if (t51 == 1)
        goto LAB17;

LAB34:    t52 = (t1 + 20562);
    t54 = xsi_mem_cmp(t52, t3, 4U);
    if (t54 == 1)
        goto LAB18;

LAB35:    t55 = (t1 + 20566);
    t57 = xsi_mem_cmp(t55, t3, 4U);
    if (t57 == 1)
        goto LAB19;

LAB36:    t58 = (t1 + 20570);
    t60 = xsi_mem_cmp(t58, t3, 4U);
    if (t60 == 1)
        goto LAB20;

LAB37:
LAB21:    t7 = (t1 + 20686);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;

LAB1:    return t0;
LAB3:    *((char **)t8) = t3;
    goto LAB2;

LAB4:    xsi_error(ng0);
    t0 = 0;
    goto LAB1;

LAB5:    t61 = (t1 + 20574);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t61, 7U);
    t63 = (t2 + 0U);
    t64 = (t63 + 0U);
    *((int *)t64) = 1;
    t64 = (t63 + 4U);
    *((int *)t64) = 7;
    t64 = (t63 + 8U);
    *((int *)t64) = 1;
    t65 = (7 - 1);
    t10 = (t65 * 1);
    t10 = (t10 + 1);
    t64 = (t63 + 12U);
    *((unsigned int *)t64) = t10;
    goto LAB1;

LAB6:    t7 = (t1 + 20581);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB7:    t7 = (t1 + 20588);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB8:    t7 = (t1 + 20595);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB9:    t7 = (t1 + 20602);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB10:    t7 = (t1 + 20609);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB11:    t7 = (t1 + 20616);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB12:    t7 = (t1 + 20623);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB13:    t7 = (t1 + 20630);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB14:    t7 = (t1 + 20637);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB15:    t7 = (t1 + 20644);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB16:    t7 = (t1 + 20651);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB17:    t7 = (t1 + 20658);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB18:    t7 = (t1 + 20665);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB19:    t7 = (t1 + 20672);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB20:    t7 = (t1 + 20679);
    t0 = xsi_get_transient_memory(7U);
    memcpy(t0, t7, 7U);
    t14 = (t2 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 1;
    t16 = (t14 + 4U);
    *((int *)t16) = 7;
    t16 = (t14 + 8U);
    *((int *)t16) = 1;
    t9 = (7 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t10;
    goto LAB1;

LAB38:;
LAB39:    goto LAB4;

LAB40:    goto LAB4;

LAB41:    goto LAB4;

LAB42:    goto LAB4;

LAB43:    goto LAB4;

LAB44:    goto LAB4;

LAB45:    goto LAB4;

LAB46:    goto LAB4;

LAB47:    goto LAB4;

LAB48:    goto LAB4;

LAB49:    goto LAB4;

LAB50:    goto LAB4;

LAB51:    goto LAB4;

LAB52:    goto LAB4;

LAB53:    goto LAB4;

LAB54:    goto LAB4;

LAB55:    goto LAB4;

}

static void work_a_3504579868_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(322, ng1);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 10800);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(323, ng1);
    t3 = (t0 + 7888U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 < 62500);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(326, ng1);
    t1 = (t0 + 7888U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(327, ng1);
    t1 = (t0 + 7272U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 10976);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t6;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(324, ng1);
    t3 = (t0 + 7888U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 + 1);
    t3 = (t0 + 7888U);
    t10 = *((char **)t3);
    t3 = (t10 + 0);
    *((int *)t3) = t9;
    goto LAB6;

}

static void work_a_3504579868_3212880686_p_1(char *t0)
{
    char t20[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(336, ng1);
    t1 = (t0 + 7232U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 10816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(338, ng1);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(357, ng1);
    t1 = (t0 + 8008U);
    t3 = *((char **)t1);
    t1 = (t0 + 20723);
    t2 = 1;
    if (2U == 2U)
        goto LAB44;

LAB45:    t2 = 0;

LAB46:    if (t2 != 0)
        goto LAB41;

LAB43:    t1 = (t0 + 8008U);
    t3 = *((char **)t1);
    t1 = (t0 + 20731);
    t2 = 1;
    if (2U == 2U)
        goto LAB54;

LAB55:    t2 = 0;

LAB56:    if (t2 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 8008U);
    t3 = *((char **)t1);
    t1 = (t0 + 20739);
    t2 = 1;
    if (2U == 2U)
        goto LAB64;

LAB65:    t2 = 0;

LAB66:    if (t2 != 0)
        goto LAB62;

LAB63:    xsi_set_current_line(370, ng1);
    t1 = (t0 + 20747);
    t4 = (t0 + 11040);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(371, ng1);
    t1 = (t0 + 5032U);
    t3 = *((char **)t1);
    t10 = (7 - 7);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB72;

LAB73:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(372, ng1);
    t1 = (t0 + 20751);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);

LAB42:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(339, ng1);
    t3 = (t0 + 8008U);
    t7 = *((char **)t3);
    t3 = (t0 + 20693);
    t9 = 1;
    if (2U == 2U)
        goto LAB11;

LAB12:    t9 = 0;

LAB13:    if (t9 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 8008U);
    t3 = *((char **)t1);
    t1 = (t0 + 20701);
    t2 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t2 = 0;

LAB23:    if (t2 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 8008U);
    t3 = *((char **)t1);
    t1 = (t0 + 20709);
    t2 = 1;
    if (2U == 2U)
        goto LAB31;

LAB32:    t2 = 0;

LAB33:    if (t2 != 0)
        goto LAB29;

LAB30:    xsi_set_current_line(352, ng1);
    t1 = (t0 + 20717);
    t4 = (t0 + 11040);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(353, ng1);
    t1 = (t0 + 7112U);
    t3 = *((char **)t1);
    t1 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t3);
    t4 = (t20 + 12U);
    t10 = *((unsigned int *)t4);
    t10 = (t10 * 1U);
    t2 = (7U != t10);
    if (t2 == 1)
        goto LAB39;

LAB40:    t7 = (t0 + 11104);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(354, ng1);
    t1 = (t0 + 20721);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(340, ng1);
    t13 = (t0 + 20695);
    t15 = (t0 + 11040);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 4U);
    xsi_driver_first_trans_fast_port(t15);
    xsi_set_current_line(341, ng1);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t10 = (7 - 3);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(342, ng1);
    t1 = (t0 + 20699);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB9;

LAB11:    t10 = 0;

LAB14:    if (t10 < 2U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t11 = (t7 + t10);
    t12 = (t3 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB12;

LAB16:    t10 = (t10 + 1);
    goto LAB14;

LAB17:    xsi_size_not_matching(7U, t23, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(344, ng1);
    t11 = (t0 + 20703);
    t13 = (t0 + 11040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(345, ng1);
    t1 = (t0 + 6632U);
    t3 = *((char **)t1);
    t10 = (7 - 7);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB27;

LAB28:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(346, ng1);
    t1 = (t0 + 20707);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB9;

LAB21:    t10 = 0;

LAB24:    if (t10 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t7 = (t3 + t10);
    t8 = (t1 + t10);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB22;

LAB26:    t10 = (t10 + 1);
    goto LAB24;

LAB27:    xsi_size_not_matching(7U, t23, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(348, ng1);
    t11 = (t0 + 20711);
    t13 = (t0 + 11040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(349, ng1);
    t1 = (t0 + 6952U);
    t3 = *((char **)t1);
    t1 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t3);
    t4 = (t20 + 12U);
    t10 = *((unsigned int *)t4);
    t10 = (t10 * 1U);
    t2 = (7U != t10);
    if (t2 == 1)
        goto LAB37;

LAB38:    t7 = (t0 + 11104);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 7U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(350, ng1);
    t1 = (t0 + 20715);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB9;

LAB31:    t10 = 0;

LAB34:    if (t10 < 2U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t7 = (t3 + t10);
    t8 = (t1 + t10);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB32;

LAB36:    t10 = (t10 + 1);
    goto LAB34;

LAB37:    xsi_size_not_matching(7U, t10, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(7U, t10, 0);
    goto LAB40;

LAB41:    xsi_set_current_line(358, ng1);
    t11 = (t0 + 20725);
    t13 = (t0 + 11040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(359, ng1);
    t1 = (t0 + 4712U);
    t3 = *((char **)t1);
    t10 = (7 - 3);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB50;

LAB51:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(360, ng1);
    t1 = (t0 + 20729);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB42;

LAB44:    t10 = 0;

LAB47:    if (t10 < 2U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t7 = (t3 + t10);
    t8 = (t1 + t10);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB45;

LAB49:    t10 = (t10 + 1);
    goto LAB47;

LAB50:    xsi_size_not_matching(7U, t23, 0);
    goto LAB51;

LAB52:    xsi_set_current_line(362, ng1);
    t11 = (t0 + 20733);
    t13 = (t0 + 11040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(363, ng1);
    t1 = (t0 + 4712U);
    t3 = *((char **)t1);
    t10 = (7 - 7);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB60;

LAB61:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(364, ng1);
    t1 = (t0 + 20737);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB42;

LAB54:    t10 = 0;

LAB57:    if (t10 < 2U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t7 = (t3 + t10);
    t8 = (t1 + t10);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB55;

LAB59:    t10 = (t10 + 1);
    goto LAB57;

LAB60:    xsi_size_not_matching(7U, t23, 0);
    goto LAB61;

LAB62:    xsi_set_current_line(366, ng1);
    t11 = (t0 + 20741);
    t13 = (t0 + 11040);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(367, ng1);
    t1 = (t0 + 5032U);
    t3 = *((char **)t1);
    t10 = (7 - 3);
    t21 = (t10 * 1U);
    t22 = (0 + t21);
    t1 = (t3 + t22);
    t4 = work_a_3504579868_3212880686_sub_2522173435_3057020925(t0, t20, t1);
    t7 = (t20 + 12U);
    t23 = *((unsigned int *)t7);
    t23 = (t23 * 1U);
    t2 = (7U != t23);
    if (t2 == 1)
        goto LAB70;

LAB71:    t8 = (t0 + 11104);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 7U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(368, ng1);
    t1 = (t0 + 20745);
    t4 = (t0 + 8008U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t1, 2U);
    goto LAB42;

LAB64:    t10 = 0;

LAB67:    if (t10 < 2U)
        goto LAB68;
    else
        goto LAB66;

LAB68:    t7 = (t3 + t10);
    t8 = (t1 + t10);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB65;

LAB69:    t10 = (t10 + 1);
    goto LAB67;

LAB70:    xsi_size_not_matching(7U, t23, 0);
    goto LAB71;

LAB72:    xsi_size_not_matching(7U, t23, 0);
    goto LAB73;

}

static void work_a_3504579868_3212880686_p_2(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(380, ng1);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 10832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(381, ng1);
    t4 = (t0 + 6952U);
    t5 = *((char **)t4);
    t4 = (t0 + 20252U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 11168);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t9, 0);
    goto LAB6;

}

static void work_a_3504579868_3212880686_p_3(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(387, ng1);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 10848);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(388, ng1);
    t4 = (t0 + 7112U);
    t5 = *((char **)t4);
    t4 = (t0 + 20268U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (4U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 11232);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t9, 0);
    goto LAB6;

}

static void work_a_3504579868_3212880686_p_4(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(392, ng1);

LAB3:    t1 = (t0 + 7112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6952U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 20268U);
    t7 = (t0 + 20252U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (4U + 4U);
    t9 = (8U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 11296);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 10864);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t8, 0);
    goto LAB6;

}

static void work_a_3504579868_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(395, ng1);

LAB3:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 11360);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 10880);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3504579868_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(396, ng1);

LAB3:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 11424);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 10896);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3504579868_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3504579868_3212880686_p_0,(void *)work_a_3504579868_3212880686_p_1,(void *)work_a_3504579868_3212880686_p_2,(void *)work_a_3504579868_3212880686_p_3,(void *)work_a_3504579868_3212880686_p_4,(void *)work_a_3504579868_3212880686_p_5,(void *)work_a_3504579868_3212880686_p_6};
	static char *se[] = {(void *)work_a_3504579868_3212880686_sub_2522173435_3057020925};
	xsi_register_didat("work_a_3504579868_3212880686", "isim/neander_isim_beh.exe.sim/work/a_3504579868_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
