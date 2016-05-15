-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/12/2016 17:34:59"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador_p3 IS
    PORT (
	clock : IN std_logic;
	outp : OUT std_logic_vector(6 DOWNTO 0)
	);
END contador_p3;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[4]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- outp[6]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador_p3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_outp : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador[4]~36_combout\ : std_logic;
SIGNAL \contador[6]~40_combout\ : std_logic;
SIGNAL \contador[8]~44_combout\ : std_logic;
SIGNAL \contador[17]~62_combout\ : std_logic;
SIGNAL \contador[22]~72_combout\ : std_logic;
SIGNAL \contador[24]~76_combout\ : std_logic;
SIGNAL \P2:counter[3]~regout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~28_combout\ : std_logic;
SIGNAL \contador[0]~29\ : std_logic;
SIGNAL \contador[1]~31\ : std_logic;
SIGNAL \contador[2]~32_combout\ : std_logic;
SIGNAL \contador[2]~33\ : std_logic;
SIGNAL \contador[3]~35\ : std_logic;
SIGNAL \contador[4]~37\ : std_logic;
SIGNAL \contador[5]~38_combout\ : std_logic;
SIGNAL \contador[5]~39\ : std_logic;
SIGNAL \contador[6]~41\ : std_logic;
SIGNAL \contador[7]~42_combout\ : std_logic;
SIGNAL \contador[7]~43\ : std_logic;
SIGNAL \contador[8]~45\ : std_logic;
SIGNAL \contador[9]~46_combout\ : std_logic;
SIGNAL \contador[9]~47\ : std_logic;
SIGNAL \contador[10]~49\ : std_logic;
SIGNAL \contador[11]~50_combout\ : std_logic;
SIGNAL \contador[11]~51\ : std_logic;
SIGNAL \contador[12]~52_combout\ : std_logic;
SIGNAL \contador[12]~53\ : std_logic;
SIGNAL \contador[13]~54_combout\ : std_logic;
SIGNAL \contador[13]~55\ : std_logic;
SIGNAL \contador[14]~56_combout\ : std_logic;
SIGNAL \contador[14]~57\ : std_logic;
SIGNAL \contador[15]~58_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \contador[1]~30_combout\ : std_logic;
SIGNAL \contador[3]~34_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \contador[10]~48_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \contador[15]~59\ : std_logic;
SIGNAL \contador[16]~60_combout\ : std_logic;
SIGNAL \contador[16]~61\ : std_logic;
SIGNAL \contador[17]~63\ : std_logic;
SIGNAL \contador[18]~64_combout\ : std_logic;
SIGNAL \contador[18]~65\ : std_logic;
SIGNAL \contador[19]~67\ : std_logic;
SIGNAL \contador[20]~69\ : std_logic;
SIGNAL \contador[21]~70_combout\ : std_logic;
SIGNAL \contador[21]~71\ : std_logic;
SIGNAL \contador[22]~73\ : std_logic;
SIGNAL \contador[23]~74_combout\ : std_logic;
SIGNAL \contador[23]~75\ : std_logic;
SIGNAL \contador[24]~77\ : std_logic;
SIGNAL \contador[25]~78_combout\ : std_logic;
SIGNAL \contador[25]~79\ : std_logic;
SIGNAL \contador[26]~80_combout\ : std_logic;
SIGNAL \contador[26]~81\ : std_logic;
SIGNAL \contador[27]~82_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \contador[19]~66_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \contador[20]~68_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \PE~0_combout\ : std_logic;
SIGNAL \PE~regout\ : std_logic;
SIGNAL \EA~regout\ : std_logic;
SIGNAL \P2:counter[1]~regout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \P2:counter[2]~regout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \P2:counter[0]~regout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \outp[0]~reg0_regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \outp[1]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \outp[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \outp[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \outp[4]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \outp[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \outp[6]~reg0_regout\ : std_logic;
SIGNAL contador : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_EA~regout\ : std_logic;

BEGIN

ww_clock <= clock;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_EA~regout\ <= NOT \EA~regout\;

-- Location: LCFF_X46_Y34_N13
\contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[4]~36_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(4));

-- Location: LCFF_X46_Y34_N17
\contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[6]~40_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(6));

-- Location: LCFF_X46_Y34_N21
\contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[8]~44_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(8));

-- Location: LCFF_X46_Y33_N7
\contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[17]~62_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(17));

-- Location: LCFF_X46_Y33_N17
\contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[22]~72_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(22));

-- Location: LCFF_X46_Y33_N21
\contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[24]~76_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(24));

-- Location: LCCOMB_X46_Y34_N12
\contador[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[4]~36_combout\ = (contador(4) & (\contador[3]~35\ $ (GND))) # (!contador(4) & (!\contador[3]~35\ & VCC))
-- \contador[4]~37\ = CARRY((contador(4) & !\contador[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datad => VCC,
	cin => \contador[3]~35\,
	combout => \contador[4]~36_combout\,
	cout => \contador[4]~37\);

-- Location: LCCOMB_X46_Y34_N16
\contador[6]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[6]~40_combout\ = (contador(6) & (\contador[5]~39\ $ (GND))) # (!contador(6) & (!\contador[5]~39\ & VCC))
-- \contador[6]~41\ = CARRY((contador(6) & !\contador[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datad => VCC,
	cin => \contador[5]~39\,
	combout => \contador[6]~40_combout\,
	cout => \contador[6]~41\);

-- Location: LCCOMB_X46_Y34_N20
\contador[8]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[8]~44_combout\ = (contador(8) & (\contador[7]~43\ $ (GND))) # (!contador(8) & (!\contador[7]~43\ & VCC))
-- \contador[8]~45\ = CARRY((contador(8) & !\contador[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datad => VCC,
	cin => \contador[7]~43\,
	combout => \contador[8]~44_combout\,
	cout => \contador[8]~45\);

-- Location: LCCOMB_X46_Y33_N6
\contador[17]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[17]~62_combout\ = (contador(17) & (!\contador[16]~61\)) # (!contador(17) & ((\contador[16]~61\) # (GND)))
-- \contador[17]~63\ = CARRY((!\contador[16]~61\) # (!contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(17),
	datad => VCC,
	cin => \contador[16]~61\,
	combout => \contador[17]~62_combout\,
	cout => \contador[17]~63\);

-- Location: LCCOMB_X46_Y33_N16
\contador[22]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[22]~72_combout\ = (contador(22) & (\contador[21]~71\ $ (GND))) # (!contador(22) & (!\contador[21]~71\ & VCC))
-- \contador[22]~73\ = CARRY((contador(22) & !\contador[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datad => VCC,
	cin => \contador[21]~71\,
	combout => \contador[22]~72_combout\,
	cout => \contador[22]~73\);

-- Location: LCCOMB_X46_Y33_N20
\contador[24]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[24]~76_combout\ = (contador(24) & (\contador[23]~75\ $ (GND))) # (!contador(24) & (!\contador[23]~75\ & VCC))
-- \contador[24]~77\ = CARRY((contador(24) & !\contador[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(24),
	datad => VCC,
	cin => \contador[23]~75\,
	combout => \contador[24]~76_combout\,
	cout => \contador[24]~77\);

-- Location: LCFF_X47_Y34_N13
\P2:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P2:counter[3]~regout\);

-- Location: LCCOMB_X48_Y34_N6
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\P2:counter[2]~regout\) # ((\P2:counter[0]~regout\) # ((!\P2:counter[1]~regout\) # (!\P2:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2:counter[2]~regout\,
	datab => \P2:counter[0]~regout\,
	datac => \P2:counter[3]~regout\,
	datad => \P2:counter[1]~regout\,
	combout => \counter~0_combout\);

-- Location: LCCOMB_X46_Y34_N0
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((contador(7)) # (!contador(6))) # (!contador(5))) # (!contador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => contador(5),
	datac => contador(6),
	datad => contador(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X48_Y34_N4
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \P2:counter[2]~regout\ $ (((\P2:counter[1]~regout\ & \P2:counter[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2:counter[1]~regout\,
	datac => \P2:counter[2]~regout\,
	datad => \P2:counter[0]~regout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X48_Y34_N2
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \P2:counter[3]~regout\ $ (((\P2:counter[2]~regout\ & (\P2:counter[0]~regout\ & \P2:counter[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2:counter[2]~regout\,
	datab => \P2:counter[0]~regout\,
	datac => \P2:counter[3]~regout\,
	datad => \P2:counter[1]~regout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X47_Y34_N12
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\counter~1_combout\ & (((\P2:counter[3]~regout\)))) # (!\counter~1_combout\ & (\Add1~1_combout\ & (\EA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \EA~regout\,
	datac => \P2:counter[3]~regout\,
	datad => \counter~1_combout\,
	combout => \counter~5_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y34_N4
\contador[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[0]~28_combout\ = contador(0) $ (VCC)
-- \contador[0]~29\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \contador[0]~28_combout\,
	cout => \contador[0]~29\);

-- Location: LCFF_X46_Y34_N5
\contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[0]~28_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(0));

-- Location: LCCOMB_X46_Y34_N6
\contador[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[1]~30_combout\ = (contador(1) & (!\contador[0]~29\)) # (!contador(1) & ((\contador[0]~29\) # (GND)))
-- \contador[1]~31\ = CARRY((!\contador[0]~29\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datad => VCC,
	cin => \contador[0]~29\,
	combout => \contador[1]~30_combout\,
	cout => \contador[1]~31\);

-- Location: LCCOMB_X46_Y34_N8
\contador[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[2]~32_combout\ = (contador(2) & (\contador[1]~31\ $ (GND))) # (!contador(2) & (!\contador[1]~31\ & VCC))
-- \contador[2]~33\ = CARRY((contador(2) & !\contador[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~31\,
	combout => \contador[2]~32_combout\,
	cout => \contador[2]~33\);

-- Location: LCFF_X46_Y34_N9
\contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[2]~32_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(2));

-- Location: LCCOMB_X46_Y34_N10
\contador[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[3]~34_combout\ = (contador(3) & (!\contador[2]~33\)) # (!contador(3) & ((\contador[2]~33\) # (GND)))
-- \contador[3]~35\ = CARRY((!\contador[2]~33\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~33\,
	combout => \contador[3]~34_combout\,
	cout => \contador[3]~35\);

-- Location: LCCOMB_X46_Y34_N14
\contador[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[5]~38_combout\ = (contador(5) & (!\contador[4]~37\)) # (!contador(5) & ((\contador[4]~37\) # (GND)))
-- \contador[5]~39\ = CARRY((!\contador[4]~37\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~37\,
	combout => \contador[5]~38_combout\,
	cout => \contador[5]~39\);

-- Location: LCFF_X46_Y34_N15
\contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[5]~38_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(5));

-- Location: LCCOMB_X46_Y34_N18
\contador[7]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[7]~42_combout\ = (contador(7) & (!\contador[6]~41\)) # (!contador(7) & ((\contador[6]~41\) # (GND)))
-- \contador[7]~43\ = CARRY((!\contador[6]~41\) # (!contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \contador[6]~41\,
	combout => \contador[7]~42_combout\,
	cout => \contador[7]~43\);

-- Location: LCFF_X46_Y34_N19
\contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[7]~42_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(7));

-- Location: LCCOMB_X46_Y34_N22
\contador[9]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[9]~46_combout\ = (contador(9) & (!\contador[8]~45\)) # (!contador(9) & ((\contador[8]~45\) # (GND)))
-- \contador[9]~47\ = CARRY((!\contador[8]~45\) # (!contador(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(9),
	datad => VCC,
	cin => \contador[8]~45\,
	combout => \contador[9]~46_combout\,
	cout => \contador[9]~47\);

-- Location: LCFF_X46_Y34_N23
\contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[9]~46_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(9));

-- Location: LCCOMB_X46_Y34_N24
\contador[10]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[10]~48_combout\ = (contador(10) & (\contador[9]~47\ $ (GND))) # (!contador(10) & (!\contador[9]~47\ & VCC))
-- \contador[10]~49\ = CARRY((contador(10) & !\contador[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(10),
	datad => VCC,
	cin => \contador[9]~47\,
	combout => \contador[10]~48_combout\,
	cout => \contador[10]~49\);

-- Location: LCCOMB_X46_Y34_N26
\contador[11]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[11]~50_combout\ = (contador(11) & (!\contador[10]~49\)) # (!contador(11) & ((\contador[10]~49\) # (GND)))
-- \contador[11]~51\ = CARRY((!\contador[10]~49\) # (!contador(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(11),
	datad => VCC,
	cin => \contador[10]~49\,
	combout => \contador[11]~50_combout\,
	cout => \contador[11]~51\);

-- Location: LCFF_X46_Y34_N27
\contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[11]~50_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(11));

-- Location: LCCOMB_X46_Y34_N28
\contador[12]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[12]~52_combout\ = (contador(12) & (\contador[11]~51\ $ (GND))) # (!contador(12) & (!\contador[11]~51\ & VCC))
-- \contador[12]~53\ = CARRY((contador(12) & !\contador[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(12),
	datad => VCC,
	cin => \contador[11]~51\,
	combout => \contador[12]~52_combout\,
	cout => \contador[12]~53\);

-- Location: LCFF_X46_Y34_N29
\contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[12]~52_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(12));

-- Location: LCCOMB_X46_Y34_N30
\contador[13]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[13]~54_combout\ = (contador(13) & (!\contador[12]~53\)) # (!contador(13) & ((\contador[12]~53\) # (GND)))
-- \contador[13]~55\ = CARRY((!\contador[12]~53\) # (!contador(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(13),
	datad => VCC,
	cin => \contador[12]~53\,
	combout => \contador[13]~54_combout\,
	cout => \contador[13]~55\);

-- Location: LCFF_X46_Y34_N31
\contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[13]~54_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(13));

-- Location: LCCOMB_X46_Y33_N0
\contador[14]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[14]~56_combout\ = (contador(14) & (\contador[13]~55\ $ (GND))) # (!contador(14) & (!\contador[13]~55\ & VCC))
-- \contador[14]~57\ = CARRY((contador(14) & !\contador[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(14),
	datad => VCC,
	cin => \contador[13]~55\,
	combout => \contador[14]~56_combout\,
	cout => \contador[14]~57\);

-- Location: LCFF_X46_Y33_N1
\contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[14]~56_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(14));

-- Location: LCCOMB_X46_Y33_N2
\contador[15]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[15]~58_combout\ = (contador(15) & (!\contador[14]~57\)) # (!contador(15) & ((\contador[14]~57\) # (GND)))
-- \contador[15]~59\ = CARRY((!\contador[14]~57\) # (!contador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(15),
	datad => VCC,
	cin => \contador[14]~57\,
	combout => \contador[15]~58_combout\,
	cout => \contador[15]~59\);

-- Location: LCFF_X48_Y34_N17
\contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \contador[15]~58_combout\,
	sclr => \ALT_INV_EA~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(15));

-- Location: LCCOMB_X47_Y34_N14
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (((!contador(14)) # (!contador(15))) # (!contador(12))) # (!contador(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(13),
	datab => contador(12),
	datac => contador(15),
	datad => contador(14),
	combout => \Equal1~3_combout\);

-- Location: LCFF_X46_Y34_N7
\contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[1]~30_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(1));

-- Location: LCFF_X46_Y34_N11
\contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[3]~34_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(3));

-- Location: LCCOMB_X47_Y34_N24
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((!contador(3)) # (!contador(1))) # (!contador(0))) # (!contador(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \Equal1~0_combout\);

-- Location: LCFF_X46_Y34_N25
\contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[10]~48_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(10));

-- Location: LCCOMB_X46_Y34_N2
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (contador(8)) # ((contador(9)) # ((contador(10)) # (contador(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => contador(9),
	datac => contador(10),
	datad => contador(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X47_Y34_N0
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\) # ((\Equal1~3_combout\) # ((\Equal1~0_combout\) # (\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X46_Y33_N4
\contador[16]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[16]~60_combout\ = (contador(16) & (\contador[15]~59\ $ (GND))) # (!contador(16) & (!\contador[15]~59\ & VCC))
-- \contador[16]~61\ = CARRY((contador(16) & !\contador[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(16),
	datad => VCC,
	cin => \contador[15]~59\,
	combout => \contador[16]~60_combout\,
	cout => \contador[16]~61\);

-- Location: LCFF_X46_Y33_N5
\contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[16]~60_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(16));

-- Location: LCCOMB_X46_Y33_N8
\contador[18]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[18]~64_combout\ = (contador(18) & (\contador[17]~63\ $ (GND))) # (!contador(18) & (!\contador[17]~63\ & VCC))
-- \contador[18]~65\ = CARRY((contador(18) & !\contador[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(18),
	datad => VCC,
	cin => \contador[17]~63\,
	combout => \contador[18]~64_combout\,
	cout => \contador[18]~65\);

-- Location: LCFF_X46_Y33_N9
\contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[18]~64_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(18));

-- Location: LCCOMB_X46_Y33_N10
\contador[19]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[19]~66_combout\ = (contador(19) & (!\contador[18]~65\)) # (!contador(19) & ((\contador[18]~65\) # (GND)))
-- \contador[19]~67\ = CARRY((!\contador[18]~65\) # (!contador(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datad => VCC,
	cin => \contador[18]~65\,
	combout => \contador[19]~66_combout\,
	cout => \contador[19]~67\);

-- Location: LCCOMB_X46_Y33_N12
\contador[20]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[20]~68_combout\ = (contador(20) & (\contador[19]~67\ $ (GND))) # (!contador(20) & (!\contador[19]~67\ & VCC))
-- \contador[20]~69\ = CARRY((contador(20) & !\contador[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(20),
	datad => VCC,
	cin => \contador[19]~67\,
	combout => \contador[20]~68_combout\,
	cout => \contador[20]~69\);

-- Location: LCCOMB_X46_Y33_N14
\contador[21]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[21]~70_combout\ = (contador(21) & (!\contador[20]~69\)) # (!contador(21) & ((\contador[20]~69\) # (GND)))
-- \contador[21]~71\ = CARRY((!\contador[20]~69\) # (!contador(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(21),
	datad => VCC,
	cin => \contador[20]~69\,
	combout => \contador[21]~70_combout\,
	cout => \contador[21]~71\);

-- Location: LCFF_X46_Y33_N15
\contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[21]~70_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(21));

-- Location: LCCOMB_X46_Y33_N18
\contador[23]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[23]~74_combout\ = (contador(23) & (!\contador[22]~73\)) # (!contador(23) & ((\contador[22]~73\) # (GND)))
-- \contador[23]~75\ = CARRY((!\contador[22]~73\) # (!contador(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(23),
	datad => VCC,
	cin => \contador[22]~73\,
	combout => \contador[23]~74_combout\,
	cout => \contador[23]~75\);

-- Location: LCFF_X46_Y33_N19
\contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[23]~74_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(23));

-- Location: LCCOMB_X46_Y33_N22
\contador[25]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[25]~78_combout\ = (contador(25) & (!\contador[24]~77\)) # (!contador(25) & ((\contador[24]~77\) # (GND)))
-- \contador[25]~79\ = CARRY((!\contador[24]~77\) # (!contador(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(25),
	datad => VCC,
	cin => \contador[24]~77\,
	combout => \contador[25]~78_combout\,
	cout => \contador[25]~79\);

-- Location: LCFF_X46_Y33_N23
\contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[25]~78_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(25));

-- Location: LCCOMB_X46_Y33_N24
\contador[26]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[26]~80_combout\ = (contador(26) & (\contador[25]~79\ $ (GND))) # (!contador(26) & (!\contador[25]~79\ & VCC))
-- \contador[26]~81\ = CARRY((contador(26) & !\contador[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(26),
	datad => VCC,
	cin => \contador[25]~79\,
	combout => \contador[26]~80_combout\,
	cout => \contador[26]~81\);

-- Location: LCFF_X46_Y33_N25
\contador[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[26]~80_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(26));

-- Location: LCCOMB_X46_Y33_N26
\contador[27]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador[27]~82_combout\ = \contador[26]~81\ $ (contador(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(27),
	cin => \contador[26]~81\,
	combout => \contador[27]~82_combout\);

-- Location: LCFF_X46_Y33_N27
\contador[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[27]~82_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(27));

-- Location: LCCOMB_X47_Y33_N0
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (contador(24)) # ((contador(26)) # ((contador(27)) # (!contador(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(24),
	datab => contador(26),
	datac => contador(27),
	datad => contador(25),
	combout => \Equal1~7_combout\);

-- Location: LCFF_X46_Y33_N11
\contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[19]~66_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(19));

-- Location: LCCOMB_X46_Y33_N28
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ((contador(16)) # ((contador(18)) # (!contador(19)))) # (!contador(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(17),
	datab => contador(16),
	datac => contador(18),
	datad => contador(19),
	combout => \Equal1~5_combout\);

-- Location: LCFF_X46_Y33_N13
\contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador[20]~68_combout\,
	sclr => \ALT_INV_EA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contador(20));

-- Location: LCCOMB_X46_Y33_N30
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (((!contador(20)) # (!contador(21))) # (!contador(23))) # (!contador(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datab => contador(23),
	datac => contador(21),
	datad => contador(20),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X47_Y34_N2
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~7_combout\) # ((\Equal1~5_combout\) # (\Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~7_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X48_Y34_N12
\PE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PE~0_combout\ = (\Equal1~4_combout\) # ((\Equal1~8_combout\) # (!\EA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \EA~regout\,
	datad => \Equal1~8_combout\,
	combout => \PE~0_combout\);

-- Location: LCFF_X48_Y34_N13
PE : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PE~regout\);

-- Location: LCFF_X47_Y34_N7
EA : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \PE~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EA~regout\);

-- Location: LCFF_X47_Y34_N23
\P2:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P2:counter[1]~regout\);

-- Location: LCCOMB_X47_Y34_N6
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\EA~regout\ & (((\Equal1~4_combout\) # (\Equal1~8_combout\)))) # (!\EA~regout\ & (\counter~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~0_combout\,
	datab => \Equal1~4_combout\,
	datac => \EA~regout\,
	datad => \Equal1~8_combout\,
	combout => \counter~1_combout\);

-- Location: LCCOMB_X47_Y34_N22
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\counter~1_combout\ & (((\P2:counter[1]~regout\)))) # (!\counter~1_combout\ & (\EA~regout\ & (\P2:counter[0]~regout\ $ (\P2:counter[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2:counter[0]~regout\,
	datab => \EA~regout\,
	datac => \P2:counter[1]~regout\,
	datad => \counter~1_combout\,
	combout => \counter~3_combout\);

-- Location: LCFF_X47_Y34_N21
\P2:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P2:counter[2]~regout\);

-- Location: LCCOMB_X47_Y34_N20
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\counter~1_combout\ & (((\P2:counter[2]~regout\)))) # (!\counter~1_combout\ & (\Add1~0_combout\ & (\EA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \EA~regout\,
	datac => \P2:counter[2]~regout\,
	datad => \counter~1_combout\,
	combout => \counter~4_combout\);

-- Location: LCFF_X47_Y34_N19
\P2:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P2:counter[0]~regout\);

-- Location: LCCOMB_X47_Y34_N18
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\P2:counter[0]~regout\ & ((\counter~1_combout\))) # (!\P2:counter[0]~regout\ & (\EA~regout\ & !\counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EA~regout\,
	datac => \P2:counter[0]~regout\,
	datad => \counter~1_combout\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X47_Y34_N8
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\counter~3_combout\ & (\counter~5_combout\)) # (!\counter~3_combout\ & (\counter~4_combout\ $ (((!\counter~5_combout\ & \counter~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~3_combout\,
	datac => \counter~4_combout\,
	datad => \counter~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCFF_X47_Y34_N9
\outp[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[0]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\counter~5_combout\ & ((\counter~3_combout\) # ((\counter~4_combout\)))) # (!\counter~5_combout\ & (\counter~4_combout\ & (\counter~3_combout\ $ (\counter~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~3_combout\,
	datac => \counter~4_combout\,
	datad => \counter~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCFF_X47_Y34_N31
\outp[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[1]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N16
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\counter~4_combout\ & (\counter~5_combout\)) # (!\counter~4_combout\ & (\counter~3_combout\ & ((\counter~5_combout\) # (!\counter~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~2_combout\,
	datac => \counter~4_combout\,
	datad => \counter~3_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCFF_X47_Y34_N17
\outp[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[2]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N10
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\counter~3_combout\ & ((\counter~5_combout\) # ((\counter~4_combout\ & \counter~2_combout\)))) # (!\counter~3_combout\ & (\counter~4_combout\ $ (((!\counter~5_combout\ & \counter~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~3_combout\,
	datac => \counter~4_combout\,
	datad => \counter~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCFF_X47_Y34_N11
\outp[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[3]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N4
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\counter~2_combout\) # ((\counter~3_combout\ & (\counter~5_combout\)) # (!\counter~3_combout\ & ((\counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~2_combout\,
	datac => \counter~4_combout\,
	datad => \counter~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCFF_X47_Y34_N5
\outp[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[4]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N26
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\counter~2_combout\ & ((\counter~3_combout\) # (\counter~5_combout\ $ (!\counter~4_combout\)))) # (!\counter~2_combout\ & ((\counter~4_combout\ & (\counter~5_combout\)) # (!\counter~4_combout\ & ((\counter~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~2_combout\,
	datac => \counter~4_combout\,
	datad => \counter~3_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCFF_X47_Y34_N27
\outp[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[5]~reg0_regout\);

-- Location: LCCOMB_X47_Y34_N28
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\counter~3_combout\ & ((\counter~5_combout\) # ((\counter~4_combout\ & \counter~2_combout\)))) # (!\counter~3_combout\ & (\counter~5_combout\ $ ((!\counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~5_combout\,
	datab => \counter~3_combout\,
	datac => \counter~4_combout\,
	datad => \counter~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCFF_X47_Y34_N29
\outp[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \outp[6]~reg0_regout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(3));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(5));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\outp[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \outp[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_outp(6));
END structure;


