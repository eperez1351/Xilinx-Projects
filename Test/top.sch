<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="reset" />
        <signal name="clk" />
        <signal name="twoBitOut(1:0)" />
        <signal name="XLXN_7" />
        <signal name="clkout" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="twoBitOut(1:0)" />
        <port polarity="Output" name="clkout" />
        <blockdef name="clkDivider">
            <timestamp>2019-6-3T19:14:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="counter">
            <timestamp>2019-6-3T19:22:6</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clkout" name="clkout" />
        </block>
        <block symbolname="counter" name="XLXI_2">
            <blockpin signalname="clkout" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="twoBitOut(1:0)" name="twobitOut(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="816" y1="1072" y2="1072" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1136" name="reset" orien="R180" />
        <iomarker fontsize="28" x="640" y="1072" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1936" y="1200" name="twoBitOut(1:0)" orien="R0" />
        <branch name="twoBitOut(1:0)">
            <wire x2="1936" y1="1200" y2="1200" x1="1824" />
        </branch>
        <branch name="reset">
            <wire x2="720" y1="1136" y2="1136" x1="640" />
            <wire x2="816" y1="1136" y2="1136" x1="720" />
            <wire x2="720" y1="1136" y2="1200" x1="720" />
            <wire x2="1376" y1="1200" y2="1200" x1="720" />
            <wire x2="1376" y1="1136" y2="1200" x1="1376" />
            <wire x2="1440" y1="1136" y2="1136" x1="1376" />
        </branch>
        <branch name="clkout">
            <wire x2="1216" y1="1072" y2="1072" x1="1200" />
            <wire x2="1280" y1="1072" y2="1072" x1="1216" />
            <wire x2="1288" y1="1072" y2="1072" x1="1280" />
            <wire x2="1440" y1="1072" y2="1072" x1="1288" />
            <wire x2="1280" y1="928" y2="1072" x1="1280" />
            <wire x2="1360" y1="928" y2="928" x1="1280" />
        </branch>
        <instance x="1440" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1360" y="928" name="clkout" orien="R0" />
    </sheet>
</drawing>