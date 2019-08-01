<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(3:0)" />
        <signal name="sevenSegLEDs(7:0)" />
        <signal name="digSelect(3:0)" />
        <signal name="A_in(3:0)" />
        <signal name="B_in(3:0)" />
        <signal name="C_in(3:0)" />
        <signal name="D_in(3:0)" />
        <signal name="clk_in" />
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <port polarity="Output" name="sevenSegLEDs(7:0)" />
        <port polarity="Output" name="digSelect(3:0)" />
        <port polarity="Input" name="A_in(3:0)" />
        <port polarity="Input" name="B_in(3:0)" />
        <port polarity="Input" name="C_in(3:0)" />
        <port polarity="Input" name="D_in(3:0)" />
        <port polarity="Input" name="clk_in" />
        <blockdef name="clkDivider">
            <timestamp>2019-7-5T13:37:54</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-7-5T13:37:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MuxConContSel_16a4">
            <timestamp>2019-7-5T13:38:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="XLXN_16" name="reset" />
            <blockpin signalname="XLXN_12" name="clkout" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_12" name="clk" />
            <blockpin signalname="XLXN_2(3:0)" name="q(3:0)" />
            <blockpin signalname="sevenSegLEDs(7:0)" name="led(7:0)" />
            <blockpin signalname="digSelect(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="MuxConContSel_16a4" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="clk" />
            <blockpin signalname="A_in(3:0)" name="a(3:0)" />
            <blockpin signalname="B_in(3:0)" name="b(3:0)" />
            <blockpin signalname="C_in(3:0)" name="c(3:0)" />
            <blockpin signalname="D_in(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="976" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1248" y="1376" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2(3:0)">
            <wire x2="1728" y1="1088" y2="1088" x1="1632" />
            <wire x2="1760" y1="944" y2="944" x1="1728" />
            <wire x2="1728" y1="944" y2="1088" x1="1728" />
        </branch>
        <branch name="sevenSegLEDs(7:0)">
            <wire x2="2176" y1="880" y2="880" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="880" name="sevenSegLEDs(7:0)" orien="R0" />
        <branch name="digSelect(3:0)">
            <wire x2="2176" y1="944" y2="944" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="944" name="digSelect(3:0)" orien="R0" />
        <branch name="A_in(3:0)">
            <wire x2="1248" y1="1152" y2="1152" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1152" name="A_in(3:0)" orien="R180" />
        <branch name="B_in(3:0)">
            <wire x2="1248" y1="1216" y2="1216" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1216" name="B_in(3:0)" orien="R180" />
        <branch name="C_in(3:0)">
            <wire x2="1248" y1="1280" y2="1280" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1280" name="C_in(3:0)" orien="R180" />
        <branch name="D_in(3:0)">
            <wire x2="1248" y1="1344" y2="1344" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1344" name="D_in(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="880" name="clk_in" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="1120" y1="880" y2="880" x1="992" />
            <wire x2="1120" y1="880" y2="1088" x1="1120" />
            <wire x2="1248" y1="1088" y2="1088" x1="1120" />
            <wire x2="1760" y1="880" y2="880" x1="1120" />
        </branch>
        <branch name="clk_in">
            <wire x2="592" y1="880" y2="880" x1="576" />
            <wire x2="608" y1="880" y2="880" x1="592" />
        </branch>
        <instance x="608" y="976" name="XLXI_1" orien="R0">
        </instance>
        <instance x="544" y="1152" name="XLXI_7" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="608" y1="944" y2="944" x1="544" />
            <wire x2="544" y1="944" y2="992" x1="544" />
            <wire x2="608" y1="992" y2="992" x1="544" />
            <wire x2="608" y1="992" y2="1024" x1="608" />
        </branch>
    </sheet>
</drawing>