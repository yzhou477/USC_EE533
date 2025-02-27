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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;

int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    unisim_a_3828308815_1222000726_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_4147737283_2967259552_init();
    work_a_1434172130_3212880686_init();
    work_a_3369238643_3212880686_init();
    work_a_1522451651_3212880686_init();
    work_a_2065037694_3212880686_init();
    work_a_0616333063_3212880686_init();
    work_a_1781792670_3212880686_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_3055263662_1392679692_init();
    work_a_0737135909_3212880686_init();
    unisim_a_1717296735_4086321779_init();
    work_a_2513622737_3212880686_init();
    work_a_3110279977_3212880686_init();
    work_a_3513896370_3212880686_init();
    work_a_4076876264_3212880686_init();
    work_a_1350060703_3212880686_init();
    work_a_2433765616_3212880686_init();
    work_a_0777442441_3212880686_init();
    work_a_2709531509_3212880686_init();
    work_a_4095499259_0230731466_init();


    xsi_register_tops("work_a_4095499259_0230731466");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
