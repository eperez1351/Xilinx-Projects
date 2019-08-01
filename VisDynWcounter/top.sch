<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_5" />
        <signal name="reset" />
        <signal name="Display(7:0)" />
        <signal name="selector(3:0)" />
        <signal name="XLXN_27(3:0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="updw">
        </signal>
        <signal name="XLXN_37(3:0)" />
        <signal name="XLXN_38(3:0)" />
        <signal name="XLXN_39(3:0)" />
        <signal name="XLXN_40(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="Display(7:0)" />
        <port polarity="Output" name="selector(3:0)" />
        <blockdef name="clkDivider">
            <timestamp>2019-6-10T18:24:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevenSegDisp">
            <timestamp>2019-6-10T18:1:59</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clk1hz">
            <timestamp>2019-6-10T18:24:32</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="MuxConContSel_16a4">
            <timestamp>2019-6-26T18:41:28</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
        <blockdef name="BCDcounter">
            <timestamp>2019-6-26T18:43:21</timestamp>
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
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_28" name="clkout" />
        </block>
        <block symbolname="clk1hz" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_29" name="output1hz" />
        </block>
        <block symbolname="MuxConContSel_16a4" name="XLXI_5">
            <blockpin signalname="XLXN_28" name="clk" />
            <blockpin signalname="XLXN_37(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_38(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_39(3:0)" name="c(3:0)" />
            <blockpin signalname="XLXN_40(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_28" name="clk" />
            <blockpin signalname="XLXN_27(3:0)" name="q(3:0)" />
            <blockpin signalname="Display(7:0)" name="led(7:0)" />
            <blockpin signalname="selector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_7">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_29" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_29" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_31" name="carry_out" />
            <blockpin signalname="XLXN_37(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_8">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_29" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_31" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_32" name="carry_out" />
            <blockpin signalname="XLXN_38(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_9">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_29" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_32" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_33" name="carry_out" />
            <blockpin signalname="XLXN_39(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_10">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_29" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_33" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin name="carry_out" />
            <blockpin signalname="XLXN_40(3:0)" name="count_out(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="640" y1="912" y2="912" x1="592" />
            <wire x2="640" y1="912" y2="1008" x1="640" />
            <wire x2="736" y1="1008" y2="1008" x1="640" />
            <wire x2="736" y1="816" y2="816" x1="640" />
            <wire x2="640" y1="816" y2="912" x1="640" />
        </branch>
        <branch name="reset">
            <wire x2="688" y1="1072" y2="1072" x1="624" />
            <wire x2="736" y1="1072" y2="1072" x1="688" />
            <wire x2="688" y1="1072" y2="1520" x1="688" />
            <wire x2="1136" y1="1520" y2="1520" x1="688" />
            <wire x2="1472" y1="1520" y2="1520" x1="1136" />
            <wire x2="1136" y1="1520" y2="2048" x1="1136" />
            <wire x2="2000" y1="2048" y2="2048" x1="1136" />
            <wire x2="2688" y1="2048" y2="2048" x1="2000" />
            <wire x2="736" y1="880" y2="880" x1="688" />
            <wire x2="688" y1="880" y2="1072" x1="688" />
            <wire x2="1472" y1="960" y2="960" x1="1136" />
            <wire x2="1136" y1="960" y2="1520" x1="1136" />
            <wire x2="2128" y1="1520" y2="1520" x1="2000" />
            <wire x2="2000" y1="1520" y2="2048" x1="2000" />
            <wire x2="2688" y1="1520" y2="2048" x1="2688" />
            <wire x2="2816" y1="1520" y2="1520" x1="2688" />
        </branch>
        <instance x="736" y="912" name="XLXI_1" orien="R0">
        </instance>
        <instance x="736" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="592" y="912" name="clk" orien="R180" />
        <iomarker fontsize="28" x="624" y="1072" name="reset" orien="R180" />
        <branch name="Display(7:0)">
            <wire x2="3232" y1="800" y2="800" x1="3200" />
        </branch>
        <branch name="selector(3:0)">
            <wire x2="3232" y1="864" y2="864" x1="3200" />
        </branch>
        <instance x="2816" y="896" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3232" y="800" name="Display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="864" name="selector(3:0)" orien="R0" />
        <instance x="2304" y="1152" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_27(3:0)">
            <wire x2="2816" y1="864" y2="864" x1="2688" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1136" y1="816" y2="816" x1="1120" />
            <wire x2="1136" y1="800" y2="816" x1="1136" />
            <wire x2="2192" y1="800" y2="800" x1="1136" />
            <wire x2="2816" y1="800" y2="800" x1="2192" />
            <wire x2="2192" y1="800" y2="864" x1="2192" />
            <wire x2="2304" y1="864" y2="864" x1="2192" />
        </branch>
        <instance x="1472" y="1312" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1472" y="1872" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2128" y="1872" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2816" y="1872" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_29">
            <wire x2="1296" y1="1136" y2="1136" x1="1120" />
            <wire x2="1296" y1="1136" y2="1648" x1="1296" />
            <wire x2="1472" y1="1648" y2="1648" x1="1296" />
            <wire x2="1296" y1="1648" y2="1936" x1="1296" />
            <wire x2="1952" y1="1936" y2="1936" x1="1296" />
            <wire x2="2608" y1="1936" y2="1936" x1="1952" />
            <wire x2="1376" y1="1136" y2="1136" x1="1296" />
            <wire x2="1376" y1="1136" y2="1216" x1="1376" />
            <wire x2="1472" y1="1216" y2="1216" x1="1376" />
            <wire x2="1296" y1="1088" y2="1136" x1="1296" />
            <wire x2="1472" y1="1088" y2="1088" x1="1296" />
            <wire x2="1952" y1="1648" y2="1936" x1="1952" />
            <wire x2="2128" y1="1648" y2="1648" x1="1952" />
            <wire x2="2608" y1="1648" y2="1936" x1="2608" />
            <wire x2="2816" y1="1648" y2="1648" x1="2608" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1408" y1="1424" y2="1776" x1="1408" />
            <wire x2="1472" y1="1776" y2="1776" x1="1408" />
            <wire x2="1968" y1="1424" y2="1424" x1="1408" />
            <wire x2="1968" y1="960" y2="960" x1="1888" />
            <wire x2="1968" y1="960" y2="1424" x1="1968" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1936" y1="1520" y2="1520" x1="1888" />
            <wire x2="1936" y1="1520" y2="1776" x1="1936" />
            <wire x2="2128" y1="1776" y2="1776" x1="1936" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2592" y1="1520" y2="1520" x1="2544" />
            <wire x2="2592" y1="1520" y2="1776" x1="2592" />
            <wire x2="2816" y1="1776" y2="1776" x1="2592" />
        </branch>
        <branch name="XLXN_37(3:0)">
            <wire x2="2032" y1="1280" y2="1280" x1="1888" />
            <wire x2="2032" y1="928" y2="1280" x1="2032" />
            <wire x2="2304" y1="928" y2="928" x1="2032" />
        </branch>
        <branch name="XLXN_38(3:0)">
            <wire x2="2080" y1="1840" y2="1840" x1="1888" />
            <wire x2="2080" y1="992" y2="1840" x1="2080" />
            <wire x2="2304" y1="992" y2="992" x1="2080" />
        </branch>
        <branch name="XLXN_39(3:0)">
            <wire x2="2304" y1="1056" y2="1056" x1="2240" />
            <wire x2="2240" y1="1056" y2="1216" x1="2240" />
            <wire x2="2576" y1="1216" y2="1216" x1="2240" />
            <wire x2="2576" y1="1216" y2="1840" x1="2576" />
            <wire x2="2576" y1="1840" y2="1840" x1="2544" />
        </branch>
        <branch name="XLXN_40(3:0)">
            <wire x2="2304" y1="1120" y2="1120" x1="2176" />
            <wire x2="2176" y1="1120" y2="1296" x1="2176" />
            <wire x2="2688" y1="1296" y2="1296" x1="2176" />
            <wire x2="3296" y1="1296" y2="1296" x1="2688" />
            <wire x2="3296" y1="1296" y2="1840" x1="3296" />
            <wire x2="3296" y1="1840" y2="1840" x1="3232" />
        </branch>
        <branch name="updw">
            <wire x2="1472" y1="1024" y2="1024" x1="1456" />
            <wire x2="1456" y1="1024" y2="1376" x1="1456" />
            <wire x2="1456" y1="1376" y2="1584" x1="1456" />
            <wire x2="1472" y1="1584" y2="1584" x1="1456" />
            <wire x2="2064" y1="1376" y2="1376" x1="1456" />
            <wire x2="2608" y1="1376" y2="1376" x1="2064" />
            <wire x2="2608" y1="1376" y2="1584" x1="2608" />
            <wire x2="2816" y1="1584" y2="1584" x1="2608" />
            <wire x2="2064" y1="1376" y2="1584" x1="2064" />
            <wire x2="2128" y1="1584" y2="1584" x1="2064" />
        </branch>
    </sheet>
</drawing>