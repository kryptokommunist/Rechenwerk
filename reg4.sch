<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Res" />
        <signal name="Clk" />
        <signal name="CE" />
        <signal name="D(3:0)" />
        <signal name="Q(3:0)" />
        <signal name="D(0)" />
        <signal name="Q(0)" />
        <signal name="Q(1)" />
        <signal name="D(1)" />
        <signal name="D(2)" />
        <signal name="Q(2)" />
        <signal name="Q(3)" />
        <signal name="D(3)" />
        <port polarity="Input" name="Res" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="D(3:0)" />
        <port polarity="Output" name="Q(3:0)" />
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="fdce" name="XLXI_1">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Res" name="CLR" />
            <blockpin signalname="D(0)" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_3">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Res" name="CLR" />
            <blockpin signalname="D(1)" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_4">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Res" name="CLR" />
            <blockpin signalname="D(2)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_5">
            <blockpin signalname="Clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Res" name="CLR" />
            <blockpin signalname="D(3)" name="D" />
            <blockpin signalname="Q(3)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1568" name="XLXI_4" orien="R0" />
        <instance x="1536" y="1968" name="XLXI_5" orien="R0" />
        <instance x="1536" y="1184" name="XLXI_3" orien="R0" />
        <instance x="1536" y="800" name="XLXI_1" orien="R0" />
        <branch name="Res">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1184" type="branch" />
            <wire x2="1520" y1="1904" y2="1904" x1="1056" />
            <wire x2="1520" y1="1904" y2="1936" x1="1520" />
            <wire x2="1536" y1="1936" y2="1936" x1="1520" />
            <wire x2="1536" y1="768" y2="768" x1="1520" />
            <wire x2="1520" y1="768" y2="1152" x1="1520" />
            <wire x2="1536" y1="1152" y2="1152" x1="1520" />
            <wire x2="1520" y1="1152" y2="1184" x1="1520" />
            <wire x2="1520" y1="1184" y2="1536" x1="1520" />
            <wire x2="1536" y1="1536" y2="1536" x1="1520" />
            <wire x2="1520" y1="1536" y2="1904" x1="1520" />
        </branch>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1296" type="branch" />
            <wire x2="1504" y1="1808" y2="1808" x1="1056" />
            <wire x2="1504" y1="1808" y2="1840" x1="1504" />
            <wire x2="1536" y1="1840" y2="1840" x1="1504" />
            <wire x2="1536" y1="672" y2="672" x1="1504" />
            <wire x2="1504" y1="672" y2="1056" x1="1504" />
            <wire x2="1536" y1="1056" y2="1056" x1="1504" />
            <wire x2="1504" y1="1056" y2="1296" x1="1504" />
            <wire x2="1504" y1="1296" y2="1440" x1="1504" />
            <wire x2="1536" y1="1440" y2="1440" x1="1504" />
            <wire x2="1504" y1="1440" y2="1808" x1="1504" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1232" type="branch" />
            <wire x2="1488" y1="1616" y2="1616" x1="1056" />
            <wire x2="1488" y1="1616" y2="1776" x1="1488" />
            <wire x2="1536" y1="1776" y2="1776" x1="1488" />
            <wire x2="1536" y1="608" y2="608" x1="1488" />
            <wire x2="1488" y1="608" y2="992" x1="1488" />
            <wire x2="1536" y1="992" y2="992" x1="1488" />
            <wire x2="1488" y1="992" y2="1232" x1="1488" />
            <wire x2="1488" y1="1232" y2="1376" x1="1488" />
            <wire x2="1536" y1="1376" y2="1376" x1="1488" />
            <wire x2="1488" y1="1376" y2="1616" x1="1488" />
        </branch>
        <branch name="D(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1040" type="branch" />
            <wire x2="1280" y1="1136" y2="1136" x1="1104" />
            <wire x2="1280" y1="1136" y2="1312" x1="1280" />
            <wire x2="1280" y1="1312" y2="1712" x1="1280" />
            <wire x2="1280" y1="1712" y2="1888" x1="1280" />
            <wire x2="1280" y1="480" y2="544" x1="1280" />
            <wire x2="1280" y1="544" y2="928" x1="1280" />
            <wire x2="1280" y1="928" y2="1040" x1="1280" />
            <wire x2="1280" y1="1040" y2="1136" x1="1280" />
        </branch>
        <branch name="Q(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1104" type="branch" />
            <wire x2="2080" y1="480" y2="544" x1="2080" />
            <wire x2="2080" y1="544" y2="928" x1="2080" />
            <wire x2="2080" y1="928" y2="1104" x1="2080" />
            <wire x2="2080" y1="1104" y2="1152" x1="2080" />
            <wire x2="2080" y1="1152" y2="1312" x1="2080" />
            <wire x2="2080" y1="1312" y2="1712" x1="2080" />
            <wire x2="2080" y1="1712" y2="1888" x1="2080" />
            <wire x2="2256" y1="1152" y2="1152" x1="2080" />
        </branch>
        <bustap x2="1376" y1="544" y2="544" x1="1280" />
        <bustap x2="1376" y1="928" y2="928" x1="1280" />
        <bustap x2="1376" y1="1712" y2="1712" x1="1280" />
        <bustap x2="1376" y1="1312" y2="1312" x1="1280" />
        <bustap x2="1984" y1="544" y2="544" x1="2080" />
        <bustap x2="1984" y1="928" y2="928" x1="2080" />
        <bustap x2="1984" y1="1312" y2="1312" x1="2080" />
        <bustap x2="1984" y1="1712" y2="1712" x1="2080" />
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="544" type="branch" />
            <wire x2="1440" y1="544" y2="544" x1="1376" />
            <wire x2="1536" y1="544" y2="544" x1="1440" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="544" type="branch" />
            <wire x2="1952" y1="544" y2="544" x1="1920" />
            <wire x2="1984" y1="544" y2="544" x1="1952" />
        </branch>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="928" type="branch" />
            <wire x2="1952" y1="928" y2="928" x1="1920" />
            <wire x2="1984" y1="928" y2="928" x1="1952" />
            <wire x2="2000" y1="928" y2="928" x1="1984" />
        </branch>
        <branch name="D(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="928" type="branch" />
            <wire x2="1440" y1="928" y2="928" x1="1376" />
            <wire x2="1536" y1="928" y2="928" x1="1440" />
        </branch>
        <branch name="D(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1312" type="branch" />
            <wire x2="1424" y1="1312" y2="1312" x1="1376" />
            <wire x2="1536" y1="1312" y2="1312" x1="1424" />
        </branch>
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1312" type="branch" />
            <wire x2="1952" y1="1312" y2="1312" x1="1920" />
            <wire x2="1968" y1="1312" y2="1312" x1="1952" />
            <wire x2="1984" y1="1312" y2="1312" x1="1968" />
        </branch>
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1712" type="branch" />
            <wire x2="1952" y1="1712" y2="1712" x1="1920" />
            <wire x2="1984" y1="1712" y2="1712" x1="1952" />
        </branch>
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1712" type="branch" />
            <wire x2="1408" y1="1712" y2="1712" x1="1376" />
            <wire x2="1536" y1="1712" y2="1712" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1136" name="D(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2256" y="1152" name="Q(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1056" y="1616" name="CE" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1808" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1904" name="Res" orien="R180" />
    </sheet>
</drawing>