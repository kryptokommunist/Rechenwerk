<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q(3:0)" />
        <signal name="BA" />
        <signal name="S(3:0)" />
        <signal name="Cin" />
        <signal name="B(3:0)" />
        <signal name="A(3:0)" />
        <signal name="F(3:0)" />
        <signal name="Clk_1MHz" />
        <signal name="Clk_out" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="A(2)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_19" />
        <signal name="rotary_a" />
        <signal name="rotary_b" />
        <signal name="rotary_press" />
        <signal name="A(3)" />
        <signal name="XLXN_57" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <port polarity="Output" name="Q(3:0)" />
        <port polarity="Input" name="BA" />
        <port polarity="Input" name="S(3:0)" />
        <port polarity="Input" name="Cin" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="A(3:0)" />
        <port polarity="Output" name="F(3:0)" />
        <port polarity="Input" name="Clk_1MHz" />
        <port polarity="Output" name="Clk_out" />
        <port polarity="Input" name="rotary_a" />
        <port polarity="Input" name="rotary_b" />
        <port polarity="Input" name="rotary_press" />
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
        <blockdef name="alu4flag">
            <timestamp>2014-5-21T18:3:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
        </blockdef>
        <block symbolname="bufg" name="XLXI_6">
            <blockpin signalname="Clk_1MHz" name="I" />
            <blockpin signalname="Clk_out" name="O" />
        </block>
        <block symbolname="cb4cled" name="XLXI_11">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_13" name="CLR" />
            <blockpin signalname="XLXN_57" name="D0" />
            <blockpin signalname="XLXN_57" name="D1" />
            <blockpin signalname="XLXN_57" name="D2" />
            <blockpin signalname="XLXN_57" name="D3" />
            <blockpin signalname="XLXN_57" name="L" />
            <blockpin signalname="XLXN_14" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="A(0)" name="Q0" />
            <blockpin signalname="A(1)" name="Q1" />
            <blockpin signalname="A(2)" name="Q2" />
            <blockpin signalname="A(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="rotary_switch" name="XLXI_12">
            <blockpin signalname="Clk_1MHz" name="clk" />
            <blockpin signalname="rotary_a" name="rotary_a" />
            <blockpin signalname="rotary_b" name="rotary_b" />
            <blockpin signalname="rotary_press" name="rotary_press" />
            <blockpin signalname="XLXN_15" name="clk_out" />
            <blockpin signalname="XLXN_13" name="reset" />
            <blockpin signalname="XLXN_14" name="updown" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="XLXN_57" name="G" />
        </block>
        <block symbolname="alu4flag" name="XLXI_15">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="BA" name="BA" />
            <blockpin signalname="Cin" name="Cin" />
            <blockpin signalname="F(3:0)" name="F(3:0)" />
            <blockpin signalname="Q(3:0)" name="Q(3:0)" />
            <blockpin signalname="S(3:0)" name="S(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="F(3:0)">
            <wire x2="2928" y1="1440" y2="1440" x1="2912" />
            <wire x2="3104" y1="1440" y2="1440" x1="2928" />
            <wire x2="3120" y1="1440" y2="1440" x1="3104" />
        </branch>
        <branch name="BA">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1440" type="branch" />
            <wire x2="2240" y1="1440" y2="1440" x1="1952" />
            <wire x2="2368" y1="1440" y2="1440" x1="2240" />
            <wire x2="2528" y1="1440" y2="1440" x1="2368" />
        </branch>
        <branch name="S(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1504" type="branch" />
            <wire x2="2192" y1="1504" y2="1504" x1="1952" />
            <wire x2="2240" y1="1504" y2="1504" x1="2192" />
            <wire x2="2368" y1="1504" y2="1504" x1="2240" />
            <wire x2="2528" y1="1504" y2="1504" x1="2368" />
        </branch>
        <branch name="Cin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1696" type="branch" />
            <wire x2="2256" y1="1696" y2="1696" x1="1952" />
            <wire x2="2368" y1="1696" y2="1696" x1="2256" />
            <wire x2="2528" y1="1696" y2="1696" x1="2368" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1632" type="branch" />
            <wire x2="2256" y1="1632" y2="1632" x1="1952" />
            <wire x2="2368" y1="1632" y2="1632" x1="2256" />
            <wire x2="2480" y1="1632" y2="1632" x1="2368" />
            <wire x2="2480" y1="1568" y2="1632" x1="2480" />
            <wire x2="2528" y1="1568" y2="1568" x1="2480" />
        </branch>
        <branch name="Q(3:0)">
            <wire x2="2928" y1="1504" y2="1504" x1="2912" />
            <wire x2="3104" y1="1504" y2="1504" x1="2928" />
            <wire x2="3120" y1="1504" y2="1504" x1="3104" />
        </branch>
        <branch name="Clk_1MHz">
            <wire x2="624" y1="1136" y2="1136" x1="448" />
            <wire x2="1392" y1="1136" y2="1136" x1="624" />
            <wire x2="672" y1="832" y2="832" x1="624" />
            <wire x2="624" y1="832" y2="1136" x1="624" />
        </branch>
        <branch name="Clk_out">
            <wire x2="1824" y1="1136" y2="1136" x1="1616" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="320" type="branch" />
            <wire x2="1824" y1="320" y2="320" x1="1696" />
            <wire x2="2000" y1="320" y2="320" x1="1824" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="384" type="branch" />
            <wire x2="1824" y1="384" y2="384" x1="1696" />
            <wire x2="2000" y1="384" y2="384" x1="1824" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="448" type="branch" />
            <wire x2="1824" y1="448" y2="448" x1="1696" />
            <wire x2="2000" y1="448" y2="448" x1="1824" />
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
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1568" type="branch" />
            <wire x2="2096" y1="272" y2="320" x1="2096" />
            <wire x2="2096" y1="320" y2="384" x1="2096" />
            <wire x2="2096" y1="384" y2="416" x1="2096" />
            <wire x2="2288" y1="416" y2="416" x1="2096" />
            <wire x2="2096" y1="416" y2="448" x1="2096" />
            <wire x2="2096" y1="448" y2="512" x1="2096" />
            <wire x2="2096" y1="512" y2="1568" x1="2096" />
            <wire x2="2240" y1="1568" y2="1568" x1="2096" />
            <wire x2="2256" y1="1568" y2="1568" x1="2240" />
            <wire x2="2368" y1="1568" y2="1568" x1="2256" />
            <wire x2="2464" y1="1568" y2="1568" x1="2368" />
            <wire x2="2464" y1="1536" y2="1568" x1="2464" />
            <wire x2="2496" y1="1536" y2="1536" x1="2464" />
            <wire x2="2496" y1="1536" y2="1632" x1="2496" />
            <wire x2="2528" y1="1632" y2="1632" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1696" name="Cin" orien="R180" />
        <iomarker fontsize="28" x="1952" y="1632" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1952" y="1504" name="S(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1952" y="1440" name="BA" orien="R180" />
        <instance x="1392" y="1168" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1136" name="Clk_out" orien="R0" />
        <iomarker fontsize="28" x="448" y="1136" name="Clk_1MHz" orien="R180" />
        <instance x="672" y="1056" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="1312" y1="832" y2="832" x1="1056" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1312" y1="928" y2="928" x1="1056" />
        </branch>
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
            <wire x2="1280" y1="704" y2="960" x1="1280" />
            <wire x2="1312" y1="704" y2="704" x1="1280" />
            <wire x2="1312" y1="512" y2="512" x1="1280" />
        </branch>
        <instance x="1136" y="256" name="XLXI_13" orien="R0" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="512" type="branch" />
            <wire x2="1824" y1="512" y2="512" x1="1696" />
            <wire x2="2000" y1="512" y2="512" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2288" y="416" name="A(3:0)" orien="R0" />
        <bustap x2="2000" y1="320" y2="320" x1="2096" />
        <bustap x2="2000" y1="384" y2="384" x1="2096" />
        <bustap x2="2000" y1="448" y2="448" x1="2096" />
        <bustap x2="2000" y1="512" y2="512" x1="2096" />
        <iomarker fontsize="28" x="3120" y="1504" name="Q(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1440" name="F(3:0)" orien="R0" />
        <rect width="656" x="2316" y="1196" height="720" />
        <text style="fontsize:32;fontname:Arial" x="2508" y="1148">alu4flag einfuegen!</text>
        <instance x="2528" y="1728" name="XLXI_15" orien="R0">
        </instance>
    </sheet>
</drawing>