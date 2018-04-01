-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3.1 (win64) Build 2035080 Fri Oct 20 14:20:01 MDT 2017
-- Date        : Sun Jan 21 13:51:57 2018
-- Host        : HP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               h:/Practice/project_2/project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/embsys_PmodENC_0_0_sim_netlist.vhdl
-- Design      : embsys_PmodENC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PmodENC_0_0_debouncer is
  port (
    btnOutReg : out STD_LOGIC;
    swtOutReg : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    pmodENC_btn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    pmodENC_sw : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PmodENC_0_0_debouncer : entity is "debouncer";
end embsys_PmodENC_0_0_debouncer;

architecture STRUCTURE of embsys_PmodENC_0_0_debouncer is
  signal \^btnoutreg\ : STD_LOGIC;
  signal btnOutReg_i_1_n_0 : STD_LOGIC;
  signal btnOutReg_i_2_n_0 : STD_LOGIC;
  signal btnOutReg_i_3_n_0 : STD_LOGIC;
  signal btnOutReg_i_4_n_0 : STD_LOGIC;
  signal btnReg : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal sampleClk : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sampleClk[31]_i_10_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_3_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_4_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_5_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_7_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_8_n_0\ : STD_LOGIC;
  signal \sampleClk[31]_i_9_n_0\ : STD_LOGIC;
  signal sampleClk_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sampleClk_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sampleClk_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sampleClk_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sampleClk_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sampleClk_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \^swtoutreg\ : STD_LOGIC;
  signal swtOutReg_i_1_n_0 : STD_LOGIC;
  signal swtReg : STD_LOGIC;
  signal \NLW_sampleClk_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sampleClk_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  btnOutReg <= \^btnoutreg\;
  swtOutReg <= \^swtoutreg\;
btnOutReg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01000000"
    )
        port map (
      I0 => \sampleClk[31]_i_5_n_0\,
      I1 => \sampleClk[31]_i_4_n_0\,
      I2 => btnOutReg_i_2_n_0,
      I3 => pmodENC_btn,
      I4 => btnReg,
      I5 => \^btnoutreg\,
      O => btnOutReg_i_1_n_0
    );
btnOutReg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sampleClk[31]_i_7_n_0\,
      I1 => btnOutReg_i_3_n_0,
      I2 => \sampleClk[31]_i_8_n_0\,
      I3 => btnOutReg_i_4_n_0,
      O => btnOutReg_i_2_n_0
    );
btnOutReg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sampleClk(17),
      I1 => sampleClk(16),
      I2 => sampleClk(19),
      I3 => sampleClk(18),
      O => btnOutReg_i_3_n_0
    );
btnOutReg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sampleClk(25),
      I1 => sampleClk(24),
      I2 => sampleClk(27),
      I3 => sampleClk(26),
      O => btnOutReg_i_4_n_0
    );
btnOutReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => btnOutReg_i_1_n_0,
      Q => \^btnoutreg\,
      R => SS(0)
    );
btnReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pmodENC_btn,
      Q => btnReg,
      R => SS(0)
    );
\sampleClk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sampleClk(0),
      O => sampleClk_0(0)
    );
\sampleClk[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(10),
      O => sampleClk_0(10)
    );
\sampleClk[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(11),
      O => sampleClk_0(11)
    );
\sampleClk[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(12),
      O => sampleClk_0(12)
    );
\sampleClk[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(13),
      O => sampleClk_0(13)
    );
\sampleClk[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(14),
      O => sampleClk_0(14)
    );
\sampleClk[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(15),
      O => sampleClk_0(15)
    );
\sampleClk[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(16),
      O => sampleClk_0(16)
    );
\sampleClk[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(17),
      O => sampleClk_0(17)
    );
\sampleClk[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(18),
      O => sampleClk_0(18)
    );
\sampleClk[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(19),
      O => sampleClk_0(19)
    );
\sampleClk[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(1),
      O => sampleClk_0(1)
    );
\sampleClk[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(20),
      O => sampleClk_0(20)
    );
\sampleClk[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(21),
      O => sampleClk_0(21)
    );
\sampleClk[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(22),
      O => sampleClk_0(22)
    );
\sampleClk[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(23),
      O => sampleClk_0(23)
    );
\sampleClk[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(24),
      O => sampleClk_0(24)
    );
\sampleClk[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(25),
      O => sampleClk_0(25)
    );
\sampleClk[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(26),
      O => sampleClk_0(26)
    );
\sampleClk[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(27),
      O => sampleClk_0(27)
    );
\sampleClk[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(28),
      O => sampleClk_0(28)
    );
\sampleClk[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(29),
      O => sampleClk_0(29)
    );
\sampleClk[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(2),
      O => sampleClk_0(2)
    );
\sampleClk[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(30),
      O => sampleClk_0(30)
    );
\sampleClk[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(31),
      O => sampleClk_0(31)
    );
\sampleClk[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sampleClk(13),
      I1 => sampleClk(12),
      I2 => sampleClk(15),
      I3 => sampleClk(14),
      O => \sampleClk[31]_i_10_n_0\
    );
\sampleClk[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sampleClk(18),
      I1 => sampleClk(19),
      I2 => sampleClk(16),
      I3 => sampleClk(17),
      I4 => \sampleClk[31]_i_7_n_0\,
      O => \sampleClk[31]_i_2_n_0\
    );
\sampleClk[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sampleClk(26),
      I1 => sampleClk(27),
      I2 => sampleClk(24),
      I3 => sampleClk(25),
      I4 => \sampleClk[31]_i_8_n_0\,
      O => \sampleClk[31]_i_3_n_0\
    );
\sampleClk[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => sampleClk(2),
      I1 => sampleClk(3),
      I2 => sampleClk(0),
      I3 => sampleClk(1),
      I4 => \sampleClk[31]_i_9_n_0\,
      O => \sampleClk[31]_i_4_n_0\
    );
\sampleClk[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sampleClk(10),
      I1 => sampleClk(11),
      I2 => sampleClk(8),
      I3 => sampleClk(9),
      I4 => \sampleClk[31]_i_10_n_0\,
      O => \sampleClk[31]_i_5_n_0\
    );
\sampleClk[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sampleClk(21),
      I1 => sampleClk(20),
      I2 => sampleClk(23),
      I3 => sampleClk(22),
      O => \sampleClk[31]_i_7_n_0\
    );
\sampleClk[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sampleClk(29),
      I1 => sampleClk(28),
      I2 => sampleClk(31),
      I3 => sampleClk(30),
      O => \sampleClk[31]_i_8_n_0\
    );
\sampleClk[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => sampleClk(5),
      I1 => sampleClk(4),
      I2 => sampleClk(6),
      I3 => sampleClk(7),
      O => \sampleClk[31]_i_9_n_0\
    );
\sampleClk[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(3),
      O => sampleClk_0(3)
    );
\sampleClk[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(4),
      O => sampleClk_0(4)
    );
\sampleClk[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(5),
      O => sampleClk_0(5)
    );
\sampleClk[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(6),
      O => sampleClk_0(6)
    );
\sampleClk[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(7),
      O => sampleClk_0(7)
    );
\sampleClk[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(8),
      O => sampleClk_0(8)
    );
\sampleClk[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \sampleClk[31]_i_2_n_0\,
      I1 => \sampleClk[31]_i_3_n_0\,
      I2 => \sampleClk[31]_i_4_n_0\,
      I3 => \sampleClk[31]_i_5_n_0\,
      I4 => data0(9),
      O => sampleClk_0(9)
    );
\sampleClk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(0),
      Q => sampleClk(0),
      R => SS(0)
    );
\sampleClk_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(10),
      Q => sampleClk(10),
      R => SS(0)
    );
\sampleClk_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(11),
      Q => sampleClk(11),
      R => SS(0)
    );
\sampleClk_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(12),
      Q => sampleClk(12),
      R => SS(0)
    );
\sampleClk_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[8]_i_2_n_0\,
      CO(3) => \sampleClk_reg[12]_i_2_n_0\,
      CO(2) => \sampleClk_reg[12]_i_2_n_1\,
      CO(1) => \sampleClk_reg[12]_i_2_n_2\,
      CO(0) => \sampleClk_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => sampleClk(12 downto 9)
    );
\sampleClk_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(13),
      Q => sampleClk(13),
      R => SS(0)
    );
\sampleClk_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(14),
      Q => sampleClk(14),
      R => SS(0)
    );
\sampleClk_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(15),
      Q => sampleClk(15),
      R => SS(0)
    );
\sampleClk_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(16),
      Q => sampleClk(16),
      R => SS(0)
    );
\sampleClk_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[12]_i_2_n_0\,
      CO(3) => \sampleClk_reg[16]_i_2_n_0\,
      CO(2) => \sampleClk_reg[16]_i_2_n_1\,
      CO(1) => \sampleClk_reg[16]_i_2_n_2\,
      CO(0) => \sampleClk_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => sampleClk(16 downto 13)
    );
\sampleClk_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(17),
      Q => sampleClk(17),
      R => SS(0)
    );
\sampleClk_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(18),
      Q => sampleClk(18),
      R => SS(0)
    );
\sampleClk_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(19),
      Q => sampleClk(19),
      R => SS(0)
    );
\sampleClk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(1),
      Q => sampleClk(1),
      R => SS(0)
    );
\sampleClk_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(20),
      Q => sampleClk(20),
      R => SS(0)
    );
\sampleClk_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[16]_i_2_n_0\,
      CO(3) => \sampleClk_reg[20]_i_2_n_0\,
      CO(2) => \sampleClk_reg[20]_i_2_n_1\,
      CO(1) => \sampleClk_reg[20]_i_2_n_2\,
      CO(0) => \sampleClk_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => sampleClk(20 downto 17)
    );
\sampleClk_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(21),
      Q => sampleClk(21),
      R => SS(0)
    );
\sampleClk_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(22),
      Q => sampleClk(22),
      R => SS(0)
    );
\sampleClk_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(23),
      Q => sampleClk(23),
      R => SS(0)
    );
\sampleClk_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(24),
      Q => sampleClk(24),
      R => SS(0)
    );
\sampleClk_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[20]_i_2_n_0\,
      CO(3) => \sampleClk_reg[24]_i_2_n_0\,
      CO(2) => \sampleClk_reg[24]_i_2_n_1\,
      CO(1) => \sampleClk_reg[24]_i_2_n_2\,
      CO(0) => \sampleClk_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => sampleClk(24 downto 21)
    );
\sampleClk_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(25),
      Q => sampleClk(25),
      R => SS(0)
    );
\sampleClk_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(26),
      Q => sampleClk(26),
      R => SS(0)
    );
\sampleClk_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(27),
      Q => sampleClk(27),
      R => SS(0)
    );
\sampleClk_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(28),
      Q => sampleClk(28),
      R => SS(0)
    );
\sampleClk_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[24]_i_2_n_0\,
      CO(3) => \sampleClk_reg[28]_i_2_n_0\,
      CO(2) => \sampleClk_reg[28]_i_2_n_1\,
      CO(1) => \sampleClk_reg[28]_i_2_n_2\,
      CO(0) => \sampleClk_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => sampleClk(28 downto 25)
    );
\sampleClk_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(29),
      Q => sampleClk(29),
      R => SS(0)
    );
\sampleClk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(2),
      Q => sampleClk(2),
      R => SS(0)
    );
\sampleClk_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(30),
      Q => sampleClk(30),
      R => SS(0)
    );
\sampleClk_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(31),
      Q => sampleClk(31),
      R => SS(0)
    );
\sampleClk_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_sampleClk_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sampleClk_reg[31]_i_6_n_2\,
      CO(0) => \sampleClk_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sampleClk_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sampleClk(31 downto 29)
    );
\sampleClk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(3),
      Q => sampleClk(3),
      R => SS(0)
    );
\sampleClk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(4),
      Q => sampleClk(4),
      R => SS(0)
    );
\sampleClk_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sampleClk_reg[4]_i_2_n_0\,
      CO(2) => \sampleClk_reg[4]_i_2_n_1\,
      CO(1) => \sampleClk_reg[4]_i_2_n_2\,
      CO(0) => \sampleClk_reg[4]_i_2_n_3\,
      CYINIT => sampleClk(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => sampleClk(4 downto 1)
    );
\sampleClk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(5),
      Q => sampleClk(5),
      R => SS(0)
    );
\sampleClk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(6),
      Q => sampleClk(6),
      R => SS(0)
    );
\sampleClk_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(7),
      Q => sampleClk(7),
      R => SS(0)
    );
\sampleClk_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(8),
      Q => sampleClk(8),
      R => SS(0)
    );
\sampleClk_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sampleClk_reg[4]_i_2_n_0\,
      CO(3) => \sampleClk_reg[8]_i_2_n_0\,
      CO(2) => \sampleClk_reg[8]_i_2_n_1\,
      CO(1) => \sampleClk_reg[8]_i_2_n_2\,
      CO(0) => \sampleClk_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => sampleClk(8 downto 5)
    );
\sampleClk_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sampleClk_0(9),
      Q => sampleClk(9),
      R => SS(0)
    );
swtOutReg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01000000"
    )
        port map (
      I0 => \sampleClk[31]_i_5_n_0\,
      I1 => \sampleClk[31]_i_4_n_0\,
      I2 => btnOutReg_i_2_n_0,
      I3 => pmodENC_sw,
      I4 => swtReg,
      I5 => \^swtoutreg\,
      O => swtOutReg_i_1_n_0
    );
swtOutReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => swtOutReg_i_1_n_0,
      Q => \^swtoutreg\,
      R => SS(0)
    );
swtReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pmodENC_sw,
      Q => swtReg,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PmodENC_0_0_encoder is
  port (
    \axi_rdata_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    pmodENC_B : in STD_LOGIC;
    pmodENC_A : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PmodENC_0_0_encoder : entity is "encoder";
end embsys_PmodENC_0_0_encoder;

architecture STRUCTURE of embsys_PmodENC_0_0_encoder is
  signal \^axi_rdata_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal countReg0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal countReg00_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal countReg1 : STD_LOGIC;
  signal \countReg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \countReg1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \countReg1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \countReg1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \countReg1_carry__0_n_0\ : STD_LOGIC;
  signal \countReg1_carry__0_n_1\ : STD_LOGIC;
  signal \countReg1_carry__0_n_2\ : STD_LOGIC;
  signal \countReg1_carry__0_n_3\ : STD_LOGIC;
  signal \countReg1_carry__1_i_1_n_3\ : STD_LOGIC;
  signal \countReg1_carry__1_n_0\ : STD_LOGIC;
  signal \countReg1_carry__1_n_1\ : STD_LOGIC;
  signal \countReg1_carry__1_n_2\ : STD_LOGIC;
  signal \countReg1_carry__1_n_3\ : STD_LOGIC;
  signal \countReg1_carry__2_n_1\ : STD_LOGIC;
  signal \countReg1_carry__2_n_2\ : STD_LOGIC;
  signal \countReg1_carry__2_n_3\ : STD_LOGIC;
  signal countReg1_carry_i_1_n_0 : STD_LOGIC;
  signal countReg1_carry_i_2_n_0 : STD_LOGIC;
  signal countReg1_carry_i_3_n_0 : STD_LOGIC;
  signal countReg1_carry_i_4_n_0 : STD_LOGIC;
  signal countReg1_carry_n_0 : STD_LOGIC;
  signal countReg1_carry_n_1 : STD_LOGIC;
  signal countReg1_carry_n_2 : STD_LOGIC;
  signal countReg1_carry_n_3 : STD_LOGIC;
  signal countReg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \countReg2__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__0_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__0_n_1\ : STD_LOGIC;
  signal \countReg2__0_carry__0_n_2\ : STD_LOGIC;
  signal \countReg2__0_carry__0_n_3\ : STD_LOGIC;
  signal \countReg2__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__1_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__1_n_1\ : STD_LOGIC;
  signal \countReg2__0_carry__1_n_2\ : STD_LOGIC;
  signal \countReg2__0_carry__1_n_3\ : STD_LOGIC;
  signal \countReg2__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry__2_n_1\ : STD_LOGIC;
  signal \countReg2__0_carry__2_n_2\ : STD_LOGIC;
  signal \countReg2__0_carry__2_n_3\ : STD_LOGIC;
  signal \countReg2__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry_n_0\ : STD_LOGIC;
  signal \countReg2__0_carry_n_1\ : STD_LOGIC;
  signal \countReg2__0_carry_n_2\ : STD_LOGIC;
  signal \countReg2__0_carry_n_3\ : STD_LOGIC;
  signal \countReg2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \countReg2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \countReg2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \countReg2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \countReg2_carry__0_n_0\ : STD_LOGIC;
  signal \countReg2_carry__0_n_1\ : STD_LOGIC;
  signal \countReg2_carry__0_n_2\ : STD_LOGIC;
  signal \countReg2_carry__0_n_3\ : STD_LOGIC;
  signal \countReg2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \countReg2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \countReg2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \countReg2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \countReg2_carry__1_n_0\ : STD_LOGIC;
  signal \countReg2_carry__1_n_1\ : STD_LOGIC;
  signal \countReg2_carry__1_n_2\ : STD_LOGIC;
  signal \countReg2_carry__1_n_3\ : STD_LOGIC;
  signal \countReg2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \countReg2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \countReg2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \countReg2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \countReg2_carry__2_n_0\ : STD_LOGIC;
  signal \countReg2_carry__2_n_1\ : STD_LOGIC;
  signal \countReg2_carry__2_n_2\ : STD_LOGIC;
  signal \countReg2_carry__2_n_3\ : STD_LOGIC;
  signal countReg2_carry_i_1_n_0 : STD_LOGIC;
  signal countReg2_carry_i_2_n_0 : STD_LOGIC;
  signal countReg2_carry_i_3_n_0 : STD_LOGIC;
  signal countReg2_carry_i_4_n_0 : STD_LOGIC;
  signal countReg2_carry_n_0 : STD_LOGIC;
  signal countReg2_carry_n_1 : STD_LOGIC;
  signal countReg2_carry_n_2 : STD_LOGIC;
  signal countReg2_carry_n_3 : STD_LOGIC;
  signal \countReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[10]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[11]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[11]_i_3_n_0\ : STD_LOGIC;
  signal \countReg[11]_i_4_n_0\ : STD_LOGIC;
  signal \countReg[11]_i_5_n_0\ : STD_LOGIC;
  signal \countReg[11]_i_6_n_0\ : STD_LOGIC;
  signal \countReg[12]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[13]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[14]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[15]_i_2_n_0\ : STD_LOGIC;
  signal \countReg[15]_i_4_n_0\ : STD_LOGIC;
  signal \countReg[15]_i_5_n_0\ : STD_LOGIC;
  signal \countReg[15]_i_6_n_0\ : STD_LOGIC;
  signal \countReg[15]_i_7_n_0\ : STD_LOGIC;
  signal \countReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[3]_i_3_n_0\ : STD_LOGIC;
  signal \countReg[3]_i_4_n_0\ : STD_LOGIC;
  signal \countReg[3]_i_5_n_0\ : STD_LOGIC;
  signal \countReg[3]_i_6_n_0\ : STD_LOGIC;
  signal \countReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[7]_i_3_n_0\ : STD_LOGIC;
  signal \countReg[7]_i_4_n_0\ : STD_LOGIC;
  signal \countReg[8]_i_1_n_0\ : STD_LOGIC;
  signal \countReg[9]_i_1_n_0\ : STD_LOGIC;
  signal \countReg_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \countReg_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \countReg_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \countReg_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \countReg_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \countReg_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \countReg_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \countReg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \countReg_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \countReg_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \countReg_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \countReg_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \countReg_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \countReg_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \countReg_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal dirReg : STD_LOGIC;
  signal dirReg_i_1_n_0 : STD_LOGIC;
  signal dly_q1 : STD_LOGIC;
  signal eventReg : STD_LOGIC;
  signal eventReg_i_1_n_0 : STD_LOGIC;
  signal \incrDecrValReg_reg_n_0_[0]\ : STD_LOGIC;
  signal \incrDecrValReg_reg_n_0_[1]\ : STD_LOGIC;
  signal \incrDecrValReg_reg_n_0_[2]\ : STD_LOGIC;
  signal \incrDecrValReg_reg_n_0_[3]\ : STD_LOGIC;
  signal noNegReg : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal q1 : STD_LOGIC;
  signal q1_i_1_n_0 : STD_LOGIC;
  signal q2 : STD_LOGIC;
  signal q2_i_1_n_0 : STD_LOGIC;
  signal NLW_countReg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countReg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countReg1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countReg1_carry__1_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_countReg1_carry__1_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countReg1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_countReg2__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_countReg2__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_countReg_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dirReg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of eventReg_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of q1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of q2_i_1 : label is "soft_lutpair1";
begin
  \axi_rdata_reg[15]\(15 downto 0) <= \^axi_rdata_reg[15]\(15 downto 0);
A_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pmodENC_A,
      Q => p_0_in(0),
      R => '0'
    );
B_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pmodENC_B,
      Q => p_0_in(1),
      R => '0'
    );
countReg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => countReg1_carry_n_0,
      CO(2) => countReg1_carry_n_1,
      CO(1) => countReg1_carry_n_2,
      CO(0) => countReg1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_countReg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => countReg1_carry_i_1_n_0,
      S(2) => countReg1_carry_i_2_n_0,
      S(1) => countReg1_carry_i_3_n_0,
      S(0) => countReg1_carry_i_4_n_0
    );
\countReg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => countReg1_carry_n_0,
      CO(3) => \countReg1_carry__0_n_0\,
      CO(2) => \countReg1_carry__0_n_1\,
      CO(1) => \countReg1_carry__0_n_2\,
      CO(0) => \countReg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_countReg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \countReg1_carry__0_i_1_n_0\,
      S(2) => \countReg1_carry__0_i_2_n_0\,
      S(1) => \countReg1_carry__0_i_3_n_0\,
      S(0) => \countReg1_carry__0_i_4_n_0\
    );
\countReg1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(14),
      I1 => countReg2(15),
      O => \countReg1_carry__0_i_1_n_0\
    );
\countReg1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(12),
      I1 => countReg2(13),
      O => \countReg1_carry__0_i_2_n_0\
    );
\countReg1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(10),
      I1 => countReg2(11),
      O => \countReg1_carry__0_i_3_n_0\
    );
\countReg1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(8),
      I1 => countReg2(9),
      O => \countReg1_carry__0_i_4_n_0\
    );
\countReg1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg1_carry__0_n_0\,
      CO(3) => \countReg1_carry__1_n_0\,
      CO(2) => \countReg1_carry__1_n_1\,
      CO(1) => \countReg1_carry__1_n_2\,
      CO(0) => \countReg1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_countReg1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \countReg1_carry__1_i_1_n_3\,
      S(2) => \countReg1_carry__1_i_1_n_3\,
      S(1) => \countReg1_carry__1_i_1_n_3\,
      S(0) => \countReg1_carry__1_i_1_n_3\
    );
\countReg1_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2_carry__2_n_0\,
      CO(3 downto 1) => \NLW_countReg1_carry__1_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \countReg1_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_countReg1_carry__1_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\countReg1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg1_carry__1_n_0\,
      CO(3) => countReg1,
      CO(2) => \countReg1_carry__2_n_1\,
      CO(1) => \countReg1_carry__2_n_2\,
      CO(0) => \countReg1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => countReg2(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_countReg1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \countReg1_carry__1_i_1_n_3\,
      S(2) => \countReg1_carry__1_i_1_n_3\,
      S(1) => \countReg1_carry__1_i_1_n_3\,
      S(0) => \countReg1_carry__1_i_1_n_3\
    );
\countReg1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \countReg1_carry__1_i_1_n_3\,
      O => countReg2(31)
    );
countReg1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(6),
      I1 => countReg2(7),
      O => countReg1_carry_i_1_n_0
    );
countReg1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(4),
      I1 => countReg2(5),
      O => countReg1_carry_i_2_n_0
    );
countReg1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(2),
      I1 => countReg2(3),
      O => countReg1_carry_i_3_n_0
    );
countReg1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countReg2(0),
      I1 => countReg2(1),
      O => countReg1_carry_i_4_n_0
    );
\countReg2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \countReg2__0_carry_n_0\,
      CO(2) => \countReg2__0_carry_n_1\,
      CO(1) => \countReg2__0_carry_n_2\,
      CO(0) => \countReg2__0_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(3 downto 0),
      O(3 downto 1) => countReg0(3 downto 1),
      O(0) => \NLW_countReg2__0_carry_O_UNCONNECTED\(0),
      S(3) => \countReg2__0_carry_i_1_n_0\,
      S(2) => \countReg2__0_carry_i_2_n_0\,
      S(1) => \countReg2__0_carry_i_3_n_0\,
      S(0) => \countReg2__0_carry_i_4_n_0\
    );
\countReg2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2__0_carry_n_0\,
      CO(3) => \countReg2__0_carry__0_n_0\,
      CO(2) => \countReg2__0_carry__0_n_1\,
      CO(1) => \countReg2__0_carry__0_n_2\,
      CO(0) => \countReg2__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \^axi_rdata_reg[15]\(6 downto 5),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => countReg0(7 downto 4),
      S(3) => \countReg2__0_carry__0_i_1_n_0\,
      S(2) => \countReg2__0_carry__0_i_2_n_0\,
      S(1) => \countReg2__0_carry__0_i_3_n_0\,
      S(0) => \countReg2__0_carry__0_i_4_n_0\
    );
\countReg2__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(6),
      I1 => \^axi_rdata_reg[15]\(7),
      O => \countReg2__0_carry__0_i_1_n_0\
    );
\countReg2__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      I1 => \^axi_rdata_reg[15]\(6),
      O => \countReg2__0_carry__0_i_2_n_0\
    );
\countReg2__0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      O => \countReg2__0_carry__0_i_3_n_0\
    );
\countReg2__0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(4),
      O => \countReg2__0_carry__0_i_4_n_0\
    );
\countReg2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2__0_carry__0_n_0\,
      CO(3) => \countReg2__0_carry__1_n_0\,
      CO(2) => \countReg2__0_carry__1_n_1\,
      CO(1) => \countReg2__0_carry__1_n_2\,
      CO(0) => \countReg2__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(10 downto 7),
      O(3 downto 0) => countReg0(11 downto 8),
      S(3) => \countReg2__0_carry__1_i_1_n_0\,
      S(2) => \countReg2__0_carry__1_i_2_n_0\,
      S(1) => \countReg2__0_carry__1_i_3_n_0\,
      S(0) => \countReg2__0_carry__1_i_4_n_0\
    );
\countReg2__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(10),
      I1 => \^axi_rdata_reg[15]\(11),
      O => \countReg2__0_carry__1_i_1_n_0\
    );
\countReg2__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(9),
      I1 => \^axi_rdata_reg[15]\(10),
      O => \countReg2__0_carry__1_i_2_n_0\
    );
\countReg2__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(8),
      I1 => \^axi_rdata_reg[15]\(9),
      O => \countReg2__0_carry__1_i_3_n_0\
    );
\countReg2__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(7),
      I1 => \^axi_rdata_reg[15]\(8),
      O => \countReg2__0_carry__1_i_4_n_0\
    );
\countReg2__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2__0_carry__1_n_0\,
      CO(3) => \NLW_countReg2__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \countReg2__0_carry__2_n_1\,
      CO(1) => \countReg2__0_carry__2_n_2\,
      CO(0) => \countReg2__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^axi_rdata_reg[15]\(13 downto 11),
      O(3 downto 0) => countReg0(15 downto 12),
      S(3) => \countReg2__0_carry__2_i_1_n_0\,
      S(2) => \countReg2__0_carry__2_i_2_n_0\,
      S(1) => \countReg2__0_carry__2_i_3_n_0\,
      S(0) => \countReg2__0_carry__2_i_4_n_0\
    );
\countReg2__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(14),
      I1 => \^axi_rdata_reg[15]\(15),
      O => \countReg2__0_carry__2_i_1_n_0\
    );
\countReg2__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(13),
      I1 => \^axi_rdata_reg[15]\(14),
      O => \countReg2__0_carry__2_i_2_n_0\
    );
\countReg2__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(12),
      I1 => \^axi_rdata_reg[15]\(13),
      O => \countReg2__0_carry__2_i_3_n_0\
    );
\countReg2__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(11),
      I1 => \^axi_rdata_reg[15]\(12),
      O => \countReg2__0_carry__2_i_4_n_0\
    );
\countReg2__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(3),
      I1 => \incrDecrValReg_reg_n_0_[3]\,
      O => \countReg2__0_carry_i_1_n_0\
    );
\countReg2__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(2),
      I1 => \incrDecrValReg_reg_n_0_[2]\,
      O => \countReg2__0_carry_i_2_n_0\
    );
\countReg2__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(1),
      I1 => \incrDecrValReg_reg_n_0_[1]\,
      O => \countReg2__0_carry_i_3_n_0\
    );
\countReg2__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(0),
      I1 => \incrDecrValReg_reg_n_0_[0]\,
      O => \countReg2__0_carry_i_4_n_0\
    );
countReg2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => countReg2_carry_n_0,
      CO(2) => countReg2_carry_n_1,
      CO(1) => countReg2_carry_n_2,
      CO(0) => countReg2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(3 downto 0),
      O(3 downto 0) => countReg2(3 downto 0),
      S(3) => countReg2_carry_i_1_n_0,
      S(2) => countReg2_carry_i_2_n_0,
      S(1) => countReg2_carry_i_3_n_0,
      S(0) => countReg2_carry_i_4_n_0
    );
\countReg2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => countReg2_carry_n_0,
      CO(3) => \countReg2_carry__0_n_0\,
      CO(2) => \countReg2_carry__0_n_1\,
      CO(1) => \countReg2_carry__0_n_2\,
      CO(0) => \countReg2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \^axi_rdata_reg[15]\(6 downto 5),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => countReg2(7 downto 4),
      S(3) => \countReg2_carry__0_i_1_n_0\,
      S(2) => \countReg2_carry__0_i_2_n_0\,
      S(1) => \countReg2_carry__0_i_3_n_0\,
      S(0) => \countReg2_carry__0_i_4_n_0\
    );
\countReg2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(6),
      I1 => \^axi_rdata_reg[15]\(7),
      O => \countReg2_carry__0_i_1_n_0\
    );
\countReg2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      I1 => \^axi_rdata_reg[15]\(6),
      O => \countReg2_carry__0_i_2_n_0\
    );
\countReg2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      O => \countReg2_carry__0_i_3_n_0\
    );
\countReg2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(4),
      O => \countReg2_carry__0_i_4_n_0\
    );
\countReg2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2_carry__0_n_0\,
      CO(3) => \countReg2_carry__1_n_0\,
      CO(2) => \countReg2_carry__1_n_1\,
      CO(1) => \countReg2_carry__1_n_2\,
      CO(0) => \countReg2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(10 downto 7),
      O(3 downto 0) => countReg2(11 downto 8),
      S(3) => \countReg2_carry__1_i_1_n_0\,
      S(2) => \countReg2_carry__1_i_2_n_0\,
      S(1) => \countReg2_carry__1_i_3_n_0\,
      S(0) => \countReg2_carry__1_i_4_n_0\
    );
\countReg2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(10),
      I1 => \^axi_rdata_reg[15]\(11),
      O => \countReg2_carry__1_i_1_n_0\
    );
\countReg2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(9),
      I1 => \^axi_rdata_reg[15]\(10),
      O => \countReg2_carry__1_i_2_n_0\
    );
\countReg2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(8),
      I1 => \^axi_rdata_reg[15]\(9),
      O => \countReg2_carry__1_i_3_n_0\
    );
\countReg2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(7),
      I1 => \^axi_rdata_reg[15]\(8),
      O => \countReg2_carry__1_i_4_n_0\
    );
\countReg2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg2_carry__1_n_0\,
      CO(3) => \countReg2_carry__2_n_0\,
      CO(2) => \countReg2_carry__2_n_1\,
      CO(1) => \countReg2_carry__2_n_2\,
      CO(0) => \countReg2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(14 downto 11),
      O(3 downto 0) => countReg2(15 downto 12),
      S(3) => \countReg2_carry__2_i_1_n_0\,
      S(2) => \countReg2_carry__2_i_2_n_0\,
      S(1) => \countReg2_carry__2_i_3_n_0\,
      S(0) => \countReg2_carry__2_i_4_n_0\
    );
\countReg2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(14),
      I1 => \^axi_rdata_reg[15]\(15),
      O => \countReg2_carry__2_i_1_n_0\
    );
\countReg2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(13),
      I1 => \^axi_rdata_reg[15]\(14),
      O => \countReg2_carry__2_i_2_n_0\
    );
\countReg2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(12),
      I1 => \^axi_rdata_reg[15]\(13),
      O => \countReg2_carry__2_i_3_n_0\
    );
\countReg2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(11),
      I1 => \^axi_rdata_reg[15]\(12),
      O => \countReg2_carry__2_i_4_n_0\
    );
countReg2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(3),
      I1 => \incrDecrValReg_reg_n_0_[3]\,
      O => countReg2_carry_i_1_n_0
    );
countReg2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(2),
      I1 => \incrDecrValReg_reg_n_0_[2]\,
      O => countReg2_carry_i_2_n_0
    );
countReg2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(1),
      I1 => \incrDecrValReg_reg_n_0_[1]\,
      O => countReg2_carry_i_3_n_0
    );
countReg2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(0),
      I1 => \incrDecrValReg_reg_n_0_[0]\,
      O => countReg2_carry_i_4_n_0
    );
\countReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0330AAAA0FF0AAAA"
    )
        port map (
      I0 => countReg00_in(0),
      I1 => countReg1,
      I2 => \^axi_rdata_reg[15]\(0),
      I3 => \incrDecrValReg_reg_n_0_[0]\,
      I4 => dirReg,
      I5 => noNegReg,
      O => \countReg[0]_i_1_n_0\
    );
\countReg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(10),
      I1 => countReg1,
      I2 => countReg0(10),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[10]_i_1_n_0\
    );
\countReg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(11),
      I1 => countReg1,
      I2 => countReg0(11),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[11]_i_1_n_0\
    );
\countReg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(10),
      I1 => \^axi_rdata_reg[15]\(11),
      O => \countReg[11]_i_3_n_0\
    );
\countReg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(9),
      I1 => \^axi_rdata_reg[15]\(10),
      O => \countReg[11]_i_4_n_0\
    );
\countReg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(8),
      I1 => \^axi_rdata_reg[15]\(9),
      O => \countReg[11]_i_5_n_0\
    );
\countReg[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(7),
      I1 => \^axi_rdata_reg[15]\(8),
      O => \countReg[11]_i_6_n_0\
    );
\countReg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(12),
      I1 => countReg1,
      I2 => countReg0(12),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[12]_i_1_n_0\
    );
\countReg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(13),
      I1 => countReg1,
      I2 => countReg0(13),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[13]_i_1_n_0\
    );
\countReg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(14),
      I1 => countReg1,
      I2 => countReg0(14),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[14]_i_1_n_0\
    );
\countReg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(15),
      I1 => countReg1,
      I2 => countReg0(15),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[15]_i_2_n_0\
    );
\countReg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(14),
      I1 => \^axi_rdata_reg[15]\(15),
      O => \countReg[15]_i_4_n_0\
    );
\countReg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(13),
      I1 => \^axi_rdata_reg[15]\(14),
      O => \countReg[15]_i_5_n_0\
    );
\countReg[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(12),
      I1 => \^axi_rdata_reg[15]\(13),
      O => \countReg[15]_i_6_n_0\
    );
\countReg[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(11),
      I1 => \^axi_rdata_reg[15]\(12),
      O => \countReg[15]_i_7_n_0\
    );
\countReg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(1),
      I1 => countReg1,
      I2 => countReg0(1),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[1]_i_1_n_0\
    );
\countReg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(2),
      I1 => countReg1,
      I2 => countReg0(2),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[2]_i_1_n_0\
    );
\countReg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(3),
      I1 => countReg1,
      I2 => countReg0(3),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[3]_i_1_n_0\
    );
\countReg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \incrDecrValReg_reg_n_0_[3]\,
      I1 => \^axi_rdata_reg[15]\(3),
      O => \countReg[3]_i_3_n_0\
    );
\countReg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \incrDecrValReg_reg_n_0_[2]\,
      I1 => \^axi_rdata_reg[15]\(2),
      O => \countReg[3]_i_4_n_0\
    );
\countReg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \incrDecrValReg_reg_n_0_[1]\,
      I1 => \^axi_rdata_reg[15]\(1),
      O => \countReg[3]_i_5_n_0\
    );
\countReg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \incrDecrValReg_reg_n_0_[0]\,
      I1 => \^axi_rdata_reg[15]\(0),
      O => \countReg[3]_i_6_n_0\
    );
\countReg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(4),
      I1 => countReg1,
      I2 => countReg0(4),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[4]_i_1_n_0\
    );
\countReg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(5),
      I1 => countReg1,
      I2 => countReg0(5),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[5]_i_1_n_0\
    );
\countReg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(6),
      I1 => countReg1,
      I2 => countReg0(6),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[6]_i_1_n_0\
    );
\countReg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(7),
      I1 => countReg1,
      I2 => countReg0(7),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[7]_i_1_n_0\
    );
\countReg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(6),
      I1 => \^axi_rdata_reg[15]\(7),
      O => \countReg[7]_i_3_n_0\
    );
\countReg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      I1 => \^axi_rdata_reg[15]\(6),
      O => \countReg[7]_i_4_n_0\
    );
\countReg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(8),
      I1 => countReg1,
      I2 => countReg0(8),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[8]_i_1_n_0\
    );
\countReg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30AAF0AA"
    )
        port map (
      I0 => countReg00_in(9),
      I1 => countReg1,
      I2 => countReg0(9),
      I3 => dirReg,
      I4 => noNegReg,
      O => \countReg[9]_i_1_n_0\
    );
\countReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[0]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(0),
      R => SR(0)
    );
\countReg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[10]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(10),
      R => SR(0)
    );
\countReg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[11]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(11),
      R => SR(0)
    );
\countReg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg_reg[7]_i_2_n_0\,
      CO(3) => \countReg_reg[11]_i_2_n_0\,
      CO(2) => \countReg_reg[11]_i_2_n_1\,
      CO(1) => \countReg_reg[11]_i_2_n_2\,
      CO(0) => \countReg_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(10 downto 7),
      O(3 downto 0) => countReg00_in(11 downto 8),
      S(3) => \countReg[11]_i_3_n_0\,
      S(2) => \countReg[11]_i_4_n_0\,
      S(1) => \countReg[11]_i_5_n_0\,
      S(0) => \countReg[11]_i_6_n_0\
    );
\countReg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[12]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(12),
      R => SR(0)
    );
\countReg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[13]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(13),
      R => SR(0)
    );
\countReg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[14]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(14),
      R => SR(0)
    );
\countReg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[15]_i_2_n_0\,
      Q => \^axi_rdata_reg[15]\(15),
      R => SR(0)
    );
\countReg_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg_reg[11]_i_2_n_0\,
      CO(3) => \NLW_countReg_reg[15]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \countReg_reg[15]_i_3_n_1\,
      CO(1) => \countReg_reg[15]_i_3_n_2\,
      CO(0) => \countReg_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^axi_rdata_reg[15]\(13 downto 11),
      O(3 downto 0) => countReg00_in(15 downto 12),
      S(3) => \countReg[15]_i_4_n_0\,
      S(2) => \countReg[15]_i_5_n_0\,
      S(1) => \countReg[15]_i_6_n_0\,
      S(0) => \countReg[15]_i_7_n_0\
    );
\countReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[1]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(1),
      R => SR(0)
    );
\countReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[2]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(2),
      R => SR(0)
    );
\countReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[3]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(3),
      R => SR(0)
    );
\countReg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \countReg_reg[3]_i_2_n_0\,
      CO(2) => \countReg_reg[3]_i_2_n_1\,
      CO(1) => \countReg_reg[3]_i_2_n_2\,
      CO(0) => \countReg_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^axi_rdata_reg[15]\(3 downto 0),
      O(3 downto 0) => countReg00_in(3 downto 0),
      S(3) => \countReg[3]_i_3_n_0\,
      S(2) => \countReg[3]_i_4_n_0\,
      S(1) => \countReg[3]_i_5_n_0\,
      S(0) => \countReg[3]_i_6_n_0\
    );
\countReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[4]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(4),
      R => SR(0)
    );
\countReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[5]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(5),
      R => SR(0)
    );
\countReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[6]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(6),
      R => SR(0)
    );
\countReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[7]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(7),
      R => SR(0)
    );
\countReg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \countReg_reg[3]_i_2_n_0\,
      CO(3) => \countReg_reg[7]_i_2_n_0\,
      CO(2) => \countReg_reg[7]_i_2_n_1\,
      CO(1) => \countReg_reg[7]_i_2_n_2\,
      CO(0) => \countReg_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \^axi_rdata_reg[15]\(6 downto 5),
      DI(1 downto 0) => B"10",
      O(3 downto 0) => countReg00_in(7 downto 4),
      S(3) => \countReg[7]_i_3_n_0\,
      S(2) => \countReg[7]_i_4_n_0\,
      S(1 downto 0) => \^axi_rdata_reg[15]\(5 downto 4)
    );
\countReg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[8]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(8),
      R => SR(0)
    );
\countReg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => eventReg,
      D => \countReg[9]_i_1_n_0\,
      Q => \^axi_rdata_reg[15]\(9),
      R => SR(0)
    );
dirReg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => q2,
      I1 => q1,
      I2 => dly_q1,
      I3 => dirReg,
      O => dirReg_i_1_n_0
    );
dirReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dirReg_i_1_n_0,
      Q => dirReg,
      R => '0'
    );
dly_q1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => q1,
      Q => dly_q1,
      R => '0'
    );
eventReg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => q1,
      I1 => dly_q1,
      O => eventReg_i_1_n_0
    );
eventReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => eventReg_i_1_n_0,
      Q => eventReg,
      R => '0'
    );
\incrDecrValReg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => Q(5),
      D => Q(0),
      Q => \incrDecrValReg_reg_n_0_[0]\,
      S => SS(0)
    );
\incrDecrValReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(5),
      D => Q(1),
      Q => \incrDecrValReg_reg_n_0_[1]\,
      R => SS(0)
    );
\incrDecrValReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(5),
      D => Q(2),
      Q => \incrDecrValReg_reg_n_0_[2]\,
      R => SS(0)
    );
\incrDecrValReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(5),
      D => Q(3),
      Q => \incrDecrValReg_reg_n_0_[3]\,
      R => SS(0)
    );
noNegReg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => Q(5),
      D => Q(4),
      Q => noNegReg,
      R => SS(0)
    );
q1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => q1,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => q1_i_1_n_0
    );
q1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => q1_i_1_n_0,
      Q => q1,
      R => '0'
    );
q2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => q2,
      O => q2_i_1_n_0
    );
q2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => q2_i_1_n_0,
      Q => q2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    \countReg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \countReg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    btnOutReg : in STD_LOGIC;
    swtOutReg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI : entity is "pmodENC_v1_0_S00_AXI";
end embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI;

architecture STRUCTURE of embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI is
  signal ClrCnt : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg1[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg1[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg1[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg1[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg1[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg1[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg1[15]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg1[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg1[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg1[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg1[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg1[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg1[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg1[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg1[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg1[23]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg1[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg1[25]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg1[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg1[27]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg1[28]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg1[29]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg1[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg1[30]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg1[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg1[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg1[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg1[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg1[7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg1[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg1[9]_i_1\ : label is "soft_lutpair18";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  SR(0) <= \^sr\(0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => \^q\(0),
      I2 => axi_araddr(2),
      I3 => \countReg_reg[15]\(0),
      I4 => axi_araddr(3),
      I5 => btnOutReg,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => \slv_reg1_reg_n_0_[10]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => \slv_reg1_reg_n_0_[11]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => \slv_reg1_reg_n_0_[12]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => \slv_reg1_reg_n_0_[13]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => \slv_reg1_reg_n_0_[14]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => \slv_reg1_reg_n_0_[15]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[16]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[17]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[18]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[19]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => \^q\(1),
      I2 => axi_araddr(2),
      I3 => \countReg_reg[15]\(1),
      I4 => axi_araddr(3),
      I5 => swtOutReg,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[20]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[21]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[22]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[23]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[24]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[25]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[26]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[27]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[28]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[29]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => \^q\(2),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[30]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \slv_reg1_reg_n_0_[31]\,
      I2 => axi_araddr(3),
      I3 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => \^q\(3),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => \^q\(4),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => \slv_reg1_reg_n_0_[5]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => \^q\(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => ClrCnt,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => \slv_reg1_reg_n_0_[8]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => \slv_reg1_reg_n_0_[9]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \countReg_reg[15]\(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
\countReg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ClrCnt,
      I1 => s00_axi_aresetn,
      O => \countReg_reg[0]\(0)
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(0),
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(10),
      O => \slv_reg1[10]_i_1_n_0\
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(11),
      O => \slv_reg1[11]_i_1_n_0\
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(12),
      O => \slv_reg1[12]_i_1_n_0\
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(13),
      O => \slv_reg1[13]_i_1_n_0\
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(14),
      O => \slv_reg1[14]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(15),
      O => \slv_reg1[15]_i_2_n_0\
    );
\slv_reg1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(16),
      O => \slv_reg1[16]_i_1_n_0\
    );
\slv_reg1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(17),
      O => \slv_reg1[17]_i_1_n_0\
    );
\slv_reg1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(18),
      O => \slv_reg1[18]_i_1_n_0\
    );
\slv_reg1[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(19),
      O => \slv_reg1[19]_i_1_n_0\
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(1),
      O => \slv_reg1[1]_i_1_n_0\
    );
\slv_reg1[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(20),
      O => \slv_reg1[20]_i_1_n_0\
    );
\slv_reg1[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(21),
      O => \slv_reg1[21]_i_1_n_0\
    );
\slv_reg1[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(22),
      O => \slv_reg1[22]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(23),
      O => \slv_reg1[23]_i_2_n_0\
    );
\slv_reg1[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(24),
      O => \slv_reg1[24]_i_1_n_0\
    );
\slv_reg1[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(25),
      O => \slv_reg1[25]_i_1_n_0\
    );
\slv_reg1[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(26),
      O => \slv_reg1[26]_i_1_n_0\
    );
\slv_reg1[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(27),
      O => \slv_reg1[27]_i_1_n_0\
    );
\slv_reg1[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(28),
      O => \slv_reg1[28]_i_1_n_0\
    );
\slv_reg1[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(29),
      O => \slv_reg1[29]_i_1_n_0\
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(2),
      O => \slv_reg1[2]_i_1_n_0\
    );
\slv_reg1[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(30),
      O => \slv_reg1[30]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(31),
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      O => \slv_reg1[31]_i_3_n_0\
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(3),
      O => \slv_reg1[3]_i_1_n_0\
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(4),
      O => \slv_reg1[4]_i_1_n_0\
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(5),
      O => \slv_reg1[5]_i_1_n_0\
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(6),
      O => \slv_reg1[6]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(7),
      O => \slv_reg1[7]_i_2_n_0\
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(8),
      O => \slv_reg1[8]_i_1_n_0\
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => s00_axi_wdata(9),
      O => \slv_reg1[9]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[10]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[11]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[12]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[13]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[14]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[15]_i_2_n_0\,
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[16]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[17]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[18]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[19]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[20]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[21]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[22]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg1[23]_i_2_n_0\,
      Q => \slv_reg1_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[24]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[25]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[26]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[27]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[28]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[29]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[30]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg1[31]_i_2_n_0\,
      Q => \slv_reg1_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[5]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[6]_i_1_n_0\,
      Q => \^q\(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg1[7]_i_2_n_0\,
      Q => ClrCnt,
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[8]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg1[9]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[0]_i_1_n_0\,
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[10]_i_1_n_0\,
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[11]_i_1_n_0\,
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[12]_i_1_n_0\,
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[13]_i_1_n_0\,
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[14]_i_1_n_0\,
      Q => slv_reg3(14),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[15]_i_2_n_0\,
      Q => slv_reg3(15),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[16]_i_1_n_0\,
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[17]_i_1_n_0\,
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[18]_i_1_n_0\,
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[19]_i_1_n_0\,
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[1]_i_1_n_0\,
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[20]_i_1_n_0\,
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[21]_i_1_n_0\,
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[22]_i_1_n_0\,
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg1[23]_i_2_n_0\,
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[24]_i_1_n_0\,
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[25]_i_1_n_0\,
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[26]_i_1_n_0\,
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[27]_i_1_n_0\,
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[28]_i_1_n_0\,
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[29]_i_1_n_0\,
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[2]_i_1_n_0\,
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[30]_i_1_n_0\,
      Q => slv_reg3(30),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg1[31]_i_2_n_0\,
      Q => slv_reg3(31),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[3]_i_1_n_0\,
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[4]_i_1_n_0\,
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[5]_i_1_n_0\,
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[6]_i_1_n_0\,
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg1[7]_i_2_n_0\,
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[8]_i_1_n_0\,
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg1[9]_i_1_n_0\,
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PmodENC_0_0_pmodENC_v1_0 is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pmodENC_btn : in STD_LOGIC;
    pmodENC_sw : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pmodENC_B : in STD_LOGIC;
    pmodENC_A : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_PmodENC_0_0_pmodENC_v1_0 : entity is "pmodENC_v1_0";
end embsys_PmodENC_0_0_pmodENC_v1_0;

architecture STRUCTURE of embsys_PmodENC_0_0_pmodENC_v1_0 is
  signal LdCfg : STD_LOGIC;
  signal btnOutReg : STD_LOGIC;
  signal countReg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal incrDecrValue : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal noNeg : STD_LOGIC;
  signal pmodENC_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal reset_int : STD_LOGIC;
  signal swtOutReg : STD_LOGIC;
begin
PMODENC_DEBOUNCER: entity work.embsys_PmodENC_0_0_debouncer
     port map (
      SS(0) => reset_int,
      btnOutReg => btnOutReg,
      pmodENC_btn => pmodENC_btn,
      pmodENC_sw => pmodENC_sw,
      s00_axi_aclk => s00_axi_aclk,
      swtOutReg => swtOutReg
    );
PMODENC_ENCODER: entity work.embsys_PmodENC_0_0_encoder
     port map (
      Q(5) => LdCfg,
      Q(4) => noNeg,
      Q(3 downto 0) => incrDecrValue(3 downto 0),
      SR(0) => pmodENC_v1_0_S00_AXI_inst_n_6,
      SS(0) => reset_int,
      \axi_rdata_reg[15]\(15 downto 0) => countReg(15 downto 0),
      pmodENC_A => pmodENC_A,
      pmodENC_B => pmodENC_B,
      s00_axi_aclk => s00_axi_aclk
    );
pmodENC_v1_0_S00_AXI_inst: entity work.embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI
     port map (
      Q(5) => LdCfg,
      Q(4) => noNeg,
      Q(3 downto 0) => incrDecrValue(3 downto 0),
      SR(0) => reset_int,
      btnOutReg => btnOutReg,
      \countReg_reg[0]\(0) => pmodENC_v1_0_S00_AXI_inst_n_6,
      \countReg_reg[15]\(15 downto 0) => countReg(15 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      swtOutReg => swtOutReg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_PmodENC_0_0 is
  port (
    pmodENC_A : in STD_LOGIC;
    pmodENC_B : in STD_LOGIC;
    pmodENC_btn : in STD_LOGIC;
    pmodENC_sw : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_PmodENC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_PmodENC_0_0 : entity is "embsys_PmodENC_0_0,pmodENC_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of embsys_PmodENC_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of embsys_PmodENC_0_0 : entity is "pmodENC_v1_0,Vivado 2017.3.1";
end embsys_PmodENC_0_0;

architecture STRUCTURE of embsys_PmodENC_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.embsys_PmodENC_0_0_pmodENC_v1_0
     port map (
      pmodENC_A => pmodENC_A,
      pmodENC_B => pmodENC_B,
      pmodENC_btn => pmodENC_btn,
      pmodENC_sw => pmodENC_sw,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
