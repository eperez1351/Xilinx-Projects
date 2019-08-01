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
        <signal name="clk" />
        <signal name="XLXN_87(3:0)" />
        <signal name="XLXN_163" />
        <signal name="XLXN_167(3:0)" />
        <signal name="col(3:0)" />
        <signal name="row(3:0)" />
        <signal name="XLXN_190" />
        <signal name="reset" />
        <signal name="XLXN_209(3:0)" />
        <signal name="XLXN_211" />
        <signal name="XLXN_213" />
        <signal name="XLXN_215(3:0)" />
        <port polarity="Output" name="Display(7:0)" />
        <port polarity="Output" name="selector(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="col(3:0)" />
        <port polarity="Input" name="row(3:0)" />
        <port polarity="Input" name="reset" />
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
        <blockdef name="keyboard">
            <timestamp>2019-7-9T18:4:0</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="reg16bitSIPO">
            <timestamp>2019-7-9T19:45:4</timestamp>
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
        <blockdef name="BCDcounter">
            <timestamp>2019-7-9T19:44:4</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="sevenSegDisp" name="XLXI_2">
            <blockpin signalname="XLXN_190" name="clk" />
            <blockpin signalname="XLXN_87(3:0)" name="q(3:0)" />
            <blockpin signalname="Display(7:0)" name="led(7:0)" />
            <blockpin signalname="selector(3:0)" name="digitSelect(3:0)" />
        </block>
        <block symbolname="clkDivider" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_190" name="clkout" />
        </block>
        <block symbolname="clk1hz" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_211" name="output1hz" />
        </block>
        <block symbolname="MuxConContSel_16a4" name="XLXI_14">
            <blockpin signalname="XLXN_190" name="clk" />
            <blockpin signalname="XLXN_209(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_215(3:0)" name="b(3:0)" />
            <blockpin name="c(3:0)" />
            <blockpin name="d(3:0)" />
            <blockpin signalname="XLXN_87(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="reg16bitSIPO" name="XLXI_44">
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_190" name="clk" />
            <blockpin signalname="XLXN_163" name="clkenb" />
            <blockpin signalname="XLXN_167(3:0)" name="q(3:0)" />
            <blockpin signalname="XLXN_215(3:0)" name="d1(3:0)" />
            <blockpin name="d2(3:0)" />
            <blockpin name="d3(3:0)" />
            <blockpin name="d4(3:0)" />
        </block>
        <block symbolname="keyboard" name="XLXI_43">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_163" name="valid" />
            <blockpin signalname="col(3:0)" name="col(3:0)" />
            <blockpin signalname="XLXN_167(3:0)" name="codeout(3:0)" />
            <blockpin signalname="row(3:0)" name="row(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_45">
            <blockpin signalname="XLXN_213" name="reset" />
            <blockpin signalname="XLXN_213" name="updw" />
            <blockpin signalname="XLXN_211" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_213" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin name="carry_out" />
            <blockpin signalname="XLXN_209(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_48">
            <blockpin signalname="XLXN_213" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Display(7:0)">
            <wire x2="3056" y1="160" y2="160" x1="3024" />
        </branch>
        <branch name="selector(3:0)">
            <wire x2="3056" y1="224" y2="224" x1="3024" />
        </branch>
        <branch name="XLXN_87(3:0)">
            <wire x2="2544" y1="320" y2="320" x1="2448" />
            <wire x2="2544" y1="224" y2="320" x1="2544" />
            <wire x2="2640" y1="224" y2="224" x1="2544" />
        </branch>
        <instance x="2640" y="256" name="XLXI_2" orien="R0">
        </instance>
        <instance x="528" y="256" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3056" y="160" name="Display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3056" y="224" name="selector(3:0)" orien="R0" />
        <iomarker fontsize="28" x="384" y="256" name="clk" orien="R180" />
        <instance x="2064" y="608" name="XLXI_14" orien="R0">
        </instance>
        <instance x="528" y="448" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_167(3:0)">
            <wire x2="1264" y1="928" y2="928" x1="912" />
        </branch>
        <branch name="col(3:0)">
            <wire x2="944" y1="864" y2="864" x1="912" />
        </branch>
        <branch name="row(3:0)">
            <wire x2="528" y1="992" y2="992" x1="448" />
        </branch>
        <iomarker fontsize="28" x="944" y="864" name="col(3:0)" orien="R0" />
        <iomarker fontsize="28" x="448" y="992" name="row(3:0)" orien="R180" />
        <branch name="clk">
            <wire x2="432" y1="352" y2="352" x1="368" />
            <wire x2="528" y1="352" y2="352" x1="432" />
            <wire x2="368" y1="352" y2="800" x1="368" />
            <wire x2="528" y1="800" y2="800" x1="368" />
            <wire x2="432" y1="256" y2="256" x1="384" />
            <wire x2="432" y1="256" y2="352" x1="432" />
            <wire x2="528" y1="160" y2="160" x1="432" />
            <wire x2="432" y1="160" y2="256" x1="432" />
        </branch>
        <instance x="528" y="960" name="XLXI_43" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="448" y1="416" y2="416" x1="288" />
            <wire x2="528" y1="416" y2="416" x1="448" />
            <wire x2="448" y1="416" y2="592" x1="448" />
            <wire x2="448" y1="592" y2="864" x1="448" />
            <wire x2="528" y1="864" y2="864" x1="448" />
            <wire x2="848" y1="592" y2="592" x1="448" />
            <wire x2="848" y1="592" y2="736" x1="848" />
            <wire x2="1264" y1="736" y2="736" x1="848" />
        </branch>
        <iomarker fontsize="28" x="288" y="416" name="reset" orien="R180" />
        <branch name="XLXN_163">
            <wire x2="1104" y1="800" y2="800" x1="912" />
            <wire x2="1104" y1="800" y2="864" x1="1104" />
            <wire x2="1264" y1="864" y2="864" x1="1104" />
        </branch>
        <instance x="1264" y="960" name="XLXI_44" orien="R0">
        </instance>
        <branch name="XLXN_190">
            <wire x2="1408" y1="160" y2="160" x1="912" />
            <wire x2="1888" y1="160" y2="160" x1="1408" />
            <wire x2="1888" y1="160" y2="320" x1="1888" />
            <wire x2="2064" y1="320" y2="320" x1="1888" />
            <wire x2="2640" y1="160" y2="160" x1="1888" />
            <wire x2="1408" y1="160" y2="640" x1="1408" />
            <wire x2="1200" y1="640" y2="800" x1="1200" />
            <wire x2="1264" y1="800" y2="800" x1="1200" />
            <wire x2="1408" y1="640" y2="640" x1="1200" />
        </branch>
        <instance x="1616" y="1456" name="XLXI_45" orien="R0">
        </instance>
        <branch name="XLXN_209(3:0)">
            <wire x2="1984" y1="384" y2="992" x1="1984" />
            <wire x2="2112" y1="992" y2="992" x1="1984" />
            <wire x2="2112" y1="992" y2="1424" x1="2112" />
            <wire x2="2064" y1="384" y2="384" x1="1984" />
            <wire x2="2112" y1="1424" y2="1424" x1="2032" />
        </branch>
        <branch name="XLXN_211">
            <wire x2="1744" y1="480" y2="480" x1="912" />
            <wire x2="1744" y1="480" y2="976" x1="1744" />
            <wire x2="1744" y1="976" y2="976" x1="1488" />
            <wire x2="1488" y1="976" y2="1232" x1="1488" />
            <wire x2="1616" y1="1232" y2="1232" x1="1488" />
        </branch>
        <branch name="XLXN_213">
            <wire x2="1264" y1="1168" y2="1168" x1="1168" />
            <wire x2="1264" y1="1168" y2="1232" x1="1264" />
            <wire x2="1360" y1="1232" y2="1232" x1="1264" />
            <wire x2="1360" y1="1232" y2="1360" x1="1360" />
            <wire x2="1616" y1="1360" y2="1360" x1="1360" />
            <wire x2="1168" y1="1168" y2="1184" x1="1168" />
            <wire x2="1616" y1="1104" y2="1104" x1="1360" />
            <wire x2="1360" y1="1104" y2="1168" x1="1360" />
            <wire x2="1360" y1="1168" y2="1232" x1="1360" />
            <wire x2="1616" y1="1168" y2="1168" x1="1360" />
        </branch>
        <branch name="XLXN_215(3:0)">
            <wire x2="1856" y1="736" y2="736" x1="1648" />
            <wire x2="1856" y1="448" y2="736" x1="1856" />
            <wire x2="2064" y1="448" y2="448" x1="1856" />
        </branch>
        <instance x="1104" y="1312" name="XLXI_48" orien="R0" />
    </sheet>
</drawing>