<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="leds(7:0)" />
        <signal name="digitSelector(3:0)" />
        <signal name="reset" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="row(3:0)" />
        <signal name="col(3:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11(3:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_14(3:0)" />
        <signal name="XLXN_15(3:0)" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="leds(7:0)" />
        <port polarity="Output" name="digitSelector(3:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="row(3:0)" />
        <port polarity="Output" name="col(3:0)" />
        <blockdef name="clkDivider">
            <timestamp>2019-6-14T14:40:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-6-14T14:40:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="key44">
            <timestamp>2019-6-14T14:41:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="traductor4bit">
            <timestamp>2019-6-17T19:42:17</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_3" name="clkout" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="XLXN_15(3:0)" name="q(3:0)" />
            <blockpin signalname="leds(7:0)" name="led(7:0)" />
            <blockpin signalname="digitSelector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="traductor4bit" name="XLXI_4">
            <blockpin signalname="XLXN_14(3:0)" name="fromKeyb(3:0)" />
            <blockpin signalname="XLXN_15(3:0)" name="toRegister(3:0)" />
        </block>
        <block symbolname="key44" name="XLXI_3">
            <blockpin signalname="clk_in" name="sys_clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
            <blockpin name="valid" />
            <blockpin signalname="XLXN_14(3:0)" name="code(3:0)" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1808" y="784" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk_in">
            <wire x2="400" y1="688" y2="688" x1="304" />
            <wire x2="480" y1="688" y2="688" x1="400" />
            <wire x2="400" y1="688" y2="976" x1="400" />
            <wire x2="720" y1="976" y2="976" x1="400" />
        </branch>
        <branch name="leds(7:0)">
            <wire x2="2224" y1="688" y2="688" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="688" name="leds(7:0)" orien="R0" />
        <branch name="digitSelector(3:0)">
            <wire x2="2224" y1="752" y2="752" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="752" name="digitSelector(3:0)" orien="R0" />
        <branch name="reset">
            <wire x2="464" y1="1040" y2="1040" x1="432" />
            <wire x2="720" y1="1040" y2="1040" x1="464" />
            <wire x2="480" y1="752" y2="752" x1="464" />
            <wire x2="464" y1="752" y2="1040" x1="464" />
        </branch>
        <iomarker fontsize="28" x="432" y="1040" name="reset" orien="R180" />
        <iomarker fontsize="28" x="304" y="688" name="clk_in" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1808" y1="688" y2="688" x1="864" />
        </branch>
        <instance x="480" y="784" name="XLXI_1" orien="R0">
        </instance>
        <instance x="720" y="1136" name="XLXI_3" orien="R0">
        </instance>
        <branch name="row(3:0)">
            <wire x2="720" y1="1104" y2="1104" x1="688" />
        </branch>
        <branch name="col(3:0)">
            <wire x2="1136" y1="1104" y2="1104" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="688" y="1104" name="row(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1136" y="1104" name="col(3:0)" orien="R0" />
        <branch name="XLXN_14(3:0)">
            <wire x2="1216" y1="1040" y2="1040" x1="1104" />
        </branch>
        <branch name="XLXN_15(3:0)">
            <wire x2="1792" y1="1040" y2="1040" x1="1664" />
            <wire x2="1808" y1="752" y2="752" x1="1792" />
            <wire x2="1792" y1="752" y2="1040" x1="1792" />
        </branch>
        <instance x="1216" y="1072" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>