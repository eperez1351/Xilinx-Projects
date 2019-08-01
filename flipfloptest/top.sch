<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_2" />
        <signal name="in_ff" />
        <signal name="out_ff" />
        <signal name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="in_ff" />
        <port polarity="Output" name="out_ff" />
        <port polarity="Input" name="reset" />
        <blockdef name="clk1hz">
            <timestamp>2019-6-14T13:56:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="flipflopDasync">
            <timestamp>2019-7-3T19:49:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="clk1hz" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_2" name="output1hz" />
        </block>
        <block symbolname="flipflopDasync" name="XLXI_3">
            <blockpin signalname="in_ff" name="d" />
            <blockpin signalname="XLXN_2" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="out_ff" name="q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="944" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="928" y1="848" y2="848" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="848" name="clk" orien="R180" />
        <instance x="1664" y="1008" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1488" y1="848" y2="848" x1="1312" />
            <wire x2="1488" y1="848" y2="912" x1="1488" />
            <wire x2="1664" y1="912" y2="912" x1="1488" />
        </branch>
        <branch name="in_ff">
            <wire x2="1584" y1="688" y2="688" x1="1488" />
            <wire x2="1584" y1="688" y2="848" x1="1584" />
            <wire x2="1664" y1="848" y2="848" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1488" y="688" name="in_ff" orien="R180" />
        <branch name="out_ff">
            <wire x2="2080" y1="848" y2="848" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="848" name="out_ff" orien="R0" />
        <branch name="reset">
            <wire x2="1664" y1="976" y2="976" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="976" name="reset" orien="R180" />
    </sheet>
</drawing>