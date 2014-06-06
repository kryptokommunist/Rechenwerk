<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="RAM(3:0)" />
        <signal name="XLXN_8" />
        <signal name="Clk" />
        <signal name="Res" />
        <signal name="ADR(1:0)" />
        <signal name="M_IN" />
        <signal name="XLXN_18" />
        <signal name="ADR(1)" />
        <signal name="ADR(0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23">
        </signal>
        <port polarity="Input" name="D(3:0)" />
        <port polarity="Output" name="RAM(3:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Res" />
        <port polarity="Input" name="ADR(1:0)" />
        <port polarity="Input" name="M_IN" />
        <blockdef name="ram2">
            <timestamp>2014-6-4T16:29:5</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="adrdec2">
            <timestamp>2014-6-4T16:19:32</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="mux4">
            <timestamp>2014-4-14T17:12:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <block symbolname="ram2" name="XLXI_1">
            <blockpin signalname="ADR(1)" name="ADR" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="D(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_21" name="M_IN" />
            <blockpin signalname="XLXN_3(3:0)" name="Q(3:0)" />
            <blockpin signalname="Res" name="Res" />
        </block>
        <block symbolname="ram2" name="XLXI_2">
            <blockpin signalname="ADR(1)" name="ADR" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="D(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_22" name="M_IN" />
            <blockpin signalname="XLXN_4(3:0)" name="Q(3:0)" />
            <blockpin signalname="Res" name="Res" />
        </block>
        <block symbolname="adrdec2" name="XLXI_3">
            <blockpin signalname="ADR(0)" name="ADR" />
            <blockpin signalname="XLXN_21" name="ADR_H" />
            <blockpin signalname="XLXN_22" name="ADR_L" />
            <blockpin signalname="M_IN" name="M_IN" />
        </block>
        <block symbolname="mux4" name="XLXI_4">
            <blockpin signalname="ADR(0)" name="S" />
            <blockpin signalname="XLXN_4(3:0)" name="X0(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="X1(3:0)" />
            <blockpin signalname="RAM(3:0)" name="Y(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1504" y="816" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1504" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="784" y="880" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2320" y="784" name="XLXI_4" orien="R0">
        </instance>
        <branch name="D(3:0)">
            <wire x2="1344" y1="528" y2="528" x1="416" />
            <wire x2="1504" y1="528" y2="528" x1="1344" />
            <wire x2="1344" y1="528" y2="992" x1="1344" />
            <wire x2="1504" y1="992" y2="992" x1="1344" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2096" y1="528" y2="528" x1="1888" />
            <wire x2="2096" y1="528" y2="624" x1="2096" />
            <wire x2="2320" y1="624" y2="624" x1="2096" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="2096" y1="992" y2="992" x1="1888" />
            <wire x2="2096" y1="752" y2="992" x1="2096" />
            <wire x2="2320" y1="752" y2="752" x1="2096" />
        </branch>
        <branch name="RAM(3:0)">
            <wire x2="2944" y1="624" y2="624" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2944" y="624" name="RAM(3:0)" orien="R0" />
        <iomarker fontsize="28" x="416" y="528" name="D(3:0)" orien="R180" />
        <branch name="Clk">
            <wire x2="1472" y1="1184" y2="1184" x1="288" />
            <wire x2="1504" y1="1184" y2="1184" x1="1472" />
            <wire x2="1504" y1="720" y2="720" x1="1472" />
            <wire x2="1472" y1="720" y2="1184" x1="1472" />
        </branch>
        <branch name="Res">
            <wire x2="1456" y1="1248" y2="1248" x1="272" />
            <wire x2="1504" y1="1248" y2="1248" x1="1456" />
            <wire x2="1504" y1="784" y2="784" x1="1456" />
            <wire x2="1456" y1="784" y2="1248" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="288" y="1184" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="272" y="1248" name="Res" orien="R180" />
        <branch name="ADR(1:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="784" type="branch" />
            <wire x2="384" y1="752" y2="752" x1="256" />
            <wire x2="384" y1="752" y2="784" x1="384" />
            <wire x2="384" y1="784" y2="832" x1="384" />
            <wire x2="384" y1="832" y2="864" x1="384" />
            <wire x2="384" y1="640" y2="672" x1="384" />
            <wire x2="384" y1="672" y2="752" x1="384" />
        </branch>
        <bustap x2="480" y1="672" y2="672" x1="384" />
        <bustap x2="480" y1="832" y2="832" x1="384" />
        <branch name="M_IN">
            <wire x2="528" y1="1008" y2="1008" x1="288" />
            <wire x2="528" y1="784" y2="1008" x1="528" />
            <wire x2="784" y1="784" y2="784" x1="528" />
        </branch>
        <iomarker fontsize="28" x="288" y="1008" name="M_IN" orien="R180" />
        <branch name="ADR(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1120" type="branch" />
            <wire x2="576" y1="832" y2="832" x1="480" />
            <wire x2="576" y1="832" y2="1120" x1="576" />
            <wire x2="944" y1="1120" y2="1120" x1="576" />
            <wire x2="1408" y1="1120" y2="1120" x1="944" />
            <wire x2="1504" y1="1120" y2="1120" x1="1408" />
            <wire x2="1504" y1="656" y2="656" x1="1408" />
            <wire x2="1408" y1="656" y2="1120" x1="1408" />
        </branch>
        <branch name="ADR(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="480" type="branch" />
            <wire x2="624" y1="672" y2="672" x1="480" />
            <wire x2="624" y1="672" y2="848" x1="624" />
            <wire x2="784" y1="848" y2="848" x1="624" />
            <wire x2="624" y1="480" y2="672" x1="624" />
            <wire x2="960" y1="480" y2="480" x1="624" />
            <wire x2="1904" y1="480" y2="480" x1="960" />
            <wire x2="1904" y1="480" y2="688" x1="1904" />
            <wire x2="2320" y1="688" y2="688" x1="1904" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1328" y1="784" y2="784" x1="1168" />
            <wire x2="1328" y1="592" y2="784" x1="1328" />
            <wire x2="1504" y1="592" y2="592" x1="1328" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1328" y1="848" y2="848" x1="1168" />
            <wire x2="1328" y1="848" y2="1056" x1="1328" />
            <wire x2="1504" y1="1056" y2="1056" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="256" y="752" name="ADR(1:0)" orien="R180" />
    </sheet>
</drawing>