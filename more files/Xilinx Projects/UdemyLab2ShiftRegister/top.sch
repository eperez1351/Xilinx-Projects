<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="data_in" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="clk" />
        <signal name="reset" />
        <port polarity="Input" name="data_in" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <blockdef name="clk1hz">
            <timestamp>2019-6-12T18:53:50</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Shift_Reg">
            <timestamp>2019-6-12T18:53:35</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clk1hz" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="output1hz" />
        </block>
        <block symbolname="Shift_Reg" name="XLXI_2">
            <blockpin signalname="data_in" name="data_in" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="a" name="A" />
            <blockpin signalname="b" name="B" />
            <blockpin signalname="c" name="C" />
            <blockpin signalname="d" name="D" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1552" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1296" y1="1040" y2="1040" x1="1040" />
            <wire x2="1296" y1="1040" y2="1248" x1="1296" />
            <wire x2="1552" y1="1248" y2="1248" x1="1296" />
        </branch>
        <branch name="data_in">
            <wire x2="1552" y1="1056" y2="1056" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1056" name="data_in" orien="R180" />
        <branch name="a">
            <wire x2="1968" y1="1056" y2="1056" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1056" name="a" orien="R0" />
        <branch name="b">
            <wire x2="1968" y1="1120" y2="1120" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1120" name="b" orien="R0" />
        <branch name="c">
            <wire x2="1968" y1="1184" y2="1184" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1184" name="c" orien="R0" />
        <branch name="d">
            <wire x2="1968" y1="1248" y2="1248" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1248" name="d" orien="R0" />
        <branch name="clk">
            <wire x2="656" y1="1040" y2="1040" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="1040" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="608" y1="1104" y2="1104" x1="560" />
            <wire x2="656" y1="1104" y2="1104" x1="608" />
            <wire x2="608" y1="1104" y2="1152" x1="608" />
            <wire x2="1552" y1="1152" y2="1152" x1="608" />
        </branch>
        <iomarker fontsize="28" x="560" y="1104" name="reset" orien="R180" />
    </sheet>
</drawing>