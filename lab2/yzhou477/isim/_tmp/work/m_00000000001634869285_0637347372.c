/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/yzhou477/ALUv_32bit.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {7U, 0U};



static void A32_0(char *t0)
{
    char t8[16];
    char t10[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;

LAB0:    t1 = (t0 + 1800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1980);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1140);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1232);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1324);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 740U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t5 == 1)
        goto LAB17;

LAB18:    t4 = ((char*)((ng8)));
    t35 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 3);
    if (t35 == 1)
        goto LAB19;

LAB20:    t6 = ((char*)((ng9)));
    t36 = xsi_vlog_unsigned_case_compare(t3, 3, t6, 3);
    if (t36 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(42, ng0);

LAB24:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_add(t8, 33, t6, 32, t7, 32);
    t4 = (t0 + 1140);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    t9 = (t0 + 1232);
    xsi_vlogvar_assign_value(t9, t8, 32, 0, 1);
    goto LAB23;

LAB9:    xsi_set_current_line(46, ng0);

LAB25:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_minus(t8, 33, t6, 32, t7, 32);
    t4 = (t0 + 1140);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    t9 = (t0 + 1324);
    xsi_vlogvar_assign_value(t9, t8, 32, 0, 1);
    goto LAB23;

LAB11:    xsi_set_current_line(50, ng0);

LAB26:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 916U);
    t6 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t7 = (t10 + 4U);
    t9 = (t6 + 4U);
    t11 = (t4 + 4U);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t4);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB30;

LAB27:    if (t21 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t10) = 1;

LAB30:    t24 = (t10 + 4U);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t10);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 564U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_rshift(t10, 32, t4, 32, t2, 32);
    t6 = (t0 + 1140);
    xsi_vlogvar_assign_value(t6, t10, 0, 0, 32);

LAB33:    goto LAB23;

LAB13:    xsi_set_current_line(57, ng0);

LAB34:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    t14 = (t12 & t13);
    *((unsigned int *)t10) = t14;
    t4 = (t6 + 4U);
    t9 = (t7 + 4U);
    t11 = (t10 + 4U);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t11) = t17;
    t18 = *((unsigned int *)t11);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB35;

LAB36:
LAB37:    t31 = (t0 + 1140);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(61, ng0);

LAB38:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    t14 = (t12 | t13);
    *((unsigned int *)t10) = t14;
    t4 = (t6 + 4U);
    t9 = (t7 + 4U);
    t11 = (t10 + 4U);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t9);
    t17 = (t15 | t16);
    *((unsigned int *)t11) = t17;
    t18 = *((unsigned int *)t11);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB39;

LAB40:
LAB41:    t31 = (t0 + 1140);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 32);
    goto LAB23;

LAB17:    goto LAB15;

LAB19:    goto LAB15;

LAB21:    goto LAB15;

LAB29:    *((unsigned int *)t10) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(52, ng0);
    t30 = (t0 + 564U);
    t31 = *((char **)t30);
    t30 = ((char*)((ng4)));
    memset(t32, 0, 8);
    xsi_vlog_unsigned_lshift(t32, 32, t31, 32, t30, 32);
    t33 = (t0 + 1140);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 32);
    goto LAB33;

LAB35:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t11);
    *((unsigned int *)t10) = (t20 | t21);
    t24 = (t6 + 4U);
    t30 = (t7 + 4U);
    t22 = *((unsigned int *)t6);
    t23 = (~(t22));
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t30);
    t34 = (~(t29));
    t35 = (t23 & t26);
    t36 = (t28 & t34);
    t37 = (~(t35));
    t38 = (~(t36));
    t39 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t39 & t37);
    t40 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t40 & t38);
    t41 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t41 & t37);
    t42 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t42 & t38);
    goto LAB37;

LAB39:    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t11);
    *((unsigned int *)t10) = (t20 | t21);
    t24 = (t6 + 4U);
    t30 = (t7 + 4U);
    t22 = *((unsigned int *)t24);
    t23 = (~(t22));
    t25 = *((unsigned int *)t6);
    t35 = (t25 & t23);
    t26 = *((unsigned int *)t30);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t36 = (t28 & t27);
    t29 = (~(t35));
    t34 = (~(t36));
    t37 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t37 & t29);
    t38 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t38 & t34);
    goto LAB41;

}


extern void work_m_00000000001634869285_0637347372_init()
{
	static char *pe[] = {(void *)A32_0};
	xsi_register_didat("work_m_00000000001634869285_0637347372", "isim/_tmp/work/m_00000000001634869285_0637347372.didat");
	xsi_register_executes(pe);
}
