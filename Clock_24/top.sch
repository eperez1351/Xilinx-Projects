<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="display(7:0)" />
        <signal name="selector(3:0)" />
        <signal name="XLXN_52(3:0)" />
        <signal name="XLXN_53(3:0)" />
        <signal name="XLXN_54(3:0)" />
        <signal name="XLXN_55(3:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_61" />
        <signal name="XLXN_64" />
        <signal name="reset" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="carry_out" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="display(7:0)" />
        <port polarity="Output" name="selector(3:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="carry_out" />
        <blockdef name="BCDcounter">
            <timestamp>2019-7-5T13:8:35</timestamp>
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
        <blockdef name="clk1hz">
            <timestamp>2019-7-5T13:8:25</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <block symbolname="clk1hz" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_64" name="output1hz" />
        </block>
        <block symbolname="VisDyn" name="XLXI_19">
            <blockpin signalname="XLXN_52(3:0)" name="A_in(3:0)" />
            <blockpin signalname="XLXN_53(3:0)" name="B_in(3:0)" />
            <blockpin signalname="XLXN_54(3:0)" name="C_in(3:0)" />
            <blockpin signalname="XLXN_55(3:0)" name="D_in(3:0)" />
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="display(7:0)" name="sevenSegLEDs(7:0)" />
            <blockpin signalname="selector(3:0)" name="digSelect(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_26">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_61" name="updw" />
            <blockpin signalname="XLXN_64" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_86" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_84" name="carry_out" />
            <blockpin signalname="XLXN_52(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_27">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_61" name="updw" />
            <blockpin signalname="XLXN_64" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_58" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_81" name="carry_out" />
            <blockpin signalname="XLXN_53(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_28">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_61" name="updw" />
            <blockpin signalname="XLXN_64" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_57" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="XLXN_78" name="carry_out" />
            <blockpin signalname="XLXN_54(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="BCDcounter" name="XLXI_29">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_61" name="updw" />
            <blockpin signalname="XLXN_64" name="clk" />
            <blockpin name="loadenb" />
            <blockpin signalname="XLXN_56" name="clkenb" />
            <blockpin name="load_in(3:0)" />
            <blockpin signalname="carry_out" name="carry_out" />
            <blockpin signalname="XLXN_55(3:0)" name="count_out(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="XLXN_86" name="I0" />
            <blockpin signalname="XLXN_83" name="I1" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_31">
            <blockpin signalname="XLXN_58" name="I0" />
            <blockpin signalname="XLXN_80" name="I1" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="XLXN_57" name="I0" />
            <blockpin signalname="XLXN_79" name="I1" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="XLXN_78" name="I" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="XLXN_81" name="I" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_38">
            <blockpin signalname="XLXN_84" name="I" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_35">
            <blockpin signalname="XLXN_86" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="304" y="192" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="128" y="240" name="clk" orien="R0" />
        <branch name="clk">
            <wire x2="304" y1="96" y2="96" x1="64" />
            <wire x2="64" y1="96" y2="240" x1="64" />
            <wire x2="128" y1="240" y2="240" x1="64" />
            <wire x2="64" y1="240" y2="2640" x1="64" />
            <wire x2="2752" y1="2640" y2="2640" x1="64" />
            <wire x2="2752" y1="352" y2="2640" x1="2752" />
        </branch>
        <branch name="display(7:0)">
            <wire x2="3168" y1="480" y2="480" x1="3136" />
        </branch>
        <branch name="selector(3:0)">
            <wire x2="3168" y1="544" y2="544" x1="3136" />
        </branch>
        <instance x="2752" y="448" name="XLXI_19" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3168" y="480" name="display(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3168" y="544" name="selector(3:0)" orien="R0" />
        <instance x="2048" y="448" name="XLXI_26" orien="R0">
        </instance>
        <instance x="2048" y="1040" name="XLXI_27" orien="R0">
        </instance>
        <instance x="2048" y="1648" name="XLXI_28" orien="R0">
        </instance>
        <instance x="2048" y="2240" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_52(3:0)">
            <wire x2="2608" y1="416" y2="416" x1="2464" />
            <wire x2="2608" y1="96" y2="416" x1="2608" />
            <wire x2="2752" y1="96" y2="96" x1="2608" />
        </branch>
        <branch name="XLXN_53(3:0)">
            <wire x2="2624" y1="1008" y2="1008" x1="2464" />
            <wire x2="2624" y1="160" y2="1008" x1="2624" />
            <wire x2="2752" y1="160" y2="160" x1="2624" />
        </branch>
        <branch name="XLXN_54(3:0)">
            <wire x2="2640" y1="1616" y2="1616" x1="2464" />
            <wire x2="2640" y1="224" y2="1616" x1="2640" />
            <wire x2="2752" y1="224" y2="224" x1="2640" />
        </branch>
        <branch name="XLXN_55(3:0)">
            <wire x2="2656" y1="2208" y2="2208" x1="2464" />
            <wire x2="2656" y1="288" y2="2208" x1="2656" />
            <wire x2="2752" y1="288" y2="288" x1="2656" />
        </branch>
        <instance x="1696" y="1040" name="XLXI_30" orien="R0" />
        <instance x="1712" y="1648" name="XLXI_31" orien="R0" />
        <instance x="1712" y="2240" name="XLXI_32" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="2048" y1="2144" y2="2144" x1="1968" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="2000" y1="1664" y2="1664" x1="1664" />
            <wire x2="1664" y1="1664" y2="2176" x1="1664" />
            <wire x2="1712" y1="2176" y2="2176" x1="1664" />
            <wire x2="2000" y1="1552" y2="1552" x1="1968" />
            <wire x2="2048" y1="1552" y2="1552" x1="2000" />
            <wire x2="2000" y1="1552" y2="1664" x1="2000" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="2000" y1="1040" y2="1040" x1="1680" />
            <wire x2="1680" y1="1040" y2="1584" x1="1680" />
            <wire x2="1712" y1="1584" y2="1584" x1="1680" />
            <wire x2="2000" y1="944" y2="944" x1="1952" />
            <wire x2="2048" y1="944" y2="944" x1="2000" />
            <wire x2="2000" y1="944" y2="1040" x1="2000" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1984" y1="224" y2="224" x1="688" />
            <wire x2="1984" y1="224" y2="816" x1="1984" />
            <wire x2="2048" y1="816" y2="816" x1="1984" />
            <wire x2="1984" y1="816" y2="1424" x1="1984" />
            <wire x2="1984" y1="1424" y2="2016" x1="1984" />
            <wire x2="2048" y1="2016" y2="2016" x1="1984" />
            <wire x2="2048" y1="1424" y2="1424" x1="1984" />
            <wire x2="2048" y1="224" y2="224" x1="1984" />
        </branch>
        <branch name="reset">
            <wire x2="2016" y1="96" y2="96" x1="1760" />
            <wire x2="2048" y1="96" y2="96" x1="2016" />
            <wire x2="2016" y1="96" y2="688" x1="2016" />
            <wire x2="2048" y1="688" y2="688" x1="2016" />
            <wire x2="2016" y1="688" y2="1296" x1="2016" />
            <wire x2="2016" y1="1296" y2="1888" x1="2016" />
            <wire x2="2048" y1="1888" y2="1888" x1="2016" />
            <wire x2="2048" y1="1296" y2="1296" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="1760" y="96" name="reset" orien="R180" />
        <instance x="2352" y="1152" name="XLXI_37" orien="M0" />
        <instance x="2352" y="544" name="XLXI_38" orien="M0" />
        <instance x="2352" y="1744" name="XLXI_36" orien="M0" />
        <branch name="XLXN_78">
            <wire x2="2528" y1="1712" y2="1712" x1="2352" />
            <wire x2="2528" y1="1296" y2="1296" x1="2464" />
            <wire x2="2528" y1="1296" y2="1712" x1="2528" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="1632" y1="1712" y2="2112" x1="1632" />
            <wire x2="1712" y1="2112" y2="2112" x1="1632" />
            <wire x2="2128" y1="1712" y2="1712" x1="1632" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="1648" y1="1120" y2="1520" x1="1648" />
            <wire x2="1712" y1="1520" y2="1520" x1="1648" />
            <wire x2="2128" y1="1120" y2="1120" x1="1648" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="2480" y1="1120" y2="1120" x1="2352" />
            <wire x2="2480" y1="688" y2="688" x1="2464" />
            <wire x2="2480" y1="688" y2="1120" x1="2480" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="1616" y1="512" y2="912" x1="1616" />
            <wire x2="1696" y1="912" y2="912" x1="1616" />
            <wire x2="2128" y1="512" y2="512" x1="1616" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2480" y1="512" y2="512" x1="2352" />
            <wire x2="2480" y1="96" y2="96" x1="2464" />
            <wire x2="2480" y1="96" y2="512" x1="2480" />
        </branch>
        <branch name="carry_out">
            <wire x2="2496" y1="1888" y2="1888" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1888" name="carry_out" orien="R0" />
        <branch name="XLXN_86">
            <wire x2="1680" y1="320" y2="352" x1="1680" />
            <wire x2="2048" y1="352" y2="352" x1="1680" />
            <wire x2="1680" y1="352" y2="976" x1="1680" />
            <wire x2="1696" y1="976" y2="976" x1="1680" />
        </branch>
        <instance x="1616" y="320" name="XLXI_35" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="2048" y1="160" y2="160" x1="1968" />
            <wire x2="1968" y1="160" y2="752" x1="1968" />
            <wire x2="2048" y1="752" y2="752" x1="1968" />
            <wire x2="1968" y1="752" y2="1360" x1="1968" />
            <wire x2="2048" y1="1360" y2="1360" x1="1968" />
            <wire x2="1968" y1="1360" y2="1952" x1="1968" />
            <wire x2="2048" y1="1952" y2="1952" x1="1968" />
        </branch>
    </sheet>
</drawing>