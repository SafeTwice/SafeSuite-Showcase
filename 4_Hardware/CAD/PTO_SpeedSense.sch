<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
  <drawing>
    <schematic>
      <libraries>
        <library name="resistor">
          <devicesets>
            <deviceset name="R-EU_">
              <devices><device name="R0805" package="R0805"/></devices>
            </deviceset>
            <deviceset name="C-EU">
              <devices><device name="C0603" package="C0603"/></devices>
            </deviceset>
          </devicesets>
        </library>
      </libraries>
      <parts>
        <part name="R1" library="resistor" deviceset="R-EU_" device="R0805" value="10k">
          <attribute name="MPN" value="RC0805FR-0710KL"/>
          <attribute name="MANUFACTURER" value="Yageo"/>
        </part>
        <part name="R2" library="resistor" deviceset="R-EU_" device="R0805" value="4k7"/>
        <part name="C1" library="resistor" deviceset="C-EU" device="C0603" value="100n"/>
      </parts>
      <sheets><sheet><instances>
        <instance part="R1" gate="G$1" x="10" y="10"/>
        <instance part="R2" gate="G$1" x="20" y="10"/>
        <instance part="C1" gate="G$1" x="30" y="10"/>
      </instances></sheet></sheets>
    </schematic>
  </drawing>
</eagle>