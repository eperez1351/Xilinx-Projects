<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="led(3:0)" />
        <signal name="s" />
        <signal name="clk" />
        <port polarity="Output" name="led(3:0)" />
        <port polarity="Input" name="s" />
        <port polarity="Input" name="clk" />
        <blockdef name="clk1hz">
            <timestamp>2019-6-14T13:56:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="flipflop">
            <timestamp>2019-6-14T13:57:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="flipflop" name="XLXI_2">
            <blockpin signalname="s" name="s" />
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin name="r" />
            <blockpin signalname="led(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="clk1hz" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_1" name="output1hz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="896" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1520" y1="848" y2="848" x1="1312" />
            <wire x2="1520" y1="800" y2="848" x1="1520" />
            <wire x2="1728" y1="800" y2="800" x1="1520" />
        </branch>
        <branch name="led(3:0)">
            <wire x2="2144" y1="736" y2="736" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="736" name="led(3:0)" orien="R0" />
        <branch name="s">
            <wire x2="1728" y1="736" y2="736" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1696" y="736" name="s" orien="R180" />
        <instance x="928" y="944" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="928" y1="848" y2="848" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="848" name="clk" orien="R180" />
    </sheet>
</drawing>