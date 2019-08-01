<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="reset" />
        <signal name="XLXN_3" />
        <signal name="row(3:0)" />
        <signal name="col(3:0)" />
        <signal name="leds(7:0)" />
        <signal name="digitSelector(3:0)" />
        <signal name="XLXN_11(3:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="row(3:0)" />
        <port polarity="Output" name="col(3:0)" />
        <port polarity="Output" name="leds(7:0)" />
        <port polarity="Output" name="digitSelector(3:0)" />
        <blockdef name="clkDivider">
            <timestamp>2019-6-14T14:40:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-6-14T14:40:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <blockdef name="ShiftReg16bit">
            <timestamp>2019-6-15T0:54:44</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_3" name="clkout" />
        </block>
        <block symbolname="key44" name="XLXI_3">
            <blockpin signalname="clk_in" name="sys_clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
            <blockpin signalname="XLXN_13" name="valid" />
            <blockpin signalname="XLXN_11(3:0)" name="code(3:0)" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
        </block>
        <block symbolname="ShiftReg16bit" name="XLXI_5">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_13" name="clkenb" />
            <blockpin signalname="XLXN_11(3:0)" name="data_in(3:0)" />
            <blockpin name="data_out16(15:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="data_out0(3:0)" />
            <blockpin name="data_out1(3:0)" />
            <blockpin name="data_out2(3:0)" />
            <blockpin name="data_out3(3:0)" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="XLXN_12(3:0)" name="q(3:0)" />
            <blockpin signalname="leds(7:0)" name="led(7:0)" />
            <blockpin signalname="digitSelector(3:0)" name="digitSelect(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk_in">
            <wire x2="400" y1="688" y2="688" x1="304" />
            <wire x2="400" y1="688" y2="832" x1="400" />
            <wire x2="976" y1="832" y2="832" x1="400" />
            <wire x2="400" y1="832" y2="976" x1="400" />
            <wire x2="656" y1="976" y2="976" x1="400" />
            <wire x2="496" y1="672" y2="672" x1="400" />
            <wire x2="400" y1="672" y2="688" x1="400" />
            <wire x2="1536" y1="784" y2="784" x1="976" />
            <wire x2="976" y1="784" y2="832" x1="976" />
        </branch>
        <branch name="reset">
            <wire x2="464" y1="1040" y2="1040" x1="432" />
            <wire x2="464" y1="1040" y2="1328" x1="464" />
            <wire x2="1312" y1="1328" y2="1328" x1="464" />
            <wire x2="656" y1="1040" y2="1040" x1="464" />
            <wire x2="496" y1="736" y2="736" x1="464" />
            <wire x2="464" y1="736" y2="1040" x1="464" />
            <wire x2="1312" y1="864" y2="1328" x1="1312" />
            <wire x2="1536" y1="864" y2="864" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="432" y="1040" name="reset" orien="R180" />
        <iomarker fontsize="28" x="304" y="688" name="clk_in" orien="R180" />
        <instance x="656" y="1136" name="XLXI_3" orien="R0">
        </instance>
        <branch name="row(3:0)">
            <wire x2="656" y1="1104" y2="1104" x1="624" />
        </branch>
        <branch name="col(3:0)">
            <wire x2="1072" y1="1104" y2="1104" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="624" y="1104" name="row(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1104" name="col(3:0)" orien="R0" />
        <instance x="2672" y="768" name="XLXI_2" orien="R0">
        </instance>
        <branch name="leds(7:0)">
            <wire x2="3088" y1="672" y2="672" x1="3056" />
        </branch>
        <branch name="digitSelector(3:0)">
            <wire x2="3088" y1="736" y2="736" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="672" name="leds(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3088" y="736" name="digitSelector(3:0)" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2672" y1="672" y2="672" x1="880" />
        </branch>
        <instance x="1536" y="1072" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_11(3:0)">
            <wire x2="1280" y1="1040" y2="1040" x1="1040" />
            <wire x2="1280" y1="1024" y2="1040" x1="1280" />
            <wire x2="1536" y1="1024" y2="1024" x1="1280" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="2320" y1="848" y2="848" x1="1984" />
            <wire x2="2320" y1="736" y2="848" x1="2320" />
            <wire x2="2672" y1="736" y2="736" x1="2320" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1280" y1="976" y2="976" x1="1040" />
            <wire x2="1280" y1="944" y2="976" x1="1280" />
            <wire x2="1536" y1="944" y2="944" x1="1280" />
        </branch>
        <instance x="496" y="768" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>