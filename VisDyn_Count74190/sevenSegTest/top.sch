<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_15" />
        <signal name="clk" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_19(3:0)" />
        <signal name="Display(7:0)" />
        <signal name="selector(3:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_23" />
        <signal name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Display(7:0)" />
        <port polarity="Output" name="selector(3:0)" />
        <port polarity="Input" name="reset" />
        <blockdef name="clkDivider">
            <timestamp>2019-6-10T18:24:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-6-10T18:1:59</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="upcounter16bit">
            <timestamp>2019-6-10T18:24:26</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="clk1hz">
            <timestamp>2019-6-10T18:24:32</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_5" name="clkout" />
        </block>
        <block symbolname="clk1hz" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_12" name="output1hz" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="clk" />
            <blockpin signalname="XLXN_7(3:0)" name="q(3:0)" />
            <blockpin signalname="Display(7:0)" name="led(7:0)" />
            <blockpin signalname="selector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="upcounter16bit" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="clk" />
            <blockpin signalname="XLXN_7(3:0)" name="output4bit(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="640" y1="912" y2="912" x1="592" />
            <wire x2="640" y1="912" y2="1008" x1="640" />
            <wire x2="736" y1="1008" y2="1008" x1="640" />
            <wire x2="736" y1="816" y2="816" x1="640" />
            <wire x2="640" y1="816" y2="912" x1="640" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1712" y1="816" y2="816" x1="1120" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1664" y1="1200" y2="1200" x1="1600" />
            <wire x2="1712" y1="880" y2="880" x1="1664" />
            <wire x2="1664" y1="880" y2="1200" x1="1664" />
        </branch>
        <branch name="Display(7:0)">
            <wire x2="2128" y1="816" y2="816" x1="2096" />
        </branch>
        <branch name="selector(3:0)">
            <wire x2="2128" y1="880" y2="880" x1="2096" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1216" y1="1136" y2="1136" x1="1120" />
        </branch>
        <branch name="reset">
            <wire x2="688" y1="1072" y2="1072" x1="624" />
            <wire x2="736" y1="1072" y2="1072" x1="688" />
            <wire x2="736" y1="880" y2="880" x1="688" />
            <wire x2="688" y1="880" y2="1072" x1="688" />
        </branch>
        <instance x="736" y="912" name="XLXI_1" orien="R0">
        </instance>
        <instance x="736" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1712" y="912" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1216" y="1168" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="592" y="912" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2128" y="816" name="Display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2128" y="880" name="selector(3:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="1072" name="reset" orien="R180" />
    </sheet>
</drawing>