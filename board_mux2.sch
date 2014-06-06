<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_1MHz_B8" />
        <signal name="BTN_WEST_D18" />
        <signal name="LED_F9" />
        <signal name="SW0_L13" />
        <signal name="Out_1MHz_D10" />
        <signal name="Input_C15" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <port polarity="Input" name="Clk_1MHz_B8" />
        <port polarity="Input" name="BTN_WEST_D18" />
        <port polarity="Output" name="LED_F9" />
        <port polarity="Input" name="SW0_L13" />
        <port polarity="Output" name="Out_1MHz_D10" />
        <port polarity="Input" name="Input_C15" />
        <blockdef name="mux2">
            <timestamp>2013-4-8T20:1:27</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <block symbolname="mux2" name="Multiplexer">
            <blockpin signalname="SW0_L13" name="S" />
            <blockpin signalname="BTN_WEST_D18" name="X0" />
            <blockpin signalname="Input_C15" name="X1" />
            <blockpin signalname="LED_F9" name="Y" />
        </block>
        <block symbolname="bufg" name="XLXI_1">
            <blockpin signalname="Clk_1MHz_B8" name="I" />
            <blockpin signalname="Out_1MHz_D10" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="LED_F9">
            <wire x2="960" y1="864" y2="864" x1="944" />
            <wire x2="1088" y1="752" y2="752" x1="960" />
            <wire x2="960" y1="752" y2="864" x1="960" />
        </branch>
        <branch name="BTN_WEST_D18">
            <wire x2="560" y1="992" y2="992" x1="544" />
            <wire x2="544" y1="992" y2="1072" x1="544" />
            <wire x2="832" y1="1072" y2="1072" x1="544" />
            <wire x2="832" y1="1072" y2="1232" x1="832" />
            <wire x2="832" y1="1232" y2="1232" x1="768" />
        </branch>
        <branch name="SW0_L13">
            <wire x2="432" y1="672" y2="672" x1="336" />
            <wire x2="432" y1="672" y2="928" x1="432" />
            <wire x2="544" y1="928" y2="928" x1="432" />
            <wire x2="560" y1="928" y2="928" x1="544" />
        </branch>
        <branch name="Clk_1MHz_B8">
            <wire x2="656" y1="1648" y2="1648" x1="416" />
            <wire x2="672" y1="1296" y2="1296" x1="656" />
            <wire x2="656" y1="1296" y2="1648" x1="656" />
        </branch>
        <instance x="672" y="1328" name="XLXI_1" orien="R0" />
        <branch name="Out_1MHz_D10">
            <wire x2="912" y1="1296" y2="1296" x1="896" />
            <wire x2="912" y1="1296" y2="1664" x1="912" />
            <wire x2="992" y1="1664" y2="1664" x1="912" />
        </branch>
        <branch name="Input_C15">
            <wire x2="544" y1="752" y2="864" x1="544" />
            <wire x2="560" y1="864" y2="864" x1="544" />
            <wire x2="864" y1="752" y2="752" x1="544" />
            <wire x2="864" y1="544" y2="544" x1="784" />
            <wire x2="864" y1="544" y2="752" x1="864" />
        </branch>
        <instance x="560" y="1024" name="Multiplexer" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="32" type="instance" />
        </instance>
        <iomarker fontsize="28" x="416" y="1648" name="Clk_1MHz_B8" orien="R180" />
        <iomarker fontsize="28" x="992" y="1664" name="Out_1MHz_D10" orien="R0" />
        <iomarker fontsize="28" x="768" y="1232" name="BTN_WEST_D18" orien="R180" />
        <iomarker fontsize="28" x="336" y="672" name="SW0_L13" orien="R180" />
        <iomarker fontsize="28" x="1088" y="752" name="LED_F9" orien="R0" />
        <iomarker fontsize="28" x="784" y="544" name="Input_C15" orien="R180" />
    </sheet>
</drawing>