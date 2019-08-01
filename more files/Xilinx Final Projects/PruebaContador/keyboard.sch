<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="row(3:0)" />
        <signal name="valid" />
        <signal name="col(3:0)" />
        <signal name="codeout(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="row(3:0)" />
        <port polarity="Output" name="valid" />
        <port polarity="Output" name="col(3:0)" />
        <port polarity="Output" name="codeout(3:0)" />
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
            <timestamp>2019-7-9T17:47:44</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="key44" name="XLXI_1">
            <blockpin signalname="clk" name="sys_clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
            <blockpin signalname="valid" name="valid" />
            <blockpin signalname="XLXN_1(3:0)" name="code(3:0)" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
        </block>
        <block symbolname="traductor4bit" name="XLXI_2">
            <blockpin signalname="XLXN_1(3:0)" name="fromKeyb(3:0)" />
            <blockpin signalname="codeout(3:0)" name="toRegister(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1568" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="1568" y1="1184" y2="1184" x1="1392" />
        </branch>
        <branch name="clk">
            <wire x2="1008" y1="1120" y2="1120" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1120" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="1008" y1="1184" y2="1184" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1184" name="reset" orien="R180" />
        <branch name="row(3:0)">
            <wire x2="1008" y1="1248" y2="1248" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1248" name="row(3:0)" orien="R180" />
        <branch name="valid">
            <wire x2="1424" y1="1120" y2="1120" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1120" name="valid" orien="R0" />
        <branch name="col(3:0)">
            <wire x2="1424" y1="1248" y2="1248" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1248" name="col(3:0)" orien="R0" />
        <branch name="codeout(3:0)">
            <wire x2="2048" y1="1184" y2="1184" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1184" name="codeout(3:0)" orien="R0" />
    </sheet>
</drawing>