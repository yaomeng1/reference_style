<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" version="1.0">
  <info>
    <title>Custom PNAS-like Style</title>
    <id>https://github.com/yourusername/custom_pnas.csl</id>
    <link href="https://github.com/yourusername/custom_pnas.csl" rel="self"/>
    <author>
      <name>Your Name</name>
    </author>
    <category citation-format="numeric"/>
    <summary>Custom CSL mimicking PNAS/Nature style with numbered references, Unicode authors, full journal names, and proper formatting for Word.</summary>
  </info>

  <!-- Author macro: Lastname, F. & Lastname, F. -->
  <macro name="author">
    <names variable="author" delimiter=", " and="symbol" initialize-with=". ">
      <name name-as-sort-order="all" sort-separator=", " />
    </names>
  </macro>

  <!-- Title macro: keep capitalization -->
  <macro name="title">
    <text variable="title"/>
  </macro>

  <!-- Journal macro: full name, italic -->
  <macro name="journal">
    <text variable="container-title" font-style="italic"/>
  </macro>

  <!-- Volume -->
  <macro name="volume">
    <text variable="volume"/>
  </macro>

  <!-- Issue -->
  <macro name="issue">
    <text variable="issue" prefix="(" suffix=")"/>
  </macro>

  <!-- Pages -->
  <macro name="pages">
    <text variable="page" prefix=", "/>
  </macro>

  <!-- Year -->
  <macro name="year">
    <text variable="issued" form="year" prefix="("/>
    <text value=")"/>
  </macro>

  <!-- Citation style: numeric in brackets -->
  <citation>
    <layout prefix="[" suffix="]" delimiter=", ">
      <text variable="citation-number"/>
    </layout>
  </citation>

  <!-- Bibliography layout -->
  <bibliography>
    <layout delimiter=". " line-spacing="1">
      <text macro="author"/>
      <text macro="title" suffix="."/>
      <text macro="journal" suffix=" "/>
      <text macro="volume"/>
      <text macro="issue"/>
      <text macro="pages"/>
      <text macro="year"/>
    </layout>
  </bibliography>
</style>
