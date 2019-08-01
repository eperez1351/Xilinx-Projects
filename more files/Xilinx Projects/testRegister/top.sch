<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="reset" />
        <signal name="XLXN_3" />
        <signal name="inputbutton" />
        <signal name="clk" />
        <signal name="d1" />
        <signal name="d2" />
        <signal name="d3" />
        <signal name="d4" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="inputbutton" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="d1" />
        <port polarity="Output" name="d2" />
        <port polarity="Output" name="d3" />
        <port polarity="Output" name="d4" />
        <blockdef name="clk1hz">
            <timestamp>2019-6-10T19:25:23</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ShiftReg4bitIN16bitOUT">
            <timestamp>2019-6-10T19:50:18</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clk1hz" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_3" name="output1hz" />
        </block>
        <block symbolname="ShiftReg4bitIN16bitOUT" name="XLXI_2">
            <blockpin signalname="inputbutton" name="q" />
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="d1" name="d1" />
            <blockpin signalname="d2" name="d2" />
            <blockpin signalname="d3" name="d3" />
            <blockpin signalname="d4" name="d4" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="544" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1328" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="528" y1="1120" y2="1120" x1="496" />
            <wire x2="1328" y1="1120" y2="1120" x1="528" />
            <wire x2="544" y1="1056" y2="1056" x1="528" />
            <wire x2="528" y1="1056" y2="1120" x1="528" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="992" y1="992" y2="992" x1="928" />
            <wire x2="992" y1="992" y2="1056" x1="992" />
            <wire x2="1328" y1="1056" y2="1056" x1="992" />
        </branch>
        <branch name="inputbutton">
            <wire x2="1104" y1="832" y2="992" x1="1104" />
            <wire x2="1328" y1="992" y2="992" x1="1104" />
        </branch>
        <branch name="clk">
            <wire x2="544" y1="992" y2="992" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="992" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1104" y="832" name="inputbutton" orien="R270" />
        <branch name="d1">
            <wire x2="1744" y1="992" y2="992" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="992" name="d1" orien="R0" />
        <branch name="d2">
            <wire x2="1744" y1="1056" y2="1056" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1056" name="d2" orien="R0" />
        <branch name="d3">
            <wire x2="1744" y1="1120" y2="1120" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1120" name="d3" orien="R0" />
        <branch name="d4">
            <wire x2="1744" y1="1184" y2="1184" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1184" name="d4" orien="R0" />
        <iomarker fontsize="28" x="496" y="1120" name="reset" orien="R180" />
    </sheet>
</drawing>