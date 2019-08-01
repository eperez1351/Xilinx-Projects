<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Display(7:0)" />
        <signal name="selector(3:0)" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87(3:0)" />
        <signal name="led1(3:0)" />
        <signal name="XLXN_144(3:0)" />
        <signal name="clk" />
        <signal name="XLXN_164" />
        <signal name="reset" />
        <signal name="XLXN_173" />
        <signal name="XLXN_175" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177(3:0)" />
        <signal name="XLXN_178(3:0)" />
        <signal name="updw">
        </signal>
        <signal name="carry_out" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185" />
        <signal name="XLXN_186" />
        <port polarity="Output" name="Display(7:0)" />
        <port polarity="Output" name="selector(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="carry_out" />
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
        <blockdef name="BCDcounter">
            <timestamp>2019-6-26T20:0:17</timestamp>
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
        <blockdef name="MuxConContSel_16a4">
            <timestamp>2019-6-29T22:23:17</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_86" name="clk" />
            <blockpin signalname="XLXN_87(3:0)" name="q(3:0)" />
            <blockpin signalname="Display(7:0)" name="led(7:0)" />
            <blockpin signalname="selector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="MuxConContSel_16a4" name="XLXI_14">
            <blockpin signalname="XLXN_86" name="clk" />
            <blockpin signalname="led1(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_144(3:0)" name="b(3:0)" />
            <blockpin signalname="XLXN_177(3:0)" name="c(3:0)" />
            <blockpin signalname="XLXN_178(3:0)" name="d(3:0)" />
            <blockpin signalname="XLXN_87(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_32">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_164" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_184" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_173" name="carry_out" />
            <blockpin signalname="led1(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_33">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_164" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_173" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_175" name="carry_out" />
            <blockpin signalname="XLXN_144(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_86" name="clkout" />
        </block>
        <block symbolname="clk1hz" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_164" name="output1hz" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_42">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_164" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_175" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_176" name="carry_out" />
            <blockpin signalname="XLXN_177(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_43">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="updw" name="updw" />
            <blockpin signalname="XLXN_164" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_176" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="carry_out" name="carry_out" />
            <blockpin signalname="XLXN_178(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="XLXN_184" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_45">
            <blockpin signalname="updw" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Display(7:0)">
            <wire x2="3056" y1="160" y2="160" x1="3024" />
        </branch>
        <branch name="selector(3:0)">
            <wire x2="3056" y1="224" y2="224" x1="3024" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="1888" y1="160" y2="160" x1="656" />
            <wire x2="1888" y1="160" y2="320" x1="1888" />
            <wire x2="2064" y1="320" y2="320" x1="1888" />
            <wire x2="2640" y1="160" y2="160" x1="1888" />
        </branch>
        <branch name="XLXN_87(3:0)">
            <wire x2="2544" y1="320" y2="320" x1="2448" />
            <wire x2="2544" y1="224" y2="320" x1="2544" />
            <wire x2="2640" y1="224" y2="224" x1="2544" />
        </branch>
        <instance x="2640" y="256" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3056" y="160" name="Display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3056" y="224" name="selector(3:0)" orien="R0" />
        <instance x="2064" y="608" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_144(3:0)">
            <wire x2="1808" y1="1216" y2="1216" x1="1472" />
            <wire x2="1808" y1="448" y2="1216" x1="1808" />
            <wire x2="2064" y1="448" y2="448" x1="1808" />
        </branch>
        <instance x="272" y="256" name="XLXI_1" orien="R0">
        </instance>
        <instance x="272" y="448" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="176" y1="256" y2="256" x1="128" />
            <wire x2="176" y1="256" y2="352" x1="176" />
            <wire x2="272" y1="352" y2="352" x1="176" />
            <wire x2="272" y1="160" y2="160" x1="176" />
            <wire x2="176" y1="160" y2="256" x1="176" />
        </branch>
        <iomarker fontsize="28" x="128" y="256" name="clk" orien="R180" />
        <branch name="led1(3:0)">
            <wire x2="1760" y1="672" y2="672" x1="1472" />
            <wire x2="1760" y1="384" y2="672" x1="1760" />
            <wire x2="2064" y1="384" y2="384" x1="1760" />
        </branch>
        <instance x="1056" y="704" name="XLXI_32" orien="R0">
        </instance>
        <instance x="1056" y="1248" name="XLXI_33" orien="R0">
        </instance>
        <instance x="1056" y="1824" name="XLXI_42" orien="R0">
        </instance>
        <instance x="1056" y="2352" name="XLXI_43" orien="R0">
        </instance>
        <branch name="XLXN_164">
            <wire x2="688" y1="480" y2="480" x1="656" />
            <wire x2="1056" y1="480" y2="480" x1="688" />
            <wire x2="688" y1="480" y2="1024" x1="688" />
            <wire x2="1056" y1="1024" y2="1024" x1="688" />
            <wire x2="688" y1="1024" y2="1600" x1="688" />
            <wire x2="1056" y1="1600" y2="1600" x1="688" />
            <wire x2="688" y1="1600" y2="2128" x1="688" />
            <wire x2="1056" y1="2128" y2="2128" x1="688" />
        </branch>
        <branch name="XLXN_173">
            <wire x2="1552" y1="752" y2="752" x1="960" />
            <wire x2="960" y1="752" y2="1152" x1="960" />
            <wire x2="1056" y1="1152" y2="1152" x1="960" />
            <wire x2="1552" y1="352" y2="352" x1="1472" />
            <wire x2="1552" y1="352" y2="752" x1="1552" />
        </branch>
        <branch name="XLXN_175">
            <wire x2="1568" y1="1328" y2="1328" x1="944" />
            <wire x2="944" y1="1328" y2="1728" x1="944" />
            <wire x2="1056" y1="1728" y2="1728" x1="944" />
            <wire x2="1568" y1="896" y2="896" x1="1472" />
            <wire x2="1568" y1="896" y2="1328" x1="1568" />
        </branch>
        <branch name="XLXN_176">
            <wire x2="1584" y1="1888" y2="1888" x1="944" />
            <wire x2="944" y1="1888" y2="2256" x1="944" />
            <wire x2="1056" y1="2256" y2="2256" x1="944" />
            <wire x2="1584" y1="1472" y2="1472" x1="1472" />
            <wire x2="1584" y1="1472" y2="1888" x1="1584" />
        </branch>
        <branch name="XLXN_177(3:0)">
            <wire x2="1824" y1="1792" y2="1792" x1="1472" />
            <wire x2="1824" y1="512" y2="1792" x1="1824" />
            <wire x2="2064" y1="512" y2="512" x1="1824" />
        </branch>
        <branch name="XLXN_178(3:0)">
            <wire x2="1840" y1="2320" y2="2320" x1="1472" />
            <wire x2="1840" y1="576" y2="2320" x1="1840" />
            <wire x2="2064" y1="576" y2="576" x1="1840" />
        </branch>
        <branch name="updw">
            <wire x2="400" y1="912" y2="960" x1="400" />
            <wire x2="896" y1="960" y2="960" x1="400" />
            <wire x2="1056" y1="960" y2="960" x1="896" />
            <wire x2="896" y1="960" y2="1536" x1="896" />
            <wire x2="1056" y1="1536" y2="1536" x1="896" />
            <wire x2="896" y1="1536" y2="2064" x1="896" />
            <wire x2="1056" y1="2064" y2="2064" x1="896" />
            <wire x2="1056" y1="416" y2="416" x1="896" />
            <wire x2="896" y1="416" y2="960" x1="896" />
        </branch>
        <branch name="carry_out">
            <wire x2="1504" y1="2000" y2="2000" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="2000" name="carry_out" orien="R0" />
        <branch name="XLXN_184">
            <wire x2="208" y1="608" y2="704" x1="208" />
            <wire x2="1056" y1="608" y2="608" x1="208" />
        </branch>
        <instance x="144" y="832" name="XLXI_44" orien="R0" />
        <instance x="336" y="912" name="XLXI_45" orien="R0" />
        <branch name="reset">
            <wire x2="272" y1="416" y2="416" x1="208" />
            <wire x2="208" y1="416" y2="576" x1="208" />
            <wire x2="528" y1="576" y2="576" x1="208" />
            <wire x2="528" y1="576" y2="688" x1="528" />
            <wire x2="768" y1="688" y2="688" x1="528" />
            <wire x2="768" y1="688" y2="896" x1="768" />
            <wire x2="1056" y1="896" y2="896" x1="768" />
            <wire x2="768" y1="896" y2="1472" x1="768" />
            <wire x2="1056" y1="1472" y2="1472" x1="768" />
            <wire x2="768" y1="1472" y2="2000" x1="768" />
            <wire x2="1056" y1="2000" y2="2000" x1="768" />
            <wire x2="528" y1="688" y2="688" x1="480" />
            <wire x2="1056" y1="352" y2="352" x1="768" />
            <wire x2="768" y1="352" y2="688" x1="768" />
        </branch>
        <iomarker fontsize="28" x="480" y="688" name="reset" orien="R180" />
    </sheet>
</drawing>