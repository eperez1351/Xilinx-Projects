<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="d" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="t" />
        <signal name="j" />
        <signal name="k" />
        <signal name="qjk" />
        <signal name="qt" />
        <signal name="qd" />
        <port polarity="Input" name="d" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="t" />
        <port polarity="Input" name="j" />
        <port polarity="Input" name="k" />
        <port polarity="Output" name="qjk" />
        <port polarity="Output" name="qt" />
        <port polarity="Output" name="qd" />
        <blockdef name="flipflopDasync">
            <timestamp>2019-6-21T13:5:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="flipflopTasync">
            <timestamp>2019-6-21T13:5:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="flipflopJKasync">
            <timestamp>2019-6-21T13:13:57</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="flipflopDasync" name="XLXI_1">
            <blockpin signalname="d" name="d" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="qd" name="q" />
        </block>
        <block symbolname="flipflopTasync" name="XLXI_2">
            <blockpin signalname="t" name="t" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="qt" name="q" />
        </block>
        <block symbolname="flipflopJKasync" name="XLXI_3">
            <blockpin signalname="j" name="j" />
            <blockpin signalname="k" name="k" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="qjk" name="q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="800" name="XLXI_1" orien="R0">
        </instance>
        <instance x="880" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <instance x="880" y="1536" name="XLXI_3" orien="R0">
        </instance>
        <branch name="d">
            <wire x2="880" y1="640" y2="640" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="640" name="d" orien="R180" />
        <branch name="clk">
            <wire x2="800" y1="704" y2="704" x1="752" />
            <wire x2="864" y1="704" y2="704" x1="800" />
            <wire x2="880" y1="704" y2="704" x1="864" />
            <wire x2="800" y1="704" y2="1056" x1="800" />
            <wire x2="880" y1="1056" y2="1056" x1="800" />
            <wire x2="800" y1="1056" y2="1504" x1="800" />
            <wire x2="880" y1="1504" y2="1504" x1="800" />
        </branch>
        <branch name="reset">
            <wire x2="848" y1="1120" y2="1120" x1="752" />
            <wire x2="864" y1="1120" y2="1120" x1="848" />
            <wire x2="880" y1="1120" y2="1120" x1="864" />
            <wire x2="848" y1="1120" y2="1440" x1="848" />
            <wire x2="880" y1="1440" y2="1440" x1="848" />
            <wire x2="848" y1="768" y2="1120" x1="848" />
            <wire x2="880" y1="768" y2="768" x1="848" />
        </branch>
        <branch name="t">
            <wire x2="864" y1="992" y2="992" x1="752" />
            <wire x2="880" y1="992" y2="992" x1="864" />
        </branch>
        <branch name="j">
            <wire x2="864" y1="1312" y2="1312" x1="752" />
            <wire x2="880" y1="1312" y2="1312" x1="864" />
        </branch>
        <branch name="k">
            <wire x2="864" y1="1376" y2="1376" x1="752" />
            <wire x2="880" y1="1376" y2="1376" x1="864" />
        </branch>
        <branch name="qjk">
            <wire x2="1296" y1="1312" y2="1312" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1312" name="qjk" orien="R0" />
        <branch name="qt">
            <wire x2="1296" y1="992" y2="992" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1296" y="992" name="qt" orien="R0" />
        <branch name="qd">
            <wire x2="1296" y1="640" y2="640" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1296" y="640" name="qd" orien="R0" />
        <iomarker fontsize="28" x="752" y="1120" name="reset" orien="R180" />
        <iomarker fontsize="28" x="752" y="992" name="t" orien="R180" />
        <iomarker fontsize="28" x="752" y="704" name="clk" orien="R180" />
        <iomarker fontsize="28" x="752" y="1312" name="j" orien="R180" />
        <iomarker fontsize="28" x="752" y="1376" name="k" orien="R180" />
    </sheet>
</drawing>