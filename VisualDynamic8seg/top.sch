<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="col(3:0)" />
        <signal name="row(3:0)" />
        <signal name="clk_in" />
        <signal name="XLXN_82(3:0)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_101" />
        <signal name="XLXN_92(1:0)" />
        <signal name="XLXN_110(3:0)" />
        <signal name="XLXN_113(3:0)" />
        <signal name="XLXN_114(3:0)" />
        <signal name="XLXN_115(3:0)" />
        <signal name="XLXN_116(3:0)" />
        <signal name="sevenSeg(7:0)" />
        <signal name="digitSelect(3:0)" />
        <signal name="reset" />
        <signal name="XLXN_123" />
        <port polarity="Output" name="col(3:0)" />
        <port polarity="Input" name="row(3:0)" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="sevenSeg(7:0)" />
        <port polarity="Output" name="digitSelect(3:0)" />
        <port polarity="Input" name="reset" />
        <blockdef name="mux4bit_4in1out">
            <timestamp>2019-6-7T15:38:44</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="key44">
            <timestamp>2019-6-7T15:47:45</timestamp>
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
        <blockdef name="counterFor16to4mux">
            <timestamp>2019-6-7T15:35:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clkDivider">
            <timestamp>2019-6-7T15:47:53</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ShiftReg4bitIN16bitOUT">
            <timestamp>2019-6-7T14:35:12</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-6-9T23:16:3</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="mux4bit_4in1out" name="XLXI_16">
            <blockpin signalname="XLXN_110(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_113(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_114(3:0)" name="c(3:0)" />
            <blockpin signalname="XLXN_115(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_92(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_116(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="counterFor16to4mux" name="XLXI_20">
            <blockpin signalname="XLXN_101" name="clk" />
            <blockpin signalname="XLXN_92(1:0)" name="sel_out(1:0)" />
        </block>
        <block symbolname="ShiftReg4bitIN16bitOUT" name="XLXI_23">
            <blockpin signalname="XLXN_101" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_83" name="enb" />
            <blockpin signalname="XLXN_82(3:0)" name="q(3:0)" />
            <blockpin signalname="XLXN_110(3:0)" name="d1(3:0)" />
            <blockpin signalname="XLXN_113(3:0)" name="d2(3:0)" />
            <blockpin signalname="XLXN_114(3:0)" name="d3(3:0)" />
            <blockpin signalname="XLXN_115(3:0)" name="d4(3:0)" />
        </block>
        <block symbolname="key44" name="XLXI_19">
            <blockpin signalname="XLXN_101" name="sys_clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
            <blockpin signalname="XLXN_83" name="valid" />
            <blockpin signalname="XLXN_82(3:0)" name="code(3:0)" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
        </block>
        <block symbolname="clkDivider" name="XLXI_22">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_101" name="clkout" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_29">
            <blockpin signalname="XLXN_101" name="clk" />
            <blockpin signalname="XLXN_116(3:0)" name="q(3:0)" />
            <blockpin signalname="sevenSeg(7:0)" name="led(7:0)" />
            <blockpin signalname="digitSelect(3:0)" name="digitSelect(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="992" name="XLXI_23" orien="R0">
        </instance>
        <branch name="col(3:0)">
            <wire x2="1088" y1="1088" y2="1088" x1="976" />
        </branch>
        <branch name="row(3:0)">
            <wire x2="592" y1="1088" y2="1088" x1="576" />
        </branch>
        <instance x="592" y="1120" name="XLXI_19" orien="R0">
        </instance>
        <branch name="clk_in">
            <wire x2="592" y1="688" y2="688" x1="576" />
        </branch>
        <instance x="592" y="784" name="XLXI_22" orien="R0">
        </instance>
        <iomarker fontsize="28" x="576" y="1088" name="row(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1088" y="1088" name="col(3:0)" orien="R0" />
        <iomarker fontsize="28" x="576" y="688" name="clk_in" orien="R180" />
        <branch name="XLXN_82(3:0)">
            <wire x2="1152" y1="1024" y2="1024" x1="976" />
            <wire x2="1152" y1="960" y2="1024" x1="1152" />
            <wire x2="1328" y1="960" y2="960" x1="1152" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1136" y1="960" y2="960" x1="976" />
            <wire x2="1136" y1="896" y2="960" x1="1136" />
            <wire x2="1328" y1="896" y2="896" x1="1136" />
        </branch>
        <instance x="1424" y="1184" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_101">
            <wire x2="576" y1="960" y2="960" x1="384" />
            <wire x2="592" y1="960" y2="960" x1="576" />
            <wire x2="384" y1="960" y2="1152" x1="384" />
            <wire x2="1424" y1="1152" y2="1152" x1="384" />
            <wire x2="576" y1="832" y2="960" x1="576" />
            <wire x2="992" y1="832" y2="832" x1="576" />
            <wire x2="992" y1="688" y2="688" x1="976" />
            <wire x2="992" y1="688" y2="768" x1="992" />
            <wire x2="992" y1="768" y2="832" x1="992" />
            <wire x2="1328" y1="768" y2="768" x1="992" />
            <wire x2="2624" y1="624" y2="624" x1="992" />
            <wire x2="2624" y1="624" y2="704" x1="2624" />
            <wire x2="992" y1="624" y2="688" x1="992" />
        </branch>
        <branch name="XLXN_92(1:0)">
            <wire x2="1920" y1="1152" y2="1152" x1="1808" />
            <wire x2="2064" y1="1024" y2="1024" x1="1920" />
            <wire x2="1920" y1="1024" y2="1152" x1="1920" />
        </branch>
        <instance x="2064" y="1056" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_110(3:0)">
            <wire x2="2064" y1="768" y2="768" x1="1712" />
        </branch>
        <branch name="XLXN_113(3:0)">
            <wire x2="2064" y1="832" y2="832" x1="1712" />
        </branch>
        <branch name="XLXN_114(3:0)">
            <wire x2="2064" y1="896" y2="896" x1="1712" />
        </branch>
        <branch name="XLXN_115(3:0)">
            <wire x2="2064" y1="960" y2="960" x1="1712" />
        </branch>
        <branch name="XLXN_116(3:0)">
            <wire x2="2624" y1="768" y2="768" x1="2448" />
        </branch>
        <branch name="sevenSeg(7:0)">
            <wire x2="3104" y1="704" y2="704" x1="3008" />
        </branch>
        <branch name="digitSelect(3:0)">
            <wire x2="3104" y1="768" y2="768" x1="3008" />
        </branch>
        <instance x="2624" y="800" name="XLXI_29" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3104" y="704" name="sevenSeg(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="768" name="digitSelect(3:0)" orien="R0" />
        <branch name="reset">
            <wire x2="400" y1="752" y2="752" x1="352" />
            <wire x2="400" y1="752" y2="1024" x1="400" />
            <wire x2="592" y1="1024" y2="1024" x1="400" />
            <wire x2="592" y1="752" y2="752" x1="400" />
            <wire x2="1136" y1="528" y2="528" x1="400" />
            <wire x2="1136" y1="528" y2="832" x1="1136" />
            <wire x2="1328" y1="832" y2="832" x1="1136" />
            <wire x2="400" y1="528" y2="752" x1="400" />
        </branch>
        <iomarker fontsize="28" x="352" y="752" name="reset" orien="R180" />
    </sheet>
</drawing>