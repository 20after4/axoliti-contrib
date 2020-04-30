<patch appVersion="2.0.0">
   <obj type="rbrt/math/scale i" uuid="f42f1174-a517-46b5-9b7c-ae87a0a6b7f6" name="scale_2" x="336" y="14">
      <params>
         <int32 name="inrange" value="56">
            <presets/>
         </int32>
         <int32 name="outrange" value="59">
            <presets/>
         </int32>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" name="5" x="28" y="28" text="Analog Expression Pedal"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="28" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="42071f8cb4cfe1f35956c0bd5a313a57e049bec4" name="change_1" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="28" y="140">
      <params>
         <frac32.s.map name="delay" value="-55.0">
            <modulators/>
            <presets/>
         </frac32.s.map>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/out/cc" uuid="7ca9b2c1b4339022c491a8afd70353c17d765584" name="expression_cc" x="154" y="140">
      <params/>
      <attribs>
         <midiOutPort attributeName="port"/>
         <spinner attributeName="channel" value="1"/>
         <spinner attributeName="cc" value="33"/>
      </attribs>
   </obj>
   <nets>
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
         <dest obj="expression_cc" inlet="v"/>
         <dest obj="change_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <HasMidiChannelSelector>false</HasMidiChannelSelector>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>46</x>
      <y>1468</y>
      <width>1181</width>
      <height>691</height>
   </windowPos>
</patch>