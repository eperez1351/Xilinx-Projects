<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_5" />
        <signal name="clk" />
        <signal name="XLXN_13" />
        <signal name="led(3:0)" />
        <signal name="carry_out" />
        <signal name="XLXN_18" />
        <signal name="rst" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="led(3:0)" />
        <port polarity="Output" name="carry_out" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="XLXN_21(3:0)" />
        <port polarity="Output" name="XLXN_22(3:0)" />
        <blockdef name="counter74190">
            <timestamp>2019-7-12T13:32:13</timestamp>
            <rect width="288" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="clk1hz">
            <timestamp>2019-7-10T20:4:3</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="keyboard">
            <timestamp>2019-7-15T14:14:15</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="counter74190" name="XLXI_1">
            <blockpin signalname="XLXN_20" name="reset" />
            <blockpin signalname="XLXN_5" name="updw" />
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_5" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_18" name="carry_out" />
            <blockpin signalname="led(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="clk1hz" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_20" name="reset" />
            <blockpin signalname="XLXN_1" name="output1hz" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="carry_out" name="O" />
        </block>
        <block symbolname="keyboard" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_20" name="reset" />
            <blockpin signalname="XLXN_21(3:0)" name="row(3:0)" />
            <blockpin name="valid" />
            <blockpin signalname="XLXN_22(3:0)" name="col(3:0)" />
            <blockpin name="codeout(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1408" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1504" y1="1312" y2="1312" x1="1280" />
        </branch>
        <instance x="1328" y="1040" name="XLXI_4" orien="R0" />
        <branch name="clk">
            <wire x2="256" y1="1312" y2="1312" x1="160" />
            <wire x2="256" y1="1312" y2="1584" x1="256" />
            <wire x2="272" y1="1584" y2="1584" x1="256" />
            <wire x2="896" y1="1312" y2="1312" x1="256" />
        </branch>
        <instance x="1504" y="1536" name="XLXI_1" orien="R0">
        </instance>
        <branch name="led(3:0)">
            <wire x2="1952" y1="1504" y2="1504" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1504" name="led(3:0)" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1328" y1="1104" y2="1440" x1="1328" />
            <wire x2="1504" y1="1440" y2="1440" x1="1328" />
            <wire x2="1392" y1="1104" y2="1104" x1="1328" />
            <wire x2="1392" y1="1104" y2="1248" x1="1392" />
            <wire x2="1504" y1="1248" y2="1248" x1="1392" />
            <wire x2="1392" y1="1040" y2="1104" x1="1392" />
        </branch>
        <branch name="carry_out">
            <wire x2="2208" y1="1184" y2="1184" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2208" y="1184" name="carry_out" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1952" y1="1184" y2="1184" x1="1920" />
        </branch>
        <instance x="1952" y="1216" name="XLXI_6" orien="R0" />
        <instance x="272" y="1744" name="XLXI_7" orien="R0">
        </instance>
        <instance x="192" y="1216" name="XLXI_5" orien="R0" />
        <branch name="rst">
            <wire x2="192" y1="1184" y2="1184" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="1184" name="rst" orien="R180" />
        <iomarker fontsize="28" x="160" y="1312" name="clk" orien="R180" />
        <branch name="XLXN_20">
            <wire x2="224" y1="1376" y2="1648" x1="224" />
            <wire x2="272" y1="1648" y2="1648" x1="224" />
            <wire x2="720" y1="1376" y2="1376" x1="224" />
            <wire x2="896" y1="1376" y2="1376" x1="720" />
            <wire x2="720" y1="1184" y2="1184" x1="416" />
            <wire x2="720" y1="1184" y2="1376" x1="720" />
            <wire x2="1504" y1="1184" y2="1184" x1="720" />
        </branch>
        <branch name="XLXN_21(3:0)">
            <wire x2="272" y1="1776" y2="1776" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="1776" name="XLXN_21(3:0)" orien="R180" />
        <branch name="XLXN_22(3:0)">
            <wire x2="688" y1="1648" y2="1648" x1="656" />
        </branch>
        <iomarker fontsize="28" x="688" y="1648" name="XLXN_22(3:0)" orien="R0" />
    </sheet>
</drawing>