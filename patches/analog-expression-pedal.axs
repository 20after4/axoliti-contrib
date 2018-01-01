<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="14" y="14" text="Analog Expression Pedal"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="14" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/scale i" uuid="f42f1174-a517-46b5-9b7c-ae87a0a6b7f6" name="scale_2" x="140" y="28">
      <params>
         <int32 name="inrange" value="56"/>
         <int32 name="outrange" value="63"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="42071f8cb4cfe1f35956c0bd5a313a57e049bec4" name="change_1" x="14" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="14" y="126">
      <params>
         <frac32.s.map name="delay" value="-55.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/out/cc" uuid="7ca9b2c1b4339022c491a8afd70353c17d765584" name="expression_cc" x="140" y="126">
      <params/>
      <attribs>
         <combo attributeName="device" selection="din"/>
         <spinner attributeName="channel" value="1"/>
         <spinner attributeName="cc" value="33"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="scale_2" outlet="out"/>
         <dest obj="expression_cc" inlet="v"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="pulselength_1" inlet="trig"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="expression_cc" inlet="trig"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="change_1" inlet="in"/>
         <dest obj="scale_2" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>43</x>
      <y>27</y>
      <width>519</width>
      <height>714</height>
   </windowPos>
</patch-1.0>