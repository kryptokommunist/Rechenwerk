<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="M_IN" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="ADR_H" />
        <signal name="ADR_L" />
        <signal name="ADR" />
        <port polarity="Input" name="M_IN" />
        <port polarity="Output" name="ADR_H" />
        <port polarity="Output" name="ADR_L" />
        <port polarity="Input" name="ADR" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="ADR" name="I0" />
            <blockpin signalname="M_IN" name="I1" />
            <blockpin signalname="ADR_H" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="M_IN" name="I1" />
            <blockpin signalname="ADR_L" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="ADR" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="960" name="XLXI_1" orien="R0" />
        <branch name="M_IN">
            <wire x2="1152" y1="784" y2="784" x1="1024" />
            <wire x2="1616" y1="784" y2="784" x1="1152" />
            <wire x2="1616" y1="784" y2="1056" x1="1616" />
            <wire x2="1152" y1="752" y2="752" x1="1072" />
            <wire x2="1152" y1="752" y2="784" x1="1152" />
            <wire x2="1072" y1="752" y2="832" x1="1072" />
            <wire x2="1152" y1="832" y2="832" x1="1072" />
        </branch>
        <instance x="1616" y="1184" name="XLXI_2" orien="R0" />
        <instance x="1312" y="1152" name="XLXI_3" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1616" y1="1120" y2="1120" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1024" y="784" name="M_IN" orien="R180" />
        <branch name="ADR_H">
            <wire x2="2016" y1="864" y2="864" x1="1408" />
        </branch>
        <branch name="ADR_L">
            <wire x2="2000" y1="1088" y2="1088" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2016" y="864" name="ADR_H" orien="R0" />
        <iomarker fontsize="28" x="2000" y="1088" name="ADR_L" orien="R0" />
        <iomarker fontsize="28" x="1008" y="1152" name="ADR" orien="R180" />
        <branch name="ADR">
            <wire x2="1152" y1="1152" y2="1152" x1="1008" />
            <wire x2="1136" y1="1120" y2="1136" x1="1136" />
            <wire x2="1152" y1="1136" y2="1136" x1="1136" />
            <wire x2="1152" y1="1136" y2="1152" x1="1152" />
            <wire x2="1152" y1="1120" y2="1120" x1="1136" />
            <wire x2="1312" y1="1120" y2="1120" x1="1152" />
            <wire x2="1152" y1="896" y2="1120" x1="1152" />
        </branch>
    </sheet>
</drawing>