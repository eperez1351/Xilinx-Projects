<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_10" />
        <signal name="XLXN_21" />
        <signal name="XLXN_25" />
        <signal name="XLXN_29" />
        <signal name="XLXN_33" />
        <signal name="XLXN_37" />
        <signal name="XLXN_41" />
        <signal name="XLXN_44" />
        <signal name="reset" />
        <signal name="clk_in" />
        <signal name="col(3:0)" />
        <signal name="row(3:0)" />
        <signal name="XLXN_54(3:0)" />
        <signal name="XLXN_71" />
        <signal name="XLXN_70" />
        <signal name="XLXN_82" />
        <signal name="XLXN_81" />
        <signal name="XLXN_95" />
        <signal name="XLXN_103" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_45(3:0)" />
        <signal name="leds(7:0)" />
        <signal name="digitSelector(3:0)" />
        <signal name="XLXN_108(3:0)" />
        <signal name="XLXN_127" />
        <signal name="XLXN_122" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_132" />
        <signal name="XLXN_139" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163(3:0)" />
        <signal name="XLXN_164(3:0)" />
        <signal name="XLXN_165(3:0)" />
        <signal name="XLXN_166(3:0)" />
        <signal name="XLXN_167(3:0)" />
        <signal name="XLXN_168(3:0)" />
        <signal name="XLXN_169(3:0)" />
        <signal name="XLXN_172(3:0)" />
        <signal name="XLXN_173(3:0)" />
        <signal name="XLXN_174(3:0)" />
        <signal name="XLXN_175(3:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="col(3:0)" />
        <port polarity="Input" name="row(3:0)" />
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
        <blockdef name="MuxConContSel_16a4">
            <timestamp>2019-6-17T19:6:8</timestamp>
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
        <blockdef name="flancoP">
            <timestamp>2019-6-17T19:8:44</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="registro">
            <timestamp>2019-6-17T19:8:31</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="traductor4bit">
            <timestamp>2019-6-17T19:42:17</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_44" name="clkout" />
        </block>
        <block symbolname="key44" name="XLXI_3">
            <blockpin signalname="clk_in" name="sys_clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
            <blockpin signalname="XLXN_129" name="valid" />
            <blockpin signalname="XLXN_163(3:0)" name="code(3:0)" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
        </block>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_44" name="clk" />
            <blockpin signalname="XLXN_108(3:0)" name="q(3:0)" />
            <blockpin signalname="leds(7:0)" name="led(7:0)" />
            <blockpin signalname="digitSelector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="MuxConContSel_16a4" name="XLXI_13">
            <blockpin signalname="XLXN_44" name="clk" />
            <blockpin signalname="XLXN_172(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_173(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_166(3:0)" name="c(3:0)" />
            <blockpin signalname="XLXN_165(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_108(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="flancoP" name="XLXI_34">
            <blockpin signalname="clk_in" name="ck" />
            <blockpin signalname="XLXN_129" name="da" />
            <blockpin signalname="XLXN_162" name="p" />
        </block>
        <block symbolname="registro" name="XLXI_36">
            <blockpin signalname="clk_in" name="ck" />
            <blockpin signalname="XLXN_162" name="ce" />
            <blockpin signalname="XLXN_166(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_173(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="registro" name="XLXI_37">
            <blockpin signalname="clk_in" name="ck" />
            <blockpin signalname="XLXN_162" name="ce" />
            <blockpin signalname="XLXN_165(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_166(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="registro" name="XLXI_38">
            <blockpin signalname="clk_in" name="ck" />
            <blockpin signalname="XLXN_162" name="ce" />
            <blockpin signalname="XLXN_164(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_165(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="registro" name="XLXI_35">
            <blockpin signalname="clk_in" name="ck" />
            <blockpin signalname="XLXN_162" name="ce" />
            <blockpin signalname="XLXN_173(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_172(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="traductor4bit" name="XLXI_48">
            <blockpin signalname="XLXN_163(3:0)" name="fromKeyb(3:0)" />
            <blockpin signalname="XLXN_164(3:0)" name="toRegister(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="reset">
            <wire x2="432" y1="544" y2="544" x1="400" />
            <wire x2="480" y1="544" y2="544" x1="432" />
            <wire x2="432" y1="256" y2="544" x1="432" />
            <wire x2="464" y1="256" y2="256" x1="432" />
        </branch>
        <branch name="col(3:0)">
            <wire x2="896" y1="608" y2="608" x1="864" />
        </branch>
        <branch name="row(3:0)">
            <wire x2="480" y1="608" y2="608" x1="448" />
        </branch>
        <instance x="464" y="288" name="XLXI_1" orien="R0">
        </instance>
        <instance x="480" y="640" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="400" y="544" name="reset" orien="R180" />
        <iomarker fontsize="28" x="272" y="192" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="448" y="608" name="row(3:0)" orien="R180" />
        <iomarker fontsize="28" x="896" y="608" name="col(3:0)" orien="R0" />
        <branch name="leds(7:0)">
            <wire x2="3168" y1="224" y2="224" x1="3136" />
        </branch>
        <branch name="digitSelector(3:0)">
            <wire x2="3168" y1="288" y2="288" x1="3136" />
        </branch>
        <branch name="XLXN_108(3:0)">
            <wire x2="2752" y1="288" y2="288" x1="2688" />
            <wire x2="2688" y1="288" y2="464" x1="2688" />
            <wire x2="3264" y1="464" y2="464" x1="2688" />
            <wire x2="3264" y1="464" y2="624" x1="3264" />
            <wire x2="3264" y1="624" y2="624" x1="3152" />
        </branch>
        <instance x="2752" y="320" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2768" y="912" name="XLXI_13" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3168" y="224" name="leds(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3168" y="288" name="digitSelector(3:0)" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="2640" y1="192" y2="192" x1="848" />
            <wire x2="2640" y1="192" y2="224" x1="2640" />
            <wire x2="2752" y1="224" y2="224" x1="2640" />
            <wire x2="2640" y1="224" y2="464" x1="2640" />
            <wire x2="2544" y1="464" y2="624" x1="2544" />
            <wire x2="2768" y1="624" y2="624" x1="2544" />
            <wire x2="2640" y1="464" y2="464" x1="2544" />
        </branch>
        <instance x="1520" y="1536" name="XLXI_38" orien="R0">
        </instance>
        <branch name="XLXN_129">
            <wire x2="1024" y1="480" y2="480" x1="864" />
        </branch>
        <instance x="1024" y="512" name="XLXI_34" orien="R0">
        </instance>
        <instance x="1520" y="512" name="XLXI_35" orien="R0">
        </instance>
        <instance x="1520" y="864" name="XLXI_36" orien="R0">
        </instance>
        <branch name="clk_in">
            <wire x2="368" y1="192" y2="192" x1="272" />
            <wire x2="464" y1="192" y2="192" x1="368" />
            <wire x2="368" y1="192" y2="336" x1="368" />
            <wire x2="368" y1="336" y2="480" x1="368" />
            <wire x2="480" y1="480" y2="480" x1="368" />
            <wire x2="1008" y1="336" y2="336" x1="368" />
            <wire x2="1008" y1="336" y2="416" x1="1008" />
            <wire x2="1024" y1="416" y2="416" x1="1008" />
            <wire x2="1008" y1="272" y2="336" x1="1008" />
            <wire x2="1456" y1="272" y2="272" x1="1008" />
            <wire x2="1456" y1="272" y2="352" x1="1456" />
            <wire x2="1520" y1="352" y2="352" x1="1456" />
            <wire x2="1456" y1="352" y2="704" x1="1456" />
            <wire x2="1520" y1="704" y2="704" x1="1456" />
            <wire x2="1456" y1="704" y2="1040" x1="1456" />
            <wire x2="1456" y1="1040" y2="1376" x1="1456" />
            <wire x2="1520" y1="1376" y2="1376" x1="1456" />
            <wire x2="1520" y1="1040" y2="1040" x1="1456" />
        </branch>
        <branch name="XLXN_162">
            <wire x2="1424" y1="416" y2="416" x1="1408" />
            <wire x2="1520" y1="416" y2="416" x1="1424" />
            <wire x2="1424" y1="416" y2="768" x1="1424" />
            <wire x2="1520" y1="768" y2="768" x1="1424" />
            <wire x2="1424" y1="768" y2="1104" x1="1424" />
            <wire x2="1424" y1="1104" y2="1440" x1="1424" />
            <wire x2="1520" y1="1440" y2="1440" x1="1424" />
            <wire x2="1520" y1="1104" y2="1104" x1="1424" />
        </branch>
        <instance x="1520" y="1200" name="XLXI_37" orien="R0">
        </instance>
        <instance x="928" y="1536" name="XLXI_48" orien="R0">
        </instance>
        <branch name="XLXN_163(3:0)">
            <wire x2="1344" y1="544" y2="544" x1="864" />
            <wire x2="1344" y1="544" y2="1360" x1="1344" />
            <wire x2="912" y1="1360" y2="1504" x1="912" />
            <wire x2="928" y1="1504" y2="1504" x1="912" />
            <wire x2="1344" y1="1360" y2="1360" x1="912" />
        </branch>
        <branch name="XLXN_164(3:0)">
            <wire x2="1520" y1="1504" y2="1504" x1="1376" />
        </branch>
        <branch name="XLXN_165(3:0)">
            <wire x2="1488" y1="1168" y2="1232" x1="1488" />
            <wire x2="1920" y1="1232" y2="1232" x1="1488" />
            <wire x2="1920" y1="1232" y2="1376" x1="1920" />
            <wire x2="2032" y1="1232" y2="1232" x1="1920" />
            <wire x2="1520" y1="1168" y2="1168" x1="1488" />
            <wire x2="1920" y1="1376" y2="1376" x1="1904" />
            <wire x2="2768" y1="880" y2="880" x1="2032" />
            <wire x2="2032" y1="880" y2="1232" x1="2032" />
        </branch>
        <branch name="XLXN_166(3:0)">
            <wire x2="1520" y1="832" y2="832" x1="1488" />
            <wire x2="1488" y1="832" y2="944" x1="1488" />
            <wire x2="1504" y1="944" y2="944" x1="1488" />
            <wire x2="1968" y1="944" y2="944" x1="1504" />
            <wire x2="1968" y1="944" y2="1040" x1="1968" />
            <wire x2="1968" y1="1040" y2="1040" x1="1904" />
            <wire x2="2768" y1="816" y2="816" x1="1968" />
            <wire x2="1968" y1="816" y2="944" x1="1968" />
        </branch>
        <branch name="XLXN_172(3:0)">
            <wire x2="2336" y1="352" y2="352" x1="1904" />
            <wire x2="2336" y1="352" y2="688" x1="2336" />
            <wire x2="2768" y1="688" y2="688" x1="2336" />
        </branch>
        <branch name="XLXN_173(3:0)">
            <wire x2="1520" y1="480" y2="480" x1="1504" />
            <wire x2="1504" y1="480" y2="576" x1="1504" />
            <wire x2="1968" y1="576" y2="576" x1="1504" />
            <wire x2="1968" y1="576" y2="704" x1="1968" />
            <wire x2="1968" y1="704" y2="752" x1="1968" />
            <wire x2="2768" y1="752" y2="752" x1="1968" />
            <wire x2="1968" y1="704" y2="704" x1="1904" />
        </branch>
    </sheet>
</drawing>