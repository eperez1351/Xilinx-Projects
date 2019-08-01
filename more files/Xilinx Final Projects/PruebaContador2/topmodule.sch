<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6">
        </signal>
        <signal name="XLXN_8" />
        <signal name="clk" />
        <signal name="Display(7:0)" />
        <signal name="Selector(3:0)" />
        <signal name="XLXN_12" />
        <signal name="reset" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(3:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(3:0)" />
        <signal name="XLXN_25(3:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Display(7:0)" />
        <port polarity="Output" name="Selector(3:0)" />
        <port polarity="Input" name="reset" />
        <blockdef name="VisDyn">
            <timestamp>2019-7-5T14:56:26</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-384" height="512" />
        </blockdef>
        <blockdef name="ClockCounter">
            <timestamp>2019-7-31T17:10:57</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="384" y1="-384" y2="-384" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-76" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="ClockCounterReset">
            <timestamp>2019-7-31T17:16:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="clk1hz">
            <timestamp>2019-7-31T17:19:50</timestamp>
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
        <block symbolname="VisDyn" name="XLXI_1">
            <blockpin signalname="XLXN_26(3:0)" name="A_in(3:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="B_in(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="C_in(3:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="D_in(3:0)" />
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="Display(7:0)" name="sevenSegLEDs(7:0)" />
            <blockpin signalname="Selector(3:0)" name="digSelect(3:0)" />
        </block>
        <block symbolname="ClockCounter" name="XLXI_3">
            <blockpin signalname="XLXN_34" name="clk" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="XLXN_14" name="loadenb" />
            <blockpin signalname="XLXN_33" name="clkenb" />
            <blockpin signalname="XLXN_33" name="updw" />
            <blockpin name="load0(3:0)" />
            <blockpin name="load1(3:0)" />
            <blockpin name="load2(3:0)" />
            <blockpin name="load3(3:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="hourd(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="houru(3:0)" />
            <blockpin signalname="XLXN_25(3:0)" name="mind(3:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="minu(3:0)" />
        </block>
        <block symbolname="ClockCounterReset" name="XLXI_4">
            <blockpin signalname="XLXN_21(3:0)" name="in1(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_6" name="resetout" />
        </block>
        <block symbolname="clk1hz" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_34" name="output1hz" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_33" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1792" y="848" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2176" y="1056" name="XLXI_4" orien="M0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1696" y1="368" y2="960" x1="1696" />
            <wire x2="1792" y1="960" y2="960" x1="1696" />
            <wire x2="1792" y1="368" y2="368" x1="1696" />
        </branch>
        <instance x="1280" y="400" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1168" y="304" name="clk" orien="R180" />
        <branch name="Display(7:0)">
            <wire x2="2704" y1="1216" y2="1248" x1="2704" />
            <wire x2="2736" y1="1248" y2="1248" x1="2704" />
        </branch>
        <instance x="1408" y="560" name="XLXI_6" orien="R0" />
        <instance x="1120" y="464" name="XLXI_7" orien="R0" />
        <branch name="reset">
            <wire x2="1120" y1="432" y2="432" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="432" name="reset" orien="R180" />
        <branch name="XLXN_14">
            <wire x2="1792" y1="432" y2="432" x1="1344" />
        </branch>
        <branch name="Selector(3:0)">
            <wire x2="2640" y1="1216" y2="1328" x1="2640" />
            <wire x2="2736" y1="1328" y2="1328" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1248" name="Display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1328" name="Selector(3:0)" orien="R0" />
        <instance x="2736" y="832" name="XLXI_1" orien="R90">
        </instance>
        <branch name="XLXN_21(3:0)">
            <wire x2="2288" y1="304" y2="304" x1="2176" />
            <wire x2="2288" y1="304" y2="960" x1="2288" />
            <wire x2="2896" y1="304" y2="304" x1="2288" />
            <wire x2="2896" y1="304" y2="832" x1="2896" />
            <wire x2="2288" y1="960" y2="960" x1="2176" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="2400" y1="464" y2="464" x1="2176" />
            <wire x2="2400" y1="464" y2="1024" x1="2400" />
            <wire x2="2960" y1="464" y2="464" x1="2400" />
            <wire x2="2960" y1="464" y2="832" x1="2960" />
            <wire x2="2400" y1="1024" y2="1024" x1="2176" />
        </branch>
        <branch name="XLXN_25(3:0)">
            <wire x2="3024" y1="624" y2="624" x1="2176" />
            <wire x2="3024" y1="624" y2="832" x1="3024" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="3088" y1="784" y2="784" x1="2176" />
            <wire x2="3088" y1="784" y2="832" x1="3088" />
        </branch>
        <branch name="clk">
            <wire x2="1264" y1="304" y2="304" x1="1168" />
            <wire x2="1280" y1="304" y2="304" x1="1264" />
            <wire x2="2832" y1="176" y2="176" x1="1264" />
            <wire x2="2832" y1="176" y2="832" x1="2832" />
            <wire x2="1264" y1="176" y2="304" x1="1264" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1648" y1="560" y2="560" x1="1472" />
            <wire x2="1792" y1="560" y2="560" x1="1648" />
            <wire x2="1792" y1="496" y2="496" x1="1648" />
            <wire x2="1648" y1="496" y2="560" x1="1648" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1792" y1="304" y2="304" x1="1664" />
        </branch>
    </sheet>
</drawing>