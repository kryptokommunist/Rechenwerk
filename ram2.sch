<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="M_IN" />
        <signal name="ADR" />
        <signal name="Q(3:0)" />
        <signal name="D(3:0)" />
        <signal name="Clk" />
        <signal name="Res" />
        <port polarity="Input" name="M_IN" />
        <port polarity="Input" name="ADR" />
        <port polarity="Output" name="Q(3:0)" />
        <port polarity="Input" name="D(3:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Res" />
        <blockdef name="adrdec2">
            <timestamp>2014-6-4T16:19:32</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="reg4">
            <timestamp>2014-6-4T16:6:7</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
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
        <block symbolname="adrdec2" name="XLXI_1">
            <blockpin signalname="ADR" name="ADR" />
            <blockpin signalname="XLXN_1" name="ADR_H" />
            <blockpin signalname="XLXN_2" name="ADR_L" />
            <blockpin signalname="M_IN" name="M_IN" />
        </block>
        <block symbolname="reg4" name="REG4_H">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="Res" name="Res" />
            <blockpin signalname="D(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="reg4" name="REG4_L">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_2" name="CE" />
            <blockpin signalname="Res" name="Res" />
            <blockpin signalname="D(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="mux4" name="XLXI_4">
            <blockpin signalname="ADR" name="S" />
            <blockpin signalname="XLXN_4(3:0)" name="X0(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="X1(3:0)" />
            <blockpin signalname="Q(3:0)" name="Y(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1232" name="REG4_H" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-32" type="instance" />
        </instance>
        <instance x="1408" y="1760" name="REG4_L" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-32" type="instance" />
        </instance>
        <instance x="576" y="1392" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="976" y1="1296" y2="1296" x1="960" />
            <wire x2="1408" y1="1072" y2="1072" x1="976" />
            <wire x2="976" y1="1072" y2="1296" x1="976" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1184" y1="1360" y2="1360" x1="960" />
            <wire x2="1184" y1="1360" y2="1600" x1="1184" />
            <wire x2="1408" y1="1600" y2="1600" x1="1184" />
        </branch>
        <instance x="2144" y="1408" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_3(3:0)">
            <wire x2="1968" y1="1008" y2="1008" x1="1792" />
            <wire x2="1968" y1="1008" y2="1248" x1="1968" />
            <wire x2="2144" y1="1248" y2="1248" x1="1968" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1968" y1="1536" y2="1536" x1="1792" />
            <wire x2="1968" y1="1376" y2="1536" x1="1968" />
            <wire x2="2144" y1="1376" y2="1376" x1="1968" />
        </branch>
        <branch name="M_IN">
            <wire x2="432" y1="1296" y2="1296" x1="224" />
            <wire x2="576" y1="1296" y2="1296" x1="432" />
        </branch>
        <branch name="ADR">
            <wire x2="432" y1="1360" y2="1360" x1="224" />
            <wire x2="576" y1="1360" y2="1360" x1="432" />
            <wire x2="432" y1="1360" y2="1456" x1="432" />
            <wire x2="1024" y1="1456" y2="1456" x1="432" />
            <wire x2="1024" y1="1312" y2="1456" x1="1024" />
            <wire x2="2144" y1="1312" y2="1312" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="224" y="1296" name="M_IN" orien="R180" />
        <iomarker fontsize="28" x="224" y="1360" name="ADR" orien="R180" />
        <branch name="Q(3:0)">
            <wire x2="2560" y1="1248" y2="1248" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1248" name="Q(3:0)" orien="R0" />
        <branch name="D(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1008" type="branch" />
            <wire x2="560" y1="1008" y2="1008" x1="240" />
            <wire x2="688" y1="1008" y2="1008" x1="560" />
            <wire x2="1376" y1="1008" y2="1008" x1="688" />
            <wire x2="1408" y1="1008" y2="1008" x1="1376" />
            <wire x2="560" y1="1008" y2="1536" x1="560" />
            <wire x2="1408" y1="1536" y2="1536" x1="560" />
        </branch>
        <iomarker fontsize="28" x="240" y="1008" name="D(3:0)" orien="R180" />
        <branch name="Clk">
            <wire x2="1392" y1="1664" y2="1664" x1="240" />
            <wire x2="1408" y1="1664" y2="1664" x1="1392" />
            <wire x2="1408" y1="1136" y2="1136" x1="1392" />
            <wire x2="1392" y1="1136" y2="1664" x1="1392" />
        </branch>
        <branch name="Res">
            <wire x2="1376" y1="1728" y2="1728" x1="240" />
            <wire x2="1408" y1="1728" y2="1728" x1="1376" />
            <wire x2="1408" y1="1200" y2="1200" x1="1376" />
            <wire x2="1376" y1="1200" y2="1728" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="240" y="1664" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="240" y="1728" name="Res" orien="R180" />
    </sheet>
</drawing>