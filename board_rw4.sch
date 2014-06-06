<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BA" />
        <signal name="S(3:0)" />
        <signal name="ROM(3:0)" />
        <signal name="F(3:0)" />
        <signal name="Clk_1MHz" />
        <signal name="Clk_out" />
        <signal name="ROM(0)" />
        <signal name="ROM(1)" />
        <signal name="ROM(2)" />
        <signal name="XLXN_14" />
        <signal name="Clk_rotary_press" />
        <signal name="XLXN_19" />
        <signal name="rotary_a" />
        <signal name="rotary_b" />
        <signal name="rotary_press" />
        <signal name="XLXN_57" />
        <signal name="ROM(3)" />
        <signal name="Res_BTN_WEST" />
        <signal name="Clk_in" />
        <signal name="MB" />
        <signal name="M_IN" />
        <signal name="A_IN" />
        <signal name="F_IN" />
        <signal name="MF" />
        <signal name="DAT(3:0)" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="RAM(3:0)" />
        <signal name="XLXN_66" />
        <port polarity="Input" name="BA" />
        <port polarity="Input" name="S(3:0)" />
        <port polarity="Output" name="ROM(3:0)" />
        <port polarity="Output" name="F(3:0)" />
        <port polarity="Input" name="Clk_1MHz" />
        <port polarity="Output" name="Clk_out" />
        <port polarity="Output" name="Clk_rotary_press" />
        <port polarity="Input" name="rotary_a" />
        <port polarity="Input" name="rotary_b" />
        <port polarity="Input" name="rotary_press" />
        <port polarity="Input" name="Res_BTN_WEST" />
        <port polarity="Input" name="Clk_in" />
        <port polarity="Input" name="MB" />
        <port polarity="Input" name="M_IN" />
        <port polarity="Input" name="A_IN" />
        <port polarity="Input" name="F_IN" />
        <port polarity="Input" name="MF" />
        <port polarity="Output" name="DAT(3:0)" />
        <port polarity="Output" name="A(3:0)" />
        <port polarity="Output" name="B(3:0)" />
        <port polarity="Output" name="RAM(3:0)" />
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="cb4cled">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-704" height="640" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="rotary_switch">
            <timestamp>2013-5-13T17:39:50</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="bufg" name="XLXI_6">
            <blockpin signalname="Clk_1MHz" name="I" />
            <blockpin signalname="Clk_out" name="O" />
        </block>
        <block symbolname="cb4cled" name="XLXI_11">
            <blockpin signalname="XLXN_66" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_57" name="CLR" />
            <blockpin signalname="XLXN_57" name="D0" />
            <blockpin signalname="XLXN_57" name="D1" />
            <blockpin signalname="XLXN_57" name="D2" />
            <blockpin signalname="XLXN_57" name="D3" />
            <blockpin signalname="XLXN_57" name="L" />
            <blockpin signalname="XLXN_14" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="ROM(0)" name="Q0" />
            <blockpin signalname="ROM(1)" name="Q1" />
            <blockpin signalname="ROM(2)" name="Q2" />
            <blockpin signalname="ROM(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="rotary_switch" name="XLXI_12">
            <blockpin signalname="Clk_1MHz" name="clk" />
            <blockpin signalname="rotary_a" name="rotary_a" />
            <blockpin signalname="rotary_b" name="rotary_b" />
            <blockpin signalname="rotary_press" name="rotary_press" />
            <blockpin signalname="XLXN_66" name="clk_out" />
            <blockpin signalname="Clk_rotary_press" name="reset" />
            <blockpin signalname="XLXN_14" name="updown" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="XLXN_57" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="F(3:0)">
            <wire x2="3104" y1="1264" y2="1264" x1="2880" />
        </branch>
        <branch name="BA">
            <wire x2="2272" y1="1392" y2="1392" x1="1984" />
        </branch>
        <branch name="S(3:0)">
            <wire x2="2272" y1="1456" y2="1456" x1="1984" />
        </branch>
        <branch name="Clk_1MHz">
            <wire x2="624" y1="1248" y2="1248" x1="432" />
            <wire x2="1168" y1="1248" y2="1248" x1="624" />
            <wire x2="672" y1="832" y2="832" x1="624" />
            <wire x2="624" y1="832" y2="1248" x1="624" />
        </branch>
        <branch name="Clk_out">
            <wire x2="1616" y1="1248" y2="1248" x1="1392" />
        </branch>
        <branch name="ROM(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="320" type="branch" />
            <wire x2="1840" y1="320" y2="320" x1="1696" />
            <wire x2="2000" y1="320" y2="320" x1="1840" />
        </branch>
        <branch name="ROM(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="384" type="branch" />
            <wire x2="1840" y1="384" y2="384" x1="1696" />
            <wire x2="2000" y1="384" y2="384" x1="1840" />
        </branch>
        <branch name="ROM(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="448" type="branch" />
            <wire x2="1840" y1="448" y2="448" x1="1696" />
            <wire x2="2000" y1="448" y2="448" x1="1840" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1200" y1="256" y2="768" x1="1200" />
            <wire x2="1312" y1="768" y2="768" x1="1200" />
        </branch>
        <branch name="rotary_a">
            <wire x2="672" y1="896" y2="896" x1="448" />
        </branch>
        <branch name="rotary_b">
            <wire x2="672" y1="960" y2="960" x1="448" />
        </branch>
        <branch name="rotary_press">
            <wire x2="672" y1="1024" y2="1024" x1="448" />
        </branch>
        <branch name="ROM(3:0)">
            <wire x2="2096" y1="272" y2="320" x1="2096" />
            <wire x2="2096" y1="320" y2="384" x1="2096" />
            <wire x2="2096" y1="384" y2="448" x1="2096" />
            <wire x2="2096" y1="448" y2="512" x1="2096" />
            <wire x2="2096" y1="512" y2="1040" x1="2096" />
            <wire x2="2096" y1="1040" y2="1648" x1="2096" />
            <wire x2="2272" y1="1648" y2="1648" x1="2096" />
            <wire x2="2192" y1="1040" y2="1040" x1="2096" />
        </branch>
        <instance x="672" y="1056" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="1120" y1="1024" y2="1024" x1="1056" />
            <wire x2="1120" y1="640" y2="1024" x1="1120" />
            <wire x2="1312" y1="640" y2="640" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="448" y="1024" name="rotary_press" orien="R180" />
        <iomarker fontsize="28" x="448" y="960" name="rotary_b" orien="R180" />
        <iomarker fontsize="28" x="448" y="896" name="rotary_a" orien="R180" />
        <instance x="1216" y="1088" name="XLXI_14" orien="R0" />
        <instance x="1312" y="960" name="XLXI_11" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="1312" y1="320" y2="320" x1="1280" />
            <wire x2="1280" y1="320" y2="384" x1="1280" />
            <wire x2="1312" y1="384" y2="384" x1="1280" />
            <wire x2="1280" y1="384" y2="448" x1="1280" />
            <wire x2="1312" y1="448" y2="448" x1="1280" />
            <wire x2="1280" y1="448" y2="512" x1="1280" />
            <wire x2="1280" y1="512" y2="704" x1="1280" />
            <wire x2="1312" y1="704" y2="704" x1="1280" />
            <wire x2="1280" y1="704" y2="928" x1="1280" />
            <wire x2="1280" y1="928" y2="960" x1="1280" />
            <wire x2="1312" y1="928" y2="928" x1="1280" />
            <wire x2="1312" y1="512" y2="512" x1="1280" />
        </branch>
        <instance x="1136" y="256" name="XLXI_13" orien="R0" />
        <bustap x2="2000" y1="320" y2="320" x1="2096" />
        <bustap x2="2000" y1="384" y2="384" x1="2096" />
        <bustap x2="2000" y1="448" y2="448" x1="2096" />
        <bustap x2="2000" y1="512" y2="512" x1="2096" />
        <branch name="ROM(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="512" type="branch" />
            <wire x2="1840" y1="512" y2="512" x1="1696" />
            <wire x2="2000" y1="512" y2="512" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="432" y="1248" name="Clk_1MHz" orien="R180" />
        <instance x="1168" y="1280" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="1616" y="1168" name="Clk_rotary_press" orien="R0" />
        <iomarker fontsize="28" x="1616" y="1248" name="Clk_out" orien="R0" />
        <branch name="Clk_in">
            <wire x2="2272" y1="1776" y2="1776" x1="1984" />
        </branch>
        <branch name="MB">
            <wire x2="2272" y1="1712" y2="1712" x1="1984" />
        </branch>
        <branch name="M_IN">
            <wire x2="2272" y1="1584" y2="1584" x1="1984" />
        </branch>
        <branch name="A_IN">
            <wire x2="2272" y1="1520" y2="1520" x1="1984" />
        </branch>
        <branch name="F_IN">
            <wire x2="2272" y1="1328" y2="1328" x1="1984" />
        </branch>
        <branch name="MF">
            <wire x2="2272" y1="1264" y2="1264" x1="1984" />
        </branch>
        <branch name="DAT(3:0)">
            <wire x2="3104" y1="1328" y2="1328" x1="2880" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="3104" y1="1392" y2="1392" x1="2880" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="3104" y1="1456" y2="1456" x1="2880" />
        </branch>
        <branch name="RAM(3:0)">
            <wire x2="3104" y1="1520" y2="1520" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1328" name="DAT(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1392" name="A(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1456" name="B(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1520" name="RAM(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1264" name="F(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1328" name="F_IN" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1520" name="A_IN" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1584" name="M_IN" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1776" name="Clk_in" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1264" name="MF" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1392" name="BA" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1712" name="MB" orien="R180" />
        <branch name="Res_BTN_WEST">
            <wire x2="2272" y1="1840" y2="1840" x1="432" />
        </branch>
        <branch name="Clk_rotary_press">
            <wire x2="1200" y1="928" y2="928" x1="1056" />
            <wire x2="1200" y1="928" y2="1168" x1="1200" />
            <wire x2="1616" y1="1168" y2="1168" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="432" y="1840" name="Res_BTN_WEST" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1456" name="S(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2192" y="1040" name="ROM(3:0)" orien="R0" />
        <branch name="XLXN_66">
            <wire x2="1248" y1="832" y2="832" x1="1056" />
            <wire x2="1312" y1="832" y2="832" x1="1248" />
        </branch>
        <rect width="748" x="2208" y="1096" height="896" />
        <text style="fontsize:32;fontname:Arial" x="2460" y="1072">rw4.sym einfuegen</text>
    </sheet>
</drawing>