<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="CC_number" x="266" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="midi_channel" x="350" y="14">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="28" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="hi-z"/>
      </attribs>
   </obj>
   <obj type="logic/change speedlim" uuid="9239a1be592182b71673521e7d7461e6951e8d3b" name="change_2" x="140" y="112">
      <params>
         <frac32.u.map name="d" value="27.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="invert_fs)_1" x="280" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/out/cc any" uuid="d49b3be79ccfae03f0630feecafe683b0e9507d4" name="cc_2" x="350" y="112">
      <params/>
      <attribs>
         <combo attributeName="device" selection="din"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Status" x="490" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="i_1" x="42" y="322">
      <params>
         <int32 name="value" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="invert_fs)_1" outlet="o"/>
         <dest obj="cc_2" inlet="v"/>
         <dest obj="Status" inlet="outlet"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="cc_2" inlet="trig"/>
      </net>
      <net>
         <source obj="midi_channel" outlet="out"/>
         <dest obj="cc_2" inlet="chan"/>
      </net>
      <net>
         <source obj="CC_number" outlet="inlet"/>
         <dest obj="cc_2" inlet="cc"/>
      </net>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="change_2" inlet="in"/>
         <dest obj="invert_fs)_1" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Mukunda Modell</Author>
      <License>BSD</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>43</x>
      <y>27</y>
      <width>1222</width>
      <height>747</height>
   </windowPos>
</patch-1.0>