<?xml version="1.0" encoding="UTF-8"?>
<project name="AutoFPGATest" board="Mojo V3" language="Lucid">
  <files>
    <src top="true">mojo_top.luc</src>
    <src>fsmauto.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <ucf>custom.ucf</ucf>
    <component>reset_conditioner.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
