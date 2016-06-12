
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.7.0.96.1
-- ldbanno -n VHDL -o eP16_eP16_mapvho.vho -w -neg -gui eP16_eP16_map.ncd 
-- Netlist created on Sat Jun 11 13:28:43 2016
-- Netlist written on Sat Jun 11 13:28:56 2016
-- Design is for device LFXP2-5E
-- Design is for package TQFP144
-- Design is for performance grade 5

-- entity ec2iobuf
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ec2iobuf is
    port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
          PAD: out Std_logic; PADI: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ec2iobuf : ENTITY IS TRUE;

  end ec2iobuf;

  architecture Structure of ec2iobuf is
    component IBPU
      port (I: in Std_logic; O: out Std_logic);
    end component;
    component OBZPU
      port (I: in Std_logic; T: in Std_logic; O: out Std_logic);
    end component;
  begin
    INST1: IBPU
      port map (I=>PADI, O=>Z);
    INST2: OBZPU
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity inverter
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity inverter is
    port (I: in Std_logic; Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF inverter : ENTITY IS TRUE;

  end inverter;

  architecture Structure of inverter is
    component INV
      port (A: in Std_logic; Z: out Std_logic);
    end component;
  begin
    INST1: INV
      port map (A=>I, Z=>Z);
  end Structure;

-- entity ioport_15_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_15_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_15_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport15  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport15_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport15 	: VitalDelayType := 0 ns;
      tpw_ioport15_posedge	: VitalDelayType := 0 ns;
      tpw_ioport15_negedge	: VitalDelayType := 0 ns;

        tpd_ioport15_ioport15	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport15: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_15_B : ENTITY IS TRUE;

  end ioport_15_B;

  architecture Structure of ioport_15_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport15_ipd 	: std_logic := 'X';
    signal ioport15_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_15: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport15_out, 
                PADI=>ioport15_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport15_ipd, ioport15, tipd_ioport15);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport15_ipd, 
      ioport15_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport15_zd         	: std_logic := 'X';
    VARIABLE ioport15_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport15_ioport15          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport15	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport15_ipd,
        TestSignalName => "ioport15",
        Period => tperiod_ioport15,
        PulseWidthHigh => tpw_ioport15_posedge,
        PulseWidthLow => tpw_ioport15_negedge,
        PeriodData => periodcheckinfo_ioport15,
        Violation => tviol_ioport15_ioport15,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport15_zd 	:= ioport15_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport15_ipd'last_event,
                           PathDelay => tpd_ioport15_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport15, OutSignalName => "ioport15", OutTemp => ioport15_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport15,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport15,
                           PathCondition => TRUE)),
      GlitchData => ioport15_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_14_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_14_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_14_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport14  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport14_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport14 	: VitalDelayType := 0 ns;
      tpw_ioport14_posedge	: VitalDelayType := 0 ns;
      tpw_ioport14_negedge	: VitalDelayType := 0 ns;

        tpd_ioport14_ioport14	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport14: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_14_B : ENTITY IS TRUE;

  end ioport_14_B;

  architecture Structure of ioport_14_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport14_ipd 	: std_logic := 'X';
    signal ioport14_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_14: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport14_out, 
                PADI=>ioport14_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport14_ipd, ioport14, tipd_ioport14);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport14_ipd, 
      ioport14_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport14_zd         	: std_logic := 'X';
    VARIABLE ioport14_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport14_ioport14          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport14	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport14_ipd,
        TestSignalName => "ioport14",
        Period => tperiod_ioport14,
        PulseWidthHigh => tpw_ioport14_posedge,
        PulseWidthLow => tpw_ioport14_negedge,
        PeriodData => periodcheckinfo_ioport14,
        Violation => tviol_ioport14_ioport14,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport14_zd 	:= ioport14_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport14_ipd'last_event,
                           PathDelay => tpd_ioport14_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport14, OutSignalName => "ioport14", OutTemp => ioport14_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport14,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport14,
                           PathCondition => TRUE)),
      GlitchData => ioport14_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_13_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_13_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_13_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport13  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport13_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport13 	: VitalDelayType := 0 ns;
      tpw_ioport13_posedge	: VitalDelayType := 0 ns;
      tpw_ioport13_negedge	: VitalDelayType := 0 ns;

        tpd_ioport13_ioport13	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport13: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_13_B : ENTITY IS TRUE;

  end ioport_13_B;

  architecture Structure of ioport_13_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport13_ipd 	: std_logic := 'X';
    signal ioport13_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_13: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport13_out, 
                PADI=>ioport13_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport13_ipd, ioport13, tipd_ioport13);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport13_ipd, 
      ioport13_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport13_zd         	: std_logic := 'X';
    VARIABLE ioport13_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport13_ioport13          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport13	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport13_ipd,
        TestSignalName => "ioport13",
        Period => tperiod_ioport13,
        PulseWidthHigh => tpw_ioport13_posedge,
        PulseWidthLow => tpw_ioport13_negedge,
        PeriodData => periodcheckinfo_ioport13,
        Violation => tviol_ioport13_ioport13,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport13_zd 	:= ioport13_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport13_ipd'last_event,
                           PathDelay => tpd_ioport13_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport13, OutSignalName => "ioport13", OutTemp => ioport13_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport13,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport13,
                           PathCondition => TRUE)),
      GlitchData => ioport13_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_12_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_12_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_12_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport12  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport12_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport12 	: VitalDelayType := 0 ns;
      tpw_ioport12_posedge	: VitalDelayType := 0 ns;
      tpw_ioport12_negedge	: VitalDelayType := 0 ns;

        tpd_ioport12_ioport12	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport12: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_12_B : ENTITY IS TRUE;

  end ioport_12_B;

  architecture Structure of ioport_12_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport12_ipd 	: std_logic := 'X';
    signal ioport12_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_12: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport12_out, 
                PADI=>ioport12_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport12_ipd, ioport12, tipd_ioport12);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport12_ipd, 
      ioport12_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport12_zd         	: std_logic := 'X';
    VARIABLE ioport12_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport12_ioport12          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport12	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport12_ipd,
        TestSignalName => "ioport12",
        Period => tperiod_ioport12,
        PulseWidthHigh => tpw_ioport12_posedge,
        PulseWidthLow => tpw_ioport12_negedge,
        PeriodData => periodcheckinfo_ioport12,
        Violation => tviol_ioport12_ioport12,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport12_zd 	:= ioport12_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport12_ipd'last_event,
                           PathDelay => tpd_ioport12_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport12, OutSignalName => "ioport12", OutTemp => ioport12_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport12,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport12,
                           PathCondition => TRUE)),
      GlitchData => ioport12_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_11_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_11_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_11_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport11  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport11_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport11 	: VitalDelayType := 0 ns;
      tpw_ioport11_posedge	: VitalDelayType := 0 ns;
      tpw_ioport11_negedge	: VitalDelayType := 0 ns;

        tpd_ioport11_ioport11	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport11: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_11_B : ENTITY IS TRUE;

  end ioport_11_B;

  architecture Structure of ioport_11_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport11_ipd 	: std_logic := 'X';
    signal ioport11_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_11: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport11_out, 
                PADI=>ioport11_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport11_ipd, ioport11, tipd_ioport11);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport11_ipd, 
      ioport11_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport11_zd         	: std_logic := 'X';
    VARIABLE ioport11_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport11_ioport11          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport11	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport11_ipd,
        TestSignalName => "ioport11",
        Period => tperiod_ioport11,
        PulseWidthHigh => tpw_ioport11_posedge,
        PulseWidthLow => tpw_ioport11_negedge,
        PeriodData => periodcheckinfo_ioport11,
        Violation => tviol_ioport11_ioport11,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport11_zd 	:= ioport11_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport11_ipd'last_event,
                           PathDelay => tpd_ioport11_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport11, OutSignalName => "ioport11", OutTemp => ioport11_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport11,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport11,
                           PathCondition => TRUE)),
      GlitchData => ioport11_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_10_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_10_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_10_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport10  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport10_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport10 	: VitalDelayType := 0 ns;
      tpw_ioport10_posedge	: VitalDelayType := 0 ns;
      tpw_ioport10_negedge	: VitalDelayType := 0 ns;

        tpd_ioport10_ioport10	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport10: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_10_B : ENTITY IS TRUE;

  end ioport_10_B;

  architecture Structure of ioport_10_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport10_ipd 	: std_logic := 'X';
    signal ioport10_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_10: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport10_out, 
                PADI=>ioport10_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport10_ipd, ioport10, tipd_ioport10);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport10_ipd, 
      ioport10_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport10_zd         	: std_logic := 'X';
    VARIABLE ioport10_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport10_ioport10          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport10	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport10_ipd,
        TestSignalName => "ioport10",
        Period => tperiod_ioport10,
        PulseWidthHigh => tpw_ioport10_posedge,
        PulseWidthLow => tpw_ioport10_negedge,
        PeriodData => periodcheckinfo_ioport10,
        Violation => tviol_ioport10_ioport10,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport10_zd 	:= ioport10_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport10_ipd'last_event,
                           PathDelay => tpd_ioport10_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport10, OutSignalName => "ioport10", OutTemp => ioport10_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport10,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport10,
                           PathCondition => TRUE)),
      GlitchData => ioport10_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_9_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_9_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_9_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport9  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport9_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport9 	: VitalDelayType := 0 ns;
      tpw_ioport9_posedge	: VitalDelayType := 0 ns;
      tpw_ioport9_negedge	: VitalDelayType := 0 ns;

        tpd_ioport9_ioport9	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport9: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_9_B : ENTITY IS TRUE;

  end ioport_9_B;

  architecture Structure of ioport_9_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport9_ipd 	: std_logic := 'X';
    signal ioport9_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_9: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport9_out, 
                PADI=>ioport9_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport9_ipd, ioport9, tipd_ioport9);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport9_ipd, 
      ioport9_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport9_zd         	: std_logic := 'X';
    VARIABLE ioport9_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport9_ioport9          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport9	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport9_ipd,
        TestSignalName => "ioport9",
        Period => tperiod_ioport9,
        PulseWidthHigh => tpw_ioport9_posedge,
        PulseWidthLow => tpw_ioport9_negedge,
        PeriodData => periodcheckinfo_ioport9,
        Violation => tviol_ioport9_ioport9,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport9_zd 	:= ioport9_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport9_ipd'last_event,
                           PathDelay => tpd_ioport9_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport9, OutSignalName => "ioport9", OutTemp => ioport9_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport9,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport9,
                           PathCondition => TRUE)),
      GlitchData => ioport9_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_8_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_8_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_8_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport8  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport8_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport8 	: VitalDelayType := 0 ns;
      tpw_ioport8_posedge	: VitalDelayType := 0 ns;
      tpw_ioport8_negedge	: VitalDelayType := 0 ns;

        tpd_ioport8_ioport8	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport8: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_8_B : ENTITY IS TRUE;

  end ioport_8_B;

  architecture Structure of ioport_8_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport8_ipd 	: std_logic := 'X';
    signal ioport8_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_8: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport8_out, 
                PADI=>ioport8_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport8_ipd, ioport8, tipd_ioport8);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport8_ipd, 
      ioport8_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport8_zd         	: std_logic := 'X';
    VARIABLE ioport8_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport8_ioport8          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport8	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport8_ipd,
        TestSignalName => "ioport8",
        Period => tperiod_ioport8,
        PulseWidthHigh => tpw_ioport8_posedge,
        PulseWidthLow => tpw_ioport8_negedge,
        PeriodData => periodcheckinfo_ioport8,
        Violation => tviol_ioport8_ioport8,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport8_zd 	:= ioport8_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport8_ipd'last_event,
                           PathDelay => tpd_ioport8_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport8, OutSignalName => "ioport8", OutTemp => ioport8_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport8,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport8,
                           PathCondition => TRUE)),
      GlitchData => ioport8_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_7_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_7_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport7  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport7 	: VitalDelayType := 0 ns;
      tpw_ioport7_posedge	: VitalDelayType := 0 ns;
      tpw_ioport7_negedge	: VitalDelayType := 0 ns;

        tpd_ioport7_ioport7	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport7: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_7_B : ENTITY IS TRUE;

  end ioport_7_B;

  architecture Structure of ioport_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport7_ipd 	: std_logic := 'X';
    signal ioport7_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_7: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport7_out, 
                PADI=>ioport7_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport7_ipd, ioport7, tipd_ioport7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport7_ipd, 
      ioport7_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport7_zd         	: std_logic := 'X';
    VARIABLE ioport7_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport7_ioport7          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport7_ipd,
        TestSignalName => "ioport7",
        Period => tperiod_ioport7,
        PulseWidthHigh => tpw_ioport7_posedge,
        PulseWidthLow => tpw_ioport7_negedge,
        PeriodData => periodcheckinfo_ioport7,
        Violation => tviol_ioport7_ioport7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport7_zd 	:= ioport7_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport7_ipd'last_event,
                           PathDelay => tpd_ioport7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport7, OutSignalName => "ioport7", OutTemp => ioport7_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport7,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport7,
                           PathCondition => TRUE)),
      GlitchData => ioport7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_6_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_6_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport6  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport6 	: VitalDelayType := 0 ns;
      tpw_ioport6_posedge	: VitalDelayType := 0 ns;
      tpw_ioport6_negedge	: VitalDelayType := 0 ns;

        tpd_ioport6_ioport6	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport6: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_6_B : ENTITY IS TRUE;

  end ioport_6_B;

  architecture Structure of ioport_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport6_ipd 	: std_logic := 'X';
    signal ioport6_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_6: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport6_out, 
                PADI=>ioport6_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport6_ipd, ioport6, tipd_ioport6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport6_ipd, 
      ioport6_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport6_zd         	: std_logic := 'X';
    VARIABLE ioport6_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport6_ioport6          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport6_ipd,
        TestSignalName => "ioport6",
        Period => tperiod_ioport6,
        PulseWidthHigh => tpw_ioport6_posedge,
        PulseWidthLow => tpw_ioport6_negedge,
        PeriodData => periodcheckinfo_ioport6,
        Violation => tviol_ioport6_ioport6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport6_zd 	:= ioport6_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport6_ipd'last_event,
                           PathDelay => tpd_ioport6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport6, OutSignalName => "ioport6", OutTemp => ioport6_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport6,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport6,
                           PathCondition => TRUE)),
      GlitchData => ioport6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_5_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_5_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport5  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport5 	: VitalDelayType := 0 ns;
      tpw_ioport5_posedge	: VitalDelayType := 0 ns;
      tpw_ioport5_negedge	: VitalDelayType := 0 ns;

        tpd_ioport5_ioport5	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport5: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_5_B : ENTITY IS TRUE;

  end ioport_5_B;

  architecture Structure of ioport_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport5_ipd 	: std_logic := 'X';
    signal ioport5_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_5: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport5_out, 
                PADI=>ioport5_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport5_ipd, ioport5, tipd_ioport5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport5_ipd, 
      ioport5_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport5_zd         	: std_logic := 'X';
    VARIABLE ioport5_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport5_ioport5          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport5_ipd,
        TestSignalName => "ioport5",
        Period => tperiod_ioport5,
        PulseWidthHigh => tpw_ioport5_posedge,
        PulseWidthLow => tpw_ioport5_negedge,
        PeriodData => periodcheckinfo_ioport5,
        Violation => tviol_ioport5_ioport5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport5_zd 	:= ioport5_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport5_ipd'last_event,
                           PathDelay => tpd_ioport5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport5, OutSignalName => "ioport5", OutTemp => ioport5_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport5,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport5,
                           PathCondition => TRUE)),
      GlitchData => ioport5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_4_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_4_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport4  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport4 	: VitalDelayType := 0 ns;
      tpw_ioport4_posedge	: VitalDelayType := 0 ns;
      tpw_ioport4_negedge	: VitalDelayType := 0 ns;

        tpd_ioport4_ioport4	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport4: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_4_B : ENTITY IS TRUE;

  end ioport_4_B;

  architecture Structure of ioport_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport4_ipd 	: std_logic := 'X';
    signal ioport4_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_4: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport4_out, 
                PADI=>ioport4_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport4_ipd, ioport4, tipd_ioport4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport4_ipd, 
      ioport4_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport4_zd         	: std_logic := 'X';
    VARIABLE ioport4_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport4_ioport4          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport4_ipd,
        TestSignalName => "ioport4",
        Period => tperiod_ioport4,
        PulseWidthHigh => tpw_ioport4_posedge,
        PulseWidthLow => tpw_ioport4_negedge,
        PeriodData => periodcheckinfo_ioport4,
        Violation => tviol_ioport4_ioport4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport4_zd 	:= ioport4_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport4_ipd'last_event,
                           PathDelay => tpd_ioport4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport4, OutSignalName => "ioport4", OutTemp => ioport4_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport4,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport4,
                           PathCondition => TRUE)),
      GlitchData => ioport4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_3_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_3_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport3  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport3 	: VitalDelayType := 0 ns;
      tpw_ioport3_posedge	: VitalDelayType := 0 ns;
      tpw_ioport3_negedge	: VitalDelayType := 0 ns;

        tpd_ioport3_ioport3	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport3: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_3_B : ENTITY IS TRUE;

  end ioport_3_B;

  architecture Structure of ioport_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport3_ipd 	: std_logic := 'X';
    signal ioport3_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_3: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport3_out, 
                PADI=>ioport3_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport3_ipd, ioport3, tipd_ioport3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport3_ipd, 
      ioport3_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport3_zd         	: std_logic := 'X';
    VARIABLE ioport3_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport3_ioport3          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport3_ipd,
        TestSignalName => "ioport3",
        Period => tperiod_ioport3,
        PulseWidthHigh => tpw_ioport3_posedge,
        PulseWidthLow => tpw_ioport3_negedge,
        PeriodData => periodcheckinfo_ioport3,
        Violation => tviol_ioport3_ioport3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport3_zd 	:= ioport3_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport3_ipd'last_event,
                           PathDelay => tpd_ioport3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport3, OutSignalName => "ioport3", OutTemp => ioport3_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport3,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport3,
                           PathCondition => TRUE)),
      GlitchData => ioport3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_2_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_2_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport2  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport2 	: VitalDelayType := 0 ns;
      tpw_ioport2_posedge	: VitalDelayType := 0 ns;
      tpw_ioport2_negedge	: VitalDelayType := 0 ns;

        tpd_ioport2_ioport2	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport2: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_2_B : ENTITY IS TRUE;

  end ioport_2_B;

  architecture Structure of ioport_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport2_ipd 	: std_logic := 'X';
    signal ioport2_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_2: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport2_out, 
                PADI=>ioport2_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport2_ipd, ioport2, tipd_ioport2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport2_ipd, 
      ioport2_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport2_zd         	: std_logic := 'X';
    VARIABLE ioport2_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport2_ioport2          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport2_ipd,
        TestSignalName => "ioport2",
        Period => tperiod_ioport2,
        PulseWidthHigh => tpw_ioport2_posedge,
        PulseWidthLow => tpw_ioport2_negedge,
        PeriodData => periodcheckinfo_ioport2,
        Violation => tviol_ioport2_ioport2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport2_zd 	:= ioport2_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport2_ipd'last_event,
                           PathDelay => tpd_ioport2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport2, OutSignalName => "ioport2", OutTemp => ioport2_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport2,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport2,
                           PathCondition => TRUE)),
      GlitchData => ioport2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_1_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_1_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport1  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport1 	: VitalDelayType := 0 ns;
      tpw_ioport1_posedge	: VitalDelayType := 0 ns;
      tpw_ioport1_negedge	: VitalDelayType := 0 ns;

        tpd_ioport1_ioport1	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport1: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_1_B : ENTITY IS TRUE;

  end ioport_1_B;

  architecture Structure of ioport_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport1_ipd 	: std_logic := 'X';
    signal ioport1_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_1: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport1_out, 
                PADI=>ioport1_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport1_ipd, ioport1, tipd_ioport1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport1_ipd, 
      ioport1_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport1_zd         	: std_logic := 'X';
    VARIABLE ioport1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport1_ioport1          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport1_ipd,
        TestSignalName => "ioport1",
        Period => tperiod_ioport1,
        PulseWidthHigh => tpw_ioport1_posedge,
        PulseWidthLow => tpw_ioport1_negedge,
        PeriodData => periodcheckinfo_ioport1,
        Violation => tviol_ioport1_ioport1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport1_zd 	:= ioport1_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport1_ipd'last_event,
                           PathDelay => tpd_ioport1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport1, OutSignalName => "ioport1", OutTemp => ioport1_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport1,
                           PathCondition => TRUE)),
      GlitchData => ioport1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ioport_0_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ioport_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ioport_0_B";

      tipd_PADDT  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ioport0  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDT_ioport0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;

        tpd_PADDO_ioport0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        ;
      tpd_ioport0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_ioport0 	: VitalDelayType := 0 ns;
      tpw_ioport0_posedge	: VitalDelayType := 0 ns;
      tpw_ioport0_negedge	: VitalDelayType := 0 ns;

        tpd_ioport0_ioport0	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
          ioport0: inout Std_logic);

    ATTRIBUTE Vital_Level0 OF ioport_0_B : ENTITY IS TRUE;

  end ioport_0_B;

  architecture Structure of ioport_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PADDT_ipd 	: std_logic := 'X';
    signal PADDO_ipd 	: std_logic := 'X';
    signal ioport0_ipd 	: std_logic := 'X';
    signal ioport0_out 	: std_logic := 'Z';

    signal PADDT_NOTIN: Std_logic;
    component ec2iobuf
      port (I: in Std_logic; T: in Std_logic; Z: out Std_logic; 
            PAD: out Std_logic; PADI: in Std_logic);
    end component;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
  begin
    ioport_pad_0: ec2iobuf
      port map (I=>PADDO_ipd, T=>PADDT_NOTIN, Z=>PADDI_out, PAD=>ioport0_out, 
                PADI=>ioport0_ipd);
    PADDT_INVERTERIN: inverter
      port map (I=>PADDT_ipd, Z=>PADDT_NOTIN);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDT_ipd, PADDT, tipd_PADDT);
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
      VitalWireDelay(ioport0_ipd, ioport0, tipd_ioport0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PADDT_ipd, PADDO_ipd, ioport0_ipd, 
      ioport0_out)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;
    VARIABLE ioport0_zd         	: std_logic := 'X';
    VARIABLE ioport0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_ioport0_ioport0          	: x01 := '0';
    VARIABLE periodcheckinfo_ioport0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => ioport0_ipd,
        TestSignalName => "ioport0",
        Period => tperiod_ioport0,
        PulseWidthHigh => tpw_ioport0_posedge,
        PulseWidthLow => tpw_ioport0_negedge,
        PeriodData => periodcheckinfo_ioport0,
        Violation => tviol_ioport0_ioport0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;
    ioport0_zd 	:= ioport0_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => ioport0_ipd'last_event,
                           PathDelay => tpd_ioport0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01Z (
      OutSignal => ioport0, OutSignalName => "ioport0", OutTemp => ioport0_zd,
      Paths      => (0 => (InputChangeTime => PADDT_ipd'last_event,
                           PathDelay => tpd_PADDT_ioport0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_ioport0,
                           PathCondition => TRUE)),
      GlitchData => ioport0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ec2iobuf0001
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ec2iobuf0001 is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ec2iobuf0001 : ENTITY IS TRUE;

  end ec2iobuf0001;

  architecture Structure of ec2iobuf0001 is
    component OBZPU
      port (I: in Std_logic; T: in Std_logic; O: out Std_logic);
    end component;
  begin
    INST5: OBZPU
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
    component VLO
      port (Z: out Std_logic);
    end component;
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity uart_oB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity uart_oB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "uart_oB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_uarto	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; uarto: out Std_logic);

    ATTRIBUTE Vital_Level0 OF uart_oB : ENTITY IS TRUE;

  end uart_oB;

  architecture Structure of uart_oB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal uarto_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component ec2iobuf0001
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    uart_o_pad: ec2iobuf0001
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>uarto_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, uarto_out)
    VARIABLE uarto_zd         	: std_logic := 'X';
    VARIABLE uarto_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    uarto_zd 	:= uarto_out;

    VitalPathDelay01Z (
      OutSignal => uarto, OutSignalName => "uarto", OutTemp => uarto_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_uarto,
                           PathCondition => TRUE)),
      GlitchData => uarto_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity acknowledge_oB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity acknowledge_oB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "acknowledge_oB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);

        tpd_PADDO_acknowledgeo	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; acknowledgeo: out Std_logic);

    ATTRIBUTE Vital_Level0 OF acknowledge_oB : ENTITY IS TRUE;

  end acknowledge_oB;

  architecture Structure of acknowledge_oB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal acknowledgeo_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component ec2iobuf0001
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    acknowledge_o_pad: ec2iobuf0001
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>acknowledgeo_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, acknowledgeo_out)
    VARIABLE acknowledgeo_zd         	: std_logic := 'X';
    VARIABLE acknowledgeo_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    acknowledgeo_zd 	:= acknowledgeo_out;

    VitalPathDelay01Z (

        OutSignal => acknowledgeo, OutSignalName => "acknowledgeo", OutTemp => acknowledgeo_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_acknowledgeo,
                           PathCondition => TRUE)),
      GlitchData => acknowledgeo_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ec2iobuf0002
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ec2iobuf0002 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ec2iobuf0002 : ENTITY IS TRUE;

  end ec2iobuf0002;

  architecture Structure of ec2iobuf0002 is
    component IBPU
      port (I: in Std_logic; O: out Std_logic);
    end component;
  begin
    INST1: IBPU
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity aclkB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity aclkB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "aclkB";

      tipd_aclkS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_aclkS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_aclkS 	: VitalDelayType := 0 ns;
      tpw_aclkS_posedge	: VitalDelayType := 0 ns;
      tpw_aclkS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; aclkS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF aclkB : ENTITY IS TRUE;

  end aclkB;

  architecture Structure of aclkB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal aclkS_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    aclk_pad: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>aclkS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(aclkS_ipd, aclkS, tipd_aclkS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, aclkS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_aclkS_aclkS          	: x01 := '0';
    VARIABLE periodcheckinfo_aclkS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => aclkS_ipd,
        TestSignalName => "aclkS",
        Period => tperiod_aclkS,
        PulseWidthHigh => tpw_aclkS_posedge,
        PulseWidthLow => tpw_aclkS_negedge,
        PeriodData => periodcheckinfo_aclkS,
        Violation => tviol_aclkS_aclkS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => aclkS_ipd'last_event,
                           PathDelay => tpd_aclkS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity arstB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity arstB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "arstB";

      tipd_arstS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_arstS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_arstS 	: VitalDelayType := 0 ns;
      tpw_arstS_posedge	: VitalDelayType := 0 ns;
      tpw_arstS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; arstS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF arstB : ENTITY IS TRUE;

  end arstB;

  architecture Structure of arstB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal arstS_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    arst_pad: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>arstS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(arstS_ipd, arstS, tipd_arstS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, arstS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_arstS_arstS          	: x01 := '0';
    VARIABLE periodcheckinfo_arstS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => arstS_ipd,
        TestSignalName => "arstS",
        Period => tperiod_arstS,
        PulseWidthHigh => tpw_arstS_posedge,
        PulseWidthLow => tpw_arstS_negedge,
        PeriodData => periodcheckinfo_arstS,
        Violation => tviol_arstS_arstS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => arstS_ipd'last_event,
                           PathDelay => tpd_arstS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity interrupt_i_4_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity interrupt_i_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "interrupt_i_4_B";

      tipd_interrupti4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_interrupti4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_interrupti4 	: VitalDelayType := 0 ns;
      tpw_interrupti4_posedge	: VitalDelayType := 0 ns;
      tpw_interrupti4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; interrupti4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF interrupt_i_4_B : ENTITY IS TRUE;

  end interrupt_i_4_B;

  architecture Structure of interrupt_i_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal interrupti4_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    interrupt_i_pad_4: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>interrupti4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(interrupti4_ipd, interrupti4, tipd_interrupti4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, interrupti4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_interrupti4_interrupti4          	: x01 := '0';
    VARIABLE periodcheckinfo_interrupti4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => interrupti4_ipd,
        TestSignalName => "interrupti4",
        Period => tperiod_interrupti4,
        PulseWidthHigh => tpw_interrupti4_posedge,
        PulseWidthLow => tpw_interrupti4_negedge,
        PeriodData => periodcheckinfo_interrupti4,
        Violation => tviol_interrupti4_interrupti4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => interrupti4_ipd'last_event,
                           PathDelay => tpd_interrupti4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity interrupt_i_3_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity interrupt_i_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "interrupt_i_3_B";

      tipd_interrupti3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_interrupti3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_interrupti3 	: VitalDelayType := 0 ns;
      tpw_interrupti3_posedge	: VitalDelayType := 0 ns;
      tpw_interrupti3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; interrupti3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF interrupt_i_3_B : ENTITY IS TRUE;

  end interrupt_i_3_B;

  architecture Structure of interrupt_i_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal interrupti3_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    interrupt_i_pad_3: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>interrupti3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(interrupti3_ipd, interrupti3, tipd_interrupti3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, interrupti3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_interrupti3_interrupti3          	: x01 := '0';
    VARIABLE periodcheckinfo_interrupti3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => interrupti3_ipd,
        TestSignalName => "interrupti3",
        Period => tperiod_interrupti3,
        PulseWidthHigh => tpw_interrupti3_posedge,
        PulseWidthLow => tpw_interrupti3_negedge,
        PeriodData => periodcheckinfo_interrupti3,
        Violation => tviol_interrupti3_interrupti3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => interrupti3_ipd'last_event,
                           PathDelay => tpd_interrupti3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity interrupt_i_2_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity interrupt_i_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "interrupt_i_2_B";

      tipd_interrupti2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_interrupti2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_interrupti2 	: VitalDelayType := 0 ns;
      tpw_interrupti2_posedge	: VitalDelayType := 0 ns;
      tpw_interrupti2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; interrupti2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF interrupt_i_2_B : ENTITY IS TRUE;

  end interrupt_i_2_B;

  architecture Structure of interrupt_i_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal interrupti2_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    interrupt_i_pad_2: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>interrupti2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(interrupti2_ipd, interrupti2, tipd_interrupti2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, interrupti2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_interrupti2_interrupti2          	: x01 := '0';
    VARIABLE periodcheckinfo_interrupti2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => interrupti2_ipd,
        TestSignalName => "interrupti2",
        Period => tperiod_interrupti2,
        PulseWidthHigh => tpw_interrupti2_posedge,
        PulseWidthLow => tpw_interrupti2_negedge,
        PeriodData => periodcheckinfo_interrupti2,
        Violation => tviol_interrupti2_interrupti2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => interrupti2_ipd'last_event,
                           PathDelay => tpd_interrupti2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity interrupt_i_1_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity interrupt_i_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "interrupt_i_1_B";

      tipd_interrupti1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_interrupti1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_interrupti1 	: VitalDelayType := 0 ns;
      tpw_interrupti1_posedge	: VitalDelayType := 0 ns;
      tpw_interrupti1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; interrupti1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF interrupt_i_1_B : ENTITY IS TRUE;

  end interrupt_i_1_B;

  architecture Structure of interrupt_i_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal interrupti1_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    interrupt_i_pad_1: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>interrupti1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(interrupti1_ipd, interrupti1, tipd_interrupti1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, interrupti1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_interrupti1_interrupti1          	: x01 := '0';
    VARIABLE periodcheckinfo_interrupti1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => interrupti1_ipd,
        TestSignalName => "interrupti1",
        Period => tperiod_interrupti1,
        PulseWidthHigh => tpw_interrupti1_posedge,
        PulseWidthLow => tpw_interrupti1_negedge,
        PeriodData => periodcheckinfo_interrupti1,
        Violation => tviol_interrupti1_interrupti1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => interrupti1_ipd'last_event,
                           PathDelay => tpd_interrupti1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity interrupt_i_0_B
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity interrupt_i_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "interrupt_i_0_B";

      tipd_interrupti0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_interrupti0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_interrupti0 	: VitalDelayType := 0 ns;
      tpw_interrupti0_posedge	: VitalDelayType := 0 ns;
      tpw_interrupti0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; interrupti0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF interrupt_i_0_B : ENTITY IS TRUE;

  end interrupt_i_0_B;

  architecture Structure of interrupt_i_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal interrupti0_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    interrupt_i_pad_0: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>interrupti0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(interrupti0_ipd, interrupti0, tipd_interrupti0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, interrupti0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_interrupti0_interrupti0          	: x01 := '0';
    VARIABLE periodcheckinfo_interrupti0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => interrupti0_ipd,
        TestSignalName => "interrupti0",
        Period => tperiod_interrupti0,
        PulseWidthHigh => tpw_interrupti0_posedge,
        PulseWidthLow => tpw_interrupti0_negedge,
        PeriodData => periodcheckinfo_interrupti0,
        Violation => tviol_interrupti0_interrupti0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => interrupti0_ipd'last_event,
                           PathDelay => tpd_interrupti0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity uart_iB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity uart_iB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "uart_iB";

      tipd_uarti  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_uarti_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_uarti 	: VitalDelayType := 0 ns;
      tpw_uarti_posedge	: VitalDelayType := 0 ns;
      tpw_uarti_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; uarti: in Std_logic);

    ATTRIBUTE Vital_Level0 OF uart_iB : ENTITY IS TRUE;

  end uart_iB;

  architecture Structure of uart_iB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal uarti_ipd 	: std_logic := 'X';

    component ec2iobuf0002
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    uart_i_pad: ec2iobuf0002
      port map (Z=>PADDI_out, PAD=>uarti_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(uarti_ipd, uarti, tipd_uarti);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, uarti_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_uarti_uarti          	: x01 := '0';
    VARIABLE periodcheckinfo_uarti	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => uarti_ipd,
        TestSignalName => "uarti",
        Period => tperiod_uarti,
        PulseWidthHigh => tpw_uarti_posedge,
        PulseWidthLow => tpw_uarti_negedge,
        PeriodData => periodcheckinfo_uarti,
        Violation => tviol_uarti_uarti,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => uarti_ipd'last_event,
                           PathDelay => tpd_uarti_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity GSR5MODE
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity GSR5MODE is
    port (GSRP: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR5MODE : ENTITY IS TRUE;

  end GSR5MODE;

  architecture Structure of GSR5MODE is
    signal GSRMODE: Std_logic;
    component BUFBA
      port (A: in Std_logic; Z: out Std_logic);
    end component;
    component GSR
      port (GSR: in Std_logic);
    end component;
  begin
    INST10: BUFBA
      port map (A=>GSRP, Z=>GSRMODE);
    INST20: GSR
      port map (GSR=>GSRMODE);
  end Structure;

-- entity GSR_INSTB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity GSR_INSTB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "GSR_INSTB";

      tipd_GSRNET  	: VitalDelayType01 := (0 ns, 0 ns));

    port (GSRNET: in Std_logic);

    ATTRIBUTE Vital_Level0 OF GSR_INSTB : ENTITY IS TRUE;

  end GSR_INSTB;

  architecture Structure of GSR_INSTB is
    signal GSRNET_ipd 	: std_logic := 'X';

    component GSR5MODE
      port (GSRP: in Std_logic);
    end component;
  begin
    GSR_INST_GSRMODE: GSR5MODE
      port map (GSRP=>GSRNET_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(GSRNET_ipd, GSRNET, tipd_GSRNET);
    END BLOCK;

    VitalBehavior : PROCESS (GSRNET_ipd)


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;



    END PROCESS;

  end Structure;

-- entity DP16KBB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity DP16KBB is
    port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
          CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
          RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
          WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
          CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
          DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
          DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
          DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
          DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
          DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
          DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
          ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
          ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
          ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
          ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
          ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
          DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
          DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
          DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
          DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
          DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
          DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
          ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
          DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
          DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
          DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
          DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
          DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
          DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
          DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
          DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
          DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
          DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
          DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
          DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KBB : ENTITY IS TRUE;

  end DP16KBB;

  architecture Structure of DP16KBB is
    component DP16KB
      generic (CSDECODE_A: Std_logic_vector(2 downto 0); 
               CSDECODE_B: Std_logic_vector(2 downto 0); DATA_WIDTH_A: INTEGER; 
               DATA_WIDTH_B: INTEGER; GSR: String; INITVAL_00: String; 
               INITVAL_01: String; INITVAL_02: String; INITVAL_03: String; 
               INITVAL_04: String; INITVAL_05: String; INITVAL_06: String; 
               INITVAL_07: String; INITVAL_08: String; INITVAL_09: String; 
               INITVAL_0A: String; INITVAL_0B: String; INITVAL_0C: String; 
               INITVAL_0D: String; INITVAL_0E: String; INITVAL_0F: String; 
               INITVAL_10: String; INITVAL_11: String; INITVAL_12: String; 
               INITVAL_13: String; INITVAL_14: String; INITVAL_15: String; 
               INITVAL_16: String; INITVAL_17: String; INITVAL_18: String; 
               INITVAL_19: String; INITVAL_1A: String; INITVAL_1B: String; 
               INITVAL_1C: String; INITVAL_1D: String; INITVAL_1E: String; 
               INITVAL_1F: String; INITVAL_20: String; INITVAL_21: String; 
               INITVAL_22: String; INITVAL_23: String; INITVAL_24: String; 
               INITVAL_25: String; INITVAL_26: String; INITVAL_27: String; 
               INITVAL_28: String; INITVAL_29: String; INITVAL_2A: String; 
               INITVAL_2B: String; INITVAL_2C: String; INITVAL_2D: String; 
               INITVAL_2E: String; INITVAL_2F: String; INITVAL_30: String; 
               INITVAL_31: String; INITVAL_32: String; INITVAL_33: String; 
               INITVAL_34: String; INITVAL_35: String; INITVAL_36: String; 
               INITVAL_37: String; INITVAL_38: String; INITVAL_39: String; 
               INITVAL_3A: String; INITVAL_3B: String; INITVAL_3C: String; 
               INITVAL_3D: String; INITVAL_3E: String; INITVAL_3F: String; 
               REGMODE_A: String; REGMODE_B: String; RESETMODE: String; 
               WRITEMODE_A: String; WRITEMODE_B: String);
      port (DIA0: in Std_logic; DIA1: in Std_logic; DIA2: in Std_logic; 
            DIA3: in Std_logic; DIA4: in Std_logic; DIA5: in Std_logic; 
            DIA6: in Std_logic; DIA7: in Std_logic; DIA8: in Std_logic; 
            DIA9: in Std_logic; DIA10: in Std_logic; DIA11: in Std_logic; 
            DIA12: in Std_logic; DIA13: in Std_logic; DIA14: in Std_logic; 
            DIA15: in Std_logic; DIA16: in Std_logic; DIA17: in Std_logic; 
            ADA0: in Std_logic; ADA1: in Std_logic; ADA2: in Std_logic; 
            ADA3: in Std_logic; ADA4: in Std_logic; ADA5: in Std_logic; 
            ADA6: in Std_logic; ADA7: in Std_logic; ADA8: in Std_logic; 
            ADA9: in Std_logic; ADA10: in Std_logic; ADA11: in Std_logic; 
            ADA12: in Std_logic; ADA13: in Std_logic; CEA: in Std_logic; 
            CLKA: in Std_logic; WEA: in Std_logic; CSA0: in Std_logic; 
            CSA1: in Std_logic; CSA2: in Std_logic; RSTA: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; CEB: in Std_logic; 
            CLKB: in Std_logic; WEB: in Std_logic; CSB0: in Std_logic; 
            CSB1: in Std_logic; CSB2: in Std_logic; RSTB: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    INST10: DP16KB
      generic map (CSDECODE_A => "000", CSDECODE_B => "111", DATA_WIDTH_A => 4, 
                   DATA_WIDTH_B => 4, GSR => "DISABLED", 
                   INITVAL_00 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000500000"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x0080F150E81A608018881CA40100EE100AC08844010E81C053000A81D0D20A0FA11C8C0060E0AA40"
                   , 
                   INITVAL_05 => "0x01A0C100EF100EE1C05011EA81F4040808F150FA0A8081F4040600A1FA0B014EF1E03017AFD01CFF"
                   , 
                   INITVAL_06 => "0x010EF1E0C008450100D0180AE0085501EEF100FE1DC4401EEF100EE1CA40100D01900F100EE1C608"
                   , 
                   INITVAL_07 => "0x198C01E45011CD01DE8E01CDE100FE01E0C11C0E0884011E0201E040808F1A0DD1BADD014F018042"
                   , 
                   INITVAL_08 => "0x08A0801405080801F0000140A0A8301DE00040801C0F408408010E001CF01E0EE1C0401E0201DECC"
                   , 
                   INITVAL_09 => "0x11CBF0140E048501F20B1DCE81DEEF008401F20A014FA1F0F4088081F00F00A4508080148500140A"
                   , 
                   INITVAL_0A => "0x01C0A0A854000A01400A0A84011E9F010F001C240AA0D000A0040FF116F8014901500A1A00A100A0"
                   , 
                   INITVAL_0B => "0x0000E0EE0015C0A01E02010001500008A08110E0004080000A040F015EA0140440100A00030100EF"
                   , 
                   INITVAL_0C => "0x01CF01000F1DE0F014340880801CEC000A0140A8000A01A0F00A8401600A088440160014A401000E"
                   , 
                   INITVAL_0D => "0x1EA4401000148450160E1DC0A1FC8E1E0C81FE9D01A0A01CF80140A1DEA801EEF01AEE1E00A1DEEF"
                   , 
                   INITVAL_0E => "0x000000000E1FA0D000AE1C00F1C460100000140401E901400E11E050A0800140408A0F120E81E00E"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x100F301000010080140A040800000000A080000D1C0001EA50100001BC0F0040801CF00E40800E20"
                   , 
                   INITVAL_11 => "0x01AE015C0A1C0AE11C9015008000A01A0CE014EE1DC0E120A81800A140AF1000F01EA81C0A20EC20"
                   , 
                   INITVAL_12 => "0x01A0E068401000A000050A080014001DE00140AE1DC001400A088501A0A0014A0140D0140F40AA08"
                   , 
                   INITVAL_13 => "0x1D0DF1F4881FEAF1D00F000A81E0A81DEAE11EED014B015CF00CC00152E8000DF1D4FE11E0308A08"
                   , 
                   INITVAL_14 => "0x0EC601DCF8010001500A100E008C0015C0E0AA08000A001EA00148E1FE05010001464401CF01DEFF"
                   , 
                   INITVAL_15 => "0x01CF0100760C08001454080F001E0A000A00A8501E0A0008540100D1F00801000140D01C08E1DCE0"
                   , 
                   INITVAL_16 => "0x080801400A0840B000A500088000F81E0660CC6601A0F1000008A4404000000A01E0A01EA5401E00"
                   , 
                   INITVAL_17 => "0x08808000540A8501E0A01C0201A0A5088001100004080000B0014040A08001E800148E0004401000"
                   , 
                   INITVAL_18 => "0x1C0A01C08E0C40F00C47000F01500E08A4300EA008820100A0000A204080014A40AA40100A015C44"
                   , 
                   INITVAL_19 => "0x010000060B000A501000010A30100A0145408008010001F00011E8D01E80000450840011CF015EB0"
                   , 
                   INITVAL_1A => "0x0144201CF81DE8F150D01DCE81E0A40860F01E90014081E00A01E0A008401120A000AE11E0001C26"
                   , 
                   INITVAL_1B => "0x176BB176BF00020110FA000E801E0A00A5501E800140901408000800108E1C0A0008501000D01CF0"
                   , 
                   INITVAL_1C => "0x1E0B01C0B00140A0140A01E0A01E0A0080B01A0C01E8015C801C00008A0801E0F120A01C0A0176BB"
                   , 
                   INITVAL_1D => "0x0000000000000000000F0140A1E0AF1500000045080F9010080140A000000000001C8F000450100A"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x0140E1C0A01600A01480150FA014801E00A014EF000CC0140D000F001E0001E001F4000140508840"
                   , 
                   INITVAL_21 => "0x08840014040880000000000A00000A0043600000088080000A05CF001CF00146A014F0000A91E00A"
                   , 
                   INITVAL_22 => "0x01008140440808011400080801140408808010A008A501009A00054010001F45401AEF000040A080"
                   , 
                   INITVAL_23 => "0x014020100F0000A0040801E00014050880E1E0440A0E000850100EF0005401CF001E540100000855"
                   , 
                   INITVAL_24 => "0x000A0040F00140E008401000A140040A8401000A000440AA080000A000540808000004080E801E00"
                   , 
                   INITVAL_25 => "0x1E04501CE0060FE1C0501DC0501E401E40F08A4401C040808A000A40884401E00144080140A0A080"
                   , 
                   INITVAL_26 => "0x11CF50A08E180401A0C2016F00400A00800140301F4030100C00A440185401A201EA5301CF00880E"
                   , 
                   INITVAL_27 => "0x00000000000000000000000C00AA401AA501A8401E04401C5401CF50A8081E0301DE0301CEE00A30"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , REGMODE_A => "NOREG", REGMODE_B => "NOREG", 
                   RESETMODE => "SYNC", WRITEMODE_A => "NORMAL", 
                   WRITEMODE_B => "NORMAL")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, CSA1=>CSA1, 
                CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, DIB2=>DIB2, 
                DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, DIB7=>DIB7, 
                DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, CLKB=>CLKB, WEB=>WEB, 
                CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, DOA0=>DOA0, 
                DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, DOA5=>DOA5, 
                DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, DOA10=>DOA10, 
                DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, DOA14=>DOA14, 
                DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, DOB0=>DOB0, 
                DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, DOB5=>DOB5, 
                DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, DOB10=>DOB10, 
                DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, DOB14=>DOB14, 
                DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
  end Structure;

-- entity vcc
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
    component VHI
      port (Z: out Std_logic);
    end component;
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity ram_memory_0_ram_memory_0_3_0
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ram_memory_0_ram_memory_0_3_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ram_memory_0_ram_memory_0_3_0";

      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_MORCLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns);

    port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
          DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
          ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
          ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
          ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
          ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
          CLKA: in Std_logic; MORCLKA: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ram_memory_0_ram_memory_0_3_0 : ENTITY IS TRUE;

  end ram_memory_0_ram_memory_0_3_0;

  architecture Structure of ram_memory_0_ram_memory_0_3_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA13_ipd 	: std_logic := 'X';
    signal ADA13_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal ADA3_ipd 	: std_logic := 'X';
    signal ADA3_dly 	: std_logic := 'X';
    signal ADA2_ipd 	: std_logic := 'X';
    signal ADA2_dly 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal MORCLKA_ipd 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal MORCLKA_NOTIN: Std_logic;
    signal GNDI: Std_logic;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component DP16KBB
      port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
            CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
            RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
            WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
            CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
            DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
            DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
            DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
            DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
            DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
            DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
            ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
            ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
            ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
            ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
            ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
            DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
            DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
            DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
            DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
            DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
            DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
            ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    ram_memory_0_ram_memory_0_3_0_DP16KB: DP16KBB
      port map (CEA=>VCCI, CLKA=>MORCLKA_NOTIN, WEA=>WEA_dly, CSA0=>GNDI, 
                CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, CLKB=>GNDI, 
                WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, CSB2=>GNDI, RSTB=>GNDI, 
                DIA0=>DIA0_dly, DIA1=>DIA1_dly, DIA2=>DIA2_dly, DIA3=>DIA3_dly, 
                DIA4=>GNDI, DIA5=>GNDI, DIA6=>GNDI, DIA7=>GNDI, DIA8=>GNDI, 
                DIA9=>GNDI, DIA10=>GNDI, DIA11=>GNDI, DIA12=>GNDI, DIA13=>GNDI, 
                DIA14=>GNDI, DIA15=>GNDI, DIA16=>GNDI, DIA17=>GNDI, ADA0=>GNDI, 
                ADA1=>GNDI, ADA2=>ADA2_dly, ADA3=>ADA3_dly, ADA4=>ADA4_dly, 
                ADA5=>ADA5_dly, ADA6=>ADA6_dly, ADA7=>ADA7_dly, ADA8=>ADA8_dly, 
                ADA9=>ADA9_dly, ADA10=>ADA10_dly, ADA11=>ADA11_dly, 
                ADA12=>ADA12_dly, ADA13=>ADA13_dly, DIB0=>GNDI, DIB1=>GNDI, 
                DIB2=>GNDI, DIB3=>GNDI, DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, 
                DIB7=>GNDI, DIB8=>GNDI, DIB9=>GNDI, DIB10=>GNDI, DIB11=>GNDI, 
                DIB12=>GNDI, DIB13=>GNDI, DIB14=>GNDI, DIB15=>GNDI, 
                DIB16=>GNDI, DIB17=>GNDI, ADB0=>GNDI, ADB1=>GNDI, ADB2=>GNDI, 
                ADB3=>GNDI, ADB4=>GNDI, ADB5=>GNDI, ADB6=>GNDI, ADB7=>GNDI, 
                ADB8=>GNDI, ADB9=>GNDI, ADB10=>GNDI, ADB11=>GNDI, ADB12=>GNDI, 
                ADB13=>GNDI, DOA0=>DOA0_out, DOA1=>DOA1_out, DOA2=>DOA2_out, 
                DOA3=>DOA3_out, DOA4=>open, DOA5=>open, DOA6=>open, DOA7=>open, 
                DOA8=>open, DOA9=>open, DOA10=>open, DOA11=>open, DOA12=>open, 
                DOA13=>open, DOA14=>open, DOA15=>open, DOA16=>open, 
                DOA17=>open, DOB0=>open, DOB1=>open, DOB2=>open, DOB3=>open, 
                DOB4=>open, DOB5=>open, DOB6=>open, DOB7=>open, DOB8=>open, 
                DOB9=>open, DOB10=>open, DOB11=>open, DOB12=>open, DOB13=>open, 
                DOB14=>open, DOB15=>open, DOB16=>open, DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    MORCLKA_INVERTERIN: inverter
      port map (I=>CLKA_dly, Z=>MORCLKA_NOTIN);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA13_ipd, ADA13, tipd_ADA13);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(ADA3_ipd, ADA3, tipd_ADA3);
      VitalWireDelay(ADA2_ipd, ADA2, tipd_ADA2);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(MORCLKA_ipd, MORCLKA, tipd_MORCLKA);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA13_dly, ADA13_ipd, tisd_ADA13_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(ADA3_dly, ADA3_ipd, tisd_ADA3_CLKA);
      VitalSignalDelay(ADA2_dly, ADA2_ipd, tisd_ADA2_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
    END BLOCK;

    VitalBehavior : PROCESS (DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, ADA13_dly, 
      ADA12_dly, ADA11_dly, ADA10_dly, ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, 
      ADA5_dly, ADA4_dly, ADA3_dly, ADA2_dly, DOA3_out, DOA2_out, DOA1_out, 
      DOA0_out, WEA_dly, CLKA_dly, MORCLKA_ipd)
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA13_CLKA       	: x01 := '0';
    VARIABLE ADA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA3_CLKA       	: x01 := '0';
    VARIABLE ADA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA2_CLKA       	: x01 := '0';
    VARIABLE ADA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_negedge,
        HoldHigh => thold_DIA3_CLKA_noedge_negedge,
        HoldLow => thold_DIA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_negedge,
        HoldHigh => thold_DIA2_CLKA_noedge_negedge,
        HoldLow => thold_DIA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_negedge,
        HoldHigh => thold_DIA1_CLKA_noedge_negedge,
        HoldLow => thold_DIA1_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_negedge,
        HoldHigh => thold_DIA0_CLKA_noedge_negedge,
        HoldLow => thold_DIA0_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA13_dly,
        TestSignalName => "ADA13",
        TestDelay => tisd_ADA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA13_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA13_CLKA_noedge_negedge,
        HoldHigh => thold_ADA13_CLKA_noedge_negedge,
        HoldLow => thold_ADA13_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA13_CLKA_TimingDatash,
        Violation => tviol_ADA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_negedge,
        HoldHigh => thold_ADA12_CLKA_noedge_negedge,
        HoldLow => thold_ADA12_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_negedge,
        HoldHigh => thold_ADA11_CLKA_noedge_negedge,
        HoldLow => thold_ADA11_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_negedge,
        HoldHigh => thold_ADA10_CLKA_noedge_negedge,
        HoldLow => thold_ADA10_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_negedge,
        HoldHigh => thold_ADA9_CLKA_noedge_negedge,
        HoldLow => thold_ADA9_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_negedge,
        HoldHigh => thold_ADA8_CLKA_noedge_negedge,
        HoldLow => thold_ADA8_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_negedge,
        HoldHigh => thold_ADA7_CLKA_noedge_negedge,
        HoldLow => thold_ADA7_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_negedge,
        HoldHigh => thold_ADA6_CLKA_noedge_negedge,
        HoldLow => thold_ADA6_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_negedge,
        HoldHigh => thold_ADA5_CLKA_noedge_negedge,
        HoldLow => thold_ADA5_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_negedge,
        HoldHigh => thold_ADA4_CLKA_noedge_negedge,
        HoldLow => thold_ADA4_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA3_dly,
        TestSignalName => "ADA3",
        TestDelay => tisd_ADA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA3_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA3_CLKA_noedge_negedge,
        HoldHigh => thold_ADA3_CLKA_noedge_negedge,
        HoldLow => thold_ADA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA3_CLKA_TimingDatash,
        Violation => tviol_ADA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA2_dly,
        TestSignalName => "ADA2",
        TestDelay => tisd_ADA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA2_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA2_CLKA_noedge_negedge,
        HoldHigh => thold_ADA2_CLKA_noedge_negedge,
        HoldLow => thold_ADA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA2_CLKA_TimingDatash,
        Violation => tviol_ADA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_negedge,
        SetupLow => tsetup_WEA_CLKA_noedge_negedge,
        HoldHigh => thold_WEA_CLKA_noedge_negedge,
        HoldLow => thold_WEA_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;

    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DP16KB0003
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity DP16KB0003 is
    port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
          CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
          RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
          WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
          CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
          DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
          DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
          DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
          DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
          DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
          DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
          ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
          ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
          ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
          ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
          ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
          DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
          DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
          DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
          DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
          DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
          DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
          ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
          DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
          DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
          DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
          DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
          DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
          DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
          DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
          DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
          DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
          DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
          DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
          DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KB0003 : ENTITY IS TRUE;

  end DP16KB0003;

  architecture Structure of DP16KB0003 is
    component DP16KB
      generic (CSDECODE_A: Std_logic_vector(2 downto 0); 
               CSDECODE_B: Std_logic_vector(2 downto 0); DATA_WIDTH_A: INTEGER; 
               DATA_WIDTH_B: INTEGER; GSR: String; INITVAL_00: String; 
               INITVAL_01: String; INITVAL_02: String; INITVAL_03: String; 
               INITVAL_04: String; INITVAL_05: String; INITVAL_06: String; 
               INITVAL_07: String; INITVAL_08: String; INITVAL_09: String; 
               INITVAL_0A: String; INITVAL_0B: String; INITVAL_0C: String; 
               INITVAL_0D: String; INITVAL_0E: String; INITVAL_0F: String; 
               INITVAL_10: String; INITVAL_11: String; INITVAL_12: String; 
               INITVAL_13: String; INITVAL_14: String; INITVAL_15: String; 
               INITVAL_16: String; INITVAL_17: String; INITVAL_18: String; 
               INITVAL_19: String; INITVAL_1A: String; INITVAL_1B: String; 
               INITVAL_1C: String; INITVAL_1D: String; INITVAL_1E: String; 
               INITVAL_1F: String; INITVAL_20: String; INITVAL_21: String; 
               INITVAL_22: String; INITVAL_23: String; INITVAL_24: String; 
               INITVAL_25: String; INITVAL_26: String; INITVAL_27: String; 
               INITVAL_28: String; INITVAL_29: String; INITVAL_2A: String; 
               INITVAL_2B: String; INITVAL_2C: String; INITVAL_2D: String; 
               INITVAL_2E: String; INITVAL_2F: String; INITVAL_30: String; 
               INITVAL_31: String; INITVAL_32: String; INITVAL_33: String; 
               INITVAL_34: String; INITVAL_35: String; INITVAL_36: String; 
               INITVAL_37: String; INITVAL_38: String; INITVAL_39: String; 
               INITVAL_3A: String; INITVAL_3B: String; INITVAL_3C: String; 
               INITVAL_3D: String; INITVAL_3E: String; INITVAL_3F: String; 
               REGMODE_A: String; REGMODE_B: String; RESETMODE: String; 
               WRITEMODE_A: String; WRITEMODE_B: String);
      port (DIA0: in Std_logic; DIA1: in Std_logic; DIA2: in Std_logic; 
            DIA3: in Std_logic; DIA4: in Std_logic; DIA5: in Std_logic; 
            DIA6: in Std_logic; DIA7: in Std_logic; DIA8: in Std_logic; 
            DIA9: in Std_logic; DIA10: in Std_logic; DIA11: in Std_logic; 
            DIA12: in Std_logic; DIA13: in Std_logic; DIA14: in Std_logic; 
            DIA15: in Std_logic; DIA16: in Std_logic; DIA17: in Std_logic; 
            ADA0: in Std_logic; ADA1: in Std_logic; ADA2: in Std_logic; 
            ADA3: in Std_logic; ADA4: in Std_logic; ADA5: in Std_logic; 
            ADA6: in Std_logic; ADA7: in Std_logic; ADA8: in Std_logic; 
            ADA9: in Std_logic; ADA10: in Std_logic; ADA11: in Std_logic; 
            ADA12: in Std_logic; ADA13: in Std_logic; CEA: in Std_logic; 
            CLKA: in Std_logic; WEA: in Std_logic; CSA0: in Std_logic; 
            CSA1: in Std_logic; CSA2: in Std_logic; RSTA: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; CEB: in Std_logic; 
            CLKB: in Std_logic; WEB: in Std_logic; CSB0: in Std_logic; 
            CSB1: in Std_logic; CSB2: in Std_logic; RSTB: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    INST10: DP16KB
      generic map (CSDECODE_A => "000", CSDECODE_B => "111", DATA_WIDTH_A => 4, 
                   DATA_WIDTH_B => 4, GSR => "DISABLED", 
                   INITVAL_00 => "0x00000000000000000000000E001A9E1DC0A000000000000000000000000000000000000000400006"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x0603F07A531A02D00AD3068021A053040F90A84003A311AA400003D0A254000F31AA0D0600308800"
                   , 
                   INITVAL_05 => "0x01A0E1A0FB0E01B126061A0A60145400AD014C0A0805D01454008FA074F41F4B314803050061F43A"
                   , 
                   INITVAL_06 => "0x178DB120540880A1AE101C0F108840126DB1501117240126DB1301B128081A0D01DA0D1001B1207D"
                   , 
                   INITVAL_07 => "0x0EE700A80D1A690016FD17AD51C05D05A051D20D0840D1BEC01A6C4018D10A0CD1BADD01AB00A840"
                   , 
                   INITVAL_08 => "0x0803D05444004D50A6A20EA7B088021D612002DE1A0D40400D042DF05AB21A01B1240007E0F07E77"
                   , 
                   INITVAL_09 => "0x112F505408088061CC05036971B69B088051CA0F01EA10ACD50804D06A1708A44008D2148030BC2A"
                   , 
                   INITVAL_0A => "0x1660908A50146E017007088091BEAD094D90924408094002A200E0D13A69054801F00F0A00E104A4"
                   , 
                   INITVAL_0B => "0x1D8290E0F01C24D04A301DAC21BC04080DD1DCDD0A0DD1962A018E215EF21484019A2A0840B1B6DB"
                   , 
                   INITVAL_0C => "0x00AB00862602605054540A01D0E2B9100D01E012100700A653088000640508840006210A80F1BEED"
                   , 
                   INITVAL_0D => "0x16A400FA621A850046251FA0D1E26D160561A25D0000D04AB603A2513EF603E1B00A931262D15E5B"
                   , 
                   INITVAL_0E => "0x000000000817E0401EAA0B43502C0A1AC6000A50126901EC2A13A45010D705A540A07310CD81B205"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x1A67005A971FA230122A004D90FEEC0401D130050FEEC1A4001B2800AEFD0A00D1223A0400D1440A"
                   , 
                   INITVAL_11 => "0x00A101C20F020FF0F2601EE06064520A0EA054391A60E0A0F51A00F0247D0C62605EE7124A60EE03"
                   , 
                   INITVAL_12 => "0x00A9A0880A1AE0F07044012D701E351B6030A6A1172911B02D088081C4A401E120A452148D50804D"
                   , 
                   INITVAL_13 => "0x1FCDF1FCFD03EF11FEC7040EF1E0EE126BA1EE39010520AAB60C0C0078ED0205712EF11BA94080BD"
                   , 
                   INITVAL_14 => "0x0CC020669D026221A609060550A0201D46D0801D0C0D605EE601A2716E4001AD21A8401A6BB1BE51"
                   , 
                   INITVAL_15 => "0x1223A1047600CD505A5400CE20082A08AD40AA05064A40A85007A050E82504A751A0520AC51172F7"
                   , 
                   INITVAL_16 => "0x000C31A495080B305258130DA0665D06E620CE600FA46142050AA540107A0C6D9066A71A8500E6A7"
                   , 
                   INITVAL_17 => "0x080FD1DC440888E1C4A00A60E1C4A4080D81BC0901ADC0D6D214A55018DB0FAC505ACA1285017AA4"
                   , 
                   INITVAL_18 => "0x0A4AB1A44A0402304C60012331460D0A85003EA2088011A4AB164D2000DE1DAD40888F1A0FE1AA45"
                   , 
                   INITVAL_19 => "0x0FA7312073048500DA6B1DAD80DA2A054550088D00C330BAE20A65D10C5100844080381B4B215E52"
                   , 
                   INITVAL_1A => "0x07A4015CBA1D6BF1F6DB0369B0E4D40809E0409801AAA1BA0D01A2A0AA081B00F020DA11A7100A60"
                   , 
                   INITVAL_1B => "0x154AA154AA08A0E1BCFF16EDF02E2D14840186C301A6C01EBD034D705A051449A1C80B1AE9D0203A"
                   , 
                   INITVAL_1C => "0x1E4020B8D200A2A0542A08E2804A2A0801304A0E09A101F4110AC44080FD14E4D000F31A4941B4AA"
                   , 
                   INITVAL_1D => "0x000000000000000000830542A0E4AF1EE1012A440083414A750160F13EDD1BADD1945D1484005A2A"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x0126A0A8580B06505A371A6FD07A200A27D0167B00041082F50C84108A1100A101FA000CA4408805"
                   , 
                   INITVAL_21 => "0x088871F4550805D152FD184DD1B82D0E650014040800D1600509CBF00ABF01A68074A300A441A20D"
                   , 
                   INITVAL_22 => "0x17AE01B044114DE01A84114DE012740909D1C097088891BC090EA4811A8E1BA4811CAB0F04410ED3"
                   , 
                   INITVAL_23 => "0x01A281FA1F0640D050ED03E320FA25090D31764411A3B0888D1B0DB16848186B817A4819A8A0A848"
                   , 
                   INITVAL_24 => "0x104D2106EB0542D0A8021BCE91A0540A8011BC0D028440800D1C40D00845000D60724401E3D03E32"
                   , 
                   INITVAL_25 => "0x16A500F0B500E3916806116300CC061C0630A8500BC5500ADE050550884009C821B04D0542A106D9"
                   , 
                   INITVAL_26 => "0x1A294016DB12A0B060E01467201423080A01C4091FC2013A050884012640106081C840104550A073"
                   , 
                   INITVAL_27 => "0x00000000000000000000000350880E0680E0680D06A501A6501A034080CD0480C1D020180B90A80B"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , REGMODE_A => "NOREG", REGMODE_B => "NOREG", 
                   RESETMODE => "SYNC", WRITEMODE_A => "NORMAL", 
                   WRITEMODE_B => "NORMAL")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, CSA1=>CSA1, 
                CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, DIB2=>DIB2, 
                DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, DIB7=>DIB7, 
                DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, CLKB=>CLKB, WEB=>WEB, 
                CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, DOA0=>DOA0, 
                DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, DOA5=>DOA5, 
                DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, DOA10=>DOA10, 
                DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, DOA14=>DOA14, 
                DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, DOB0=>DOB0, 
                DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, DOB5=>DOB5, 
                DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, DOB10=>DOB10, 
                DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, DOB14=>DOB14, 
                DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
  end Structure;

-- entity ram_memory_0_ram_memory_0_1_2
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ram_memory_0_ram_memory_0_1_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ram_memory_0_ram_memory_0_1_2";

      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_MORCLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns);

    port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
          DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
          ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
          ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
          ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
          ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
          CLKA: in Std_logic; MORCLKA: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ram_memory_0_ram_memory_0_1_2 : ENTITY IS TRUE;

  end ram_memory_0_ram_memory_0_1_2;

  architecture Structure of ram_memory_0_ram_memory_0_1_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA13_ipd 	: std_logic := 'X';
    signal ADA13_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal ADA3_ipd 	: std_logic := 'X';
    signal ADA3_dly 	: std_logic := 'X';
    signal ADA2_ipd 	: std_logic := 'X';
    signal ADA2_dly 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal MORCLKA_ipd 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal MORCLKA_NOTIN: Std_logic;
    signal GNDI: Std_logic;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component DP16KB0003
      port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
            CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
            RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
            WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
            CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
            DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
            DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
            DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
            DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
            DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
            DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
            ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
            ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
            ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
            ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
            ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
            DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
            DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
            DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
            DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
            DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
            DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
            ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    ram_memory_0_ram_memory_0_1_2_DP16KB: DP16KB0003
      port map (CEA=>VCCI, CLKA=>MORCLKA_NOTIN, WEA=>WEA_dly, CSA0=>GNDI, 
                CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, CLKB=>GNDI, 
                WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, CSB2=>GNDI, RSTB=>GNDI, 
                DIA0=>DIA0_dly, DIA1=>DIA1_dly, DIA2=>DIA2_dly, DIA3=>DIA3_dly, 
                DIA4=>GNDI, DIA5=>GNDI, DIA6=>GNDI, DIA7=>GNDI, DIA8=>GNDI, 
                DIA9=>GNDI, DIA10=>GNDI, DIA11=>GNDI, DIA12=>GNDI, DIA13=>GNDI, 
                DIA14=>GNDI, DIA15=>GNDI, DIA16=>GNDI, DIA17=>GNDI, ADA0=>GNDI, 
                ADA1=>GNDI, ADA2=>ADA2_dly, ADA3=>ADA3_dly, ADA4=>ADA4_dly, 
                ADA5=>ADA5_dly, ADA6=>ADA6_dly, ADA7=>ADA7_dly, ADA8=>ADA8_dly, 
                ADA9=>ADA9_dly, ADA10=>ADA10_dly, ADA11=>ADA11_dly, 
                ADA12=>ADA12_dly, ADA13=>ADA13_dly, DIB0=>GNDI, DIB1=>GNDI, 
                DIB2=>GNDI, DIB3=>GNDI, DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, 
                DIB7=>GNDI, DIB8=>GNDI, DIB9=>GNDI, DIB10=>GNDI, DIB11=>GNDI, 
                DIB12=>GNDI, DIB13=>GNDI, DIB14=>GNDI, DIB15=>GNDI, 
                DIB16=>GNDI, DIB17=>GNDI, ADB0=>GNDI, ADB1=>GNDI, ADB2=>GNDI, 
                ADB3=>GNDI, ADB4=>GNDI, ADB5=>GNDI, ADB6=>GNDI, ADB7=>GNDI, 
                ADB8=>GNDI, ADB9=>GNDI, ADB10=>GNDI, ADB11=>GNDI, ADB12=>GNDI, 
                ADB13=>GNDI, DOA0=>DOA0_out, DOA1=>DOA1_out, DOA2=>DOA2_out, 
                DOA3=>DOA3_out, DOA4=>open, DOA5=>open, DOA6=>open, DOA7=>open, 
                DOA8=>open, DOA9=>open, DOA10=>open, DOA11=>open, DOA12=>open, 
                DOA13=>open, DOA14=>open, DOA15=>open, DOA16=>open, 
                DOA17=>open, DOB0=>open, DOB1=>open, DOB2=>open, DOB3=>open, 
                DOB4=>open, DOB5=>open, DOB6=>open, DOB7=>open, DOB8=>open, 
                DOB9=>open, DOB10=>open, DOB11=>open, DOB12=>open, DOB13=>open, 
                DOB14=>open, DOB15=>open, DOB16=>open, DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    MORCLKA_INVERTERIN: inverter
      port map (I=>CLKA_dly, Z=>MORCLKA_NOTIN);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA13_ipd, ADA13, tipd_ADA13);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(ADA3_ipd, ADA3, tipd_ADA3);
      VitalWireDelay(ADA2_ipd, ADA2, tipd_ADA2);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(MORCLKA_ipd, MORCLKA, tipd_MORCLKA);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA13_dly, ADA13_ipd, tisd_ADA13_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(ADA3_dly, ADA3_ipd, tisd_ADA3_CLKA);
      VitalSignalDelay(ADA2_dly, ADA2_ipd, tisd_ADA2_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
    END BLOCK;

    VitalBehavior : PROCESS (DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, ADA13_dly, 
      ADA12_dly, ADA11_dly, ADA10_dly, ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, 
      ADA5_dly, ADA4_dly, ADA3_dly, ADA2_dly, DOA3_out, DOA2_out, DOA1_out, 
      DOA0_out, WEA_dly, CLKA_dly, MORCLKA_ipd)
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA13_CLKA       	: x01 := '0';
    VARIABLE ADA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA3_CLKA       	: x01 := '0';
    VARIABLE ADA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA2_CLKA       	: x01 := '0';
    VARIABLE ADA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_negedge,
        HoldHigh => thold_DIA3_CLKA_noedge_negedge,
        HoldLow => thold_DIA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_negedge,
        HoldHigh => thold_DIA2_CLKA_noedge_negedge,
        HoldLow => thold_DIA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_negedge,
        HoldHigh => thold_DIA1_CLKA_noedge_negedge,
        HoldLow => thold_DIA1_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_negedge,
        HoldHigh => thold_DIA0_CLKA_noedge_negedge,
        HoldLow => thold_DIA0_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA13_dly,
        TestSignalName => "ADA13",
        TestDelay => tisd_ADA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA13_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA13_CLKA_noedge_negedge,
        HoldHigh => thold_ADA13_CLKA_noedge_negedge,
        HoldLow => thold_ADA13_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA13_CLKA_TimingDatash,
        Violation => tviol_ADA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_negedge,
        HoldHigh => thold_ADA12_CLKA_noedge_negedge,
        HoldLow => thold_ADA12_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_negedge,
        HoldHigh => thold_ADA11_CLKA_noedge_negedge,
        HoldLow => thold_ADA11_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_negedge,
        HoldHigh => thold_ADA10_CLKA_noedge_negedge,
        HoldLow => thold_ADA10_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_negedge,
        HoldHigh => thold_ADA9_CLKA_noedge_negedge,
        HoldLow => thold_ADA9_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_negedge,
        HoldHigh => thold_ADA8_CLKA_noedge_negedge,
        HoldLow => thold_ADA8_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_negedge,
        HoldHigh => thold_ADA7_CLKA_noedge_negedge,
        HoldLow => thold_ADA7_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_negedge,
        HoldHigh => thold_ADA6_CLKA_noedge_negedge,
        HoldLow => thold_ADA6_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_negedge,
        HoldHigh => thold_ADA5_CLKA_noedge_negedge,
        HoldLow => thold_ADA5_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_negedge,
        HoldHigh => thold_ADA4_CLKA_noedge_negedge,
        HoldLow => thold_ADA4_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA3_dly,
        TestSignalName => "ADA3",
        TestDelay => tisd_ADA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA3_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA3_CLKA_noedge_negedge,
        HoldHigh => thold_ADA3_CLKA_noedge_negedge,
        HoldLow => thold_ADA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA3_CLKA_TimingDatash,
        Violation => tviol_ADA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA2_dly,
        TestSignalName => "ADA2",
        TestDelay => tisd_ADA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA2_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA2_CLKA_noedge_negedge,
        HoldHigh => thold_ADA2_CLKA_noedge_negedge,
        HoldLow => thold_ADA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA2_CLKA_TimingDatash,
        Violation => tviol_ADA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_negedge,
        SetupLow => tsetup_WEA_CLKA_noedge_negedge,
        HoldHigh => thold_WEA_CLKA_noedge_negedge,
        HoldLow => thold_WEA_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;

    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DP16KB0004
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity DP16KB0004 is
    port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
          CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
          RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
          WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
          CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
          DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
          DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
          DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
          DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
          DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
          DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
          ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
          ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
          ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
          ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
          ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
          DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
          DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
          DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
          DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
          DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
          DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
          ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
          DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
          DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
          DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
          DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
          DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
          DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
          DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
          DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
          DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
          DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
          DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
          DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KB0004 : ENTITY IS TRUE;

  end DP16KB0004;

  architecture Structure of DP16KB0004 is
    component DP16KB
      generic (CSDECODE_A: Std_logic_vector(2 downto 0); 
               CSDECODE_B: Std_logic_vector(2 downto 0); DATA_WIDTH_A: INTEGER; 
               DATA_WIDTH_B: INTEGER; GSR: String; INITVAL_00: String; 
               INITVAL_01: String; INITVAL_02: String; INITVAL_03: String; 
               INITVAL_04: String; INITVAL_05: String; INITVAL_06: String; 
               INITVAL_07: String; INITVAL_08: String; INITVAL_09: String; 
               INITVAL_0A: String; INITVAL_0B: String; INITVAL_0C: String; 
               INITVAL_0D: String; INITVAL_0E: String; INITVAL_0F: String; 
               INITVAL_10: String; INITVAL_11: String; INITVAL_12: String; 
               INITVAL_13: String; INITVAL_14: String; INITVAL_15: String; 
               INITVAL_16: String; INITVAL_17: String; INITVAL_18: String; 
               INITVAL_19: String; INITVAL_1A: String; INITVAL_1B: String; 
               INITVAL_1C: String; INITVAL_1D: String; INITVAL_1E: String; 
               INITVAL_1F: String; INITVAL_20: String; INITVAL_21: String; 
               INITVAL_22: String; INITVAL_23: String; INITVAL_24: String; 
               INITVAL_25: String; INITVAL_26: String; INITVAL_27: String; 
               INITVAL_28: String; INITVAL_29: String; INITVAL_2A: String; 
               INITVAL_2B: String; INITVAL_2C: String; INITVAL_2D: String; 
               INITVAL_2E: String; INITVAL_2F: String; INITVAL_30: String; 
               INITVAL_31: String; INITVAL_32: String; INITVAL_33: String; 
               INITVAL_34: String; INITVAL_35: String; INITVAL_36: String; 
               INITVAL_37: String; INITVAL_38: String; INITVAL_39: String; 
               INITVAL_3A: String; INITVAL_3B: String; INITVAL_3C: String; 
               INITVAL_3D: String; INITVAL_3E: String; INITVAL_3F: String; 
               REGMODE_A: String; REGMODE_B: String; RESETMODE: String; 
               WRITEMODE_A: String; WRITEMODE_B: String);
      port (DIA0: in Std_logic; DIA1: in Std_logic; DIA2: in Std_logic; 
            DIA3: in Std_logic; DIA4: in Std_logic; DIA5: in Std_logic; 
            DIA6: in Std_logic; DIA7: in Std_logic; DIA8: in Std_logic; 
            DIA9: in Std_logic; DIA10: in Std_logic; DIA11: in Std_logic; 
            DIA12: in Std_logic; DIA13: in Std_logic; DIA14: in Std_logic; 
            DIA15: in Std_logic; DIA16: in Std_logic; DIA17: in Std_logic; 
            ADA0: in Std_logic; ADA1: in Std_logic; ADA2: in Std_logic; 
            ADA3: in Std_logic; ADA4: in Std_logic; ADA5: in Std_logic; 
            ADA6: in Std_logic; ADA7: in Std_logic; ADA8: in Std_logic; 
            ADA9: in Std_logic; ADA10: in Std_logic; ADA11: in Std_logic; 
            ADA12: in Std_logic; ADA13: in Std_logic; CEA: in Std_logic; 
            CLKA: in Std_logic; WEA: in Std_logic; CSA0: in Std_logic; 
            CSA1: in Std_logic; CSA2: in Std_logic; RSTA: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; CEB: in Std_logic; 
            CLKB: in Std_logic; WEB: in Std_logic; CSB0: in Std_logic; 
            CSB1: in Std_logic; CSB2: in Std_logic; RSTB: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    INST10: DP16KB
      generic map (CSDECODE_A => "000", CSDECODE_B => "111", DATA_WIDTH_A => 4, 
                   DATA_WIDTH_B => 4, GSR => "DISABLED", 
                   INITVAL_00 => "0x000000000000000000000009000C991D2A0000000000000000000000000000000000000000F00001"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x1C46F1DC4B1C2DE02EE21C4301C27E122A008EE711CEE1C0441E2EE08AED06CFE1C8CE1841E03E50"
                   , 
                   INITVAL_05 => "0x11C1A1D0E819048198271C2FA0364D09CE31602B0A67E0569B092F111CFA1FAA81242E03C0A1F489"
                   , 
                   INITVAL_06 => "0x0B0E8122741BA681C6E1142C71D09619CE80C69C1189303CE8146E8182321D0E115C8E170481821E"
                   , 
                   INITVAL_07 => "0x0663007A3D1DCD11507E13CEC1D0EE09C1713C8E1FE581D03107C3F060E9182A60CC6601C810E8D4"
                   , 
                   INITVAL_08 => "0x0267E0F655092EF1CAC01FCFA02653030DF054E01D6EF1EA9E090EB1FC8F1D048194251D6191D233"
                   , 
                   INITVAL_09 => "0x1BC9C17E1A1625503A171B0C21D0E8192460361E030FA1A4E61AABE1C8BE0AA5510AE41723E0027B"
                   , 
                   INITVAL_0A => "0x13C0D064871A0170E69E1325E1D07E172E917CB11CE7103CAF04A1E0BCE4176011DA0E1A20A176B0"
                   , 
                   INITVAL_0B => "0x00EFE0860102E0E01AE20DCFD1DC8E128EE008E80647E1F85B038101FEA0168F40BC0F006281C0E8"
                   , 
                   INITVAL_0C => "0x02E8706E4A1780B0B6220AE5E07C00074E114E7A072E10E00F1326C1CAAD032570BC501AA3A1C49E"
                   , 
                   INITVAL_0D => "0x1048509CA01C6051DC5D1FC0E1FEEE102771D43E0346E0BA8A13C5D1BECF17CA802E081AEDE17E78"
                   , 
                   INITVAL_0E => "0x00000000011181A03CAB1840E15E301D4AD15C2207C811D4CB1BC59094EF01C3300CCE0B4E71C60E"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x1C0E11FC6719C8715C5B02CE60E4071C49E0DC17004071DC3E1CCE10E0CE0446E0DCCB0461E16439"
                   , 
                   INITVAL_11 => "0x02E0102E180E2CA0FC211C88E0E0EB1A2AB176CD1DC0A022EF1D01E0E0DE00E0A17EAD156F50407C"
                   , 
                   INITVAL_12 => "0x02E9B0A25F1D01E14A4F08AE803CA91D0100E0FA118EF1CA0E0BE52024B5030721A6D216EE302A1E"
                   , 
                   INITVAL_13 => "0x184EF1F4FE13EC91925E162A21E2AD09E8B074ED034DB1BA84128201D012162700F0DA05C9502A9E"
                   , 
                   INITVAL_14 => "0x0A66A1DEDE050401CE8E13A400882103EAE0260E150EA01EAA11C041108211C961CA150DC8C1DE79"
                   , 
                   INITVAL_15 => "0x0DCCB024220DEE015C220A2120143F020E704A581C2F108A861BC17004D20823F1C27000034118B4"
                   , 
                   INITVAL_16 => "0x050271D29D1E60E132D106EEE040EE1D2E0180FC17C0A136B4044491482215EE6100971DE250FCB2"
                   , 
                   INITVAL_17 => "0x1EE5E1C0591A69D02EF10F41602EBF18AF71C8B8026B7082E401A45088E80FC7013CEB118640DC2B"
                   , 
                   INITVAL_18 => "0x1AEFC1D08B1864E00A5610C80128BE0B2571BE19186631CEFC044EC072EE1DCE10B27E1C2CE1DAC0"
                   , 
                   INITVAL_19 => "0x15C581024E13ED119C611DCE107C6F116260B47E1A2201DCE115C8E014BB16A9D070671DE8617E78"
                   , 
                   INITVAL_1A => "0x01C930C28B0308F1CCEC1D0C914CED1CA110B4D211C211D28E0FC5B00A401D01E172EB1DC7B0DCD3"
                   , 
                   INITVAL_1B => "0x1BADD1BADD006241D4FE1CEE317C6E048F513CD71BC0F03CEA172A710C05160E200A3C1CE6E1F4C2"
                   , 
                   INITVAL_1C => "0x106A21AEE201A3F0364F0182A07A4B1642E03A1A01C611DEEA080040A85E05C0E0E2ED1C2E01DADD"
                   , 
                   INITVAL_1D => "0x0000000000000000007E11E6F14EFF142BB1087F0C8EA0587B0FC1A0C488110880F6CE048540DC4F"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x15C1A19AC01A08D03C441C4FE1FCC01C20E06A480D0A51F8051FEA107C1107C181DC800BC5F0F28F"
                   , 
                   INITVAL_21 => "0x12A561E2430CCE604C281FCE810EDE0CC06104641E81E1200E0748B01C8B01CDA012D0060A01C21E"
                   , 
                   INITVAL_22 => "0x0FCE01C0180BEEE01C0604CEE01CA90EADE1C0EA13C541DC0E1485419C0E1DCF3062B8140E809AEA"
                   , 
                   INITVAL_23 => "0x11C2205C5E1423E0446E0BCA117C2204CFE102C80B2E11D0401CCE814AC411C8015C6301C6908A56"
                   , 
                   INITVAL_24 => "0x0B2E80421C1161E07E451DCEE1D44107E8A1DC0E06A29030FE1C25E14A120CEE61105F098EE0BCA1"
                   , 
                   INITVAL_25 => "0x100740E2C2042E91002C030E2122160220E0868716248080EF100D412AD9142591C23E05E3B036E6"
                   , 
                   INITVAL_26 => "0x1D2DF06AE0004201C2A117C7104C0E184110362C1E2D209C170A25601CF31BC1803E45042D20C8CE"
                   , 
                   INITVAL_27 => "0x00000000000000000000000E40BC651DE311DC3C1C02411C53042CE1EADE1602803A120228C0084B"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , REGMODE_A => "NOREG", REGMODE_B => "NOREG", 
                   RESETMODE => "SYNC", WRITEMODE_A => "NORMAL", 
                   WRITEMODE_B => "NORMAL")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, CSA1=>CSA1, 
                CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, DIB2=>DIB2, 
                DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, DIB7=>DIB7, 
                DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, CLKB=>CLKB, WEB=>WEB, 
                CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, DOA0=>DOA0, 
                DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, DOA5=>DOA5, 
                DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, DOA10=>DOA10, 
                DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, DOA14=>DOA14, 
                DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, DOB0=>DOB0, 
                DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, DOB5=>DOB5, 
                DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, DOB10=>DOB10, 
                DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, DOB14=>DOB14, 
                DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
  end Structure;

-- entity ram_memory_0_ram_memory_0_0_3
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ram_memory_0_ram_memory_0_0_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ram_memory_0_ram_memory_0_0_3";

      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_MORCLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns);

    port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
          DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
          ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
          ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
          ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
          ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
          CLKA: in Std_logic; MORCLKA: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ram_memory_0_ram_memory_0_0_3 : ENTITY IS TRUE;

  end ram_memory_0_ram_memory_0_0_3;

  architecture Structure of ram_memory_0_ram_memory_0_0_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA13_ipd 	: std_logic := 'X';
    signal ADA13_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal ADA3_ipd 	: std_logic := 'X';
    signal ADA3_dly 	: std_logic := 'X';
    signal ADA2_ipd 	: std_logic := 'X';
    signal ADA2_dly 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal MORCLKA_ipd 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal MORCLKA_NOTIN: Std_logic;
    signal GNDI: Std_logic;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component DP16KB0004
      port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
            CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
            RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
            WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
            CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
            DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
            DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
            DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
            DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
            DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
            DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
            ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
            ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
            ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
            ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
            ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
            DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
            DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
            DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
            DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
            DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
            DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
            ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    ram_memory_0_ram_memory_0_0_3_DP16KB: DP16KB0004
      port map (CEA=>VCCI, CLKA=>MORCLKA_NOTIN, WEA=>WEA_dly, CSA0=>GNDI, 
                CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, CLKB=>GNDI, 
                WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, CSB2=>GNDI, RSTB=>GNDI, 
                DIA0=>DIA0_dly, DIA1=>DIA1_dly, DIA2=>DIA2_dly, DIA3=>DIA3_dly, 
                DIA4=>GNDI, DIA5=>GNDI, DIA6=>GNDI, DIA7=>GNDI, DIA8=>GNDI, 
                DIA9=>GNDI, DIA10=>GNDI, DIA11=>GNDI, DIA12=>GNDI, DIA13=>GNDI, 
                DIA14=>GNDI, DIA15=>GNDI, DIA16=>GNDI, DIA17=>GNDI, ADA0=>GNDI, 
                ADA1=>GNDI, ADA2=>ADA2_dly, ADA3=>ADA3_dly, ADA4=>ADA4_dly, 
                ADA5=>ADA5_dly, ADA6=>ADA6_dly, ADA7=>ADA7_dly, ADA8=>ADA8_dly, 
                ADA9=>ADA9_dly, ADA10=>ADA10_dly, ADA11=>ADA11_dly, 
                ADA12=>ADA12_dly, ADA13=>ADA13_dly, DIB0=>GNDI, DIB1=>GNDI, 
                DIB2=>GNDI, DIB3=>GNDI, DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, 
                DIB7=>GNDI, DIB8=>GNDI, DIB9=>GNDI, DIB10=>GNDI, DIB11=>GNDI, 
                DIB12=>GNDI, DIB13=>GNDI, DIB14=>GNDI, DIB15=>GNDI, 
                DIB16=>GNDI, DIB17=>GNDI, ADB0=>GNDI, ADB1=>GNDI, ADB2=>GNDI, 
                ADB3=>GNDI, ADB4=>GNDI, ADB5=>GNDI, ADB6=>GNDI, ADB7=>GNDI, 
                ADB8=>GNDI, ADB9=>GNDI, ADB10=>GNDI, ADB11=>GNDI, ADB12=>GNDI, 
                ADB13=>GNDI, DOA0=>DOA0_out, DOA1=>DOA1_out, DOA2=>DOA2_out, 
                DOA3=>DOA3_out, DOA4=>open, DOA5=>open, DOA6=>open, DOA7=>open, 
                DOA8=>open, DOA9=>open, DOA10=>open, DOA11=>open, DOA12=>open, 
                DOA13=>open, DOA14=>open, DOA15=>open, DOA16=>open, 
                DOA17=>open, DOB0=>open, DOB1=>open, DOB2=>open, DOB3=>open, 
                DOB4=>open, DOB5=>open, DOB6=>open, DOB7=>open, DOB8=>open, 
                DOB9=>open, DOB10=>open, DOB11=>open, DOB12=>open, DOB13=>open, 
                DOB14=>open, DOB15=>open, DOB16=>open, DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    MORCLKA_INVERTERIN: inverter
      port map (I=>CLKA_dly, Z=>MORCLKA_NOTIN);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA13_ipd, ADA13, tipd_ADA13);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(ADA3_ipd, ADA3, tipd_ADA3);
      VitalWireDelay(ADA2_ipd, ADA2, tipd_ADA2);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(MORCLKA_ipd, MORCLKA, tipd_MORCLKA);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA13_dly, ADA13_ipd, tisd_ADA13_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(ADA3_dly, ADA3_ipd, tisd_ADA3_CLKA);
      VitalSignalDelay(ADA2_dly, ADA2_ipd, tisd_ADA2_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
    END BLOCK;

    VitalBehavior : PROCESS (DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, ADA13_dly, 
      ADA12_dly, ADA11_dly, ADA10_dly, ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, 
      ADA5_dly, ADA4_dly, ADA3_dly, ADA2_dly, DOA3_out, DOA2_out, DOA1_out, 
      DOA0_out, WEA_dly, CLKA_dly, MORCLKA_ipd)
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA13_CLKA       	: x01 := '0';
    VARIABLE ADA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA3_CLKA       	: x01 := '0';
    VARIABLE ADA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA2_CLKA       	: x01 := '0';
    VARIABLE ADA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_negedge,
        HoldHigh => thold_DIA3_CLKA_noedge_negedge,
        HoldLow => thold_DIA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_negedge,
        HoldHigh => thold_DIA2_CLKA_noedge_negedge,
        HoldLow => thold_DIA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_negedge,
        HoldHigh => thold_DIA1_CLKA_noedge_negedge,
        HoldLow => thold_DIA1_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_negedge,
        HoldHigh => thold_DIA0_CLKA_noedge_negedge,
        HoldLow => thold_DIA0_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA13_dly,
        TestSignalName => "ADA13",
        TestDelay => tisd_ADA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA13_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA13_CLKA_noedge_negedge,
        HoldHigh => thold_ADA13_CLKA_noedge_negedge,
        HoldLow => thold_ADA13_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA13_CLKA_TimingDatash,
        Violation => tviol_ADA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_negedge,
        HoldHigh => thold_ADA12_CLKA_noedge_negedge,
        HoldLow => thold_ADA12_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_negedge,
        HoldHigh => thold_ADA11_CLKA_noedge_negedge,
        HoldLow => thold_ADA11_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_negedge,
        HoldHigh => thold_ADA10_CLKA_noedge_negedge,
        HoldLow => thold_ADA10_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_negedge,
        HoldHigh => thold_ADA9_CLKA_noedge_negedge,
        HoldLow => thold_ADA9_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_negedge,
        HoldHigh => thold_ADA8_CLKA_noedge_negedge,
        HoldLow => thold_ADA8_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_negedge,
        HoldHigh => thold_ADA7_CLKA_noedge_negedge,
        HoldLow => thold_ADA7_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_negedge,
        HoldHigh => thold_ADA6_CLKA_noedge_negedge,
        HoldLow => thold_ADA6_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_negedge,
        HoldHigh => thold_ADA5_CLKA_noedge_negedge,
        HoldLow => thold_ADA5_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_negedge,
        HoldHigh => thold_ADA4_CLKA_noedge_negedge,
        HoldLow => thold_ADA4_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA3_dly,
        TestSignalName => "ADA3",
        TestDelay => tisd_ADA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA3_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA3_CLKA_noedge_negedge,
        HoldHigh => thold_ADA3_CLKA_noedge_negedge,
        HoldLow => thold_ADA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA3_CLKA_TimingDatash,
        Violation => tviol_ADA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA2_dly,
        TestSignalName => "ADA2",
        TestDelay => tisd_ADA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA2_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA2_CLKA_noedge_negedge,
        HoldHigh => thold_ADA2_CLKA_noedge_negedge,
        HoldLow => thold_ADA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA2_CLKA_TimingDatash,
        Violation => tviol_ADA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_negedge,
        SetupLow => tsetup_WEA_CLKA_noedge_negedge,
        HoldHigh => thold_WEA_CLKA_noedge_negedge,
        HoldLow => thold_WEA_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;

    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity DP16KB0005
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity DP16KB0005 is
    port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
          CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
          RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
          WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
          CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
          DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
          DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
          DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
          DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
          DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
          DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
          ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
          ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
          ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
          ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
          ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
          DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
          DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
          DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
          DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
          DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
          DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
          ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
          ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
          ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
          ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
          DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
          DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
          DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
          DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
          DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
          DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
          DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
          DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
          DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
          DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
          DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
          DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);

    ATTRIBUTE Vital_Level0 OF DP16KB0005 : ENTITY IS TRUE;

  end DP16KB0005;

  architecture Structure of DP16KB0005 is
    component DP16KB
      generic (CSDECODE_A: Std_logic_vector(2 downto 0); 
               CSDECODE_B: Std_logic_vector(2 downto 0); DATA_WIDTH_A: INTEGER; 
               DATA_WIDTH_B: INTEGER; GSR: String; INITVAL_00: String; 
               INITVAL_01: String; INITVAL_02: String; INITVAL_03: String; 
               INITVAL_04: String; INITVAL_05: String; INITVAL_06: String; 
               INITVAL_07: String; INITVAL_08: String; INITVAL_09: String; 
               INITVAL_0A: String; INITVAL_0B: String; INITVAL_0C: String; 
               INITVAL_0D: String; INITVAL_0E: String; INITVAL_0F: String; 
               INITVAL_10: String; INITVAL_11: String; INITVAL_12: String; 
               INITVAL_13: String; INITVAL_14: String; INITVAL_15: String; 
               INITVAL_16: String; INITVAL_17: String; INITVAL_18: String; 
               INITVAL_19: String; INITVAL_1A: String; INITVAL_1B: String; 
               INITVAL_1C: String; INITVAL_1D: String; INITVAL_1E: String; 
               INITVAL_1F: String; INITVAL_20: String; INITVAL_21: String; 
               INITVAL_22: String; INITVAL_23: String; INITVAL_24: String; 
               INITVAL_25: String; INITVAL_26: String; INITVAL_27: String; 
               INITVAL_28: String; INITVAL_29: String; INITVAL_2A: String; 
               INITVAL_2B: String; INITVAL_2C: String; INITVAL_2D: String; 
               INITVAL_2E: String; INITVAL_2F: String; INITVAL_30: String; 
               INITVAL_31: String; INITVAL_32: String; INITVAL_33: String; 
               INITVAL_34: String; INITVAL_35: String; INITVAL_36: String; 
               INITVAL_37: String; INITVAL_38: String; INITVAL_39: String; 
               INITVAL_3A: String; INITVAL_3B: String; INITVAL_3C: String; 
               INITVAL_3D: String; INITVAL_3E: String; INITVAL_3F: String; 
               REGMODE_A: String; REGMODE_B: String; RESETMODE: String; 
               WRITEMODE_A: String; WRITEMODE_B: String);
      port (DIA0: in Std_logic; DIA1: in Std_logic; DIA2: in Std_logic; 
            DIA3: in Std_logic; DIA4: in Std_logic; DIA5: in Std_logic; 
            DIA6: in Std_logic; DIA7: in Std_logic; DIA8: in Std_logic; 
            DIA9: in Std_logic; DIA10: in Std_logic; DIA11: in Std_logic; 
            DIA12: in Std_logic; DIA13: in Std_logic; DIA14: in Std_logic; 
            DIA15: in Std_logic; DIA16: in Std_logic; DIA17: in Std_logic; 
            ADA0: in Std_logic; ADA1: in Std_logic; ADA2: in Std_logic; 
            ADA3: in Std_logic; ADA4: in Std_logic; ADA5: in Std_logic; 
            ADA6: in Std_logic; ADA7: in Std_logic; ADA8: in Std_logic; 
            ADA9: in Std_logic; ADA10: in Std_logic; ADA11: in Std_logic; 
            ADA12: in Std_logic; ADA13: in Std_logic; CEA: in Std_logic; 
            CLKA: in Std_logic; WEA: in Std_logic; CSA0: in Std_logic; 
            CSA1: in Std_logic; CSA2: in Std_logic; RSTA: in Std_logic; 
            DIB0: in Std_logic; DIB1: in Std_logic; DIB2: in Std_logic; 
            DIB3: in Std_logic; DIB4: in Std_logic; DIB5: in Std_logic; 
            DIB6: in Std_logic; DIB7: in Std_logic; DIB8: in Std_logic; 
            DIB9: in Std_logic; DIB10: in Std_logic; DIB11: in Std_logic; 
            DIB12: in Std_logic; DIB13: in Std_logic; DIB14: in Std_logic; 
            DIB15: in Std_logic; DIB16: in Std_logic; DIB17: in Std_logic; 
            ADB0: in Std_logic; ADB1: in Std_logic; ADB2: in Std_logic; 
            ADB3: in Std_logic; ADB4: in Std_logic; ADB5: in Std_logic; 
            ADB6: in Std_logic; ADB7: in Std_logic; ADB8: in Std_logic; 
            ADB9: in Std_logic; ADB10: in Std_logic; ADB11: in Std_logic; 
            ADB12: in Std_logic; ADB13: in Std_logic; CEB: in Std_logic; 
            CLKB: in Std_logic; WEB: in Std_logic; CSB0: in Std_logic; 
            CSB1: in Std_logic; CSB2: in Std_logic; RSTB: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    INST10: DP16KB
      generic map (CSDECODE_A => "000", CSDECODE_B => "111", DATA_WIDTH_A => 4, 
                   DATA_WIDTH_B => 4, GSR => "DISABLED", 
                   INITVAL_00 => "0x000000000000000000000009000A5913200000000000000000000000000000000000000000400008"
                   , 
                   INITVAL_01 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_02 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_03 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_04 => "0x0041F10EB907A170027D146110E0101A0A30A25402E891605F0208717AFB0A2F80F6D70001004C40"
                   , 
                   INITVAL_05 => "0x03E020E2731227B160510FEB91F6090A27F172FB136171F6051E20A06A0B01433060E11ECF500633"
                   , 
                   INITVAL_06 => "0x022330E0101FE510E2F0040AE012470387312277176ED038731227B170D10E2F004E1F1227B17817"
                   , 
                   INITVAL_07 => "0x1DCE00B4510E6F00C693026F312233026011361B09AD10E61F038141A27F040AA154AA01630020FF"
                   , 
                   INITVAL_08 => "0x0802701602104701B4100120A050E20E62014471064341B4270343102E310627B160D2182A1006EE"
                   , 
                   INITVAL_09 => "0x046970160B086021EC0D0F6B20E673018621EC0A0143F064351E627014150083800470164420140B"
                   , 
                   INITVAL_0A => "0x0260B08245040A01420B08E420FE6F024320364300A22000A01E4FF05E5A01660124091E009140B1"
                   , 
                   INITVAL_0B => "0x0441B0462015C2F01A0304E20174100E627054B2006270440B0645017EA0160C804E0B040C20E473"
                   , 
                   INITVAL_0C => "0x00A33162050EA01016F51BC3703623020B0140AB020B01A01008E431800919A3407800130820E423"
                   , 
                   INITVAL_0D => "0x0661306E1016A13078010760B1E6370601B07E7F01E2F00A3B07E0D17EAB0247301AB30620B1FE53"
                   , 
                   INITVAL_0E => "0x000000000707C02000A306401068430E21001203078701422B0660008673016050263C0E2B306205"
                   , 
                   INITVAL_0F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_10 => "0x0E85F08E3304E480140B1C8730642200A470660D06422064540E6301A62301C4706E5319C4707843"
                   , 
                   INITVAL_11 => "0x01AF01440A1C0A30164015018020D01A02F0163F07003080A80620A1C0B31020501EA81E0B906284"
                   , 
                   INITVAL_12 => "0x01A2B1DAE40E40A048020E872014220E600120B7176101680B1D6441A0B4014E01A0D01643504047"
                   , 
                   INITVAL_13 => "0x060FF1F4870FEA706045000A01E0A817EAB10A3F01EF01AE301CC4010838020D517E2F0062F1A647"
                   , 
                   INITVAL_14 => "0x00615106F70A2501720A120900365015E1B00857020B101EA1016970660E0AE4017EDE0883417ED7"
                   , 
                   INITVAL_15 => "0x06E531204F02A720164F02A5001A0B0A0B212A15180B5006050AE0D1E2510B210160D012297176E0"
                   , 
                   INITVAL_16 => "0x1E8911E05917C5C00A9B0AA79060D7000CF0B2D30AE05122500A05E08A53020B3060B31E4250B835"
                   , 
                   INITVAL_17 => "0x1A6570AADC01EB50A0B0124C51A0B4182550F2540EA150AAF00120902A7507E120169B080150AE30"
                   , 
                   INITVAL_18 => "0x120B416CAB1C86C00C42086301745B0A2EF0DEA0182860E0B4080B208C750B6BC048C50E0A51E659"
                   , 
                   INITVAL_19 => "0x0CE660946C00C9D0CE650AEBB0CE0B016451EC570D4301AE56040A700AA10A0C01E8650EE3017ED0"
                   , 
                   INITVAL_1A => "0x0164E0CE320E62F154340F6BA0A0B503C6501E66016320620B0660B01A460EC0A080BB0463401AB4"
                   , 
                   INITVAL_1B => "0x0AA550AA55040E60E4FA0C6BA02A0B066270D8A1016160146A02C2309409160B30AA360E63700E52"
                   , 
                   INITVAL_1C => "0x0A0F002AF00120B0160B04A0F0020B01E7C01A0205E3015EB0122200246706A2F0E0A4160B20EA55"
                   , 
                   INITVAL_1D => "0x0000000000000000005C0160B0A0BF15615080520CEC70663B0140A064220442205633060E30EE0B"
                   , 
                   INITVAL_1E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_1F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_20 => "0x01602060D01A00901600170FB016801A20B014730001301401000D101A1101A111F610012031C247"
                   , 
                   INITVAL_21 => "0x1CE28074050DE8506622040B20441B0001508680186870220900E3102A310365601650000941E20B"
                   , 
                   INITVAL_22 => "0x10E50170450307511680130750148E022870B0A8188580EA4A1008E10E850762611A731100509072"
                   , 
                   INITVAL_23 => "0x0960E10E6504C4B008870CA260B6041E284070590F0C800A780F073100351083811E4110E8800202"
                   , 
                   INITVAL_24 => "0x080B01D2540166300A490EA581720E09C390EA0B120C104C970AC9B12045072760C804070070CA26"
                   , 
                   INITVAL_25 => "0x0601312E301D20B060290E60212A090A2900AA55126090B27E00095028D913E40170970160B19273"
                   , 
                   INITVAL_26 => "0x0E63405272060F91802D138501720800490140191F40112E010087E1204E138B91E022126300BE94"
                   , 
                   INITVAL_27 => "0x000000000000000000000000004C990048908819180F41300412E540A6970A02902E0212EBB00A29"
                   , 
                   INITVAL_28 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_29 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_2F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_30 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_31 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_32 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_33 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_34 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_35 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_36 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_37 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_38 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_39 => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3A => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3B => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3C => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3D => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3E => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , 
                   INITVAL_3F => "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000"
                   , REGMODE_A => "NOREG", REGMODE_B => "NOREG", 
                   RESETMODE => "SYNC", WRITEMODE_A => "NORMAL", 
                   WRITEMODE_B => "NORMAL")
      port map (DIA0=>DIA0, DIA1=>DIA1, DIA2=>DIA2, DIA3=>DIA3, DIA4=>DIA4, 
                DIA5=>DIA5, DIA6=>DIA6, DIA7=>DIA7, DIA8=>DIA8, DIA9=>DIA9, 
                DIA10=>DIA10, DIA11=>DIA11, DIA12=>DIA12, DIA13=>DIA13, 
                DIA14=>DIA14, DIA15=>DIA15, DIA16=>DIA16, DIA17=>DIA17, 
                ADA0=>ADA0, ADA1=>ADA1, ADA2=>ADA2, ADA3=>ADA3, ADA4=>ADA4, 
                ADA5=>ADA5, ADA6=>ADA6, ADA7=>ADA7, ADA8=>ADA8, ADA9=>ADA9, 
                ADA10=>ADA10, ADA11=>ADA11, ADA12=>ADA12, ADA13=>ADA13, 
                CEA=>CEA, CLKA=>CLKA, WEA=>WEA, CSA0=>CSA0, CSA1=>CSA1, 
                CSA2=>CSA2, RSTA=>RSTA, DIB0=>DIB0, DIB1=>DIB1, DIB2=>DIB2, 
                DIB3=>DIB3, DIB4=>DIB4, DIB5=>DIB5, DIB6=>DIB6, DIB7=>DIB7, 
                DIB8=>DIB8, DIB9=>DIB9, DIB10=>DIB10, DIB11=>DIB11, 
                DIB12=>DIB12, DIB13=>DIB13, DIB14=>DIB14, DIB15=>DIB15, 
                DIB16=>DIB16, DIB17=>DIB17, ADB0=>ADB0, ADB1=>ADB1, ADB2=>ADB2, 
                ADB3=>ADB3, ADB4=>ADB4, ADB5=>ADB5, ADB6=>ADB6, ADB7=>ADB7, 
                ADB8=>ADB8, ADB9=>ADB9, ADB10=>ADB10, ADB11=>ADB11, 
                ADB12=>ADB12, ADB13=>ADB13, CEB=>CEB, CLKB=>CLKB, WEB=>WEB, 
                CSB0=>CSB0, CSB1=>CSB1, CSB2=>CSB2, RSTB=>RSTB, DOA0=>DOA0, 
                DOA1=>DOA1, DOA2=>DOA2, DOA3=>DOA3, DOA4=>DOA4, DOA5=>DOA5, 
                DOA6=>DOA6, DOA7=>DOA7, DOA8=>DOA8, DOA9=>DOA9, DOA10=>DOA10, 
                DOA11=>DOA11, DOA12=>DOA12, DOA13=>DOA13, DOA14=>DOA14, 
                DOA15=>DOA15, DOA16=>DOA16, DOA17=>DOA17, DOB0=>DOB0, 
                DOB1=>DOB1, DOB2=>DOB2, DOB3=>DOB3, DOB4=>DOB4, DOB5=>DOB5, 
                DOB6=>DOB6, DOB7=>DOB7, DOB8=>DOB8, DOB9=>DOB9, DOB10=>DOB10, 
                DOB11=>DOB11, DOB12=>DOB12, DOB13=>DOB13, DOB14=>DOB14, 
                DOB15=>DOB15, DOB16=>DOB16, DOB17=>DOB17);
  end Structure;

-- entity ram_memory_0_ram_memory_0_2_1
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ram_memory_0_ram_memory_0_2_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "ram_memory_0_ram_memory_0_2_1";

      tipd_DIA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DIA0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA13  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA12  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA11  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA10  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA9  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA8  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA7  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA6  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA5  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA4  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA3  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_ADA2  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_WEA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_MORCLKA  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA3	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA2	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLKA_DOA0	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_CLKA 	: VitalDelayType := 0 ns;
      tpw_CLKA_posedge	: VitalDelayType := 0 ns;
      tpw_CLKA_negedge	: VitalDelayType := 0 ns;
      ticd_CLKA	: VitalDelayType := 0 ns;
      tisd_DIA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA1_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA1_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_DIA0_CLKA	: VitalDelayType := 0 ns;
      tsetup_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_DIA0_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA13_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA13_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA12_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA12_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA11_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA11_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA10_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA10_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA9_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA9_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA8_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA8_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA7_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA7_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA6_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA6_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA5_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA5_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA4_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA4_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA3_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA3_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_ADA2_CLKA	: VitalDelayType := 0 ns;
      tsetup_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_ADA2_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      tisd_WEA_CLKA	: VitalDelayType := 0 ns;
      tsetup_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns;
      thold_WEA_CLKA_noedge_negedge	: VitalDelayType := 0 ns);

    port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
          DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
          ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
          ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
          ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
          ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
          DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
          CLKA: in Std_logic; MORCLKA: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ram_memory_0_ram_memory_0_2_1 : ENTITY IS TRUE;

  end ram_memory_0_ram_memory_0_2_1;

  architecture Structure of ram_memory_0_ram_memory_0_2_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal DIA3_ipd 	: std_logic := 'X';
    signal DIA3_dly 	: std_logic := 'X';
    signal DIA2_ipd 	: std_logic := 'X';
    signal DIA2_dly 	: std_logic := 'X';
    signal DIA1_ipd 	: std_logic := 'X';
    signal DIA1_dly 	: std_logic := 'X';
    signal DIA0_ipd 	: std_logic := 'X';
    signal DIA0_dly 	: std_logic := 'X';
    signal ADA13_ipd 	: std_logic := 'X';
    signal ADA13_dly 	: std_logic := 'X';
    signal ADA12_ipd 	: std_logic := 'X';
    signal ADA12_dly 	: std_logic := 'X';
    signal ADA11_ipd 	: std_logic := 'X';
    signal ADA11_dly 	: std_logic := 'X';
    signal ADA10_ipd 	: std_logic := 'X';
    signal ADA10_dly 	: std_logic := 'X';
    signal ADA9_ipd 	: std_logic := 'X';
    signal ADA9_dly 	: std_logic := 'X';
    signal ADA8_ipd 	: std_logic := 'X';
    signal ADA8_dly 	: std_logic := 'X';
    signal ADA7_ipd 	: std_logic := 'X';
    signal ADA7_dly 	: std_logic := 'X';
    signal ADA6_ipd 	: std_logic := 'X';
    signal ADA6_dly 	: std_logic := 'X';
    signal ADA5_ipd 	: std_logic := 'X';
    signal ADA5_dly 	: std_logic := 'X';
    signal ADA4_ipd 	: std_logic := 'X';
    signal ADA4_dly 	: std_logic := 'X';
    signal ADA3_ipd 	: std_logic := 'X';
    signal ADA3_dly 	: std_logic := 'X';
    signal ADA2_ipd 	: std_logic := 'X';
    signal ADA2_dly 	: std_logic := 'X';
    signal DOA3_out 	: std_logic := 'X';
    signal DOA2_out 	: std_logic := 'X';
    signal DOA1_out 	: std_logic := 'X';
    signal DOA0_out 	: std_logic := 'X';
    signal WEA_ipd 	: std_logic := 'X';
    signal WEA_dly 	: std_logic := 'X';
    signal CLKA_ipd 	: std_logic := 'X';
    signal CLKA_dly 	: std_logic := 'X';
    signal MORCLKA_ipd 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal MORCLKA_NOTIN: Std_logic;
    signal GNDI: Std_logic;
    component inverter
      port (I: in Std_logic; Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component DP16KB0005
      port (CEA: in Std_logic; CLKA: in Std_logic; WEA: in Std_logic; 
            CSA0: in Std_logic; CSA1: in Std_logic; CSA2: in Std_logic; 
            RSTA: in Std_logic; CEB: in Std_logic; CLKB: in Std_logic; 
            WEB: in Std_logic; CSB0: in Std_logic; CSB1: in Std_logic; 
            CSB2: in Std_logic; RSTB: in Std_logic; DIA0: in Std_logic; 
            DIA1: in Std_logic; DIA2: in Std_logic; DIA3: in Std_logic; 
            DIA4: in Std_logic; DIA5: in Std_logic; DIA6: in Std_logic; 
            DIA7: in Std_logic; DIA8: in Std_logic; DIA9: in Std_logic; 
            DIA10: in Std_logic; DIA11: in Std_logic; DIA12: in Std_logic; 
            DIA13: in Std_logic; DIA14: in Std_logic; DIA15: in Std_logic; 
            DIA16: in Std_logic; DIA17: in Std_logic; ADA0: in Std_logic; 
            ADA1: in Std_logic; ADA2: in Std_logic; ADA3: in Std_logic; 
            ADA4: in Std_logic; ADA5: in Std_logic; ADA6: in Std_logic; 
            ADA7: in Std_logic; ADA8: in Std_logic; ADA9: in Std_logic; 
            ADA10: in Std_logic; ADA11: in Std_logic; ADA12: in Std_logic; 
            ADA13: in Std_logic; DIB0: in Std_logic; DIB1: in Std_logic; 
            DIB2: in Std_logic; DIB3: in Std_logic; DIB4: in Std_logic; 
            DIB5: in Std_logic; DIB6: in Std_logic; DIB7: in Std_logic; 
            DIB8: in Std_logic; DIB9: in Std_logic; DIB10: in Std_logic; 
            DIB11: in Std_logic; DIB12: in Std_logic; DIB13: in Std_logic; 
            DIB14: in Std_logic; DIB15: in Std_logic; DIB16: in Std_logic; 
            DIB17: in Std_logic; ADB0: in Std_logic; ADB1: in Std_logic; 
            ADB2: in Std_logic; ADB3: in Std_logic; ADB4: in Std_logic; 
            ADB5: in Std_logic; ADB6: in Std_logic; ADB7: in Std_logic; 
            ADB8: in Std_logic; ADB9: in Std_logic; ADB10: in Std_logic; 
            ADB11: in Std_logic; ADB12: in Std_logic; ADB13: in Std_logic; 
            DOA0: out Std_logic; DOA1: out Std_logic; DOA2: out Std_logic; 
            DOA3: out Std_logic; DOA4: out Std_logic; DOA5: out Std_logic; 
            DOA6: out Std_logic; DOA7: out Std_logic; DOA8: out Std_logic; 
            DOA9: out Std_logic; DOA10: out Std_logic; DOA11: out Std_logic; 
            DOA12: out Std_logic; DOA13: out Std_logic; DOA14: out Std_logic; 
            DOA15: out Std_logic; DOA16: out Std_logic; DOA17: out Std_logic; 
            DOB0: out Std_logic; DOB1: out Std_logic; DOB2: out Std_logic; 
            DOB3: out Std_logic; DOB4: out Std_logic; DOB5: out Std_logic; 
            DOB6: out Std_logic; DOB7: out Std_logic; DOB8: out Std_logic; 
            DOB9: out Std_logic; DOB10: out Std_logic; DOB11: out Std_logic; 
            DOB12: out Std_logic; DOB13: out Std_logic; DOB14: out Std_logic; 
            DOB15: out Std_logic; DOB16: out Std_logic; DOB17: out Std_logic);
    end component;
  begin
    ram_memory_0_ram_memory_0_2_1_DP16KB: DP16KB0005
      port map (CEA=>VCCI, CLKA=>MORCLKA_NOTIN, WEA=>WEA_dly, CSA0=>GNDI, 
                CSA1=>GNDI, CSA2=>GNDI, RSTA=>GNDI, CEB=>VCCI, CLKB=>GNDI, 
                WEB=>GNDI, CSB0=>GNDI, CSB1=>GNDI, CSB2=>GNDI, RSTB=>GNDI, 
                DIA0=>DIA0_dly, DIA1=>DIA1_dly, DIA2=>DIA2_dly, DIA3=>DIA3_dly, 
                DIA4=>GNDI, DIA5=>GNDI, DIA6=>GNDI, DIA7=>GNDI, DIA8=>GNDI, 
                DIA9=>GNDI, DIA10=>GNDI, DIA11=>GNDI, DIA12=>GNDI, DIA13=>GNDI, 
                DIA14=>GNDI, DIA15=>GNDI, DIA16=>GNDI, DIA17=>GNDI, ADA0=>GNDI, 
                ADA1=>GNDI, ADA2=>ADA2_dly, ADA3=>ADA3_dly, ADA4=>ADA4_dly, 
                ADA5=>ADA5_dly, ADA6=>ADA6_dly, ADA7=>ADA7_dly, ADA8=>ADA8_dly, 
                ADA9=>ADA9_dly, ADA10=>ADA10_dly, ADA11=>ADA11_dly, 
                ADA12=>ADA12_dly, ADA13=>ADA13_dly, DIB0=>GNDI, DIB1=>GNDI, 
                DIB2=>GNDI, DIB3=>GNDI, DIB4=>GNDI, DIB5=>GNDI, DIB6=>GNDI, 
                DIB7=>GNDI, DIB8=>GNDI, DIB9=>GNDI, DIB10=>GNDI, DIB11=>GNDI, 
                DIB12=>GNDI, DIB13=>GNDI, DIB14=>GNDI, DIB15=>GNDI, 
                DIB16=>GNDI, DIB17=>GNDI, ADB0=>GNDI, ADB1=>GNDI, ADB2=>GNDI, 
                ADB3=>GNDI, ADB4=>GNDI, ADB5=>GNDI, ADB6=>GNDI, ADB7=>GNDI, 
                ADB8=>GNDI, ADB9=>GNDI, ADB10=>GNDI, ADB11=>GNDI, ADB12=>GNDI, 
                ADB13=>GNDI, DOA0=>DOA0_out, DOA1=>DOA1_out, DOA2=>DOA2_out, 
                DOA3=>DOA3_out, DOA4=>open, DOA5=>open, DOA6=>open, DOA7=>open, 
                DOA8=>open, DOA9=>open, DOA10=>open, DOA11=>open, DOA12=>open, 
                DOA13=>open, DOA14=>open, DOA15=>open, DOA16=>open, 
                DOA17=>open, DOB0=>open, DOB1=>open, DOB2=>open, DOB3=>open, 
                DOB4=>open, DOB5=>open, DOB6=>open, DOB7=>open, DOB8=>open, 
                DOB9=>open, DOB10=>open, DOB11=>open, DOB12=>open, DOB13=>open, 
                DOB14=>open, DOB15=>open, DOB16=>open, DOB17=>open);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    MORCLKA_INVERTERIN: inverter
      port map (I=>CLKA_dly, Z=>MORCLKA_NOTIN);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(DIA3_ipd, DIA3, tipd_DIA3);
      VitalWireDelay(DIA2_ipd, DIA2, tipd_DIA2);
      VitalWireDelay(DIA1_ipd, DIA1, tipd_DIA1);
      VitalWireDelay(DIA0_ipd, DIA0, tipd_DIA0);
      VitalWireDelay(ADA13_ipd, ADA13, tipd_ADA13);
      VitalWireDelay(ADA12_ipd, ADA12, tipd_ADA12);
      VitalWireDelay(ADA11_ipd, ADA11, tipd_ADA11);
      VitalWireDelay(ADA10_ipd, ADA10, tipd_ADA10);
      VitalWireDelay(ADA9_ipd, ADA9, tipd_ADA9);
      VitalWireDelay(ADA8_ipd, ADA8, tipd_ADA8);
      VitalWireDelay(ADA7_ipd, ADA7, tipd_ADA7);
      VitalWireDelay(ADA6_ipd, ADA6, tipd_ADA6);
      VitalWireDelay(ADA5_ipd, ADA5, tipd_ADA5);
      VitalWireDelay(ADA4_ipd, ADA4, tipd_ADA4);
      VitalWireDelay(ADA3_ipd, ADA3, tipd_ADA3);
      VitalWireDelay(ADA2_ipd, ADA2, tipd_ADA2);
      VitalWireDelay(WEA_ipd, WEA, tipd_WEA);
      VitalWireDelay(CLKA_ipd, CLKA, tipd_CLKA);
      VitalWireDelay(MORCLKA_ipd, MORCLKA, tipd_MORCLKA);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DIA3_dly, DIA3_ipd, tisd_DIA3_CLKA);
      VitalSignalDelay(DIA2_dly, DIA2_ipd, tisd_DIA2_CLKA);
      VitalSignalDelay(DIA1_dly, DIA1_ipd, tisd_DIA1_CLKA);
      VitalSignalDelay(DIA0_dly, DIA0_ipd, tisd_DIA0_CLKA);
      VitalSignalDelay(ADA13_dly, ADA13_ipd, tisd_ADA13_CLKA);
      VitalSignalDelay(ADA12_dly, ADA12_ipd, tisd_ADA12_CLKA);
      VitalSignalDelay(ADA11_dly, ADA11_ipd, tisd_ADA11_CLKA);
      VitalSignalDelay(ADA10_dly, ADA10_ipd, tisd_ADA10_CLKA);
      VitalSignalDelay(ADA9_dly, ADA9_ipd, tisd_ADA9_CLKA);
      VitalSignalDelay(ADA8_dly, ADA8_ipd, tisd_ADA8_CLKA);
      VitalSignalDelay(ADA7_dly, ADA7_ipd, tisd_ADA7_CLKA);
      VitalSignalDelay(ADA6_dly, ADA6_ipd, tisd_ADA6_CLKA);
      VitalSignalDelay(ADA5_dly, ADA5_ipd, tisd_ADA5_CLKA);
      VitalSignalDelay(ADA4_dly, ADA4_ipd, tisd_ADA4_CLKA);
      VitalSignalDelay(ADA3_dly, ADA3_ipd, tisd_ADA3_CLKA);
      VitalSignalDelay(ADA2_dly, ADA2_ipd, tisd_ADA2_CLKA);
      VitalSignalDelay(WEA_dly, WEA_ipd, tisd_WEA_CLKA);
      VitalSignalDelay(CLKA_dly, CLKA_ipd, ticd_CLKA);
    END BLOCK;

    VitalBehavior : PROCESS (DIA3_dly, DIA2_dly, DIA1_dly, DIA0_dly, ADA13_dly, 
      ADA12_dly, ADA11_dly, ADA10_dly, ADA9_dly, ADA8_dly, ADA7_dly, ADA6_dly, 
      ADA5_dly, ADA4_dly, ADA3_dly, ADA2_dly, DOA3_out, DOA2_out, DOA1_out, 
      DOA0_out, WEA_dly, CLKA_dly, MORCLKA_ipd)
    VARIABLE DOA3_zd         	: std_logic := 'X';
    VARIABLE DOA3_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA2_zd         	: std_logic := 'X';
    VARIABLE DOA2_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA1_zd         	: std_logic := 'X';
    VARIABLE DOA1_GlitchData 	: VitalGlitchDataType;
    VARIABLE DOA0_zd         	: std_logic := 'X';
    VARIABLE DOA0_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DIA3_CLKA       	: x01 := '0';
    VARIABLE DIA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA2_CLKA       	: x01 := '0';
    VARIABLE DIA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA1_CLKA       	: x01 := '0';
    VARIABLE DIA1_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DIA0_CLKA       	: x01 := '0';
    VARIABLE DIA0_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA13_CLKA       	: x01 := '0';
    VARIABLE ADA13_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA12_CLKA       	: x01 := '0';
    VARIABLE ADA12_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA11_CLKA       	: x01 := '0';
    VARIABLE ADA11_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA10_CLKA       	: x01 := '0';
    VARIABLE ADA10_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA9_CLKA       	: x01 := '0';
    VARIABLE ADA9_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA8_CLKA       	: x01 := '0';
    VARIABLE ADA8_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA7_CLKA       	: x01 := '0';
    VARIABLE ADA7_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA6_CLKA       	: x01 := '0';
    VARIABLE ADA6_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA5_CLKA       	: x01 := '0';
    VARIABLE ADA5_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA4_CLKA       	: x01 := '0';
    VARIABLE ADA4_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA3_CLKA       	: x01 := '0';
    VARIABLE ADA3_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_ADA2_CLKA       	: x01 := '0';
    VARIABLE ADA2_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_WEA_CLKA       	: x01 := '0';
    VARIABLE WEA_CLKA_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLKA_CLKA          	: x01 := '0';
    VARIABLE periodcheckinfo_CLKA	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DIA3_dly,
        TestSignalName => "DIA3",
        TestDelay => tisd_DIA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA3_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA3_CLKA_noedge_negedge,
        HoldHigh => thold_DIA3_CLKA_noedge_negedge,
        HoldLow => thold_DIA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA3_CLKA_TimingDatash,
        Violation => tviol_DIA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA2_dly,
        TestSignalName => "DIA2",
        TestDelay => tisd_DIA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA2_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA2_CLKA_noedge_negedge,
        HoldHigh => thold_DIA2_CLKA_noedge_negedge,
        HoldLow => thold_DIA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA2_CLKA_TimingDatash,
        Violation => tviol_DIA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA1_dly,
        TestSignalName => "DIA1",
        TestDelay => tisd_DIA1_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA1_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA1_CLKA_noedge_negedge,
        HoldHigh => thold_DIA1_CLKA_noedge_negedge,
        HoldLow => thold_DIA1_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA1_CLKA_TimingDatash,
        Violation => tviol_DIA1_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DIA0_dly,
        TestSignalName => "DIA0",
        TestDelay => tisd_DIA0_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_DIA0_CLKA_noedge_negedge,
        SetupLow => tsetup_DIA0_CLKA_noedge_negedge,
        HoldHigh => thold_DIA0_CLKA_noedge_negedge,
        HoldLow => thold_DIA0_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DIA0_CLKA_TimingDatash,
        Violation => tviol_DIA0_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA13_dly,
        TestSignalName => "ADA13",
        TestDelay => tisd_ADA13_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA13_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA13_CLKA_noedge_negedge,
        HoldHigh => thold_ADA13_CLKA_noedge_negedge,
        HoldLow => thold_ADA13_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA13_CLKA_TimingDatash,
        Violation => tviol_ADA13_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA12_dly,
        TestSignalName => "ADA12",
        TestDelay => tisd_ADA12_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA12_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA12_CLKA_noedge_negedge,
        HoldHigh => thold_ADA12_CLKA_noedge_negedge,
        HoldLow => thold_ADA12_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA12_CLKA_TimingDatash,
        Violation => tviol_ADA12_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA11_dly,
        TestSignalName => "ADA11",
        TestDelay => tisd_ADA11_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA11_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA11_CLKA_noedge_negedge,
        HoldHigh => thold_ADA11_CLKA_noedge_negedge,
        HoldLow => thold_ADA11_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA11_CLKA_TimingDatash,
        Violation => tviol_ADA11_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA10_dly,
        TestSignalName => "ADA10",
        TestDelay => tisd_ADA10_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA10_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA10_CLKA_noedge_negedge,
        HoldHigh => thold_ADA10_CLKA_noedge_negedge,
        HoldLow => thold_ADA10_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA10_CLKA_TimingDatash,
        Violation => tviol_ADA10_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA9_dly,
        TestSignalName => "ADA9",
        TestDelay => tisd_ADA9_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA9_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA9_CLKA_noedge_negedge,
        HoldHigh => thold_ADA9_CLKA_noedge_negedge,
        HoldLow => thold_ADA9_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA9_CLKA_TimingDatash,
        Violation => tviol_ADA9_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA8_dly,
        TestSignalName => "ADA8",
        TestDelay => tisd_ADA8_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA8_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA8_CLKA_noedge_negedge,
        HoldHigh => thold_ADA8_CLKA_noedge_negedge,
        HoldLow => thold_ADA8_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA8_CLKA_TimingDatash,
        Violation => tviol_ADA8_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA7_dly,
        TestSignalName => "ADA7",
        TestDelay => tisd_ADA7_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA7_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA7_CLKA_noedge_negedge,
        HoldHigh => thold_ADA7_CLKA_noedge_negedge,
        HoldLow => thold_ADA7_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA7_CLKA_TimingDatash,
        Violation => tviol_ADA7_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA6_dly,
        TestSignalName => "ADA6",
        TestDelay => tisd_ADA6_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA6_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA6_CLKA_noedge_negedge,
        HoldHigh => thold_ADA6_CLKA_noedge_negedge,
        HoldLow => thold_ADA6_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA6_CLKA_TimingDatash,
        Violation => tviol_ADA6_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA5_dly,
        TestSignalName => "ADA5",
        TestDelay => tisd_ADA5_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA5_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA5_CLKA_noedge_negedge,
        HoldHigh => thold_ADA5_CLKA_noedge_negedge,
        HoldLow => thold_ADA5_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA5_CLKA_TimingDatash,
        Violation => tviol_ADA5_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA4_dly,
        TestSignalName => "ADA4",
        TestDelay => tisd_ADA4_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA4_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA4_CLKA_noedge_negedge,
        HoldHigh => thold_ADA4_CLKA_noedge_negedge,
        HoldLow => thold_ADA4_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA4_CLKA_TimingDatash,
        Violation => tviol_ADA4_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA3_dly,
        TestSignalName => "ADA3",
        TestDelay => tisd_ADA3_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA3_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA3_CLKA_noedge_negedge,
        HoldHigh => thold_ADA3_CLKA_noedge_negedge,
        HoldLow => thold_ADA3_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA3_CLKA_TimingDatash,
        Violation => tviol_ADA3_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => ADA2_dly,
        TestSignalName => "ADA2",
        TestDelay => tisd_ADA2_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_ADA2_CLKA_noedge_negedge,
        SetupLow => tsetup_ADA2_CLKA_noedge_negedge,
        HoldHigh => thold_ADA2_CLKA_noedge_negedge,
        HoldLow => thold_ADA2_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => ADA2_CLKA_TimingDatash,
        Violation => tviol_ADA2_CLKA,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => WEA_dly,
        TestSignalName => "WEA",
        TestDelay => tisd_WEA_CLKA,
        RefSignal => CLKA_dly,
        RefSignalName => "CLKA",
        RefDelay => ticd_CLKA,
        SetupHigh => tsetup_WEA_CLKA_noedge_negedge,
        SetupLow => tsetup_WEA_CLKA_noedge_negedge,
        HoldHigh => thold_WEA_CLKA_noedge_negedge,
        HoldLow => thold_WEA_CLKA_noedge_negedge,
        CheckEnabled => TRUE,
        RefTransition => '\',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => WEA_CLKA_TimingDatash,
        Violation => tviol_WEA_CLKA,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLKA_ipd,
        TestSignalName => "CLKA",
        Period => tperiod_CLKA,
        PulseWidthHigh => tpw_CLKA_posedge,
        PulseWidthLow => tpw_CLKA_negedge,
        PeriodData => periodcheckinfo_CLKA,
        Violation => tviol_CLKA_CLKA,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    DOA3_zd 	:= DOA3_out;
    DOA2_zd 	:= DOA2_out;
    DOA1_zd 	:= DOA1_out;
    DOA0_zd 	:= DOA0_out;

    VitalPathDelay01 (
      OutSignal => DOA3, OutSignalName => "DOA3", OutTemp => DOA3_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA3,
                           PathCondition => TRUE)),
      GlitchData => DOA3_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA2, OutSignalName => "DOA2", OutTemp => DOA2_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA2,
                           PathCondition => TRUE)),
      GlitchData => DOA2_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA1, OutSignalName => "DOA1", OutTemp => DOA1_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA1,
                           PathCondition => TRUE)),
      GlitchData => DOA1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => DOA0, OutSignalName => "DOA0", OutTemp => DOA0_zd,
      Paths      => (0 => (InputChangeTime => CLKA_dly'last_event,
                           PathDelay => tpd_CLKA_DOA0,
                           PathCondition => TRUE)),
      GlitchData => DOA0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ep32_chip
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ep32_chip is
    port (aclk: in Std_logic; arst: in Std_logic; 
          interrupt_i: in Std_logic_vector (4 downto 0); uart_i: in Std_logic; 
          uart_o: out Std_logic; acknowledge_o: out Std_logic; 
          ioport: inout Std_logic_vector (15 downto 0));



  end ep32_chip;

  architecture Structure of ep32_chip is
    signal VCC_net: Std_logic;
    signal tx_counter_6: Std_logic;
    signal tx_counter_5: Std_logic;
    signal uart1_n5684: Std_logic;
    signal n66: Std_logic;
    signal n63: Std_logic;
    signal uart1_n5685: Std_logic;
    signal tx_counter_4: Std_logic;
    signal tx_counter_3: Std_logic;
    signal uart1_n5683: Std_logic;
    signal n72: Std_logic;
    signal n69: Std_logic;
    signal tx_counter_2: Std_logic;
    signal tx_counter_1: Std_logic;
    signal uart1_n5682: Std_logic;
    signal n78: Std_logic;
    signal n75: Std_logic;
    signal uart1_tx_counter_0: Std_logic;
    signal uart1_n81: Std_logic;
    signal uart1_rx_counter_15: Std_logic;
    signal uart1_n5681: Std_logic;
    signal uart1_n36: Std_logic;
    signal uart1_rx_counter_14: Std_logic;
    signal uart1_rx_counter_13: Std_logic;
    signal uart1_n5680: Std_logic;
    signal uart1_n42: Std_logic;
    signal uart1_n39: Std_logic;
    signal uart1_rx_counter_12: Std_logic;
    signal uart1_rx_counter_11: Std_logic;
    signal uart1_n5679: Std_logic;
    signal uart1_n48: Std_logic;
    signal uart1_n45: Std_logic;
    signal uart1_rx_counter_10: Std_logic;
    signal uart1_rx_counter_9: Std_logic;
    signal uart1_n5678: Std_logic;
    signal uart1_n54: Std_logic;
    signal uart1_n51: Std_logic;
    signal uart1_rx_counter_8: Std_logic;
    signal uart1_rx_counter_7: Std_logic;
    signal uart1_n5677: Std_logic;
    signal uart1_n60: Std_logic;
    signal uart1_n57: Std_logic;
    signal uart1_rx_counter_6: Std_logic;
    signal uart1_rx_counter_5: Std_logic;
    signal uart1_n5676: Std_logic;
    signal n66_adj_901: Std_logic;
    signal uart1_n63_adj_876: Std_logic;
    signal uart1_rx_counter_4: Std_logic;
    signal uart1_rx_counter_3: Std_logic;
    signal uart1_n5675: Std_logic;
    signal n72_adj_903: Std_logic;
    signal n69_adj_902: Std_logic;
    signal uart1_rx_counter_2: Std_logic;
    signal uart1_rx_counter_1: Std_logic;
    signal uart1_n5674: Std_logic;
    signal n78_adj_905: Std_logic;
    signal n75_adj_904: Std_logic;
    signal uart1_rx_counter_0: Std_logic;
    signal n81: Std_logic;
    signal uart1_tx_counter_15: Std_logic;
    signal uart1_n5689: Std_logic;
    signal uart1_n36_adj_891: Std_logic;
    signal uart1_tx_counter_14: Std_logic;
    signal uart1_tx_counter_13: Std_logic;
    signal uart1_n5688: Std_logic;
    signal uart1_n42_adj_889: Std_logic;
    signal uart1_n39_adj_890: Std_logic;
    signal uart1_tx_counter_12: Std_logic;
    signal uart1_tx_counter_11: Std_logic;
    signal uart1_n5687: Std_logic;
    signal uart1_n48_adj_887: Std_logic;
    signal uart1_n45_adj_888: Std_logic;
    signal uart1_tx_counter_10: Std_logic;
    signal uart1_tx_counter_9: Std_logic;
    signal uart1_n5686: Std_logic;
    signal uart1_n54_adj_885: Std_logic;
    signal uart1_n51_adj_886: Std_logic;
    signal uart1_tx_counter_8: Std_logic;
    signal uart1_tx_counter_7: Std_logic;
    signal uart1_n60_adj_883: Std_logic;
    signal uart1_n57_adj_884: Std_logic;
    signal n1323: Std_logic;
    signal n8664: Std_logic;
    signal n1305: Std_logic;
    signal memory_data_i_2: Std_logic;
    signal n1322: Std_logic;
    signal memory_data_i_1: Std_logic;
    signal cpu1_n5666: Std_logic;
    signal cpu1_sum_1: Std_logic;
    signal cpu1_sum_2: Std_logic;
    signal cpu1_n5667: Std_logic;
    signal n1321: Std_logic;
    signal memory_data_i_0: Std_logic;
    signal cpu1_sum_0: Std_logic;
    signal cpu1_p_15: Std_logic;
    signal cpu1_n5665: Std_logic;
    signal cpu1_p_in_15_N_282_15: Std_logic;
    signal p_14: Std_logic;
    signal p_13: Std_logic;
    signal cpu1_n5664: Std_logic;
    signal cpu1_p_in_15_N_282_13: Std_logic;
    signal cpu1_p_in_15_N_282_14: Std_logic;
    signal p_12: Std_logic;
    signal p_11: Std_logic;
    signal cpu1_n5663: Std_logic;
    signal cpu1_p_in_15_N_282_11: Std_logic;
    signal cpu1_p_in_15_N_282_12: Std_logic;
    signal p_10: Std_logic;
    signal p_9: Std_logic;
    signal cpu1_n5662: Std_logic;
    signal cpu1_p_in_15_N_282_9: Std_logic;
    signal cpu1_p_in_15_N_282_10: Std_logic;
    signal a_12: Std_logic;
    signal a_11: Std_logic;
    signal cpu1_n5654: Std_logic;
    signal cpu1_a_in_16_N_215_11: Std_logic;
    signal cpu1_a_in_16_N_215_12: Std_logic;
    signal cpu1_n5655: Std_logic;
    signal p_8: Std_logic;
    signal cpu1_p_7: Std_logic;
    signal cpu1_n5661: Std_logic;
    signal cpu1_p_in_15_N_282_7: Std_logic;
    signal cpu1_p_in_15_N_282_8: Std_logic;
    signal a_10: Std_logic;
    signal a_9: Std_logic;
    signal cpu1_n5653: Std_logic;
    signal cpu1_a_in_16_N_215_9: Std_logic;
    signal cpu1_a_in_16_N_215_10: Std_logic;
    signal cpu1_p_6: Std_logic;
    signal cpu1_p_5: Std_logic;
    signal cpu1_n5660: Std_logic;
    signal p_in_15_N_282_5: Std_logic;
    signal cpu1_p_in_15_N_282_6: Std_logic;
    signal cpu1_p_4: Std_logic;
    signal cpu1_p_3: Std_logic;
    signal cpu1_n5659: Std_logic;
    signal cpu1_p_in_15_N_282_3: Std_logic;
    signal cpu1_p_in_15_N_282_4: Std_logic;
    signal cpu1_a_0: Std_logic;
    signal cpu1_a_in_16_N_215_0: Std_logic;
    signal cpu1_n5649: Std_logic;
    signal cpu1_p_2: Std_logic;
    signal cpu1_p_1: Std_logic;
    signal cpu1_n5658: Std_logic;
    signal cpu1_p_in_15_N_282_1: Std_logic;
    signal cpu1_p_in_15_N_282_2: Std_logic;
    signal a_8: Std_logic;
    signal cpu1_a_7: Std_logic;
    signal cpu1_n5652: Std_logic;
    signal cpu1_a_in_16_N_215_7: Std_logic;
    signal cpu1_a_in_16_N_215_8: Std_logic;
    signal cpu1_a_6: Std_logic;
    signal cpu1_a_5: Std_logic;
    signal cpu1_n5651: Std_logic;
    signal cpu1_a_in_16_N_215_5: Std_logic;
    signal cpu1_a_in_16_N_215_6: Std_logic;
    signal cpu1_p_0: Std_logic;
    signal p_in_15_N_282_0: Std_logic;
    signal cpu1_a_4: Std_logic;
    signal cpu1_a_3: Std_logic;
    signal cpu1_n5650: Std_logic;
    signal cpu1_a_in_16_N_215_3: Std_logic;
    signal cpu1_a_in_16_N_215_4: Std_logic;
    signal n1336: Std_logic;
    signal memory_data_i_15: Std_logic;
    signal cpu1_n5673: Std_logic;
    signal cpu1_sum_15: Std_logic;
    signal cpu1_sum_16: Std_logic;
    signal n1335: Std_logic;
    signal memory_data_i_14: Std_logic;
    signal n1334: Std_logic;
    signal memory_data_i_13: Std_logic;
    signal cpu1_n5672: Std_logic;
    signal cpu1_sum_13: Std_logic;
    signal cpu1_sum_14: Std_logic;
    signal cpu1_a_16: Std_logic;
    signal cpu1_a_15: Std_logic;
    signal cpu1_n5656: Std_logic;
    signal cpu1_a_in_16_N_215_15: Std_logic;
    signal cpu1_a_in_16_N_215_16: Std_logic;
    signal r_16: Std_logic;
    signal r_15: Std_logic;
    signal cpu1_n5697: Std_logic;
    signal cpu1_r_in_16_N_181_15: Std_logic;
    signal cpu1_r_in_16_N_181_16: Std_logic;
    signal r_14: Std_logic;
    signal r_13: Std_logic;
    signal cpu1_n5696: Std_logic;
    signal cpu1_r_in_16_N_181_13: Std_logic;
    signal cpu1_r_in_16_N_181_14: Std_logic;
    signal r_12: Std_logic;
    signal r_11: Std_logic;
    signal cpu1_n5695: Std_logic;
    signal cpu1_r_in_16_N_181_11: Std_logic;
    signal cpu1_r_in_16_N_181_12: Std_logic;
    signal r_10: Std_logic;
    signal r_9: Std_logic;
    signal cpu1_n5694: Std_logic;
    signal cpu1_r_in_16_N_181_9: Std_logic;
    signal cpu1_r_in_16_N_181_10: Std_logic;
    signal r_8: Std_logic;
    signal r_7: Std_logic;
    signal cpu1_n5693: Std_logic;
    signal cpu1_r_in_16_N_181_7: Std_logic;
    signal cpu1_r_in_16_N_181_8: Std_logic;
    signal r_6: Std_logic;
    signal r_5: Std_logic;
    signal cpu1_n5692: Std_logic;
    signal cpu1_r_in_16_N_181_5: Std_logic;
    signal cpu1_r_in_16_N_181_6: Std_logic;
    signal r_4: Std_logic;
    signal r_3: Std_logic;
    signal cpu1_n5691: Std_logic;
    signal cpu1_r_in_16_N_181_3: Std_logic;
    signal cpu1_r_in_16_N_181_4: Std_logic;
    signal r_2: Std_logic;
    signal r_1: Std_logic;
    signal cpu1_n5690: Std_logic;
    signal cpu1_r_in_16_N_181_1: Std_logic;
    signal cpu1_r_in_16_N_181_2: Std_logic;
    signal r_0: Std_logic;
    signal cpu1_r_in_16_N_181_0: Std_logic;
    signal n1333: Std_logic;
    signal memory_data_i_12: Std_logic;
    signal n1332: Std_logic;
    signal memory_data_i_11: Std_logic;
    signal cpu1_n5671: Std_logic;
    signal cpu1_sum_11: Std_logic;
    signal cpu1_sum_12: Std_logic;
    signal n1331: Std_logic;
    signal memory_data_i_10: Std_logic;
    signal n1330: Std_logic;
    signal memory_data_i_9: Std_logic;
    signal cpu1_n5670: Std_logic;
    signal cpu1_sum_9: Std_logic;
    signal cpu1_sum_10: Std_logic;
    signal n1329: Std_logic;
    signal memory_data_i_8: Std_logic;
    signal n1328: Std_logic;
    signal memory_data_i_7: Std_logic;
    signal cpu1_n5669: Std_logic;
    signal cpu1_sum_7: Std_logic;
    signal cpu1_sum_8: Std_logic;
    signal a_14: Std_logic;
    signal a_13: Std_logic;
    signal cpu1_a_in_16_N_215_13: Std_logic;
    signal cpu1_a_in_16_N_215_14: Std_logic;
    signal n1327: Std_logic;
    signal memory_data_i_6: Std_logic;
    signal n1326: Std_logic;
    signal memory_data_i_5: Std_logic;
    signal cpu1_n5668: Std_logic;
    signal cpu1_sum_5: Std_logic;
    signal cpu1_sum_6: Std_logic;
    signal cpu1_a_2: Std_logic;
    signal cpu1_a_1: Std_logic;
    signal cpu1_a_in_16_N_215_1: Std_logic;
    signal cpu1_a_in_16_N_215_2: Std_logic;
    signal n1325: Std_logic;
    signal memory_data_i_4: Std_logic;
    signal n1324: Std_logic;
    signal memory_data_i_3: Std_logic;
    signal cpu1_sum_3: Std_logic;
    signal cpu1_sum_4: Std_logic;
    signal n8674: Std_logic;
    signal sp1_3: Std_logic;
    signal sp1_2: Std_logic;
    signal sp1_1: Std_logic;
    signal sp1_0: Std_logic;
    signal n1309: Std_logic;
    signal aclk_c: Std_logic;
    signal n13130_WRE_INT: Std_logic;
    signal n13130_WCK_INT: Std_logic;
    signal n13130_WAD0_INT: Std_logic;
    signal n13130_WAD1_INT: Std_logic;
    signal n13130_WAD2_INT: Std_logic;
    signal n13130_WAD3_INT: Std_logic;
    signal n13130_WD0_INT: Std_logic;
    signal sp_3: Std_logic;
    signal sp_2: Std_logic;
    signal sp_1: Std_logic;
    signal sp_0: Std_logic;
    signal n1314: Std_logic;
    signal rp1_4: Std_logic;
    signal rp1_3: Std_logic;
    signal rp1_2: Std_logic;
    signal rp1_1: Std_logic;
    signal rp1_0: Std_logic;
    signal n1427: Std_logic;
    signal n14310_WRE_INT: Std_logic;
    signal n14310_WCK_INT: Std_logic;
    signal n14310_WAD0_INT: Std_logic;
    signal n14310_WAD1_INT: Std_logic;
    signal n14310_WAD2_INT: Std_logic;
    signal n14310_WAD3_INT: Std_logic;
    signal n14310_WD0_INT: Std_logic;
    signal rp_3: Std_logic;
    signal rp_2: Std_logic;
    signal rp_1: Std_logic;
    signal rp_0: Std_logic;
    signal n1432: Std_logic;
    signal n1536: Std_logic;
    signal r_stack1_WRE_INT: Std_logic;
    signal r_stack1_WCK_INT: Std_logic;
    signal r_stack1_WAD0_INT: Std_logic;
    signal r_stack1_WAD1_INT: Std_logic;
    signal r_stack1_WAD2_INT: Std_logic;
    signal r_stack1_WAD3_INT: Std_logic;
    signal r_stack1_WD0_INT: Std_logic;
    signal r_stack1_WD1_INT: Std_logic;
    signal r_stack1_WD2_INT: Std_logic;
    signal r_stack1_WD3_INT: Std_logic;
    signal n1514: Std_logic;
    signal n1515: Std_logic;
    signal n1516: Std_logic;
    signal n1517: Std_logic;
    signal t_16: Std_logic;
    signal n1497: Std_logic;
    signal s_stack1_WRE_INT: Std_logic;
    signal s_stack1_WCK_INT: Std_logic;
    signal s_stack1_WAD0_INT: Std_logic;
    signal s_stack1_WAD1_INT: Std_logic;
    signal s_stack1_WAD2_INT: Std_logic;
    signal s_stack1_WAD3_INT: Std_logic;
    signal s_stack1_WD0_INT: Std_logic;
    signal s_stack1_WD1_INT: Std_logic;
    signal s_stack1_WD2_INT: Std_logic;
    signal s_stack1_WD3_INT: Std_logic;
    signal n1475: Std_logic;
    signal n1476: Std_logic;
    signal n1477: Std_logic;
    signal n1478: Std_logic;
    signal n1500: Std_logic;
    signal n1424: Std_logic;
    signal n14280_WRE_INT: Std_logic;
    signal n14280_WCK_INT: Std_logic;
    signal n14280_WAD0_INT: Std_logic;
    signal n14280_WAD1_INT: Std_logic;
    signal n14280_WAD2_INT: Std_logic;
    signal n14280_WAD3_INT: Std_logic;
    signal n14280_WD0_INT: Std_logic;
    signal n1429: Std_logic;
    signal n1498: Std_logic;
    signal s_stack0_WRE_INT: Std_logic;
    signal s_stack0_WCK_INT: Std_logic;
    signal s_stack0_WAD0_INT: Std_logic;
    signal s_stack0_WAD1_INT: Std_logic;
    signal s_stack0_WAD2_INT: Std_logic;
    signal s_stack0_WAD3_INT: Std_logic;
    signal s_stack0_WD0_INT: Std_logic;
    signal s_stack0_WD1_INT: Std_logic;
    signal s_stack0_WD2_INT: Std_logic;
    signal s_stack0_WD3_INT: Std_logic;
    signal n1492: Std_logic;
    signal n1493: Std_logic;
    signal n1494: Std_logic;
    signal n1495: Std_logic;
    signal s_stack2_WRE_INT: Std_logic;
    signal s_stack2_WCK_INT: Std_logic;
    signal s_stack2_WAD0_INT: Std_logic;
    signal s_stack2_WAD1_INT: Std_logic;
    signal s_stack2_WAD2_INT: Std_logic;
    signal s_stack2_WAD3_INT: Std_logic;
    signal s_stack2_WD0_INT: Std_logic;
    signal s_stack2_WD1_INT: Std_logic;
    signal s_stack2_WD2_INT: Std_logic;
    signal s_stack2_WD3_INT: Std_logic;
    signal n1471: Std_logic;
    signal n1472: Std_logic;
    signal n1473: Std_logic;
    signal n1474: Std_logic;
    signal s_stack3_WRE_INT: Std_logic;
    signal s_stack3_WCK_INT: Std_logic;
    signal s_stack3_WAD0_INT: Std_logic;
    signal s_stack3_WAD1_INT: Std_logic;
    signal s_stack3_WAD2_INT: Std_logic;
    signal s_stack3_WAD3_INT: Std_logic;
    signal s_stack3_WD0_INT: Std_logic;
    signal s_stack3_WD1_INT: Std_logic;
    signal s_stack3_WD2_INT: Std_logic;
    signal s_stack3_WD3_INT: Std_logic;
    signal n1467: Std_logic;
    signal n1468: Std_logic;
    signal n1469: Std_logic;
    signal n1470: Std_logic;
    signal s_stack4_WRE_INT: Std_logic;
    signal s_stack4_WCK_INT: Std_logic;
    signal s_stack4_WAD0_INT: Std_logic;
    signal s_stack4_WAD1_INT: Std_logic;
    signal s_stack4_WAD2_INT: Std_logic;
    signal s_stack4_WAD3_INT: Std_logic;
    signal s_stack4_WD0_INT: Std_logic;
    signal s_stack4_WD1_INT: Std_logic;
    signal s_stack4_WD2_INT: Std_logic;
    signal s_stack4_WD3_INT: Std_logic;
    signal n1463: Std_logic;
    signal n1464: Std_logic;
    signal n1465: Std_logic;
    signal n1466: Std_logic;
    signal s_stack5_WRE_INT: Std_logic;
    signal s_stack5_WCK_INT: Std_logic;
    signal s_stack5_WAD0_INT: Std_logic;
    signal s_stack5_WAD1_INT: Std_logic;
    signal s_stack5_WAD2_INT: Std_logic;
    signal s_stack5_WAD3_INT: Std_logic;
    signal s_stack5_WD0_INT: Std_logic;
    signal n1462: Std_logic;
    signal s_stack6_WRE_INT: Std_logic;
    signal s_stack6_WCK_INT: Std_logic;
    signal s_stack6_WAD0_INT: Std_logic;
    signal s_stack6_WAD1_INT: Std_logic;
    signal s_stack6_WAD2_INT: Std_logic;
    signal s_stack6_WAD3_INT: Std_logic;
    signal s_stack6_WD0_INT: Std_logic;
    signal s_stack6_WD1_INT: Std_logic;
    signal s_stack6_WD2_INT: Std_logic;
    signal s_stack6_WD3_INT: Std_logic;
    signal n1488: Std_logic;
    signal n1489: Std_logic;
    signal n1490: Std_logic;
    signal n1491: Std_logic;
    signal s_stack7_WRE_INT: Std_logic;
    signal s_stack7_WCK_INT: Std_logic;
    signal s_stack7_WAD0_INT: Std_logic;
    signal s_stack7_WAD1_INT: Std_logic;
    signal s_stack7_WAD2_INT: Std_logic;
    signal s_stack7_WAD3_INT: Std_logic;
    signal s_stack7_WD0_INT: Std_logic;
    signal s_stack7_WD1_INT: Std_logic;
    signal s_stack7_WD2_INT: Std_logic;
    signal s_stack7_WD3_INT: Std_logic;
    signal n1484: Std_logic;
    signal n1485: Std_logic;
    signal n1486: Std_logic;
    signal n1487: Std_logic;
    signal s_stack8_WRE_INT: Std_logic;
    signal s_stack8_WCK_INT: Std_logic;
    signal s_stack8_WAD0_INT: Std_logic;
    signal s_stack8_WAD1_INT: Std_logic;
    signal s_stack8_WAD2_INT: Std_logic;
    signal s_stack8_WAD3_INT: Std_logic;
    signal s_stack8_WD0_INT: Std_logic;
    signal s_stack8_WD1_INT: Std_logic;
    signal s_stack8_WD2_INT: Std_logic;
    signal s_stack8_WD3_INT: Std_logic;
    signal n1480: Std_logic;
    signal n1481: Std_logic;
    signal n1482: Std_logic;
    signal n1483: Std_logic;
    signal n1537: Std_logic;
    signal r_stack0_WRE_INT: Std_logic;
    signal r_stack0_WCK_INT: Std_logic;
    signal r_stack0_WAD0_INT: Std_logic;
    signal r_stack0_WAD1_INT: Std_logic;
    signal r_stack0_WAD2_INT: Std_logic;
    signal r_stack0_WAD3_INT: Std_logic;
    signal r_stack0_WD0_INT: Std_logic;
    signal r_stack0_WD1_INT: Std_logic;
    signal r_stack0_WD2_INT: Std_logic;
    signal r_stack0_WD3_INT: Std_logic;
    signal n1531: Std_logic;
    signal n1532: Std_logic;
    signal n1533: Std_logic;
    signal n1534: Std_logic;
    signal s_stack9_WRE_INT: Std_logic;
    signal s_stack9_WCK_INT: Std_logic;
    signal s_stack9_WAD0_INT: Std_logic;
    signal s_stack9_WAD1_INT: Std_logic;
    signal s_stack9_WAD2_INT: Std_logic;
    signal s_stack9_WAD3_INT: Std_logic;
    signal s_stack9_WD0_INT: Std_logic;
    signal n1479: Std_logic;
    signal sp1_4: Std_logic;
    signal n1312: Std_logic;
    signal n13160_WRE_INT: Std_logic;
    signal n13160_WCK_INT: Std_logic;
    signal n13160_WAD0_INT: Std_logic;
    signal n13160_WAD1_INT: Std_logic;
    signal n13160_WAD2_INT: Std_logic;
    signal n13160_WAD3_INT: Std_logic;
    signal n13160_WD0_INT: Std_logic;
    signal n1317: Std_logic;
    signal r_stack2_WRE_INT: Std_logic;
    signal r_stack2_WCK_INT: Std_logic;
    signal r_stack2_WAD0_INT: Std_logic;
    signal r_stack2_WAD1_INT: Std_logic;
    signal r_stack2_WAD2_INT: Std_logic;
    signal r_stack2_WAD3_INT: Std_logic;
    signal r_stack2_WD0_INT: Std_logic;
    signal r_stack2_WD1_INT: Std_logic;
    signal r_stack2_WD2_INT: Std_logic;
    signal r_stack2_WD3_INT: Std_logic;
    signal n1510: Std_logic;
    signal n1511: Std_logic;
    signal n1512: Std_logic;
    signal n1513: Std_logic;
    signal r_stack3_WRE_INT: Std_logic;
    signal r_stack3_WCK_INT: Std_logic;
    signal r_stack3_WAD0_INT: Std_logic;
    signal r_stack3_WAD1_INT: Std_logic;
    signal r_stack3_WAD2_INT: Std_logic;
    signal r_stack3_WAD3_INT: Std_logic;
    signal r_stack3_WD0_INT: Std_logic;
    signal r_stack3_WD1_INT: Std_logic;
    signal r_stack3_WD2_INT: Std_logic;
    signal r_stack3_WD3_INT: Std_logic;
    signal n1506: Std_logic;
    signal n1507: Std_logic;
    signal n1508: Std_logic;
    signal n1509: Std_logic;
    signal r_stack4_WRE_INT: Std_logic;
    signal r_stack4_WCK_INT: Std_logic;
    signal r_stack4_WAD0_INT: Std_logic;
    signal r_stack4_WAD1_INT: Std_logic;
    signal r_stack4_WAD2_INT: Std_logic;
    signal r_stack4_WAD3_INT: Std_logic;
    signal r_stack4_WD0_INT: Std_logic;
    signal r_stack4_WD1_INT: Std_logic;
    signal r_stack4_WD2_INT: Std_logic;
    signal r_stack4_WD3_INT: Std_logic;
    signal n1502: Std_logic;
    signal n1503: Std_logic;
    signal n1504: Std_logic;
    signal n1505: Std_logic;
    signal r_stack5_WRE_INT: Std_logic;
    signal r_stack5_WCK_INT: Std_logic;
    signal r_stack5_WAD0_INT: Std_logic;
    signal r_stack5_WAD1_INT: Std_logic;
    signal r_stack5_WAD2_INT: Std_logic;
    signal r_stack5_WAD3_INT: Std_logic;
    signal r_stack5_WD0_INT: Std_logic;
    signal n1501: Std_logic;
    signal r_stack6_WRE_INT: Std_logic;
    signal r_stack6_WCK_INT: Std_logic;
    signal r_stack6_WAD0_INT: Std_logic;
    signal r_stack6_WAD1_INT: Std_logic;
    signal r_stack6_WAD2_INT: Std_logic;
    signal r_stack6_WAD3_INT: Std_logic;
    signal r_stack6_WD0_INT: Std_logic;
    signal r_stack6_WD1_INT: Std_logic;
    signal r_stack6_WD2_INT: Std_logic;
    signal r_stack6_WD3_INT: Std_logic;
    signal n1527: Std_logic;
    signal n1528: Std_logic;
    signal n1529: Std_logic;
    signal n1530: Std_logic;
    signal r_stack7_WRE_INT: Std_logic;
    signal r_stack7_WCK_INT: Std_logic;
    signal r_stack7_WAD0_INT: Std_logic;
    signal r_stack7_WAD1_INT: Std_logic;
    signal r_stack7_WAD2_INT: Std_logic;
    signal r_stack7_WAD3_INT: Std_logic;
    signal r_stack7_WD0_INT: Std_logic;
    signal r_stack7_WD1_INT: Std_logic;
    signal r_stack7_WD2_INT: Std_logic;
    signal r_stack7_WD3_INT: Std_logic;
    signal n1523: Std_logic;
    signal n1524: Std_logic;
    signal n1525: Std_logic;
    signal n1526: Std_logic;
    signal r_stack8_WRE_INT: Std_logic;
    signal r_stack8_WCK_INT: Std_logic;
    signal r_stack8_WAD0_INT: Std_logic;
    signal r_stack8_WAD1_INT: Std_logic;
    signal r_stack8_WAD2_INT: Std_logic;
    signal r_stack8_WAD3_INT: Std_logic;
    signal r_stack8_WD0_INT: Std_logic;
    signal r_stack8_WD1_INT: Std_logic;
    signal r_stack8_WD2_INT: Std_logic;
    signal r_stack8_WD3_INT: Std_logic;
    signal n1519: Std_logic;
    signal n1520: Std_logic;
    signal n1521: Std_logic;
    signal n1522: Std_logic;
    signal r_stack9_WRE_INT: Std_logic;
    signal r_stack9_WCK_INT: Std_logic;
    signal r_stack9_WAD0_INT: Std_logic;
    signal r_stack9_WAD1_INT: Std_logic;
    signal r_stack9_WAD2_INT: Std_logic;
    signal r_stack9_WAD3_INT: Std_logic;
    signal r_stack9_WD0_INT: Std_logic;
    signal n1518: Std_logic;
    signal cpu1_a_sel_0: Std_logic;
    signal cpu1_n8600: Std_logic;
    signal cpu1_n2_adj_869: Std_logic;
    signal cpu1_a_in_8: Std_logic;
    signal cpu1_a_sel_2: Std_logic;
    signal cpu1_aload: Std_logic;
    signal cpu1_n2_adj_874: Std_logic;
    signal cpu1_a_in_9: Std_logic;
    signal cpu1_n2_adj_872: Std_logic;
    signal cpu1_a_in_10: Std_logic;
    signal cpu1_n2_adj_871: Std_logic;
    signal cpu1_a_in_11: Std_logic;
    signal cpu1_n2_adj_870: Std_logic;
    signal cpu1_a_in_12: Std_logic;
    signal cpu1_n2_adj_785: Std_logic;
    signal cpu1_a_in_13: Std_logic;
    signal cpu1_n2_adj_859: Std_logic;
    signal cpu1_a_in_14: Std_logic;
    signal cpu1_n3_adj_770: Std_logic;
    signal cpu1_slot_2: Std_logic;
    signal cpu1_n3_adj_767: Std_logic;
    signal cpu1_code_0: Std_logic;
    signal cpu1_n6404: Std_logic;
    signal cpu1_code_3: Std_logic;
    signal cpu1_n2084: Std_logic;
    signal cpu1_n6772: Std_logic;
    signal cpu1_intload: Std_logic;
    signal acknowledge_o_c: Std_logic;
    signal system_write: Std_logic;
    signal system_data_o_15_N_51: Std_logic;
    signal system_data_o_15_N_46: Std_logic;
    signal system_data_o_15_N_49: Std_logic;
    signal system_data_o_1: Std_logic;
    signal system_data_o_0: Std_logic;
    signal uart1_aclk_c_enable_108: Std_logic;
    signal baudrate_reg_0: Std_logic;
    signal baudrate_reg_1: Std_logic;
    signal system_data_o_15_N_40: Std_logic;
    signal system_data_o_15_N_43: Std_logic;
    signal system_data_o_3: Std_logic;
    signal system_data_o_2: Std_logic;
    signal baudrate_reg_2: Std_logic;
    signal baudrate_reg_3: Std_logic;
    signal system_data_o_15_N_34: Std_logic;
    signal system_data_o_15_N_37: Std_logic;
    signal system_data_o_5: Std_logic;
    signal system_data_o_4: Std_logic;
    signal baudrate_reg_4: Std_logic;
    signal baudrate_reg_5: Std_logic;
    signal system_data_o_15_N_28: Std_logic;
    signal system_data_o_15_N_31: Std_logic;
    signal system_data_o_7: Std_logic;
    signal system_data_o_6: Std_logic;
    signal baudrate_reg_6: Std_logic;
    signal baudrate_reg_7: Std_logic;
    signal system_data_o_15_N_22: Std_logic;
    signal system_data_o_15_N_25: Std_logic;
    signal system_data_o_9: Std_logic;
    signal system_data_o_8: Std_logic;
    signal baudrate_reg_8: Std_logic;
    signal baudrate_reg_9: Std_logic;
    signal system_data_o_15_N_16: Std_logic;
    signal system_data_o_15_N_19: Std_logic;
    signal system_data_o_11: Std_logic;
    signal system_data_o_10: Std_logic;
    signal baudrate_reg_10: Std_logic;
    signal baudrate_reg_11: Std_logic;
    signal system_data_o_15_N_10: Std_logic;
    signal system_data_o_15_N_13: Std_logic;
    signal system_data_o_13: Std_logic;
    signal system_data_o_12: Std_logic;
    signal baudrate_reg_12: Std_logic;
    signal baudrate_reg_13: Std_logic;
    signal system_data_o_15_N_2: Std_logic;
    signal system_data_o_15_N_7: Std_logic;
    signal system_data_o_15: Std_logic;
    signal system_data_o_14: Std_logic;
    signal baudrate_reg_14: Std_logic;
    signal baudrate_reg_15: Std_logic;
    signal cpu1_n2_adj_875: Std_logic;
    signal cpu1_a_in_0: Std_logic;
    signal cpu1_n2_adj_841: Std_logic;
    signal cpu1_a_in_1: Std_logic;
    signal cpu1_n2_adj_857: Std_logic;
    signal cpu1_a_in_2: Std_logic;
    signal cpu1_n2_adj_862: Std_logic;
    signal cpu1_a_in_3: Std_logic;
    signal cpu1_n2_adj_772: Std_logic;
    signal cpu1_a_in_4: Std_logic;
    signal cpu1_n2: Std_logic;
    signal cpu1_a_in_5: Std_logic;
    signal cpu1_n2_adj_844: Std_logic;
    signal cpu1_a_in_6: Std_logic;
    signal cpu1_n2_adj_865: Std_logic;
    signal cpu1_a_in_7: Std_logic;
    signal cpu1_n2_adj_861: Std_logic;
    signal cpu1_a_in_15: Std_logic;
    signal cpu1_n12_adj_815: Std_logic;
    signal cpu1_n8654: Std_logic;
    signal cpu1_a_in_16: Std_logic;
    signal cpu1_iload: Std_logic;
    signal cpu1_i_1: Std_logic;
    signal cpu1_i_2: Std_logic;
    signal cpu1_i_3: Std_logic;
    signal cpu1_i_4: Std_logic;
    signal cpu1_i_6: Std_logic;
    signal cpu1_i_7: Std_logic;
    signal cpu1_i_8: Std_logic;
    signal cpu1_i_9: Std_logic;
    signal cpu1_i_10: Std_logic;
    signal cpu1_i_11: Std_logic;
    signal cpu1_i_12: Std_logic;
    signal cpu1_i_13: Std_logic;
    signal cpu1_i_14: Std_logic;
    signal cpu1_i_15: Std_logic;
    signal cpu1_r_sel_1_N_248_1: Std_logic;
    signal slot_1: Std_logic;
    signal slot_0: Std_logic;
    signal cpu1_slot_2_N_315_2: Std_logic;
    signal cpu1_slot_2_N_318: Std_logic;
    signal cpu1_n9434: Std_logic;
    signal interrupt_i_c_0: Std_logic;
    signal cpu1_p_sel_0: Std_logic;
    signal p_sel_1: Std_logic;
    signal n3_adj_914: Std_logic;
    signal i_0: Std_logic;
    signal p_in_0: Std_logic;
    signal n8653: Std_logic;
    signal cpu1_pload: Std_logic;
    signal interrupt_i_c_1: Std_logic;
    signal cpu1_n627: Std_logic;
    signal cpu1_p_in_1: Std_logic;
    signal interrupt_i_c_2: Std_logic;
    signal cpu1_n626: Std_logic;
    signal cpu1_p_in_2: Std_logic;
    signal interrupt_i_c_3: Std_logic;
    signal cpu1_n625: Std_logic;
    signal cpu1_p_in_3: Std_logic;
    signal interrupt_i_c_4: Std_logic;
    signal cpu1_n624: Std_logic;
    signal cpu1_p_in_4: Std_logic;
    signal n8596: Std_logic;
    signal i_5: Std_logic;
    signal n6376: Std_logic;
    signal n7: Std_logic;
    signal p_in_5: Std_logic;
    signal n7595: Std_logic;
    signal cpu1_p_in_6: Std_logic;
    signal cpu1_p_in_7: Std_logic;
    signal cpu1_p_in_15: Std_logic;
    signal cpu1_aclk_c_enable_31: Std_logic;
    signal aclk_c_enable_123: Std_logic;
    signal gpio_dir_0: Std_logic;
    signal gpio_dir_1: Std_logic;
    signal gpio_dir_2: Std_logic;
    signal gpio_dir_3: Std_logic;
    signal gpio_dir_4: Std_logic;
    signal gpio_dir_5: Std_logic;
    signal gpio_dir_6: Std_logic;
    signal gpio_dir_7: Std_logic;
    signal gpio_dir_8: Std_logic;
    signal gpio_dir_9: Std_logic;
    signal gpio_dir_10: Std_logic;
    signal gpio_dir_11: Std_logic;
    signal gpio_dir_12: Std_logic;
    signal gpio_dir_13: Std_logic;
    signal gpio_dir_14: Std_logic;
    signal gpio_dir_15: Std_logic;
    signal gpio1_aclk_c_enable_138: Std_logic;
    signal gpio_out_0: Std_logic;
    signal gpio_out_1: Std_logic;
    signal gpio_out_2: Std_logic;
    signal gpio_out_3: Std_logic;
    signal gpio_out_4: Std_logic;
    signal gpio_out_5: Std_logic;
    signal gpio_out_6: Std_logic;
    signal gpio_out_7: Std_logic;
    signal gpio_out_8: Std_logic;
    signal gpio_out_9: Std_logic;
    signal gpio_out_10: Std_logic;
    signal gpio_out_11: Std_logic;
    signal gpio_out_12: Std_logic;
    signal gpio_out_13: Std_logic;
    signal gpio_out_14: Std_logic;
    signal gpio_out_15: Std_logic;
    signal uart1_aclk_c_enable_72: Std_logic;
    signal hw_xonoff_ff: Std_logic;
    signal cpu1_n4_adj_800: Std_logic;
    signal cpu1_n8655: Std_logic;
    signal cpu1_t_sel_3_N_308_1: Std_logic;
    signal cpu1_n8593: Std_logic;
    signal cpu1_t_sel_0: Std_logic;
    signal n8623: Std_logic;
    signal cpu1_t_in_0: Std_logic;
    signal cpu1_n7883: Std_logic;
    signal cpu1_t_sel_2: Std_logic;
    signal cpu1_n7465: Std_logic;
    signal cpu1_n7464: Std_logic;
    signal cpu1_tload: Std_logic;
    signal cpu1_n8457: Std_logic;
    signal cpu1_n7651: Std_logic;
    signal cpu1_n8610: Std_logic;
    signal cpu1_n8464: Std_logic;
    signal cpu1_n7658: Std_logic;
    signal cpu1_t_in_2: Std_logic;
    signal cpu1_t_in_1: Std_logic;
    signal cpu1_n8449: Std_logic;
    signal cpu1_n7637: Std_logic;
    signal cpu1_n8453: Std_logic;
    signal cpu1_n7644: Std_logic;
    signal cpu1_t_in_4: Std_logic;
    signal cpu1_t_in_3: Std_logic;
    signal cpu1_n8441: Std_logic;
    signal cpu1_n7623: Std_logic;
    signal cpu1_n8445: Std_logic;
    signal cpu1_n7630: Std_logic;
    signal cpu1_t_in_6: Std_logic;
    signal cpu1_t_in_5: Std_logic;
    signal cpu1_n8433: Std_logic;
    signal cpu1_n7767: Std_logic;
    signal cpu1_n8437: Std_logic;
    signal cpu1_n7774: Std_logic;
    signal cpu1_t_in_8: Std_logic;
    signal cpu1_t_in_7: Std_logic;
    signal cpu1_n8425: Std_logic;
    signal cpu1_n7753: Std_logic;
    signal cpu1_n8429: Std_logic;
    signal cpu1_n7760: Std_logic;
    signal cpu1_t_in_10: Std_logic;
    signal cpu1_t_in_9: Std_logic;
    signal cpu1_n8417: Std_logic;
    signal cpu1_n7739: Std_logic;
    signal cpu1_n8421: Std_logic;
    signal cpu1_n7746: Std_logic;
    signal cpu1_t_in_12: Std_logic;
    signal cpu1_t_in_11: Std_logic;
    signal cpu1_n8468: Std_logic;
    signal cpu1_n7665: Std_logic;
    signal cpu1_n8408: Std_logic;
    signal cpu1_n7702: Std_logic;
    signal cpu1_t_in_14: Std_logic;
    signal cpu1_t_in_13: Std_logic;
    signal cpu1_n5: Std_logic;
    signal cpu1_n3541: Std_logic;
    signal cpu1_n3_adj_769: Std_logic;
    signal cpu1_n8471: Std_logic;
    signal cpu1_n7492: Std_logic;
    signal cpu1_t_in_15: Std_logic;
    signal cpu1_aclk_c_enable_48: Std_logic;
    signal n8673: Std_logic;
    signal n1231: Std_logic;
    signal arst_c: Std_logic;
    signal n8614: Std_logic;
    signal n8671: Std_logic;
    signal n1226: Std_logic;
    signal n7545: Std_logic;
    signal n7557: Std_logic;
    signal aclk_c_enable_21: Std_logic;
    signal n8668: Std_logic;
    signal n1241: Std_logic;
    signal n8667: Std_logic;
    signal n1236: Std_logic;
    signal n7553: Std_logic;
    signal n7547: Std_logic;
    signal n1246: Std_logic;
    signal n7558: Std_logic;
    signal aclk_c_enable_29: Std_logic;
    signal n1251: Std_logic;
    signal n7551: Std_logic;
    signal aclk_c_enable_15: Std_logic;
    signal n1256: Std_logic;
    signal n7559: Std_logic;
    signal n1261: Std_logic;
    signal n7554: Std_logic;
    signal aclk_c_enable_18: Std_logic;
    signal n1271: Std_logic;
    signal n1266: Std_logic;
    signal n7560: Std_logic;
    signal n7561: Std_logic;
    signal aclk_c_enable_37: Std_logic;
    signal n1281: Std_logic;
    signal n1276: Std_logic;
    signal n7546: Std_logic;
    signal n7555: Std_logic;
    signal n1291: Std_logic;
    signal n1286: Std_logic;
    signal n7543: Std_logic;
    signal n7544: Std_logic;
    signal aclk_c_enable_16: Std_logic;
    signal n1301: Std_logic;
    signal n1296: Std_logic;
    signal n7539: Std_logic;
    signal n7552: Std_logic;
    signal n1346: Std_logic;
    signal n7105: Std_logic;
    signal n1341: Std_logic;
    signal n7541: Std_logic;
    signal n7542: Std_logic;
    signal aclk_c_enable_78: Std_logic;
    signal n7161: Std_logic;
    signal n1356: Std_logic;
    signal n1351: Std_logic;
    signal n7570: Std_logic;
    signal n7540: Std_logic;
    signal n1366: Std_logic;
    signal n8661: Std_logic;
    signal cpu1_n8665: Std_logic;
    signal n1361: Std_logic;
    signal n8675: Std_logic;
    signal n7564: Std_logic;
    signal n7565: Std_logic;
    signal n1376: Std_logic;
    signal n8666: Std_logic;
    signal n1371: Std_logic;
    signal n8663: Std_logic;
    signal n7569: Std_logic;
    signal n7549: Std_logic;
    signal n1386: Std_logic;
    signal cpu1_n8670: Std_logic;
    signal n1381: Std_logic;
    signal n7567: Std_logic;
    signal n7568: Std_logic;
    signal n1396: Std_logic;
    signal n1391: Std_logic;
    signal n7563: Std_logic;
    signal n7566: Std_logic;
    signal n1406: Std_logic;
    signal n1401: Std_logic;
    signal n7556: Std_logic;
    signal n7562: Std_logic;
    signal n1416: Std_logic;
    signal n1411: Std_logic;
    signal n7548: Std_logic;
    signal n7550: Std_logic;
    signal cpu1_p_in_8: Std_logic;
    signal cpu1_p_in_9: Std_logic;
    signal cpu1_p_in_10: Std_logic;
    signal cpu1_aclk_c_enable_35: Std_logic;
    signal cpu1_p_in_11: Std_logic;
    signal cpu1_p_in_12: Std_logic;
    signal cpu1_p_in_13: Std_logic;
    signal cpu1_p_in_14: Std_logic;
    signal cpu1_n6531: Std_logic;
    signal n1435: Std_logic;
    signal cpu1_n1436: Std_logic;
    signal cpu1_r_in_0: Std_logic;
    signal cpu1_r_sel_1: Std_logic;
    signal cpu1_rload: Std_logic;
    signal cpu1_n1437: Std_logic;
    signal cpu1_r_in_1: Std_logic;
    signal cpu1_n1438: Std_logic;
    signal cpu1_r_in_2: Std_logic;
    signal cpu1_n1439: Std_logic;
    signal cpu1_r_in_3: Std_logic;
    signal cpu1_n1440: Std_logic;
    signal cpu1_r_in_4: Std_logic;
    signal cpu1_n1441: Std_logic;
    signal cpu1_r_in_5: Std_logic;
    signal cpu1_n1442: Std_logic;
    signal cpu1_r_in_6: Std_logic;
    signal cpu1_n1443: Std_logic;
    signal cpu1_r_in_7: Std_logic;
    signal cpu1_n1444: Std_logic;
    signal cpu1_r_in_8: Std_logic;
    signal cpu1_n1445: Std_logic;
    signal cpu1_r_in_9: Std_logic;
    signal cpu1_n1446: Std_logic;
    signal cpu1_r_in_10: Std_logic;
    signal cpu1_n1447: Std_logic;
    signal cpu1_r_in_11: Std_logic;
    signal cpu1_n1448: Std_logic;
    signal cpu1_r_in_12: Std_logic;
    signal cpu1_n1449: Std_logic;
    signal cpu1_r_in_13: Std_logic;
    signal cpu1_n1450: Std_logic;
    signal cpu1_r_in_14: Std_logic;
    signal cpu1_n1451: Std_logic;
    signal cpu1_r_in_15: Std_logic;
    signal cpu1_n8662: Std_logic;
    signal cpu1_n1452: Std_logic;
    signal cpu1_r_in_16: Std_logic;
    signal cpu1_aclk_c_enable_153: Std_logic;
    signal cpu1_n7795: Std_logic;
    signal cpu1_n6927: Std_logic;
    signal cpu1_n2012: Std_logic;
    signal cpu1_n6881: Std_logic;
    signal cpu1_n6667: Std_logic;
    signal cpu1_n6637: Std_logic;
    signal cpu1_n5962: Std_logic;
    signal cpu1_n8605: Std_logic;
    signal cpu1_n6680: Std_logic;
    signal cpu1_n8212: Std_logic;
    signal cpu1_rpopp_N_376: Std_logic;
    signal cpu1_n7791: Std_logic;
    signal cpu1_n4_adj_773: Std_logic;
    signal cpu1_n6670: Std_logic;
    signal cpu1_n6638: Std_logic;
    signal cpu1_n8609: Std_logic;
    signal cpu1_n6548: Std_logic;
    signal cpu1_n6676: Std_logic;
    signal rp_4: Std_logic;
    signal cpu1_n8480: Std_logic;
    signal uart1_rx_shift_reg_1: Std_logic;
    signal uart1_rx_shift_reg_0: Std_logic;
    signal uart1_aclk_c_enable_149: Std_logic;
    signal rx_buffer_reg_0: Std_logic;
    signal rx_buffer_reg_1: Std_logic;
    signal uart1_rx_shift_reg_3: Std_logic;
    signal uart1_rx_shift_reg_2: Std_logic;
    signal rx_buffer_reg_2: Std_logic;
    signal rx_buffer_reg_3: Std_logic;
    signal uart1_rx_shift_reg_5: Std_logic;
    signal uart1_rx_shift_reg_4: Std_logic;
    signal rx_buffer_reg_4: Std_logic;
    signal rx_buffer_reg_5: Std_logic;
    signal uart1_rx_shift_reg_7: Std_logic;
    signal uart1_rx_shift_reg_6: Std_logic;
    signal rx_buffer_reg_6: Std_logic;
    signal rx_buffer_reg_7: Std_logic;
    signal uart1_n7299: Std_logic;
    signal uart1_n7315: Std_logic;
    signal uart1_n7317: Std_logic;
    signal uart1_n7305: Std_logic;
    signal n8660: Std_logic;
    signal rx_irq_o_N_643: Std_logic;
    signal rxd_ff: Std_logic;
    signal rx_en: Std_logic;
    signal uart1_rx_en_N_648: Std_logic;
    signal uart1_rxb_full_N_674: Std_logic;
    signal cpu1_slot_2_N_315_1: Std_logic;
    signal cpu1_slot_2_N_315_0: Std_logic;
    signal cpu1_aclk_c_enable_157: Std_logic;
    signal cpu1_n7797: Std_logic;
    signal cpu1_n1550: Std_logic;
    signal cpu1_n1968: Std_logic;
    signal cpu1_n6675: Std_logic;
    signal cpu1_n6674: Std_logic;
    signal cpu1_n8_adj_833: Std_logic;
    signal n8599: Std_logic;
    signal cpu1_n6673: Std_logic;
    signal cpu1_n6697: Std_logic;
    signal cpu1_spopp_N_372: Std_logic;
    signal cpu1_n8657: Std_logic;
    signal cpu1_n7793: Std_logic;
    signal cpu1_n8676: Std_logic;
    signal cpu1_n6663: Std_logic;
    signal cpu1_n6662: Std_logic;
    signal cpu1_n1734: Std_logic;
    signal sp_4: Std_logic;
    signal cpu1_n2024: Std_logic;
    signal cpu1_n8597: Std_logic;
    signal cpu1_n6: Std_logic;
    signal cpu1_n6664: Std_logic;
    signal cpu1_n6671: Std_logic;
    signal cpu1_n6_adj_820: Std_logic;
    signal cpu1_n6907: Std_logic;
    signal cpu1_s_16: Std_logic;
    signal cpu1_t_in_16: Std_logic;
    signal cpu1_n7613: Std_logic;
    signal cpu1_n7435: Std_logic;
    signal cpu1_n7434: Std_logic;
    signal cpu1_aclk_c_enable_74: Std_logic;
    signal n780: Std_logic;
    signal n3993: Std_logic;
    signal n3963: Std_logic;
    signal n3994: Std_logic;
    signal n3964: Std_logic;
    signal n4053: Std_logic;
    signal n4023: Std_logic;
    signal n4054: Std_logic;
    signal n4024: Std_logic;
    signal n4113: Std_logic;
    signal n4083: Std_logic;
    signal n4114: Std_logic;
    signal n4084: Std_logic;
    signal uart1_tx_rq: Std_logic;
    signal tx_en: Std_logic;
    signal uart1_tx_en_N_534: Std_logic;
    signal tx_en_N_533: Std_logic;
    signal uart1_n8658: Std_logic;
    signal uart1_tx_en_N_528: Std_logic;
    signal uart1_rx_bitcnt_0: Std_logic;
    signal uart1_n8642: Std_logic;
    signal uart1_rx_bitcnt_3_N_625_0: Std_logic;
    signal uart1_aclk_c_enable_93: Std_logic;
    signal uart1_rx_bitcnt_2: Std_logic;
    signal uart1_rx_bitcnt_1: Std_logic;
    signal uart1_n2702: Std_logic;
    signal uart1_n2706: Std_logic;
    signal uart1_n6423: Std_logic;
    signal uart1_n6: Std_logic;
    signal uart1_n8677: Std_logic;
    signal uart1_rx_bitcnt_3: Std_logic;
    signal uart1_rx_bitcnt_3_N_625_3: Std_logic;
    signal rx_counter_15_N_609_0: Std_logic;
    signal uart1_aclk_c_enable_92: Std_logic;
    signal rx_counter_15_N_609_1: Std_logic;
    signal rx_counter_15_N_609_2: Std_logic;
    signal rx_counter_15_N_609_3: Std_logic;
    signal rx_counter_15_N_609_4: Std_logic;
    signal rx_counter_15_N_609_5: Std_logic;
    signal uart1_rx_counter_15_N_609_6: Std_logic;
    signal uart1_rx_counter_15_N_609_7: Std_logic;
    signal uart1_rx_counter_15_N_609_8: Std_logic;
    signal uart1_rx_counter_15_N_609_9: Std_logic;
    signal uart1_rx_counter_15_N_609_10: Std_logic;
    signal uart1_rx_counter_15_N_609_11: Std_logic;
    signal uart1_rx_counter_15_N_609_12: Std_logic;
    signal uart1_rx_counter_15_N_609_13: Std_logic;
    signal uart1_rx_counter_15_N_609_14: Std_logic;
    signal uart1_n8638: Std_logic;
    signal uart1_n400: Std_logic;
    signal uart1_rx_counter_15_N_609_15: Std_logic;
    signal uart1_aclk_c_enable_69: Std_logic;
    signal uart1_rxb_full_N_676: Std_logic;
    signal rxb_full: Std_logic;
    signal uart1_n6413: Std_logic;
    signal uart1_aclk_c_enable_76: Std_logic;
    signal uart1_tx_bitcnt_0: Std_logic;
    signal uart1_tx_bitcnt_1: Std_logic;
    signal uart1_n8649: Std_logic;
    signal uart1_n3061: Std_logic;
    signal uart1_tx_bitcnt_3_N_485_0: Std_logic;
    signal uart1_tx_bitcnt_2: Std_logic;
    signal uart1_tx_bitcnt_3_N_597_2: Std_logic;
    signal uart1_n7359: Std_logic;
    signal uart1_tx_bitcnt_3: Std_logic;
    signal uart1_n8: Std_logic;
    signal uart1_n3078: Std_logic;
    signal uart1_n3094: Std_logic;
    signal uart1_n3079: Std_logic;
    signal uart1_n3095: Std_logic;
    signal uart1_n3074: Std_logic;
    signal uart1_n3076: Std_logic;
    signal uart1_n3075: Std_logic;
    signal uart1_n3077: Std_logic;
    signal uart1_n3070: Std_logic;
    signal uart1_n3072: Std_logic;
    signal uart1_n3071: Std_logic;
    signal uart1_n3073: Std_logic;
    signal uart1_n3066: Std_logic;
    signal uart1_n3068: Std_logic;
    signal uart1_n3067: Std_logic;
    signal uart1_n3069: Std_logic;
    signal uart1_n3062: Std_logic;
    signal uart1_n3064: Std_logic;
    signal uart1_n3063: Std_logic;
    signal uart1_n3065: Std_logic;
    signal uart1_n8669: Std_logic;
    signal uart1_aclk_c_enable_45: Std_logic;
    signal uart1_n8643: Std_logic;
    signal uart1_tx_shift_en: Std_logic;
    signal uart1_tx_shift_reg_1: Std_logic;
    signal uart1_aclk_c_enable_75: Std_logic;
    signal uart1_n6714: Std_logic;
    signal uart1_tx_shift_reg_0: Std_logic;
    signal uart1_tx_shift_reg_3: Std_logic;
    signal uart1_tx_shift_reg_2: Std_logic;
    signal uart1_n732: Std_logic;
    signal uart1_n731: Std_logic;
    signal uart1_tx_shift_reg_5: Std_logic;
    signal uart1_tx_shift_reg_4: Std_logic;
    signal uart1_n734: Std_logic;
    signal uart1_n733: Std_logic;
    signal uart1_tx_shift_reg_7: Std_logic;
    signal uart1_tx_shift_reg_6: Std_logic;
    signal uart1_n736: Std_logic;
    signal uart1_n735: Std_logic;
    signal uart1_tx_shift_reg_9: Std_logic;
    signal uart1_tx_shift_reg_8: Std_logic;
    signal uart1_n738: Std_logic;
    signal uart1_n737: Std_logic;
    signal uart1_tx_shift_reg_10: Std_logic;
    signal n9433: Std_logic;
    signal uart1_n739: Std_logic;
    signal uart1_n8678: Std_logic;
    signal uart1_txd_o_N_662: Std_logic;
    signal uart1_aclk_c_enable_73: Std_logic;
    signal uart_o_c: Std_logic;
    signal n8622: Std_logic;
    signal data_o_15_N_441: Std_logic;
    signal gpio1_n2193: Std_logic;
    signal ioport_out_0: Std_logic;
    signal gpio1_n2194: Std_logic;
    signal memory_addr_1: Std_logic;
    signal ioport_out_5: Std_logic;
    signal n30_adj_909: Std_logic;
    signal n28_adj_913: Std_logic;
    signal ioport_out_6: Std_logic;
    signal n30: Std_logic;
    signal n28_adj_908: Std_logic;
    signal n8592: Std_logic;
    signal ioport_out_15: Std_logic;
    signal n7611: Std_logic;
    signal n1099: Std_logic;
    signal ioport_out_14: Std_logic;
    signal n1098: Std_logic;
    signal ioport_out_13: Std_logic;
    signal n1097: Std_logic;
    signal ioport_out_12: Std_logic;
    signal n1096: Std_logic;
    signal ioport_out_11: Std_logic;
    signal n1095: Std_logic;
    signal ioport_out_10: Std_logic;
    signal n1094: Std_logic;
    signal ioport_out_9: Std_logic;
    signal n1093: Std_logic;
    signal ioport_out_7: Std_logic;
    signal n1171: Std_logic;
    signal n1091: Std_logic;
    signal system_read: Std_logic;
    signal n1996: Std_logic;
    signal n8621: Std_logic;
    signal gpio1_n1_adj_893: Std_logic;
    signal n1084: Std_logic;
    signal gpio1_n8242: Std_logic;
    signal ioport_out_2: Std_logic;
    signal n30_adj_923: Std_logic;
    signal n28_adj_926: Std_logic;
    signal ioport_out_1: Std_logic;
    signal n30_adj_927: Std_logic;
    signal n28: Std_logic;
    signal n6891: Std_logic;
    signal n6893: Std_logic;
    signal n6901: Std_logic;
    signal n6903: Std_logic;
    signal n8637: Std_logic;
    signal n18: Std_logic;
    signal n7691: Std_logic;
    signal n7690: Std_logic;
    signal n7694: Std_logic;
    signal n7693: Std_logic;
    signal n7692: Std_logic;
    signal n7695: Std_logic;
    signal n7713: Std_logic;
    signal n7712: Std_logic;
    signal n7716: Std_logic;
    signal n7717: Std_logic;
    signal n1419: Std_logic;
    signal n7715: Std_logic;
    signal n7714: Std_logic;
    signal n7728: Std_logic;
    signal n7727: Std_logic;
    signal n7731: Std_logic;
    signal n7732: Std_logic;
    signal n7733: Std_logic;
    signal n7730: Std_logic;
    signal n7729: Std_logic;
    signal n3: Std_logic;
    signal n7676: Std_logic;
    signal n7675: Std_logic;
    signal n7679: Std_logic;
    signal n7680: Std_logic;
    signal n1304: Std_logic;
    signal n7678: Std_logic;
    signal n7677: Std_logic;
    signal n8640: Std_logic;
    signal cpu1_n7772: Std_logic;
    signal cpu1_n7771: Std_logic;
    signal cpu1_n7621: Std_logic;
    signal cpu1_n7620: Std_logic;
    signal cpu1_n7628: Std_logic;
    signal cpu1_n7627: Std_logic;
    signal n8629: Std_logic;
    signal cpu1_n7635: Std_logic;
    signal cpu1_n7634: Std_logic;
    signal cpu1_n3: Std_logic;
    signal cpu1_n7397: Std_logic;
    signal cpu1_code_2: Std_logic;
    signal cpu1_n6372: Std_logic;
    signal cpu1_n21: Std_logic;
    signal cpu1_code_4: Std_logic;
    signal cpu1_n8465: Std_logic;
    signal n8631: Std_logic;
    signal cpu1_n35: Std_logic;
    signal cpu1_n8635: Std_logic;
    signal cpu1_n25: Std_logic;
    signal cpu1_code_1: Std_logic;
    signal cpu1_n7616: Std_logic;
    signal cpu1_n10: Std_logic;
    signal cpu1_n7642: Std_logic;
    signal cpu1_n7641: Std_logic;
    signal cpu1_n8461: Std_logic;
    signal n8632: Std_logic;
    signal cpu1_n33: Std_logic;
    signal cpu1_n7649: Std_logic;
    signal cpu1_n7648: Std_logic;
    signal cpu1_n7656: Std_logic;
    signal cpu1_n7655: Std_logic;
    signal cpu1_n8656: Std_logic;
    signal cpu1_rpopp_N_378: Std_logic;
    signal cpu1_n8454: Std_logic;
    signal n8633: Std_logic;
    signal cpu1_n8450: Std_logic;
    signal n8634: Std_logic;
    signal cpu1_n4_adj_776: Std_logic;
    signal cpu1_reset_N_406: Std_logic;
    signal cpu1_n7663: Std_logic;
    signal cpu1_n7662: Std_logic;
    signal cpu1_n18: Std_logic;
    signal cpu1_n30_adj_781: Std_logic;
    signal cpu1_n8446: Std_logic;
    signal n8612: Std_logic;
    signal cpu1_n8442: Std_logic;
    signal n8620: Std_logic;
    signal cpu1_n7_adj_828: Std_logic;
    signal cpu1_n7433: Std_logic;
    signal cpu1_n5704: Std_logic;
    signal cpu1_n8438: Std_logic;
    signal n8613: Std_logic;
    signal cpu1_n8434: Std_logic;
    signal n8619: Std_logic;
    signal cpu1_n8430: Std_logic;
    signal n8624: Std_logic;
    signal cpu1_n8426: Std_logic;
    signal n8625: Std_logic;
    signal cpu1_n8422: Std_logic;
    signal n8626: Std_logic;
    signal cpu1_n8418: Std_logic;
    signal n8627: Std_logic;
    signal cpu1_n8414: Std_logic;
    signal n8628: Std_logic;
    signal cpu1_n29: Std_logic;
    signal cpu1_n8697: Std_logic;
    signal cpu1_n8644: Std_logic;
    signal cpu1_t_sel_3_N_308_0: Std_logic;
    signal cpu1_n8405: Std_logic;
    signal n8630: Std_logic;
    signal cpu1_n7765: Std_logic;
    signal cpu1_n7422: Std_logic;
    signal cpu1_n7423: Std_logic;
    signal cpu1_n11_adj_835: Std_logic;
    signal cpu1_n5700: Std_logic;
    signal cpu1_n7700: Std_logic;
    signal cpu1_n7699: Std_logic;
    signal cpu1_n7737: Std_logic;
    signal cpu1_n7736: Std_logic;
    signal cpu1_n7744: Std_logic;
    signal cpu1_n7743: Std_logic;
    signal cpu1_n7751: Std_logic;
    signal cpu1_n7750: Std_logic;
    signal cpu1_n7758: Std_logic;
    signal cpu1_n7757: Std_logic;
    signal cpu1_n7764: Std_logic;
    signal cpu1_rload_N_400: Std_logic;
    signal cpu1_n8691: Std_logic;
    signal cpu1_n8688: Std_logic;
    signal ioport_out_3: Std_logic;
    signal n30_adj_919: Std_logic;
    signal n28_adj_922: Std_logic;
    signal ioport_out_4: Std_logic;
    signal n30_adj_915: Std_logic;
    signal n28_adj_918: Std_logic;
    signal cpu1_n8641: Std_logic;
    signal n8651: Std_logic;
    signal cpu1_n8685: Std_logic;
    signal cpu1_t_sel_3_N_308_2: Std_logic;
    signal cpu1_n8672: Std_logic;
    signal n963: Std_logic;
    signal cpu1_n6913: Std_logic;
    signal cpu1_n8683: Std_logic;
    signal cpu1_n26: Std_logic;
    signal cpu1_n6985: Std_logic;
    signal cpu1_n6367: Std_logic;
    signal cpu1_n8645: Std_logic;
    signal memory_addr_5: Std_logic;
    signal n8617: Std_logic;
    signal memory_addr_4: Std_logic;
    signal n8616: Std_logic;
    signal n7401: Std_logic;
    signal n8615: Std_logic;
    signal n7405: Std_logic;
    signal gpio1_n8243: Std_logic;
    signal ioport_out_8: Std_logic;
    signal gpio1_n8244: Std_logic;
    signal n6537: Std_logic;
    signal n8618: Std_logic;
    signal n8245: Std_logic;
    signal memory_data_o_8: Std_logic;
    signal gpio1_n6969: Std_logic;
    signal n8602: Std_logic;
    signal n8603: Std_logic;
    signal n8608: Std_logic;
    signal n8604: Std_logic;
    signal n7407: Std_logic;
    signal n6835: Std_logic;
    signal n8601: Std_logic;
    signal n7043: Std_logic;
    signal memory_data_o_12: Std_logic;
    signal n7411: Std_logic;
    signal n7403: Std_logic;
    signal n7011: Std_logic;
    signal uart1_n743: Std_logic;
    signal uart1_n7335: Std_logic;
    signal uart1_n7351: Std_logic;
    signal uart1_n7353: Std_logic;
    signal uart1_n7341: Std_logic;
    signal n7027: Std_logic;
    signal cpu1_n6957: Std_logic;
    signal cpu1_n8636: Std_logic;
    signal n6010: Std_logic;
    signal cpu1_n6823: Std_logic;
    signal n6833: Std_logic;
    signal n7025: Std_logic;
    signal n7001: Std_logic;
    signal uart1_n7077: Std_logic;
    signal uart1_n7083: Std_logic;
    signal n8607: Std_logic;
    signal uart1_n7307: Std_logic;
    signal uart1_n7313: Std_logic;
    signal uart1_n7343: Std_logic;
    signal uart1_n7349: Std_logic;
    signal uart1_n6937: Std_logic;
    signal uart1_aclk_c_enable_24: Std_logic;
    signal n8606: Std_logic;
    signal uart1_n7051: Std_logic;
    signal uart1_n7053: Std_logic;
    signal uart1_n8681: Std_logic;
    signal uart1_n8648: Std_logic;
    signal uart1_n8682: Std_logic;
    signal cpu1_n8646: Std_logic;
    signal cpu1_n7291: Std_logic;
    signal cpu1_n7097: Std_logic;
    signal cpu1_n7223: Std_logic;
    signal cpu1_n7239: Std_logic;
    signal cpu1_n7241: Std_logic;
    signal cpu1_n7229: Std_logic;
    signal cpu1_n7283: Std_logic;
    signal cpu1_n30_adj_873: Std_logic;
    signal cpu1_n32: Std_logic;
    signal cpu1_n8_adj_837: Std_logic;
    signal cpu1_n8647: Std_logic;
    signal cpu1_n8746: Std_logic;
    signal cpu1_n14: Std_logic;
    signal cpu1_n46: Std_logic;
    signal cpu1_n30_adj_799: Std_logic;
    signal cpu1_n7: Std_logic;
    signal cpu1_n7273: Std_logic;
    signal cpu1_n7265: Std_logic;
    signal cpu1_n8123: Std_logic;
    signal cpu1_n6770: Std_logic;
    signal cpu1_n7209: Std_logic;
    signal cpu1_r_sel_1_N_246_1: Std_logic;
    signal cpu1_n8652: Std_logic;
    signal memory_addr_11: Std_logic;
    signal memory_addr_10: Std_logic;
    signal cpu1_n7231: Std_logic;
    signal cpu1_n7237: Std_logic;
    signal cpu1_n7255: Std_logic;
    signal cpu1_n7269: Std_logic;
    signal uart_i_c: Std_logic;
    signal memory_addr_8: Std_logic;
    signal memory_addr_9: Std_logic;
    signal memory_data_o_1: Std_logic;
    signal memory_data_o_14: Std_logic;
    signal memory_data_o_15: Std_logic;
    signal memory_data_o_13: Std_logic;
    signal memory_data_o_11: Std_logic;
    signal memory_data_o_10: Std_logic;
    signal memory_data_o_9: Std_logic;
    signal memory_data_o_7: Std_logic;
    signal memory_data_o_5: Std_logic;
    signal memory_data_o_0: Std_logic;
    signal memory_data_o_4: Std_logic;
    signal memory_data_o_3: Std_logic;
    signal memory_data_o_2: Std_logic;
    signal memory_data_o_6: Std_logic;
    component PUR
      port (PUR: in Std_logic);
    end component;
    component ioport_15_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport15: inout Std_logic);
    end component;
    component ioport_14_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport14: inout Std_logic);
    end component;
    component ioport_13_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport13: inout Std_logic);
    end component;
    component ioport_12_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport12: inout Std_logic);
    end component;
    component ioport_11_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport11: inout Std_logic);
    end component;
    component ioport_10_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport10: inout Std_logic);
    end component;
    component ioport_9_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport9: inout Std_logic);
    end component;
    component ioport_8_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport8: inout Std_logic);
    end component;
    component ioport_7_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport7: inout Std_logic);
    end component;
    component ioport_6_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport6: inout Std_logic);
    end component;
    component ioport_5_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport5: inout Std_logic);
    end component;
    component ioport_4_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport4: inout Std_logic);
    end component;
    component ioport_3_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport3: inout Std_logic);
    end component;
    component ioport_2_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport2: inout Std_logic);
    end component;
    component ioport_1_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport1: inout Std_logic);
    end component;
    component ioport_0_B
      port (PADDI: out Std_logic; PADDT: in Std_logic; PADDO: in Std_logic; 
            ioport0: inout Std_logic);
    end component;
    component uart_oB
      port (PADDO: in Std_logic; uarto: out Std_logic);
    end component;
    component acknowledge_oB
      port (PADDO: in Std_logic; acknowledgeo: out Std_logic);
    end component;
    component aclkB
      port (PADDI: out Std_logic; aclkS: in Std_logic);
    end component;
    component arstB
      port (PADDI: out Std_logic; arstS: in Std_logic);
    end component;
    component interrupt_i_4_B
      port (PADDI: out Std_logic; interrupti4: in Std_logic);
    end component;
    component interrupt_i_3_B
      port (PADDI: out Std_logic; interrupti3: in Std_logic);
    end component;
    component interrupt_i_2_B
      port (PADDI: out Std_logic; interrupti2: in Std_logic);
    end component;
    component interrupt_i_1_B
      port (PADDI: out Std_logic; interrupti1: in Std_logic);
    end component;
    component interrupt_i_0_B
      port (PADDI: out Std_logic; interrupti0: in Std_logic);
    end component;
    component uart_iB
      port (PADDI: out Std_logic; uarti: in Std_logic);
    end component;
    component GSR_INSTB
      port (GSRNET: in Std_logic);
    end component;
    component ram_memory_0_ram_memory_0_3_0
      port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
            DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
            ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
            ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
            ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
            ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
            CLKA: in Std_logic; MORCLKA: in Std_logic);
    end component;
    component ram_memory_0_ram_memory_0_1_2
      port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
            DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
            ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
            ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
            ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
            ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
            CLKA: in Std_logic; MORCLKA: in Std_logic);
    end component;
    component ram_memory_0_ram_memory_0_0_3
      port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
            DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
            ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
            ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
            ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
            ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
            CLKA: in Std_logic; MORCLKA: in Std_logic);
    end component;
    component ram_memory_0_ram_memory_0_2_1
      port (DIA3: in Std_logic; DIA2: in Std_logic; DIA1: in Std_logic; 
            DIA0: in Std_logic; ADA13: in Std_logic; ADA12: in Std_logic; 
            ADA11: in Std_logic; ADA10: in Std_logic; ADA9: in Std_logic; 
            ADA8: in Std_logic; ADA7: in Std_logic; ADA6: in Std_logic; 
            ADA5: in Std_logic; ADA4: in Std_logic; ADA3: in Std_logic; 
            ADA2: in Std_logic; DOA3: out Std_logic; DOA2: out Std_logic; 
            DOA1: out Std_logic; DOA0: out Std_logic; WEA: in Std_logic; 
            CLKA: in Std_logic; MORCLKA: in Std_logic);
    end component;
  begin
    uart1_SLICE_0I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>tx_counter_6, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>tx_counter_5, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5684, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5685, F1=>n63, Q1=>open, F0=>n66, 
                Q0=>open);
    uart1_SLICE_1I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>tx_counter_4, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>tx_counter_3, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5683, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5684, F1=>n69, Q1=>open, F0=>n72, 
                Q0=>open);
    uart1_SLICE_2I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>tx_counter_2, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>tx_counter_1, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5682, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5683, F1=>n75, Q1=>open, F0=>n78, 
                Q0=>open);
    uart1_SLICE_3I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_tx_counter_0, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>uart1_n5682, F1=>uart1_n81, Q1=>open, F0=>open, Q0=>open);
    uart1_SLICE_4I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>uart1_rx_counter_15, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5681, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>uart1_n36, 
                Q0=>open);
    uart1_SLICE_5I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_14, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_13, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5680, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5681, F1=>uart1_n39, 
                Q1=>open, F0=>uart1_n42, Q0=>open);
    uart1_SLICE_6I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_12, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_11, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5679, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5680, F1=>uart1_n45, 
                Q1=>open, F0=>uart1_n48, Q0=>open);
    uart1_SLICE_7I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_10, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_9, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5678, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5679, F1=>uart1_n51, 
                Q1=>open, F0=>uart1_n54, Q0=>open);
    uart1_SLICE_8I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_8, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_7, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5677, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5678, F1=>uart1_n57, Q1=>open, 
                F0=>uart1_n60, Q0=>open);
    uart1_SLICE_9I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_6, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_5, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5676, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5677, F1=>uart1_n63_adj_876, Q1=>open, 
                F0=>n66_adj_901, Q0=>open);
    uart1_SLICE_10I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_4, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_3, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5675, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5676, F1=>n69_adj_902, Q1=>open, 
                F0=>n72_adj_903, Q0=>open);
    uart1_SLICE_11I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_2, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_1, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5674, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5675, F1=>n75_adj_904, Q1=>open, 
                F0=>n78_adj_905, Q0=>open);
    uart1_SLICE_12I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_rx_counter_0, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>uart1_n5674, F1=>n81, Q1=>open, F0=>open, Q0=>open);
    uart1_SLICE_13I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>uart1_tx_counter_15, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5689, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>open, Q1=>open, F0=>uart1_n36_adj_891, 
                Q0=>open);
    uart1_SLICE_14I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_tx_counter_14, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_13, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5688, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5689, 
                F1=>uart1_n39_adj_890, Q1=>open, F0=>uart1_n42_adj_889, 
                Q0=>open);
    uart1_SLICE_15I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_tx_counter_12, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_11, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5687, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5688, 
                F1=>uart1_n45_adj_888, Q1=>open, F0=>uart1_n48_adj_887, 
                Q0=>open);
    uart1_SLICE_16I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_tx_counter_10, B1=>'X', C1=>'X', 
                D1=>VCC_net, DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_9, 
                B0=>'X', C0=>'X', D0=>VCC_net, FCI=>uart1_n5686, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', FCO=>uart1_n5687, 
                F1=>uart1_n51_adj_886, Q1=>open, F0=>uart1_n54_adj_885, 
                Q0=>open);
    uart1_SLICE_17I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>uart1_tx_counter_8, B1=>'X', C1=>'X', D1=>VCC_net, 
                DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_7, B0=>'X', C0=>'X', 
                D0=>VCC_net, FCI=>uart1_n5685, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>uart1_n5686, F1=>uart1_n57_adj_884, Q1=>open, 
                F0=>uart1_n60_adj_883, Q0=>open);
    cpu1_SLICE_18I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_2, B1=>n1305, C1=>n8664, D1=>n1323, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_1, B0=>n1305, C0=>n8664, 
                D0=>n1322, FCI=>cpu1_n5666, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5667, F1=>cpu1_sum_2, Q1=>open, 
                F0=>cpu1_sum_1, Q0=>open);
    cpu1_SLICE_19I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_0, B1=>n1305, C1=>n8664, D1=>n1321, 
                DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', 
                FCI=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5666, F1=>cpu1_sum_0, Q1=>open, F0=>open, Q0=>open);
    cpu1_SLICE_20I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0x0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_p_15, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5665, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>open, Q1=>open, F0=>cpu1_p_in_15_N_282_15, 
                Q0=>open);
    cpu1_SLICE_21I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>p_14, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>p_13, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5664, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5665, 
                F1=>cpu1_p_in_15_N_282_14, Q1=>open, F0=>cpu1_p_in_15_N_282_13, 
                Q0=>open);
    cpu1_SLICE_22I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>p_12, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>p_11, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5663, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5664, 
                F1=>cpu1_p_in_15_N_282_12, Q1=>open, F0=>cpu1_p_in_15_N_282_11, 
                Q0=>open);
    cpu1_SLICE_23I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>p_10, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>p_9, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5662, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5663, 
                F1=>cpu1_p_in_15_N_282_10, Q1=>open, F0=>cpu1_p_in_15_N_282_9, 
                Q0=>open);
    cpu1_SLICE_24I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>a_12, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_11, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5654, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5655, 
                F1=>cpu1_a_in_16_N_215_12, Q1=>open, F0=>cpu1_a_in_16_N_215_11, 
                Q0=>open);
    cpu1_SLICE_25I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>p_8, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_p_7, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5661, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5662, F1=>cpu1_p_in_15_N_282_8, Q1=>open, 
                F0=>cpu1_p_in_15_N_282_7, Q0=>open);
    cpu1_SLICE_26I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>a_10, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_9, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5653, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5654, 
                F1=>cpu1_a_in_16_N_215_10, Q1=>open, F0=>cpu1_a_in_16_N_215_9, 
                Q0=>open);
    cpu1_SLICE_27I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_p_6, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_p_5, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5660, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5661, F1=>cpu1_p_in_15_N_282_6, Q1=>open, 
                F0=>p_in_15_N_282_5, Q0=>open);
    cpu1_SLICE_28I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_p_4, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_p_3, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5659, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5660, F1=>cpu1_p_in_15_N_282_4, Q1=>open, 
                F0=>cpu1_p_in_15_N_282_3, Q0=>open);
    cpu1_SLICE_29I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>cpu1_a_0, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5649, 
                F1=>cpu1_a_in_16_N_215_0, Q1=>open, F0=>open, Q0=>open);
    cpu1_SLICE_30I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_p_2, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_p_1, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5658, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5659, F1=>cpu1_p_in_15_N_282_2, Q1=>open, 
                F0=>cpu1_p_in_15_N_282_1, Q0=>open);
    cpu1_SLICE_31I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>a_8, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_7, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5652, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5653, F1=>cpu1_a_in_16_N_215_8, Q1=>open, 
                F0=>cpu1_a_in_16_N_215_7, Q0=>open);
    cpu1_SLICE_32I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_a_6, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_5, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5651, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5652, F1=>cpu1_a_in_16_N_215_6, Q1=>open, 
                F0=>cpu1_a_in_16_N_215_5, Q0=>open);
    cpu1_SLICE_33I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>cpu1_p_0, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5658, 
                F1=>p_in_15_N_282_0, Q1=>open, F0=>open, Q0=>open);
    cpu1_SLICE_34I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_a_4, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_3, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5650, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5651, F1=>cpu1_a_in_16_N_215_4, Q1=>open, 
                F0=>cpu1_a_in_16_N_215_3, Q0=>open);
    cpu1_SLICE_35I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x0000")
      port map (M1=>'X', A1=>'X', B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>memory_data_i_15, B0=>n1305, C0=>n8664, 
                D0=>n1336, FCI=>cpu1_n5673, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>open, F1=>cpu1_sum_16, Q1=>open, 
                F0=>cpu1_sum_15, Q0=>open);
    cpu1_SLICE_36I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_14, B1=>n1305, C1=>n8664, D1=>n1335, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_13, B0=>n1305, C0=>n8664, 
                D0=>n1334, FCI=>cpu1_n5672, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5673, F1=>cpu1_sum_14, Q1=>open, 
                F0=>cpu1_sum_13, Q0=>open);
    cpu1_SLICE_37I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_a_16, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_15, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5656, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>cpu1_a_in_16_N_215_16, Q1=>open, 
                F0=>cpu1_a_in_16_N_215_15, Q0=>open);
    cpu1_SLICE_38I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_16, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_15, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5697, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>open, F1=>cpu1_r_in_16_N_181_16, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_15, Q0=>open);
    cpu1_SLICE_39I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_14, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_13, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5696, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5697, F1=>cpu1_r_in_16_N_181_14, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_13, Q0=>open);
    cpu1_SLICE_40I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_12, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_11, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5695, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5696, F1=>cpu1_r_in_16_N_181_12, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_11, Q0=>open);
    cpu1_SLICE_41I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_10, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_9, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5694, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5695, F1=>cpu1_r_in_16_N_181_10, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_9, Q0=>open);
    cpu1_SLICE_42I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_8, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_7, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5693, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5694, F1=>cpu1_r_in_16_N_181_8, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_7, Q0=>open);
    cpu1_SLICE_43I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_6, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_5, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5692, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5693, F1=>cpu1_r_in_16_N_181_6, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_5, Q0=>open);
    cpu1_SLICE_44I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_4, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_3, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5691, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5692, F1=>cpu1_r_in_16_N_181_4, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_3, Q0=>open);
    cpu1_SLICE_45I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x55AA", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_2, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>r_1, B0=>'X', C0=>'X', D0=>VCC_net, 
                FCI=>cpu1_n5690, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5691, F1=>cpu1_r_in_16_N_181_2, Q1=>open, 
                F0=>cpu1_r_in_16_N_181_1, Q0=>open);
    cpu1_SLICE_46I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x0000", INIT1_INITVAL=>"0x55AA")
      port map (M1=>'X', A1=>r_0, B1=>'X', C1=>'X', D1=>VCC_net, DI1=>'X', 
                DI0=>'X', A0=>'X', B0=>'X', C0=>'X', D0=>'X', FCI=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5690, 
                F1=>cpu1_r_in_16_N_181_0, Q1=>open, F0=>open, Q0=>open);
    cpu1_SLICE_47I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_12, B1=>n1305, C1=>n8664, D1=>n1333, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_11, B0=>n1305, C0=>n8664, 
                D0=>n1332, FCI=>cpu1_n5671, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5672, F1=>cpu1_sum_12, Q1=>open, 
                F0=>cpu1_sum_11, Q0=>open);
    cpu1_SLICE_48I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_10, B1=>n1305, C1=>n8664, D1=>n1331, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_9, B0=>n1305, C0=>n8664, 
                D0=>n1330, FCI=>cpu1_n5670, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5671, F1=>cpu1_sum_10, Q1=>open, 
                F0=>cpu1_sum_9, Q0=>open);
    cpu1_SLICE_49I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_8, B1=>n1305, C1=>n8664, D1=>n1329, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_7, B0=>n1305, C0=>n8664, 
                D0=>n1328, FCI=>cpu1_n5669, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5670, F1=>cpu1_sum_8, Q1=>open, 
                F0=>cpu1_sum_7, Q0=>open);
    cpu1_SLICE_50I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>a_14, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_13, B0=>'X', C0=>'X', D0=>'X', FCI=>cpu1_n5655, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', FCO=>cpu1_n5656, 
                F1=>cpu1_a_in_16_N_215_14, Q1=>open, F0=>cpu1_a_in_16_N_215_13, 
                Q0=>open);
    cpu1_SLICE_51I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_6, B1=>n1305, C1=>n8664, D1=>n1327, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_5, B0=>n1305, C0=>n8664, 
                D0=>n1326, FCI=>cpu1_n5668, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5669, F1=>cpu1_sum_6, Q1=>open, 
                F0=>cpu1_sum_5, Q0=>open);
    cpu1_SLICE_52I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0xAAAA", INIT1_INITVAL=>"0xAAAA")
      port map (M1=>'X', A1=>cpu1_a_2, B1=>'X', C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_1, B0=>'X', C0=>'X', D0=>'X', 
                FCI=>cpu1_n5649, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                FCO=>cpu1_n5650, F1=>cpu1_a_in_16_N_215_2, Q1=>open, 
                F0=>cpu1_a_in_16_N_215_1, Q0=>open);
    cpu1_SLICE_53I: SCCU2B
      generic map (CCU2_INJECT1_0=>"NO", CCU2_INJECT1_1=>"NO", 
                   INIT0_INITVAL=>"0x6aaa", INIT1_INITVAL=>"0x6aaa")
      port map (M1=>'X', A1=>memory_data_i_4, B1=>n1305, C1=>n8664, D1=>n1325, 
                DI1=>'X', DI0=>'X', A0=>memory_data_i_3, B0=>n1305, C0=>n8664, 
                D0=>n1324, FCI=>cpu1_n5667, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', FCO=>cpu1_n5668, F1=>cpu1_sum_4, Q1=>open, 
                F0=>cpu1_sum_3, Q0=>open);
    n13130_SLICE_54I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>n8674, B1=>'X', C1=>'X', D1=>'X', A0=>sp1_0, B0=>sp1_1, 
                C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1309, 
                WDO0=>n13130_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>n13130_WAD0_INT, WADO1=>n13130_WAD1_INT, 
                WADO2=>n13130_WAD2_INT, WADO3=>n13130_WAD3_INT, 
                WCKO=>n13130_WCK_INT, WREO=>n13130_WRE_INT);
    n13130_SLICE_55I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>'X', WD0=>n13130_WD0_INT, WAD0=>n13130_WAD0_INT, 
                WAD1=>n13130_WAD1_INT, WAD2=>n13130_WAD2_INT, 
                WAD3=>n13130_WAD3_INT, WRE=>n13130_WRE_INT, 
                WCK=>n13130_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1314, Q0=>open, F1=>open, Q1=>open);
    n14310_SLICE_56I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>rp1_4, B1=>'X', C1=>'X', D1=>'X', A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1427, 
                WDO0=>n14310_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>n14310_WAD0_INT, WADO1=>n14310_WAD1_INT, 
                WADO2=>n14310_WAD2_INT, WADO3=>n14310_WAD3_INT, 
                WCKO=>n14310_WCK_INT, WREO=>n14310_WRE_INT);
    n14310_SLICE_57I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>'X', WD0=>n14310_WD0_INT, WAD0=>n14310_WAD0_INT, 
                WAD1=>n14310_WAD1_INT, WAD2=>n14310_WAD2_INT, 
                WAD3=>n14310_WAD3_INT, WRE=>n14310_WRE_INT, 
                WCK=>n14310_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1432, Q0=>open, F1=>open, Q1=>open);
    r_stack1_SLICE_58I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_13, B1=>r_14, C1=>r_15, D1=>r_16, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1536, 
                WDO0=>r_stack1_WD0_INT, WDO1=>r_stack1_WD1_INT, 
                WDO2=>r_stack1_WD2_INT, WDO3=>r_stack1_WD3_INT, 
                WADO0=>r_stack1_WAD0_INT, WADO1=>r_stack1_WAD1_INT, 
                WADO2=>r_stack1_WAD2_INT, WADO3=>r_stack1_WAD3_INT, 
                WCKO=>r_stack1_WCK_INT, WREO=>r_stack1_WRE_INT);
    r_stack1_SLICE_59I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack1_WD1_INT, WD0=>r_stack1_WD0_INT, 
                WAD0=>r_stack1_WAD0_INT, WAD1=>r_stack1_WAD1_INT, 
                WAD2=>r_stack1_WAD2_INT, WAD3=>r_stack1_WAD3_INT, 
                WRE=>r_stack1_WRE_INT, WCK=>r_stack1_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1514, Q0=>open, 
                F1=>n1515, Q1=>open);
    r_stack1_SLICE_60I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack1_WD3_INT, WD0=>r_stack1_WD2_INT, 
                WAD0=>r_stack1_WAD0_INT, WAD1=>r_stack1_WAD1_INT, 
                WAD2=>r_stack1_WAD2_INT, WAD3=>r_stack1_WAD3_INT, 
                WRE=>r_stack1_WRE_INT, WCK=>r_stack1_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1516, Q0=>open, 
                F1=>n1517, Q1=>open);
    s_stack1_SLICE_61I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_13, B1=>memory_data_i_14, 
                C1=>memory_data_i_15, D1=>t_16, A0=>sp1_0, B0=>sp1_1, 
                C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1497, 
                WDO0=>s_stack1_WD0_INT, WDO1=>s_stack1_WD1_INT, 
                WDO2=>s_stack1_WD2_INT, WDO3=>s_stack1_WD3_INT, 
                WADO0=>s_stack1_WAD0_INT, WADO1=>s_stack1_WAD1_INT, 
                WADO2=>s_stack1_WAD2_INT, WADO3=>s_stack1_WAD3_INT, 
                WCKO=>s_stack1_WCK_INT, WREO=>s_stack1_WRE_INT);
    s_stack1_SLICE_62I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack1_WD1_INT, WD0=>s_stack1_WD0_INT, 
                WAD0=>s_stack1_WAD0_INT, WAD1=>s_stack1_WAD1_INT, 
                WAD2=>s_stack1_WAD2_INT, WAD3=>s_stack1_WAD3_INT, 
                WRE=>s_stack1_WRE_INT, WCK=>s_stack1_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1475, Q0=>open, 
                F1=>n1476, Q1=>open);
    s_stack1_SLICE_63I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack1_WD3_INT, WD0=>s_stack1_WD2_INT, 
                WAD0=>s_stack1_WAD0_INT, WAD1=>s_stack1_WAD1_INT, 
                WAD2=>s_stack1_WAD2_INT, WAD3=>s_stack1_WAD3_INT, 
                WRE=>s_stack1_WRE_INT, WCK=>s_stack1_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1477, Q0=>open, 
                F1=>n1478, Q1=>open);
    n14280_SLICE_64I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>n1500, B1=>'X', C1=>'X', D1=>'X', A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1424, 
                WDO0=>n14280_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>n14280_WAD0_INT, WADO1=>n14280_WAD1_INT, 
                WADO2=>n14280_WAD2_INT, WADO3=>n14280_WAD3_INT, 
                WCKO=>n14280_WCK_INT, WREO=>n14280_WRE_INT);
    n14280_SLICE_65I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>'X', WD0=>n14280_WD0_INT, WAD0=>n14280_WAD0_INT, 
                WAD1=>n14280_WAD1_INT, WAD2=>n14280_WAD2_INT, 
                WAD3=>n14280_WAD3_INT, WRE=>n14280_WRE_INT, 
                WCK=>n14280_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1429, Q0=>open, F1=>open, Q1=>open);
    s_stack0_SLICE_66I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_13, B1=>memory_data_i_14, 
                C1=>memory_data_i_15, D1=>t_16, A0=>sp1_0, B0=>sp1_1, 
                C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1498, 
                WDO0=>s_stack0_WD0_INT, WDO1=>s_stack0_WD1_INT, 
                WDO2=>s_stack0_WD2_INT, WDO3=>s_stack0_WD3_INT, 
                WADO0=>s_stack0_WAD0_INT, WADO1=>s_stack0_WAD1_INT, 
                WADO2=>s_stack0_WAD2_INT, WADO3=>s_stack0_WAD3_INT, 
                WCKO=>s_stack0_WCK_INT, WREO=>s_stack0_WRE_INT);
    s_stack0_SLICE_67I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack0_WD1_INT, WD0=>s_stack0_WD0_INT, 
                WAD0=>s_stack0_WAD0_INT, WAD1=>s_stack0_WAD1_INT, 
                WAD2=>s_stack0_WAD2_INT, WAD3=>s_stack0_WAD3_INT, 
                WRE=>s_stack0_WRE_INT, WCK=>s_stack0_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1492, Q0=>open, 
                F1=>n1493, Q1=>open);
    s_stack0_SLICE_68I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack0_WD3_INT, WD0=>s_stack0_WD2_INT, 
                WAD0=>s_stack0_WAD0_INT, WAD1=>s_stack0_WAD1_INT, 
                WAD2=>s_stack0_WAD2_INT, WAD3=>s_stack0_WAD3_INT, 
                WRE=>s_stack0_WRE_INT, WCK=>s_stack0_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1494, Q0=>open, 
                F1=>n1495, Q1=>open);
    s_stack2_SLICE_69I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_9, B1=>memory_data_i_10, 
                C1=>memory_data_i_11, D1=>memory_data_i_12, A0=>sp1_0, 
                B0=>sp1_1, C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1497, 
                WDO0=>s_stack2_WD0_INT, WDO1=>s_stack2_WD1_INT, 
                WDO2=>s_stack2_WD2_INT, WDO3=>s_stack2_WD3_INT, 
                WADO0=>s_stack2_WAD0_INT, WADO1=>s_stack2_WAD1_INT, 
                WADO2=>s_stack2_WAD2_INT, WADO3=>s_stack2_WAD3_INT, 
                WCKO=>s_stack2_WCK_INT, WREO=>s_stack2_WRE_INT);
    s_stack2_SLICE_70I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack2_WD1_INT, WD0=>s_stack2_WD0_INT, 
                WAD0=>s_stack2_WAD0_INT, WAD1=>s_stack2_WAD1_INT, 
                WAD2=>s_stack2_WAD2_INT, WAD3=>s_stack2_WAD3_INT, 
                WRE=>s_stack2_WRE_INT, WCK=>s_stack2_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1471, Q0=>open, 
                F1=>n1472, Q1=>open);
    s_stack2_SLICE_71I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack2_WD3_INT, WD0=>s_stack2_WD2_INT, 
                WAD0=>s_stack2_WAD0_INT, WAD1=>s_stack2_WAD1_INT, 
                WAD2=>s_stack2_WAD2_INT, WAD3=>s_stack2_WAD3_INT, 
                WRE=>s_stack2_WRE_INT, WCK=>s_stack2_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1473, Q0=>open, 
                F1=>n1474, Q1=>open);
    s_stack3_SLICE_72I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_5, B1=>memory_data_i_6, C1=>memory_data_i_7, 
                D1=>memory_data_i_8, A0=>sp1_0, B0=>sp1_1, C0=>sp1_2, 
                D0=>sp1_3, CLK=>aclk_c, LSR=>n1497, WDO0=>s_stack3_WD0_INT, 
                WDO1=>s_stack3_WD1_INT, WDO2=>s_stack3_WD2_INT, 
                WDO3=>s_stack3_WD3_INT, WADO0=>s_stack3_WAD0_INT, 
                WADO1=>s_stack3_WAD1_INT, WADO2=>s_stack3_WAD2_INT, 
                WADO3=>s_stack3_WAD3_INT, WCKO=>s_stack3_WCK_INT, 
                WREO=>s_stack3_WRE_INT);
    s_stack3_SLICE_73I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack3_WD1_INT, WD0=>s_stack3_WD0_INT, 
                WAD0=>s_stack3_WAD0_INT, WAD1=>s_stack3_WAD1_INT, 
                WAD2=>s_stack3_WAD2_INT, WAD3=>s_stack3_WAD3_INT, 
                WRE=>s_stack3_WRE_INT, WCK=>s_stack3_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1467, Q0=>open, 
                F1=>n1468, Q1=>open);
    s_stack3_SLICE_74I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack3_WD3_INT, WD0=>s_stack3_WD2_INT, 
                WAD0=>s_stack3_WAD0_INT, WAD1=>s_stack3_WAD1_INT, 
                WAD2=>s_stack3_WAD2_INT, WAD3=>s_stack3_WAD3_INT, 
                WRE=>s_stack3_WRE_INT, WCK=>s_stack3_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1469, Q0=>open, 
                F1=>n1470, Q1=>open);
    s_stack4_SLICE_75I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_1, B1=>memory_data_i_2, C1=>memory_data_i_3, 
                D1=>memory_data_i_4, A0=>sp1_0, B0=>sp1_1, C0=>sp1_2, 
                D0=>sp1_3, CLK=>aclk_c, LSR=>n1497, WDO0=>s_stack4_WD0_INT, 
                WDO1=>s_stack4_WD1_INT, WDO2=>s_stack4_WD2_INT, 
                WDO3=>s_stack4_WD3_INT, WADO0=>s_stack4_WAD0_INT, 
                WADO1=>s_stack4_WAD1_INT, WADO2=>s_stack4_WAD2_INT, 
                WADO3=>s_stack4_WAD3_INT, WCKO=>s_stack4_WCK_INT, 
                WREO=>s_stack4_WRE_INT);
    s_stack4_SLICE_76I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack4_WD1_INT, WD0=>s_stack4_WD0_INT, 
                WAD0=>s_stack4_WAD0_INT, WAD1=>s_stack4_WAD1_INT, 
                WAD2=>s_stack4_WAD2_INT, WAD3=>s_stack4_WAD3_INT, 
                WRE=>s_stack4_WRE_INT, WCK=>s_stack4_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1463, Q0=>open, 
                F1=>n1464, Q1=>open);
    s_stack4_SLICE_77I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack4_WD3_INT, WD0=>s_stack4_WD2_INT, 
                WAD0=>s_stack4_WAD0_INT, WAD1=>s_stack4_WAD1_INT, 
                WAD2=>s_stack4_WAD2_INT, WAD3=>s_stack4_WAD3_INT, 
                WRE=>s_stack4_WRE_INT, WCK=>s_stack4_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1465, Q0=>open, 
                F1=>n1466, Q1=>open);
    s_stack5_SLICE_78I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_0, B1=>'X', C1=>'X', D1=>'X', A0=>sp1_0, 
                B0=>sp1_1, C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1497, 
                WDO0=>s_stack5_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>s_stack5_WAD0_INT, WADO1=>s_stack5_WAD1_INT, 
                WADO2=>s_stack5_WAD2_INT, WADO3=>s_stack5_WAD3_INT, 
                WCKO=>s_stack5_WCK_INT, WREO=>s_stack5_WRE_INT);
    s_stack5_SLICE_79I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>'X', WD0=>s_stack5_WD0_INT, WAD0=>s_stack5_WAD0_INT, 
                WAD1=>s_stack5_WAD1_INT, WAD2=>s_stack5_WAD2_INT, 
                WAD3=>s_stack5_WAD3_INT, WRE=>s_stack5_WRE_INT, 
                WCK=>s_stack5_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1462, Q0=>open, F1=>open, Q1=>open);
    s_stack6_SLICE_80I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_9, B1=>memory_data_i_10, 
                C1=>memory_data_i_11, D1=>memory_data_i_12, A0=>sp1_0, 
                B0=>sp1_1, C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1498, 
                WDO0=>s_stack6_WD0_INT, WDO1=>s_stack6_WD1_INT, 
                WDO2=>s_stack6_WD2_INT, WDO3=>s_stack6_WD3_INT, 
                WADO0=>s_stack6_WAD0_INT, WADO1=>s_stack6_WAD1_INT, 
                WADO2=>s_stack6_WAD2_INT, WADO3=>s_stack6_WAD3_INT, 
                WCKO=>s_stack6_WCK_INT, WREO=>s_stack6_WRE_INT);
    s_stack6_SLICE_81I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack6_WD1_INT, WD0=>s_stack6_WD0_INT, 
                WAD0=>s_stack6_WAD0_INT, WAD1=>s_stack6_WAD1_INT, 
                WAD2=>s_stack6_WAD2_INT, WAD3=>s_stack6_WAD3_INT, 
                WRE=>s_stack6_WRE_INT, WCK=>s_stack6_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1488, Q0=>open, 
                F1=>n1489, Q1=>open);
    s_stack6_SLICE_82I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack6_WD3_INT, WD0=>s_stack6_WD2_INT, 
                WAD0=>s_stack6_WAD0_INT, WAD1=>s_stack6_WAD1_INT, 
                WAD2=>s_stack6_WAD2_INT, WAD3=>s_stack6_WAD3_INT, 
                WRE=>s_stack6_WRE_INT, WCK=>s_stack6_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1490, Q0=>open, 
                F1=>n1491, Q1=>open);
    s_stack7_SLICE_83I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_5, B1=>memory_data_i_6, C1=>memory_data_i_7, 
                D1=>memory_data_i_8, A0=>sp1_0, B0=>sp1_1, C0=>sp1_2, 
                D0=>sp1_3, CLK=>aclk_c, LSR=>n1498, WDO0=>s_stack7_WD0_INT, 
                WDO1=>s_stack7_WD1_INT, WDO2=>s_stack7_WD2_INT, 
                WDO3=>s_stack7_WD3_INT, WADO0=>s_stack7_WAD0_INT, 
                WADO1=>s_stack7_WAD1_INT, WADO2=>s_stack7_WAD2_INT, 
                WADO3=>s_stack7_WAD3_INT, WCKO=>s_stack7_WCK_INT, 
                WREO=>s_stack7_WRE_INT);
    s_stack7_SLICE_84I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack7_WD1_INT, WD0=>s_stack7_WD0_INT, 
                WAD0=>s_stack7_WAD0_INT, WAD1=>s_stack7_WAD1_INT, 
                WAD2=>s_stack7_WAD2_INT, WAD3=>s_stack7_WAD3_INT, 
                WRE=>s_stack7_WRE_INT, WCK=>s_stack7_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1484, Q0=>open, 
                F1=>n1485, Q1=>open);
    s_stack7_SLICE_85I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack7_WD3_INT, WD0=>s_stack7_WD2_INT, 
                WAD0=>s_stack7_WAD0_INT, WAD1=>s_stack7_WAD1_INT, 
                WAD2=>s_stack7_WAD2_INT, WAD3=>s_stack7_WAD3_INT, 
                WRE=>s_stack7_WRE_INT, WCK=>s_stack7_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1486, Q0=>open, 
                F1=>n1487, Q1=>open);
    s_stack8_SLICE_86I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_1, B1=>memory_data_i_2, C1=>memory_data_i_3, 
                D1=>memory_data_i_4, A0=>sp1_0, B0=>sp1_1, C0=>sp1_2, 
                D0=>sp1_3, CLK=>aclk_c, LSR=>n1498, WDO0=>s_stack8_WD0_INT, 
                WDO1=>s_stack8_WD1_INT, WDO2=>s_stack8_WD2_INT, 
                WDO3=>s_stack8_WD3_INT, WADO0=>s_stack8_WAD0_INT, 
                WADO1=>s_stack8_WAD1_INT, WADO2=>s_stack8_WAD2_INT, 
                WADO3=>s_stack8_WAD3_INT, WCKO=>s_stack8_WCK_INT, 
                WREO=>s_stack8_WRE_INT);
    s_stack8_SLICE_87I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack8_WD1_INT, WD0=>s_stack8_WD0_INT, 
                WAD0=>s_stack8_WAD0_INT, WAD1=>s_stack8_WAD1_INT, 
                WAD2=>s_stack8_WAD2_INT, WAD3=>s_stack8_WAD3_INT, 
                WRE=>s_stack8_WRE_INT, WCK=>s_stack8_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1480, Q0=>open, 
                F1=>n1481, Q1=>open);
    s_stack8_SLICE_88I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>s_stack8_WD3_INT, WD0=>s_stack8_WD2_INT, 
                WAD0=>s_stack8_WAD0_INT, WAD1=>s_stack8_WAD1_INT, 
                WAD2=>s_stack8_WAD2_INT, WAD3=>s_stack8_WAD3_INT, 
                WRE=>s_stack8_WRE_INT, WCK=>s_stack8_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1482, Q0=>open, 
                F1=>n1483, Q1=>open);
    r_stack0_SLICE_89I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_13, B1=>r_14, C1=>r_15, D1=>r_16, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1537, 
                WDO0=>r_stack0_WD0_INT, WDO1=>r_stack0_WD1_INT, 
                WDO2=>r_stack0_WD2_INT, WDO3=>r_stack0_WD3_INT, 
                WADO0=>r_stack0_WAD0_INT, WADO1=>r_stack0_WAD1_INT, 
                WADO2=>r_stack0_WAD2_INT, WADO3=>r_stack0_WAD3_INT, 
                WCKO=>r_stack0_WCK_INT, WREO=>r_stack0_WRE_INT);
    r_stack0_SLICE_90I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack0_WD1_INT, WD0=>r_stack0_WD0_INT, 
                WAD0=>r_stack0_WAD0_INT, WAD1=>r_stack0_WAD1_INT, 
                WAD2=>r_stack0_WAD2_INT, WAD3=>r_stack0_WAD3_INT, 
                WRE=>r_stack0_WRE_INT, WCK=>r_stack0_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1531, Q0=>open, 
                F1=>n1532, Q1=>open);
    r_stack0_SLICE_91I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack0_WD3_INT, WD0=>r_stack0_WD2_INT, 
                WAD0=>r_stack0_WAD0_INT, WAD1=>r_stack0_WAD1_INT, 
                WAD2=>r_stack0_WAD2_INT, WAD3=>r_stack0_WAD3_INT, 
                WRE=>r_stack0_WRE_INT, WCK=>r_stack0_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1533, Q0=>open, 
                F1=>n1534, Q1=>open);
    s_stack9_SLICE_92I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>memory_data_i_0, B1=>'X', C1=>'X', D1=>'X', A0=>sp1_0, 
                B0=>sp1_1, C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1498, 
                WDO0=>s_stack9_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>s_stack9_WAD0_INT, WADO1=>s_stack9_WAD1_INT, 
                WADO2=>s_stack9_WAD2_INT, WADO3=>s_stack9_WAD3_INT, 
                WCKO=>s_stack9_WCK_INT, WREO=>s_stack9_WRE_INT);
    s_stack9_SLICE_93I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>'X', WD0=>s_stack9_WD0_INT, WAD0=>s_stack9_WAD0_INT, 
                WAD1=>s_stack9_WAD1_INT, WAD2=>s_stack9_WAD2_INT, 
                WAD3=>s_stack9_WAD3_INT, WRE=>s_stack9_WRE_INT, 
                WCK=>s_stack9_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1479, Q0=>open, F1=>open, Q1=>open);
    n13160_SLICE_94I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>sp1_4, B1=>'X', C1=>'X', D1=>'X', A0=>sp1_0, B0=>sp1_1, 
                C0=>sp1_2, D0=>sp1_3, CLK=>aclk_c, LSR=>n1312, 
                WDO0=>n13160_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>n13160_WAD0_INT, WADO1=>n13160_WAD1_INT, 
                WADO2=>n13160_WAD2_INT, WADO3=>n13160_WAD3_INT, 
                WCKO=>n13160_WCK_INT, WREO=>n13160_WRE_INT);
    n13160_SLICE_95I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>sp_0, RAD1=>sp_1, RAD2=>sp_2, RAD3=>sp_3, 
                WD1=>'X', WD0=>n13160_WD0_INT, WAD0=>n13160_WAD0_INT, 
                WAD1=>n13160_WAD1_INT, WAD2=>n13160_WAD2_INT, 
                WAD3=>n13160_WAD3_INT, WRE=>n13160_WRE_INT, 
                WCK=>n13160_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1317, Q0=>open, F1=>open, Q1=>open);
    r_stack2_SLICE_96I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_9, B1=>r_10, C1=>r_11, D1=>r_12, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1536, 
                WDO0=>r_stack2_WD0_INT, WDO1=>r_stack2_WD1_INT, 
                WDO2=>r_stack2_WD2_INT, WDO3=>r_stack2_WD3_INT, 
                WADO0=>r_stack2_WAD0_INT, WADO1=>r_stack2_WAD1_INT, 
                WADO2=>r_stack2_WAD2_INT, WADO3=>r_stack2_WAD3_INT, 
                WCKO=>r_stack2_WCK_INT, WREO=>r_stack2_WRE_INT);
    r_stack2_SLICE_97I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack2_WD1_INT, WD0=>r_stack2_WD0_INT, 
                WAD0=>r_stack2_WAD0_INT, WAD1=>r_stack2_WAD1_INT, 
                WAD2=>r_stack2_WAD2_INT, WAD3=>r_stack2_WAD3_INT, 
                WRE=>r_stack2_WRE_INT, WCK=>r_stack2_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1510, Q0=>open, 
                F1=>n1511, Q1=>open);
    r_stack2_SLICE_98I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack2_WD3_INT, WD0=>r_stack2_WD2_INT, 
                WAD0=>r_stack2_WAD0_INT, WAD1=>r_stack2_WAD1_INT, 
                WAD2=>r_stack2_WAD2_INT, WAD3=>r_stack2_WAD3_INT, 
                WRE=>r_stack2_WRE_INT, WCK=>r_stack2_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1512, Q0=>open, 
                F1=>n1513, Q1=>open);
    r_stack3_SLICE_99I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_5, B1=>r_6, C1=>r_7, D1=>r_8, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1536, 
                WDO0=>r_stack3_WD0_INT, WDO1=>r_stack3_WD1_INT, 
                WDO2=>r_stack3_WD2_INT, WDO3=>r_stack3_WD3_INT, 
                WADO0=>r_stack3_WAD0_INT, WADO1=>r_stack3_WAD1_INT, 
                WADO2=>r_stack3_WAD2_INT, WADO3=>r_stack3_WAD3_INT, 
                WCKO=>r_stack3_WCK_INT, WREO=>r_stack3_WRE_INT);
    r_stack3_SLICE_100I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack3_WD1_INT, WD0=>r_stack3_WD0_INT, 
                WAD0=>r_stack3_WAD0_INT, WAD1=>r_stack3_WAD1_INT, 
                WAD2=>r_stack3_WAD2_INT, WAD3=>r_stack3_WAD3_INT, 
                WRE=>r_stack3_WRE_INT, WCK=>r_stack3_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1506, Q0=>open, 
                F1=>n1507, Q1=>open);
    r_stack3_SLICE_101I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack3_WD3_INT, WD0=>r_stack3_WD2_INT, 
                WAD0=>r_stack3_WAD0_INT, WAD1=>r_stack3_WAD1_INT, 
                WAD2=>r_stack3_WAD2_INT, WAD3=>r_stack3_WAD3_INT, 
                WRE=>r_stack3_WRE_INT, WCK=>r_stack3_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1508, Q0=>open, 
                F1=>n1509, Q1=>open);
    r_stack4_SLICE_102I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_1, B1=>r_2, C1=>r_3, D1=>r_4, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1536, 
                WDO0=>r_stack4_WD0_INT, WDO1=>r_stack4_WD1_INT, 
                WDO2=>r_stack4_WD2_INT, WDO3=>r_stack4_WD3_INT, 
                WADO0=>r_stack4_WAD0_INT, WADO1=>r_stack4_WAD1_INT, 
                WADO2=>r_stack4_WAD2_INT, WADO3=>r_stack4_WAD3_INT, 
                WCKO=>r_stack4_WCK_INT, WREO=>r_stack4_WRE_INT);
    r_stack4_SLICE_103I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack4_WD1_INT, WD0=>r_stack4_WD0_INT, 
                WAD0=>r_stack4_WAD0_INT, WAD1=>r_stack4_WAD1_INT, 
                WAD2=>r_stack4_WAD2_INT, WAD3=>r_stack4_WAD3_INT, 
                WRE=>r_stack4_WRE_INT, WCK=>r_stack4_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1502, Q0=>open, 
                F1=>n1503, Q1=>open);
    r_stack4_SLICE_104I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack4_WD3_INT, WD0=>r_stack4_WD2_INT, 
                WAD0=>r_stack4_WAD0_INT, WAD1=>r_stack4_WAD1_INT, 
                WAD2=>r_stack4_WAD2_INT, WAD3=>r_stack4_WAD3_INT, 
                WRE=>r_stack4_WRE_INT, WCK=>r_stack4_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1504, Q0=>open, 
                F1=>n1505, Q1=>open);
    r_stack5_SLICE_105I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_0, B1=>'X', C1=>'X', D1=>'X', A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1536, 
                WDO0=>r_stack5_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>r_stack5_WAD0_INT, WADO1=>r_stack5_WAD1_INT, 
                WADO2=>r_stack5_WAD2_INT, WADO3=>r_stack5_WAD3_INT, 
                WCKO=>r_stack5_WCK_INT, WREO=>r_stack5_WRE_INT);
    r_stack5_SLICE_106I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>'X', WD0=>r_stack5_WD0_INT, WAD0=>r_stack5_WAD0_INT, 
                WAD1=>r_stack5_WAD1_INT, WAD2=>r_stack5_WAD2_INT, 
                WAD3=>r_stack5_WAD3_INT, WRE=>r_stack5_WRE_INT, 
                WCK=>r_stack5_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1501, Q0=>open, F1=>open, Q1=>open);
    r_stack6_SLICE_107I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_9, B1=>r_10, C1=>r_11, D1=>r_12, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1537, 
                WDO0=>r_stack6_WD0_INT, WDO1=>r_stack6_WD1_INT, 
                WDO2=>r_stack6_WD2_INT, WDO3=>r_stack6_WD3_INT, 
                WADO0=>r_stack6_WAD0_INT, WADO1=>r_stack6_WAD1_INT, 
                WADO2=>r_stack6_WAD2_INT, WADO3=>r_stack6_WAD3_INT, 
                WCKO=>r_stack6_WCK_INT, WREO=>r_stack6_WRE_INT);
    r_stack6_SLICE_108I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack6_WD1_INT, WD0=>r_stack6_WD0_INT, 
                WAD0=>r_stack6_WAD0_INT, WAD1=>r_stack6_WAD1_INT, 
                WAD2=>r_stack6_WAD2_INT, WAD3=>r_stack6_WAD3_INT, 
                WRE=>r_stack6_WRE_INT, WCK=>r_stack6_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1527, Q0=>open, 
                F1=>n1528, Q1=>open);
    r_stack6_SLICE_109I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack6_WD3_INT, WD0=>r_stack6_WD2_INT, 
                WAD0=>r_stack6_WAD0_INT, WAD1=>r_stack6_WAD1_INT, 
                WAD2=>r_stack6_WAD2_INT, WAD3=>r_stack6_WAD3_INT, 
                WRE=>r_stack6_WRE_INT, WCK=>r_stack6_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1529, Q0=>open, 
                F1=>n1530, Q1=>open);
    r_stack7_SLICE_110I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_5, B1=>r_6, C1=>r_7, D1=>r_8, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1537, 
                WDO0=>r_stack7_WD0_INT, WDO1=>r_stack7_WD1_INT, 
                WDO2=>r_stack7_WD2_INT, WDO3=>r_stack7_WD3_INT, 
                WADO0=>r_stack7_WAD0_INT, WADO1=>r_stack7_WAD1_INT, 
                WADO2=>r_stack7_WAD2_INT, WADO3=>r_stack7_WAD3_INT, 
                WCKO=>r_stack7_WCK_INT, WREO=>r_stack7_WRE_INT);
    r_stack7_SLICE_111I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack7_WD1_INT, WD0=>r_stack7_WD0_INT, 
                WAD0=>r_stack7_WAD0_INT, WAD1=>r_stack7_WAD1_INT, 
                WAD2=>r_stack7_WAD2_INT, WAD3=>r_stack7_WAD3_INT, 
                WRE=>r_stack7_WRE_INT, WCK=>r_stack7_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1523, Q0=>open, 
                F1=>n1524, Q1=>open);
    r_stack7_SLICE_112I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack7_WD3_INT, WD0=>r_stack7_WD2_INT, 
                WAD0=>r_stack7_WAD0_INT, WAD1=>r_stack7_WAD1_INT, 
                WAD2=>r_stack7_WAD2_INT, WAD3=>r_stack7_WAD3_INT, 
                WRE=>r_stack7_WRE_INT, WCK=>r_stack7_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1525, Q0=>open, 
                F1=>n1526, Q1=>open);
    r_stack8_SLICE_113I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_1, B1=>r_2, C1=>r_3, D1=>r_4, A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1537, 
                WDO0=>r_stack8_WD0_INT, WDO1=>r_stack8_WD1_INT, 
                WDO2=>r_stack8_WD2_INT, WDO3=>r_stack8_WD3_INT, 
                WADO0=>r_stack8_WAD0_INT, WADO1=>r_stack8_WAD1_INT, 
                WADO2=>r_stack8_WAD2_INT, WADO3=>r_stack8_WAD3_INT, 
                WCKO=>r_stack8_WCK_INT, WREO=>r_stack8_WRE_INT);
    r_stack8_SLICE_114I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack8_WD1_INT, WD0=>r_stack8_WD0_INT, 
                WAD0=>r_stack8_WAD0_INT, WAD1=>r_stack8_WAD1_INT, 
                WAD2=>r_stack8_WAD2_INT, WAD3=>r_stack8_WAD3_INT, 
                WRE=>r_stack8_WRE_INT, WCK=>r_stack8_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1519, Q0=>open, 
                F1=>n1520, Q1=>open);
    r_stack8_SLICE_115I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE, CHECK_WD1=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>r_stack8_WD3_INT, WD0=>r_stack8_WD2_INT, 
                WAD0=>r_stack8_WAD0_INT, WAD1=>r_stack8_WAD1_INT, 
                WAD2=>r_stack8_WAD2_INT, WAD3=>r_stack8_WAD3_INT, 
                WRE=>r_stack8_WRE_INT, WCK=>r_stack8_WCK_INT, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', DI1=>'X', DI0=>'X', F0=>n1521, Q0=>open, 
                F1=>n1522, Q1=>open);
    r_stack9_SLICE_116I: SRAMWA
      generic map (CLKMUX=>"SIG", LSRMUX=>"SIG", CHECK_LSR=>TRUE)
      port map (A1=>r_0, B1=>'X', C1=>'X', D1=>'X', A0=>rp1_0, B0=>rp1_1, 
                C0=>rp1_2, D0=>rp1_3, CLK=>aclk_c, LSR=>n1537, 
                WDO0=>r_stack9_WD0_INT, WDO1=>open, WDO2=>open, WDO3=>open, 
                WADO0=>r_stack9_WAD0_INT, WADO1=>r_stack9_WAD1_INT, 
                WADO2=>r_stack9_WAD2_INT, WADO3=>r_stack9_WAD3_INT, 
                WCKO=>r_stack9_WCK_INT, WREO=>r_stack9_WRE_INT);
    r_stack9_SLICE_117I: SDPRAMC
      generic map (CHECK_WAD0=>TRUE, CHECK_WAD1=>TRUE, CHECK_WAD2=>TRUE, 
                   CHECK_WAD3=>TRUE, CHECK_WD0=>TRUE)
      port map (M1=>'X', RAD0=>rp_0, RAD1=>rp_1, RAD2=>rp_2, RAD3=>rp_3, 
                WD1=>'X', WD0=>r_stack9_WD0_INT, WAD0=>r_stack9_WAD0_INT, 
                WAD1=>r_stack9_WAD1_INT, WAD2=>r_stack9_WAD2_INT, 
                WAD3=>r_stack9_WAD3_INT, WRE=>r_stack9_WRE_INT, 
                WCK=>r_stack9_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>n1518, Q0=>open, F1=>open, Q1=>open);
    n13130_RAMW_SLICE_118I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>n13130_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    n14310_RAMW_SLICE_119I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>n14310_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    n14280_RAMW_SLICE_120I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>n14280_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    s_stack5_RAMW_SLICE_121I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>s_stack5_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    s_stack9_RAMW_SLICE_122I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>s_stack9_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    n13160_RAMW_SLICE_123I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>n13160_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    r_stack5_RAMW_SLICE_124I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>r_stack5_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    r_stack9_RAMW_SLICE_125I: SDPRAMC
      port map (M1=>'X', RAD0=>'X', RAD1=>'X', RAD2=>'X', RAD3=>'X', WD1=>'X', 
                WD0=>'X', WAD0=>'X', WAD1=>'X', WAD2=>'X', WAD3=>'X', WRE=>'X', 
                WCK=>r_stack9_WCK_INT, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                DI1=>'X', DI0=>'X', F0=>open, Q0=>open, F1=>open, Q1=>open);
    cpu1_SLICE_126I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_9, B1=>cpu1_a_7, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_8, 
                A0=>memory_data_i_8, B0=>cpu1_n2_adj_869, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_8, 
                F0=>open, Q0=>a_8);
    cpu1_SLICE_127I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_10, B1=>a_8, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_9, 
                A0=>memory_data_i_9, B0=>cpu1_n2_adj_874, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_9, 
                F0=>open, Q0=>a_9);
    cpu1_SLICE_128I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_11, B1=>a_9, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_10, 
                A0=>memory_data_i_10, B0=>cpu1_n2_adj_872, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_10, 
                F0=>open, Q0=>a_10);
    cpu1_SLICE_129I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_12, B1=>a_10, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_11, 
                A0=>memory_data_i_11, B0=>cpu1_n2_adj_871, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_11, 
                F0=>open, Q0=>a_11);
    cpu1_SLICE_130I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_13, B1=>a_11, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_12, 
                A0=>memory_data_i_12, B0=>cpu1_n2_adj_870, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_12, 
                F0=>open, Q0=>a_12);
    cpu1_SLICE_131I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_14, B1=>a_12, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_13, 
                A0=>memory_data_i_13, B0=>cpu1_n2_adj_785, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_13, 
                F0=>open, Q0=>a_13);
    cpu1_SLICE_132I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_15, B1=>a_13, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_14, 
                A0=>memory_data_i_14, B0=>cpu1_n2_adj_859, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_14, 
                F0=>open, Q0=>a_14);
    cpu1_SLICE_133I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"0002", 
                   LUT1_INITVAL=>X"ECEC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_slot_2, C1=>cpu1_n3_adj_770, D1=>'X', DI1=>'X', 
                DI0=>cpu1_n6772, A0=>cpu1_n2084, B0=>cpu1_code_3, 
                C0=>cpu1_n6404, D0=>cpu1_code_0, M0=>'X', CE=>cpu1_intload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_n2084, Q1=>open, 
                OFX0=>open, F0=>cpu1_n6772, Q0=>acknowledge_o_c);
    SLICE_134I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", SRMODE=>"ASYNC", LSRONMUX=>"OFF", 
                   LUT0_INITVAL=>X"C088", LUT1_INITVAL=>X"C088", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_46, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_1, 
                D1=>system_write, DI1=>system_data_o_1, DI0=>system_data_o_0, 
                A0=>system_data_o_15_N_49, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_0, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_1, Q1=>baudrate_reg_1, OFX0=>open, 
                F0=>system_data_o_0, Q0=>baudrate_reg_0);
    SLICE_135I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   REG1_REGSET=>"SET", SRMODE=>"ASYNC", LSRONMUX=>"OFF", 
                   LUT0_INITVAL=>X"C088", LUT1_INITVAL=>X"C088", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_40, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_3, 
                D1=>system_write, DI1=>system_data_o_3, DI0=>system_data_o_2, 
                A0=>system_data_o_15_N_43, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_2, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_3, Q1=>baudrate_reg_3, OFX0=>open, 
                F0=>system_data_o_2, Q0=>baudrate_reg_2);
    SLICE_136I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG1_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_34, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_5, 
                D1=>system_write, DI1=>system_data_o_5, DI0=>system_data_o_4, 
                A0=>system_data_o_15_N_37, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_4, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_5, Q1=>baudrate_reg_5, OFX0=>open, 
                F0=>system_data_o_4, Q0=>baudrate_reg_4);
    SLICE_137I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG1_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_28, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_7, 
                D1=>system_write, DI1=>system_data_o_7, DI0=>system_data_o_6, 
                A0=>system_data_o_15_N_31, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_6, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_7, Q1=>baudrate_reg_7, OFX0=>open, 
                F0=>system_data_o_6, Q0=>baudrate_reg_6);
    SLICE_138I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_22, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_9, 
                D1=>system_write, DI1=>system_data_o_9, DI0=>system_data_o_8, 
                A0=>system_data_o_15_N_25, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_8, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_9, Q1=>baudrate_reg_9, OFX0=>open, 
                F0=>system_data_o_8, Q0=>baudrate_reg_8);
    SLICE_139I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_16, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_11, 
                D1=>system_write, DI1=>system_data_o_11, DI0=>system_data_o_10, 
                A0=>system_data_o_15_N_19, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_10, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_11, Q1=>baudrate_reg_11, OFX0=>open, 
                F0=>system_data_o_10, Q0=>baudrate_reg_10);
    SLICE_140I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_10, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_13, 
                D1=>system_write, DI1=>system_data_o_13, DI0=>system_data_o_12, 
                A0=>system_data_o_15_N_13, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_12, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_13, Q1=>baudrate_reg_13, OFX0=>open, 
                F0=>system_data_o_12, Q0=>baudrate_reg_12);
    SLICE_141I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"C088", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>system_data_o_15_N_2, 
                B1=>system_data_o_15_N_51, C1=>memory_data_i_15, 
                D1=>system_write, DI1=>system_data_o_15, DI0=>system_data_o_14, 
                A0=>system_data_o_15_N_7, B0=>system_data_o_15_N_51, 
                C0=>memory_data_i_14, D0=>system_write, M0=>'X', 
                CE=>uart1_aclk_c_enable_108, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>system_data_o_15, Q1=>baudrate_reg_15, OFX0=>open, 
                F0=>system_data_o_14, Q0=>baudrate_reg_14);
    cpu1_SLICE_142I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_1, B1=>cpu1_sum_16, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_0, 
                A0=>memory_data_i_0, B0=>cpu1_n2_adj_875, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_0, 
                F0=>open, Q0=>cpu1_a_0);
    cpu1_SLICE_143I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_2, B1=>cpu1_a_0, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_1, 
                A0=>memory_data_i_1, B0=>cpu1_n2_adj_841, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_1, 
                F0=>open, Q0=>cpu1_a_1);
    cpu1_SLICE_144I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_3, B1=>cpu1_a_1, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_2, 
                A0=>memory_data_i_2, B0=>cpu1_n2_adj_857, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_2, 
                F0=>open, Q0=>cpu1_a_2);
    cpu1_SLICE_145I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_4, B1=>cpu1_a_2, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_3, 
                A0=>memory_data_i_3, B0=>cpu1_n2_adj_862, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_3, 
                F0=>open, Q0=>cpu1_a_3);
    cpu1_SLICE_146I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_5, B1=>cpu1_a_3, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_4, 
                A0=>memory_data_i_4, B0=>cpu1_n2_adj_772, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_4, 
                F0=>open, Q0=>cpu1_a_4);
    cpu1_SLICE_147I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_6, B1=>cpu1_a_4, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_5, 
                A0=>memory_data_i_5, B0=>cpu1_n2, C0=>cpu1_n8600, D0=>'X', 
                M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_5, F0=>open, 
                Q0=>cpu1_a_5);
    cpu1_SLICE_148I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_7, B1=>cpu1_a_5, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_6, 
                A0=>memory_data_i_6, B0=>cpu1_n2_adj_844, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_6, 
                F0=>open, Q0=>cpu1_a_6);
    cpu1_SLICE_149I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_8, B1=>cpu1_a_6, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_7, 
                A0=>memory_data_i_7, B0=>cpu1_n2_adj_865, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_7, 
                F0=>open, Q0=>cpu1_a_7);
    cpu1_SLICE_150I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_data_i_0, B1=>a_14, 
                C1=>cpu1_a_sel_0, D1=>'X', DI1=>'X', DI0=>cpu1_a_in_15, 
                A0=>memory_data_i_15, B0=>cpu1_n2_adj_861, C0=>cpu1_n8600, 
                D0=>'X', M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_15, 
                F0=>open, Q0=>cpu1_a_15);
    cpu1_SLICE_151I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"0ACA", 
                   LUT1_INITVAL=>X"0400", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8654, 
                B1=>cpu1_n12_adj_815, C1=>cpu1_slot_2, D1=>memory_data_i_0, 
                DI1=>'X', DI0=>cpu1_a_in_16, A0=>t_16, 
                B0=>cpu1_a_in_16_N_215_16, C0=>cpu1_n8600, D0=>cpu1_a_sel_0, 
                M0=>cpu1_a_sel_2, CE=>cpu1_aload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_a_in_16, F0=>open, 
                Q0=>cpu1_a_16);
    cpu1_SLICE_152I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_2, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_1, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_2, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_1);
    cpu1_SLICE_153I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_4, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_3, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_4, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_3);
    cpu1_SLICE_154I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_6, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_7, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_6);
    cpu1_SLICE_155I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_8, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_9, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_8);
    cpu1_SLICE_156I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_10, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_11, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_10);
    cpu1_SLICE_157I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_13, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_12, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_13, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_12);
    cpu1_SLICE_158I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_15, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_14, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>cpu1_i_15, 
                OFX0=>open, F0=>open, Q0=>cpu1_i_14);
    cpu1_SLICE_159I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"7878", LUT1_INITVAL=>X"0001", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_0, B1=>cpu1_slot_2, 
                C1=>slot_1, D1=>cpu1_r_sel_1_N_248_1, DI1=>'X', 
                DI0=>cpu1_slot_2_N_315_2, A0=>slot_0, B0=>slot_1, 
                C0=>cpu1_slot_2, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, 
                LSR=>cpu1_slot_2_N_318, OFX1=>open, F1=>cpu1_iload, Q1=>open, 
                OFX0=>open, F0=>cpu1_slot_2_N_315_2, Q0=>cpu1_n9434);
    SLICE_160I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_sel_1, B1=>cpu1_p_sel_0, 
                C1=>p_in_15_N_282_0, D1=>interrupt_i_c_0, DI1=>'X', 
                DI0=>p_in_0, A0=>i_0, B0=>n3_adj_914, C0=>p_sel_1, D0=>'X', 
                M0=>n8653, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>p_in_0, F0=>open, Q0=>cpu1_p_0);
    cpu1_SLICE_161I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_sel_1, B1=>cpu1_p_sel_0, 
                C1=>cpu1_p_in_15_N_282_1, D1=>interrupt_i_c_1, DI1=>'X', 
                DI0=>cpu1_p_in_1, A0=>cpu1_i_1, B0=>cpu1_n627, C0=>p_sel_1, 
                D0=>'X', M0=>n8653, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_1, F0=>open, 
                Q0=>cpu1_p_1);
    cpu1_SLICE_162I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_sel_1, B1=>cpu1_p_sel_0, 
                C1=>cpu1_p_in_15_N_282_2, D1=>interrupt_i_c_2, DI1=>'X', 
                DI0=>cpu1_p_in_2, A0=>cpu1_i_2, B0=>cpu1_n626, C0=>p_sel_1, 
                D0=>'X', M0=>n8653, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_2, F0=>open, 
                Q0=>cpu1_p_2);
    cpu1_SLICE_163I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_sel_1, B1=>cpu1_p_sel_0, 
                C1=>cpu1_p_in_15_N_282_3, D1=>interrupt_i_c_3, DI1=>'X', 
                DI0=>cpu1_p_in_3, A0=>cpu1_i_3, B0=>cpu1_n625, C0=>p_sel_1, 
                D0=>'X', M0=>n8653, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_3, F0=>open, 
                Q0=>cpu1_p_3);
    cpu1_SLICE_164I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_sel_1, B1=>cpu1_p_sel_0, 
                C1=>cpu1_p_in_15_N_282_4, D1=>interrupt_i_c_4, DI1=>'X', 
                DI0=>cpu1_p_in_4, A0=>cpu1_i_4, B0=>cpu1_n624, C0=>p_sel_1, 
                D0=>'X', M0=>n8653, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_4, F0=>open, 
                Q0=>cpu1_p_4);
    SLICE_165I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"A0CC", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>p_in_15_N_282_5, B1=>i_5, 
                C1=>n8596, D1=>n8653, DI1=>'X', DI0=>p_in_5, 
                A0=>p_in_15_N_282_5, B0=>r_5, C0=>n7, D0=>n6376, M0=>n7595, 
                CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>p_in_5, F0=>open, Q0=>cpu1_p_5);
    cpu1_SLICE_166I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_6, 
                B1=>cpu1_i_6, C1=>n8653, D1=>n8596, DI1=>'X', DI0=>cpu1_p_in_6, 
                A0=>cpu1_p_in_15_N_282_6, B0=>r_6, C0=>n7, D0=>n6376, 
                M0=>n7595, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_p_in_6, F0=>open, Q0=>cpu1_p_6);
    cpu1_SLICE_167I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_7, 
                B1=>cpu1_i_7, C1=>n8653, D1=>n8596, DI1=>'X', DI0=>cpu1_p_in_7, 
                A0=>cpu1_p_in_15_N_282_7, B0=>r_7, C0=>n7, D0=>n6376, 
                M0=>n7595, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_p_in_7, F0=>open, Q0=>cpu1_p_7);
    cpu1_SLICE_168I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AA80", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_15, B1=>n7, 
                C1=>n6376, D1=>p_sel_1, DI1=>'X', DI0=>cpu1_p_in_15, 
                A0=>cpu1_p_in_15_N_282_15, B0=>r_15, C0=>n7, D0=>n6376, 
                M0=>n8653, CE=>cpu1_aclk_c_enable_31, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_15, F0=>open, 
                Q0=>cpu1_p_15);
    gpio1_SLICE_170I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_0, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_1, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_0);
    gpio1_SLICE_171I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_2, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_3, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_2);
    gpio1_SLICE_172I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_4, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_5, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_4);
    gpio1_SLICE_173I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_6, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_7, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_6);
    gpio1_SLICE_174I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_8, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_9, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_8);
    gpio1_SLICE_175I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_10, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_11, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_10);
    gpio1_SLICE_176I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_13, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_12, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_13, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_12);
    gpio1_SLICE_177I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_15, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_14, CE=>aclk_c_enable_123, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>gpio_dir_15, 
                OFX0=>open, F0=>open, Q0=>gpio_dir_14);
    gpio1_SLICE_178I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_0, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_1, OFX0=>open, F0=>open, Q0=>gpio_out_0);
    gpio1_SLICE_179I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_2, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_3, OFX0=>open, F0=>open, Q0=>gpio_out_2);
    gpio1_SLICE_180I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_4, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_5, OFX0=>open, F0=>open, Q0=>gpio_out_4);
    gpio1_SLICE_181I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_6, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_7, OFX0=>open, F0=>open, Q0=>gpio_out_6);
    gpio1_SLICE_182I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_9, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_8, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_9, OFX0=>open, F0=>open, Q0=>gpio_out_8);
    gpio1_SLICE_183I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_11, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_10, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_11, OFX0=>open, F0=>open, 
                Q0=>gpio_out_10);
    gpio1_SLICE_184I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_13, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_12, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_13, OFX0=>open, F0=>open, 
                Q0=>gpio_out_12);
    gpio1_SLICE_185I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_15, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_14, 
                CE=>gpio1_aclk_c_enable_138, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>gpio_out_15, OFX0=>open, F0=>open, 
                Q0=>gpio_out_14);
    uart1_SLICE_186I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>system_data_o_0, CE=>uart1_aclk_c_enable_72, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>hw_xonoff_ff);
    cpu1_SLICE_187I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>system_data_o_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>system_data_o_0, CE=>cpu1_iload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>i_5, 
                OFX0=>open, F0=>open, Q0=>i_0);
    cpu1_SLICE_188I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"8865", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>cpu1_n7883, FXA=>cpu1_n7464, FXB=>cpu1_n7465, 
                A1=>cpu1_t_sel_3_N_308_1, B1=>cpu1_n8655, C1=>memory_data_i_1, 
                D1=>cpu1_n4_adj_800, DI1=>cpu1_t_in_0, DI0=>'X', 
                A0=>memory_data_i_0, B0=>n8623, C0=>cpu1_t_sel_0, 
                D0=>cpu1_n8593, M0=>cpu1_t_sel_2, CE=>cpu1_tload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>cpu1_t_in_0, F1=>open, Q1=>memory_data_i_0, 
                OFX0=>cpu1_n7464, F0=>open, Q0=>open);
    cpu1_SLICE_189I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7651, D1=>cpu1_n8457, DI1=>cpu1_t_in_2, 
                DI0=>cpu1_t_in_1, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7658, D0=>cpu1_n8464, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_2, 
                Q1=>memory_data_i_2, OFX0=>open, F0=>cpu1_t_in_1, 
                Q0=>memory_data_i_1);
    cpu1_SLICE_190I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7637, D1=>cpu1_n8449, DI1=>cpu1_t_in_4, 
                DI0=>cpu1_t_in_3, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7644, D0=>cpu1_n8453, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_4, 
                Q1=>memory_data_i_4, OFX0=>open, F0=>cpu1_t_in_3, 
                Q0=>memory_data_i_3);
    cpu1_SLICE_191I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7623, D1=>cpu1_n8441, DI1=>cpu1_t_in_6, 
                DI0=>cpu1_t_in_5, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7630, D0=>cpu1_n8445, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_6, 
                Q1=>memory_data_i_6, OFX0=>open, F0=>cpu1_t_in_5, 
                Q0=>memory_data_i_5);
    cpu1_SLICE_192I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7767, D1=>cpu1_n8433, DI1=>cpu1_t_in_8, 
                DI0=>cpu1_t_in_7, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7774, D0=>cpu1_n8437, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_8, 
                Q1=>memory_data_i_8, OFX0=>open, F0=>cpu1_t_in_7, 
                Q0=>memory_data_i_7);
    cpu1_SLICE_193I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7753, D1=>cpu1_n8425, DI1=>cpu1_t_in_10, 
                DI0=>cpu1_t_in_9, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7760, D0=>cpu1_n8429, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_10, 
                Q1=>memory_data_i_10, OFX0=>open, F0=>cpu1_t_in_9, 
                Q0=>memory_data_i_9);
    cpu1_SLICE_194I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7739, D1=>cpu1_n8417, DI1=>cpu1_t_in_12, 
                DI0=>cpu1_t_in_11, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7746, D0=>cpu1_n8421, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_12, 
                Q1=>memory_data_i_12, OFX0=>open, F0=>cpu1_t_in_11, 
                Q0=>memory_data_i_11);
    cpu1_SLICE_195I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8610, B1=>cpu1_n8655, 
                C1=>cpu1_n7665, D1=>cpu1_n8468, DI1=>cpu1_t_in_14, 
                DI0=>cpu1_t_in_13, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7702, D0=>cpu1_n8408, M0=>'X', CE=>cpu1_tload, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_t_in_14, 
                Q1=>memory_data_i_14, OFX0=>open, F0=>cpu1_t_in_13, 
                Q0=>memory_data_i_13);
    cpu1_SLICE_196I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"FEF0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_769, 
                B1=>cpu1_n9434, C1=>cpu1_n3541, D1=>cpu1_n5, DI1=>'X', 
                DI0=>cpu1_t_in_15, A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_n7492, D0=>cpu1_n8471, M0=>'X', 
                CE=>cpu1_aclk_c_enable_48, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n8610, Q1=>open, OFX0=>open, F0=>cpu1_t_in_15, 
                Q0=>memory_data_i_15);
    SLICE_197I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"F0F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>n1231, 
                D1=>n8673, DI1=>n7545, DI0=>n7557, A0=>n8614, B0=>arst_c, 
                C0=>n1226, D0=>n8671, M0=>'X', CE=>aclk_c_enable_21, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7545, Q1=>n1231, 
                OFX0=>open, F0=>n7557, Q0=>n1226);
    SLICE_198I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"F8F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>n1241, 
                D1=>n8668, DI1=>n7553, DI0=>n7547, A0=>n8614, B0=>arst_c, 
                C0=>n1236, D0=>n8667, M0=>'X', CE=>aclk_c_enable_21, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7553, Q1=>n1241, 
                OFX0=>open, F0=>n7547, Q0=>n1236);
    SLICE_199I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_0, B1=>sp1_1, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n7558, A0=>n8614, B0=>arst_c, 
                C0=>n1246, D0=>n8671, M0=>'X', CE=>aclk_c_enable_29, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n8671, Q1=>open, 
                OFX0=>open, F0=>n7558, Q0=>n1246);
    SLICE_200I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F2F2", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n7551, A0=>sp1_2, B0=>sp1_3, C0=>n1251, 
                D0=>'X', M0=>'X', CE=>aclk_c_enable_15, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n7551, 
                Q0=>n1251);
    SLICE_201I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"BBBB", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_0, B1=>sp1_1, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n7559, A0=>n8614, B0=>arst_c, 
                C0=>n1256, D0=>n8667, M0=>'X', CE=>aclk_c_enable_29, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n8667, Q1=>open, 
                OFX0=>open, F0=>n7559, Q0=>n1256);
    SLICE_202I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F2F2", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>n7554, A0=>sp1_2, B0=>sp1_3, C0=>n1261, 
                D0=>'X', M0=>'X', CE=>aclk_c_enable_18, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n7554, 
                Q0=>n1261);
    SLICE_203I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"F0F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>n1271, 
                D1=>n8673, DI1=>n7560, DI0=>n7561, A0=>n8614, B0=>arst_c, 
                C0=>n1266, D0=>n8671, M0=>'X', CE=>aclk_c_enable_37, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7560, Q1=>n1271, 
                OFX0=>open, F0=>n7561, Q0=>n1266);
    SLICE_204I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F0F8", 
                   LUT1_INITVAL=>X"F8F0", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>n1281, 
                D1=>n8668, DI1=>n7546, DI0=>n7555, A0=>n8614, B0=>arst_c, 
                C0=>n1276, D0=>n8667, M0=>'X', CE=>aclk_c_enable_37, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7546, Q1=>n1281, 
                OFX0=>open, F0=>n7555, Q0=>n1276);
    SLICE_205I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F1F1", 
                   LUT1_INITVAL=>X"F2F2", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_0, B1=>sp1_1, C1=>n1291, 
                D1=>'X', DI1=>n7543, DI0=>n7544, A0=>sp1_0, B0=>sp1_1, 
                C0=>n1286, D0=>'X', M0=>'X', CE=>aclk_c_enable_16, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>n7543, Q1=>n1291, OFX0=>open, 
                F0=>n7544, Q0=>n1286);
    SLICE_206I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F4F4", 
                   LUT1_INITVAL=>X"F8F8", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_0, B1=>sp1_1, C1=>n1301, 
                D1=>'X', DI1=>n7539, DI0=>n7552, A0=>sp1_0, B0=>sp1_1, 
                C0=>n1296, D0=>'X', M0=>'X', CE=>aclk_c_enable_16, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>n7539, Q1=>n1301, OFX0=>open, 
                F0=>n7552, Q0=>n1296);
    SLICE_207I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF10", 
                   LUT1_INITVAL=>X"FF20", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_0, B1=>rp1_1, C1=>n7105, 
                D1=>n1346, DI1=>n7541, DI0=>n7542, A0=>rp1_0, B0=>rp1_1, 
                C0=>n7105, D0=>n1341, M0=>'X', CE=>aclk_c_enable_78, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7541, Q1=>n1346, 
                OFX0=>open, F0=>n7542, Q0=>n1341);
    SLICE_208I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF40", 
                   LUT1_INITVAL=>X"EEEE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1356, B1=>n7161, C1=>'X', 
                D1=>'X', DI1=>n7570, DI0=>n7540, A0=>rp1_0, B0=>rp1_1, 
                C0=>n7105, D0=>n1351, M0=>'X', CE=>aclk_c_enable_78, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7570, Q1=>n1356, 
                OFX0=>open, F0=>n7540, Q0=>n1351);
    SLICE_209I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF04", 
                   LUT1_INITVAL=>X"FF04", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_3, B1=>cpu1_n8665, 
                C1=>n8661, D1=>n1366, DI1=>n7564, DI0=>n7565, A0=>rp1_3, 
                B0=>cpu1_n8665, C0=>n8675, D0=>n1361, M0=>'X', 
                CE=>aclk_c_enable_78, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>n7564, Q1=>n1366, OFX0=>open, F0=>n7565, Q0=>n1361);
    SLICE_210I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF04", 
                   LUT1_INITVAL=>X"FF08", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8666, B1=>cpu1_n8665, 
                C1=>rp1_3, D1=>n1376, DI1=>n7569, DI0=>n7549, A0=>rp1_3, 
                B0=>cpu1_n8665, C0=>n8663, D0=>n1371, M0=>'X', 
                CE=>aclk_c_enable_78, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>n7569, Q1=>n1376, OFX0=>open, F0=>n7549, Q0=>n1371);
    SLICE_211I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF04", 
                   LUT1_INITVAL=>X"FF04", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_2, B1=>cpu1_n8670, 
                C1=>n8661, D1=>n1386, DI1=>n7567, DI0=>n7568, A0=>rp1_2, 
                B0=>cpu1_n8670, C0=>n8675, D0=>n1381, M0=>'X', 
                CE=>aclk_c_enable_78, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>n7567, Q1=>n1386, OFX0=>open, F0=>n7568, Q0=>n1381);
    SLICE_212I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF04", 
                   LUT1_INITVAL=>X"FF08", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8666, B1=>cpu1_n8670, 
                C1=>rp1_2, D1=>n1396, DI1=>n7563, DI0=>n7566, A0=>rp1_2, 
                B0=>cpu1_n8670, C0=>n8663, D0=>n1391, M0=>'X', 
                CE=>aclk_c_enable_78, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>n7563, Q1=>n1396, OFX0=>open, F0=>n7566, Q0=>n1391);
    SLICE_213I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF08", 
                   LUT1_INITVAL=>X"FF08", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8665, B1=>rp1_3, 
                C1=>n8661, D1=>n1406, DI1=>n7556, DI0=>n7562, A0=>cpu1_n8665, 
                B0=>rp1_3, C0=>n8675, D0=>n1401, M0=>'X', CE=>aclk_c_enable_78, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7556, Q1=>n1406, 
                OFX0=>open, F0=>n7562, Q0=>n1401);
    SLICE_214I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF08", 
                   LUT1_INITVAL=>X"FF80", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8665, B1=>rp1_3, 
                C1=>n8666, D1=>n1416, DI1=>n7548, DI0=>n7550, A0=>cpu1_n8665, 
                B0=>rp1_3, C0=>n8663, D0=>n1411, M0=>'X', CE=>aclk_c_enable_78, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n7548, Q1=>n1416, 
                OFX0=>open, F0=>n7550, Q0=>n1411);
    cpu1_SLICE_215I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_8, 
                B1=>cpu1_i_8, C1=>n8653, D1=>n8596, DI1=>'X', DI0=>cpu1_p_in_8, 
                A0=>cpu1_p_in_15_N_282_8, B0=>r_8, C0=>n7, D0=>n6376, 
                M0=>n7595, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_p_in_8, F0=>open, Q0=>p_8);
    cpu1_SLICE_216I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_9, 
                B1=>cpu1_i_9, C1=>n8653, D1=>n8596, DI1=>'X', DI0=>cpu1_p_in_9, 
                A0=>cpu1_p_in_15_N_282_9, B0=>r_9, C0=>n7, D0=>n6376, 
                M0=>n7595, CE=>cpu1_pload, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_p_in_9, F0=>open, Q0=>p_9);
    cpu1_SLICE_217I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_10, 
                B1=>cpu1_i_10, C1=>n8653, D1=>n8596, DI1=>'X', 
                DI0=>cpu1_p_in_10, A0=>cpu1_p_in_15_N_282_10, B0=>r_10, C0=>n7, 
                D0=>n6376, M0=>n7595, CE=>cpu1_aclk_c_enable_35, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_10, 
                F0=>open, Q0=>p_10);
    cpu1_SLICE_218I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_11, 
                B1=>cpu1_i_11, C1=>n8653, D1=>n8596, DI1=>'X', 
                DI0=>cpu1_p_in_11, A0=>cpu1_p_in_15_N_282_11, B0=>r_11, C0=>n7, 
                D0=>n6376, M0=>n7595, CE=>cpu1_aclk_c_enable_35, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_11, 
                F0=>open, Q0=>p_11);
    cpu1_SLICE_219I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_12, 
                B1=>cpu1_i_12, C1=>n8653, D1=>n8596, DI1=>'X', 
                DI0=>cpu1_p_in_12, A0=>cpu1_p_in_15_N_282_12, B0=>r_12, C0=>n7, 
                D0=>n6376, M0=>n7595, CE=>cpu1_aclk_c_enable_35, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_12, 
                F0=>open, Q0=>p_12);
    cpu1_SLICE_220I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_13, 
                B1=>cpu1_i_13, C1=>n8653, D1=>n8596, DI1=>'X', 
                DI0=>cpu1_p_in_13, A0=>cpu1_p_in_15_N_282_13, B0=>r_13, C0=>n7, 
                D0=>n6376, M0=>n7595, CE=>cpu1_aclk_c_enable_35, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_13, 
                F0=>open, Q0=>p_13);
    cpu1_SLICE_221I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAAA", 
                   LUT1_INITVAL=>X"AC0C", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_14, 
                B1=>cpu1_i_14, C1=>n8653, D1=>n8596, DI1=>'X', 
                DI0=>cpu1_p_in_14, A0=>cpu1_p_in_15_N_282_14, B0=>r_14, C0=>n7, 
                D0=>n6376, M0=>n7595, CE=>cpu1_aclk_c_enable_35, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_p_in_14, 
                F0=>open, Q0=>p_14);
    cpu1_SLICE_222I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_0, D1=>cpu1_r_in_16_N_181_0, DI1=>'X', 
                DI0=>cpu1_r_in_0, A0=>cpu1_n1436, B0=>memory_data_i_0, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_0, F0=>open, Q0=>r_0);
    cpu1_SLICE_223I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_1, D1=>cpu1_r_in_16_N_181_1, DI1=>'X', 
                DI0=>cpu1_r_in_1, A0=>cpu1_n1437, B0=>memory_data_i_1, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_1, F0=>open, Q0=>r_1);
    cpu1_SLICE_224I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_2, D1=>cpu1_r_in_16_N_181_2, DI1=>'X', 
                DI0=>cpu1_r_in_2, A0=>cpu1_n1438, B0=>memory_data_i_2, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_2, F0=>open, Q0=>r_2);
    cpu1_SLICE_225I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_3, D1=>cpu1_r_in_16_N_181_3, DI1=>'X', 
                DI0=>cpu1_r_in_3, A0=>cpu1_n1439, B0=>memory_data_i_3, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_3, F0=>open, Q0=>r_3);
    cpu1_SLICE_226I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_4, D1=>cpu1_r_in_16_N_181_4, DI1=>'X', 
                DI0=>cpu1_r_in_4, A0=>cpu1_n1440, B0=>memory_data_i_4, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_4, F0=>open, Q0=>r_4);
    cpu1_SLICE_227I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_5, D1=>cpu1_r_in_16_N_181_5, DI1=>'X', 
                DI0=>cpu1_r_in_5, A0=>cpu1_n1441, B0=>memory_data_i_5, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_5, F0=>open, Q0=>r_5);
    cpu1_SLICE_228I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_6, D1=>cpu1_r_in_16_N_181_6, DI1=>'X', 
                DI0=>cpu1_r_in_6, A0=>cpu1_n1442, B0=>memory_data_i_6, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_6, F0=>open, Q0=>r_6);
    cpu1_SLICE_229I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_7, D1=>cpu1_r_in_16_N_181_7, DI1=>'X', 
                DI0=>cpu1_r_in_7, A0=>cpu1_n1443, B0=>memory_data_i_7, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_7, F0=>open, Q0=>r_7);
    cpu1_SLICE_230I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_8, D1=>cpu1_r_in_16_N_181_8, DI1=>'X', DI0=>cpu1_r_in_8, 
                A0=>cpu1_n1444, B0=>memory_data_i_8, C0=>aclk_c_enable_78, 
                D0=>n1435, M0=>cpu1_r_sel_1, CE=>cpu1_rload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_r_in_8, 
                F0=>open, Q0=>r_8);
    cpu1_SLICE_231I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_9, D1=>cpu1_r_in_16_N_181_9, DI1=>'X', DI0=>cpu1_r_in_9, 
                A0=>cpu1_n1445, B0=>memory_data_i_9, C0=>aclk_c_enable_78, 
                D0=>n1435, M0=>cpu1_r_sel_1, CE=>cpu1_rload, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_r_in_9, 
                F0=>open, Q0=>r_9);
    cpu1_SLICE_232I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_10, D1=>cpu1_r_in_16_N_181_10, DI1=>'X', 
                DI0=>cpu1_r_in_10, A0=>cpu1_n1446, B0=>memory_data_i_10, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_10, F0=>open, Q0=>r_10);
    cpu1_SLICE_233I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_11, D1=>cpu1_r_in_16_N_181_11, DI1=>'X', 
                DI0=>cpu1_r_in_11, A0=>cpu1_n1447, B0=>memory_data_i_11, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_11, F0=>open, Q0=>r_11);
    cpu1_SLICE_234I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_12, D1=>cpu1_r_in_16_N_181_12, DI1=>'X', 
                DI0=>cpu1_r_in_12, A0=>cpu1_n1448, B0=>memory_data_i_12, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_12, F0=>open, Q0=>r_12);
    cpu1_SLICE_235I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_13, D1=>cpu1_r_in_16_N_181_13, DI1=>'X', 
                DI0=>cpu1_r_in_13, A0=>cpu1_n1449, B0=>memory_data_i_13, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_13, F0=>open, Q0=>r_13);
    cpu1_SLICE_236I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>p_14, D1=>cpu1_r_in_16_N_181_14, DI1=>'X', 
                DI0=>cpu1_r_in_14, A0=>cpu1_n1450, B0=>memory_data_i_14, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_14, F0=>open, Q0=>r_14);
    cpu1_SLICE_237I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"F1E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_p_15, D1=>cpu1_r_in_16_N_181_15, DI1=>'X', 
                DI0=>cpu1_r_in_15, A0=>cpu1_n1451, B0=>memory_data_i_15, 
                C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_15, F0=>open, Q0=>r_15);
    cpu1_SLICE_238I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CAC0", 
                   LUT1_INITVAL=>X"00B0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, 
                B1=>cpu1_r_sel_1_N_248_1, C1=>cpu1_r_in_16_N_181_16, 
                D1=>cpu1_n6531, DI1=>'X', DI0=>cpu1_r_in_16, A0=>cpu1_n1452, 
                B0=>t_16, C0=>aclk_c_enable_78, D0=>n1435, M0=>cpu1_r_sel_1, 
                CE=>cpu1_rload, CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>cpu1_r_in_16, F0=>open, Q0=>r_16);
    cpu1_SLICE_239I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"6666", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>cpu1_n7795, A0=>rp1_0, 
                B0=>cpu1_aclk_c_enable_153, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>cpu1_n7795, Q0=>rp1_0);
    cpu1_SLICE_240I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"1EE1", 
                   LUT1_INITVAL=>X"99A9", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6881, B1=>cpu1_n2012, 
                C1=>cpu1_n6927, D1=>cpu1_n6531, DI1=>cpu1_n6667, 
                DI0=>cpu1_n6637, A0=>cpu1_n6531, B0=>n8653, C0=>rp1_1, 
                D0=>rp1_0, M0=>'X', CE=>cpu1_aclk_c_enable_153, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>cpu1_n6667, Q1=>rp1_2, OFX0=>open, 
                F0=>cpu1_n6637, Q0=>rp1_1);
    cpu1_SLICE_241I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"1EE1", 
                   LUT1_INITVAL=>X"F100", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>n8666, D1=>rp1_2, DI1=>'X', DI0=>cpu1_n6680, 
                A0=>cpu1_n8605, B0=>cpu1_n5962, C0=>rp1_3, 
                D0=>aclk_c_enable_78, M0=>'X', CE=>cpu1_aclk_c_enable_153, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>cpu1_n8605, Q1=>open, 
                OFX0=>open, F0=>cpu1_n6680, Q0=>rp1_3);
    cpu1_SLICE_242I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6CC9", 
                   LUT1_INITVAL=>X"666A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_4, B1=>rp1_3, 
                C1=>cpu1_n6531, D1=>n8653, DI1=>'X', DI0=>cpu1_n8212, 
                A0=>aclk_c_enable_78, B0=>rp1_4, C0=>rp1_3, D0=>cpu1_n5962, 
                M0=>cpu1_n8605, CE=>cpu1_aclk_c_enable_153, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8212, 
                F0=>open, Q0=>rp1_4);
    cpu1_SLICE_243I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"FEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>cpu1_n8655, D1=>cpu1_rpopp_N_376, DI1=>'X', 
                DI0=>cpu1_n7791, A0=>rp_0, B0=>cpu1_aclk_c_enable_153, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_aclk_c_enable_153, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7791, Q0=>rp_0);
    cpu1_SLICE_244I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"1EE1", 
                   LUT1_INITVAL=>X"1EE1", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>rp_2, D1=>cpu1_n4_adj_773, DI1=>cpu1_n6670, 
                DI0=>cpu1_n6638, A0=>cpu1_n6531, B0=>n8653, C0=>rp_1, D0=>rp_0, 
                M0=>'X', CE=>cpu1_aclk_c_enable_153, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>cpu1_n6670, Q1=>rp_2, OFX0=>open, 
                F0=>cpu1_n6638, Q0=>rp_1);
    cpu1_SLICE_245I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2DD2", 
                   LUT1_INITVAL=>X"8888", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp_2, B1=>cpu1_n4_adj_773, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>cpu1_n6676, A0=>cpu1_n6548, 
                B0=>cpu1_n8609, C0=>rp_3, D0=>aclk_c_enable_78, M0=>'X', 
                CE=>cpu1_aclk_c_enable_153, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n8609, Q1=>open, OFX0=>open, F0=>cpu1_n6676, Q0=>rp_3);
    cpu1_SLICE_246I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"C69C", 
                   LUT1_INITVAL=>X"666A", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp_4, B1=>rp_3, 
                C1=>cpu1_n6531, D1=>n8653, DI1=>'X', DI0=>cpu1_n8480, 
                A0=>aclk_c_enable_78, B0=>rp_4, C0=>cpu1_n6548, D0=>rp_3, 
                M0=>cpu1_n8609, CE=>cpu1_aclk_c_enable_153, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8480, 
                F0=>open, Q0=>rp_4);
    uart1_SLICE_247I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_1, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_0, 
                CE=>uart1_aclk_c_enable_149, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>rx_buffer_reg_1, OFX0=>open, F0=>open, 
                Q0=>rx_buffer_reg_0);
    uart1_SLICE_248I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_3, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_2, 
                CE=>uart1_aclk_c_enable_149, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>rx_buffer_reg_3, OFX0=>open, F0=>open, 
                Q0=>rx_buffer_reg_2);
    uart1_SLICE_249I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_5, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_4, 
                CE=>uart1_aclk_c_enable_149, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>rx_buffer_reg_5, OFX0=>open, F0=>open, 
                Q0=>rx_buffer_reg_4);
    uart1_SLICE_250I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_7, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_6, 
                CE=>uart1_aclk_c_enable_149, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>rx_buffer_reg_7, OFX0=>open, F0=>open, 
                Q0=>rx_buffer_reg_6);
    uart1_SLICE_251I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"INV", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"BBB1", 
                   LUT1_INITVAL=>X"FFFE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n7305, B1=>uart1_n7317, 
                C1=>uart1_n7315, D1=>uart1_n7299, DI1=>'X', 
                DI0=>uart1_rx_en_N_648, A0=>rx_en, B0=>rxd_ff, 
                C0=>rx_irq_o_N_643, D0=>n8660, M0=>'X', 
                CE=>uart1_rxb_full_N_674, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>rx_irq_o_N_643, Q1=>open, OFX0=>open, 
                F0=>uart1_rx_en_N_648, Q0=>rx_en);
    cpu1_SLICE_254I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"5555", LUT1_INITVAL=>X"6666", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_0, B1=>slot_1, C1=>'X', 
                D1=>'X', DI1=>cpu1_slot_2_N_315_1, DI0=>cpu1_slot_2_N_315_0, 
                A0=>slot_0, B0=>'X', C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>cpu1_slot_2_N_318, OFX1=>open, 
                F1=>cpu1_slot_2_N_315_1, Q1=>slot_1, OFX0=>open, 
                F0=>cpu1_slot_2_N_315_0, Q0=>slot_0);
    cpu1_SLICE_255I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"6666", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>cpu1_n7797, A0=>sp1_0, 
                B0=>cpu1_aclk_c_enable_157, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>cpu1_n7797, Q0=>sp1_0);
    cpu1_SLICE_256I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6969", 
                   LUT1_INITVAL=>X"5A69", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>cpu1_n1968, 
                C1=>sp1_2, D1=>cpu1_n1550, DI1=>cpu1_n6675, DI0=>cpu1_n6674, 
                A0=>sp1_0, B0=>n8614, C0=>sp1_1, D0=>'X', M0=>'X', 
                CE=>cpu1_aclk_c_enable_157, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n6675, Q1=>sp1_2, OFX0=>open, F0=>cpu1_n6674, 
                Q0=>sp1_1);
    cpu1_SLICE_257I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6969", 
                   LUT1_INITVAL=>X"6969", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>cpu1_n8_adj_833, 
                C1=>sp1_4, D1=>'X', DI1=>cpu1_n6673, DI0=>cpu1_n6697, 
                A0=>n8614, B0=>n8599, C0=>sp1_3, D0=>'X', M0=>'X', 
                CE=>cpu1_aclk_c_enable_157, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n6673, Q1=>sp1_4, OFX0=>open, F0=>cpu1_n6697, 
                Q0=>sp1_3);
    cpu1_SLICE_258I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6666", 
                   LUT1_INITVAL=>X"FF20", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, B1=>cpu1_n8657, 
                C1=>cpu1_spopp_N_372, D1=>n8614, DI1=>'X', DI0=>cpu1_n7793, 
                A0=>sp_0, B0=>cpu1_aclk_c_enable_157, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_aclk_c_enable_157, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7793, Q0=>sp_0);
    cpu1_SLICE_259I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"6969", 
                   LUT1_INITVAL=>X"6969", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>cpu1_n8676, 
                C1=>sp_2, D1=>'X', DI1=>cpu1_n6663, DI0=>cpu1_n6662, A0=>sp_0, 
                B0=>n8614, C0=>sp_1, D0=>'X', M0=>'X', 
                CE=>cpu1_aclk_c_enable_157, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n6663, Q1=>sp_2, OFX0=>open, F0=>cpu1_n6662, Q0=>sp_1);
    cpu1_SLICE_260I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2DD2", 
                   LUT1_INITVAL=>X"5A69", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>cpu1_n2024, 
                C1=>sp_4, D1=>cpu1_n1734, DI1=>cpu1_n6664, DI0=>cpu1_n6671, 
                A0=>cpu1_n6, B0=>cpu1_n8597, C0=>sp_3, D0=>n8614, M0=>'X', 
                CE=>cpu1_aclk_c_enable_157, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>cpu1_n6664, Q1=>sp_4, OFX0=>open, F0=>cpu1_n6671, Q0=>sp_3);
    cpu1_SLICE_261I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"6565", 
                   LUT1_INITVAL=>X"F044", REG1_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>cpu1_n7883, FXA=>cpu1_n7434, FXB=>cpu1_n7435, 
                A1=>cpu1_t_sel_0, B1=>cpu1_n6907, C1=>cpu1_n6_adj_820, 
                D1=>cpu1_t_sel_2, DI1=>cpu1_t_in_16, DI0=>'X', A0=>t_16, 
                B0=>cpu1_s_16, C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n7613, 
                CE=>cpu1_aclk_c_enable_74, CLK=>aclk_c, LSR=>'X', 
                OFX1=>cpu1_t_in_16, F1=>open, Q1=>t_16, OFX0=>cpu1_n7434, 
                F0=>open, Q0=>open);
    SLICE_262I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3993, B1=>baudrate_reg_2, 
                C1=>n780, D1=>'X', DI1=>n3994, DI0=>n3964, A0=>n3963, 
                B0=>baudrate_reg_1, C0=>n780, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n3994, Q1=>tx_counter_2, 
                OFX0=>open, F0=>n3964, Q0=>tx_counter_1);
    SLICE_263I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n4053, B1=>baudrate_reg_4, 
                C1=>n780, D1=>'X', DI1=>n4054, DI0=>n4024, A0=>n4023, 
                B0=>baudrate_reg_3, C0=>n780, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n4054, Q1=>tx_counter_4, 
                OFX0=>open, F0=>n4024, Q0=>tx_counter_3);
    SLICE_264I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n4113, B1=>baudrate_reg_6, 
                C1=>n780, D1=>'X', DI1=>n4114, DI0=>n4084, A0=>n4083, 
                B0=>baudrate_reg_5, C0=>n780, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>n4114, Q1=>tx_counter_6, 
                OFX0=>open, F0=>n4084, Q0=>tx_counter_5);
    uart1_SLICE_265I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"FFC8", 
                   LUT1_INITVAL=>X"1010", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>hw_xonoff_ff, B1=>tx_en, 
                C1=>uart1_tx_rq, D1=>'X', DI1=>'X', DI0=>uart1_tx_en_N_528, 
                A0=>uart1_n8658, B0=>tx_en, C0=>tx_en_N_533, 
                D0=>uart1_tx_en_N_534, M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_tx_en_N_534, Q1=>open, OFX0=>open, 
                F0=>uart1_tx_en_N_528, Q0=>tx_en);
    uart1_SLICE_266I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"11F1", 
                   LUT1_INITVAL=>X"2020", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>rx_irq_o_N_643, 
                C1=>rx_en, D1=>'X', DI1=>'X', DI0=>uart1_rx_bitcnt_3_N_625_0, 
                A0=>rx_en, B0=>rxd_ff, C0=>uart1_n8642, D0=>uart1_rx_bitcnt_0, 
                M0=>'X', CE=>uart1_aclk_c_enable_93, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n8642, Q1=>open, OFX0=>open, 
                F0=>uart1_rx_bitcnt_3_N_625_0, Q0=>uart1_rx_bitcnt_0);
    uart1_SLICE_267I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"9999", LUT1_INITVAL=>X"E1E1", 
                   REG1_SD=>"VHI", REG0_SD=>"VHI", CHECK_DI1=>TRUE, 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_bitcnt_1, 
                B1=>uart1_rx_bitcnt_0, C1=>uart1_rx_bitcnt_2, D1=>'X', 
                DI1=>uart1_n2702, DI0=>uart1_n2706, A0=>uart1_rx_bitcnt_1, 
                B0=>uart1_rx_bitcnt_0, C0=>'X', D0=>'X', M0=>'X', 
                CE=>uart1_aclk_c_enable_93, CLK=>aclk_c, LSR=>uart1_n6423, 
                OFX1=>open, F1=>uart1_n2702, Q1=>uart1_rx_bitcnt_2, OFX0=>open, 
                F0=>uart1_n2706, Q0=>uart1_rx_bitcnt_1);
    uart1_SLICE_268I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"B373", 
                   LUT1_INITVAL=>X"EEEE", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rx_en, B1=>rxd_ff, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uart1_rx_bitcnt_3_N_625_3, 
                A0=>uart1_rx_bitcnt_3, B0=>uart1_n8677, C0=>uart1_n8642, 
                D0=>uart1_n6, M0=>'X', CE=>uart1_aclk_c_enable_93, CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>uart1_n8677, Q1=>open, OFX0=>open, 
                F0=>uart1_rx_bitcnt_3_N_625_3, Q0=>uart1_rx_bitcnt_3);
    SLICE_269I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_0, B1=>n81, 
                C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>rx_counter_15_N_609_0, A0=>baudrate_reg_1, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_0, F0=>open, Q0=>uart1_rx_counter_0);
    SLICE_270I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>n78_adj_905, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_1, DI1=>'X', 
                DI0=>rx_counter_15_N_609_1, A0=>baudrate_reg_2, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_1, F0=>open, Q0=>uart1_rx_counter_1);
    SLICE_271I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>n75_adj_904, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_2, DI1=>'X', 
                DI0=>rx_counter_15_N_609_2, A0=>baudrate_reg_3, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_2, F0=>open, Q0=>uart1_rx_counter_2);
    SLICE_272I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>n72_adj_903, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_3, DI1=>'X', 
                DI0=>rx_counter_15_N_609_3, A0=>baudrate_reg_4, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_3, F0=>open, Q0=>uart1_rx_counter_3);
    SLICE_273I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>n69_adj_902, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_4, DI1=>'X', 
                DI0=>rx_counter_15_N_609_4, A0=>baudrate_reg_5, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_4, F0=>open, Q0=>uart1_rx_counter_4);
    SLICE_274I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>n66_adj_901, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_5, DI1=>'X', 
                DI0=>rx_counter_15_N_609_5, A0=>baudrate_reg_6, B0=>rxd_ff, 
                C0=>'X', D0=>'X', M0=>rx_en, CE=>uart1_aclk_c_enable_92, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>rx_counter_15_N_609_5, F0=>open, Q0=>uart1_rx_counter_5);
    uart1_SLICE_275I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>uart1_n63_adj_876, 
                C1=>rx_irq_o_N_643, D1=>baudrate_reg_6, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_6, A0=>baudrate_reg_7, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_6, 
                F0=>open, Q0=>uart1_rx_counter_6);
    uart1_SLICE_276I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_7, B1=>uart1_n60, 
                C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_7, A0=>baudrate_reg_8, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_7, 
                F0=>open, Q0=>uart1_rx_counter_7);
    uart1_SLICE_277I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_8, B1=>uart1_n57, 
                C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_8, A0=>baudrate_reg_9, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_8, 
                F0=>open, Q0=>uart1_rx_counter_8);
    uart1_SLICE_278I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_9, B1=>uart1_n54, 
                C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_9, A0=>baudrate_reg_10, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_9, 
                F0=>open, Q0=>uart1_rx_counter_9);
    uart1_SLICE_279I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_10, 
                B1=>uart1_n51, C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_10, A0=>baudrate_reg_11, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_10, 
                F0=>open, Q0=>uart1_rx_counter_10);
    uart1_SLICE_280I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_11, 
                B1=>uart1_n48, C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_11, A0=>baudrate_reg_12, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_11, 
                F0=>open, Q0=>uart1_rx_counter_11);
    uart1_SLICE_281I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_12, 
                B1=>uart1_n45, C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_12, A0=>baudrate_reg_13, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_12, 
                F0=>open, Q0=>uart1_rx_counter_12);
    uart1_SLICE_282I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_13, 
                B1=>uart1_n42, C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_13, A0=>baudrate_reg_14, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_13, 
                F0=>open, Q0=>uart1_rx_counter_13);
    uart1_SLICE_283I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"2222", 
                   LUT1_INITVAL=>X"CAC0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>baudrate_reg_14, 
                B1=>uart1_n39, C1=>rx_irq_o_N_643, D1=>n8660, DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_14, A0=>baudrate_reg_15, 
                B0=>rxd_ff, C0=>'X', D0=>'X', M0=>rx_en, 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>uart1_rx_counter_15_N_609_14, 
                F0=>open, Q0=>uart1_rx_counter_14);
    uart1_SLICE_284I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"C088", 
                   LUT1_INITVAL=>X"E0E0", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8660, B1=>rx_irq_o_N_643, 
                C1=>rx_en, D1=>'X', DI1=>'X', 
                DI0=>uart1_rx_counter_15_N_609_15, A0=>uart1_n400, 
                B0=>uart1_n8638, C0=>uart1_n36, D0=>rx_irq_o_N_643, M0=>'X', 
                CE=>uart1_aclk_c_enable_92, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n8638, Q1=>open, OFX0=>open, 
                F0=>uart1_rx_counter_15_N_609_15, Q0=>uart1_rx_counter_15);
    uart1_SLICE_285I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_2, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_1, 
                CE=>uart1_aclk_c_enable_69, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>uart1_rx_shift_reg_1, OFX0=>open, F0=>open, 
                Q0=>uart1_rx_shift_reg_0);
    uart1_SLICE_286I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_4, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_3, 
                CE=>uart1_aclk_c_enable_69, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>uart1_rx_shift_reg_3, OFX0=>open, F0=>open, 
                Q0=>uart1_rx_shift_reg_2);
    uart1_SLICE_287I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>uart1_rx_shift_reg_6, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', 
                C0=>'X', D0=>'X', M0=>uart1_rx_shift_reg_5, 
                CE=>uart1_aclk_c_enable_69, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>uart1_rx_shift_reg_5, OFX0=>open, F0=>open, 
                Q0=>uart1_rx_shift_reg_4);
    uart1_SLICE_288I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", CHECK_M1=>TRUE, 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>rxd_ff, FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>uart1_rx_shift_reg_7, CE=>uart1_aclk_c_enable_69, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>uart1_rx_shift_reg_7, OFX0=>open, F0=>open, 
                Q0=>uart1_rx_shift_reg_6);
    uart1_SLICE_289I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"1010", 
                   LUT1_INITVAL=>X"2222", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rxb_full, 
                B1=>uart1_rxb_full_N_676, C1=>'X', D1=>'X', DI1=>'X', 
                DI0=>uart1_n6413, A0=>n8660, B0=>rx_irq_o_N_643, C0=>rx_en, 
                D0=>'X', M0=>uart1_rxb_full_N_674, CE=>'X', CLK=>aclk_c, 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>uart1_n6413, 
                F0=>open, Q0=>uart1_rxb_full_N_674);
    uart1_SLICE_290I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F7F8", 
                   LUT1_INITVAL=>X"EDEE", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_tx_bitcnt_1, 
                B1=>uart1_tx_en_N_534, C1=>uart1_tx_bitcnt_0, 
                D1=>uart1_aclk_c_enable_76, DI1=>uart1_n3061, 
                DI0=>uart1_tx_bitcnt_3_N_485_0, A0=>tx_en, B0=>uart1_n8649, 
                C0=>uart1_tx_en_N_534, D0=>uart1_tx_bitcnt_0, M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>uart1_n3061, 
                Q1=>uart1_tx_bitcnt_1, OFX0=>open, 
                F0=>uart1_tx_bitcnt_3_N_485_0, Q0=>uart1_tx_bitcnt_0);
    uart1_SLICE_291I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"E1E1", REG0_SD=>"VHI", CHECK_DI0=>TRUE, 
                   CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uart1_tx_bitcnt_3_N_597_2, 
                A0=>uart1_tx_bitcnt_1, B0=>uart1_tx_bitcnt_0, 
                C0=>uart1_tx_bitcnt_2, D0=>'X', M0=>'X', 
                CE=>uart1_aclk_c_enable_76, CLK=>aclk_c, 
                LSR=>uart1_tx_en_N_534, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_tx_bitcnt_3_N_597_2, 
                Q0=>uart1_tx_bitcnt_2);
    uart1_SLICE_292I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"EEAE", 
                   LUT1_INITVAL=>X"0010", REG0_SD=>"VHI", CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_tx_bitcnt_1, 
                B1=>uart1_tx_bitcnt_0, C1=>tx_en, D1=>uart1_tx_bitcnt_2, 
                DI1=>'X', DI0=>uart1_n8, A0=>uart1_tx_en_N_534, 
                B0=>uart1_tx_bitcnt_3, C0=>uart1_n7359, D0=>tx_en_N_533, 
                M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n7359, Q1=>open, OFX0=>open, F0=>uart1_n8, 
                Q0=>uart1_tx_bitcnt_3);
    uart1_SLICE_293I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n3078, 
                B1=>baudrate_reg_7, C1=>n780, D1=>'X', DI1=>uart1_n3079, 
                DI0=>uart1_n3095, A0=>uart1_n3094, B0=>baudrate_reg_0, 
                C0=>n780, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n3079, Q1=>uart1_tx_counter_7, 
                OFX0=>open, F0=>uart1_n3095, Q0=>uart1_tx_counter_0);
    uart1_SLICE_294I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n3074, 
                B1=>baudrate_reg_9, C1=>n780, D1=>'X', DI1=>uart1_n3075, 
                DI0=>uart1_n3077, A0=>uart1_n3076, B0=>baudrate_reg_8, 
                C0=>n780, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n3075, Q1=>uart1_tx_counter_9, 
                OFX0=>open, F0=>uart1_n3077, Q0=>uart1_tx_counter_8);
    uart1_SLICE_295I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n3070, 
                B1=>baudrate_reg_11, C1=>n780, D1=>'X', DI1=>uart1_n3071, 
                DI0=>uart1_n3073, A0=>uart1_n3072, B0=>baudrate_reg_10, 
                C0=>n780, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n3071, Q1=>uart1_tx_counter_11, 
                OFX0=>open, F0=>uart1_n3073, Q0=>uart1_tx_counter_10);
    uart1_SLICE_296I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n3066, 
                B1=>baudrate_reg_13, C1=>n780, D1=>'X', DI1=>uart1_n3067, 
                DI0=>uart1_n3069, A0=>uart1_n3068, B0=>baudrate_reg_12, 
                C0=>n780, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n3067, Q1=>uart1_tx_counter_13, 
                OFX0=>open, F0=>uart1_n3069, Q0=>uart1_tx_counter_12);
    uart1_SLICE_297I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"CACA", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n3062, 
                B1=>baudrate_reg_15, C1=>n780, D1=>'X', DI1=>uart1_n3063, 
                DI0=>uart1_n3065, A0=>uart1_n3064, B0=>baudrate_reg_14, 
                C0=>n780, D0=>'X', M0=>'X', CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n3063, Q1=>uart1_tx_counter_15, 
                OFX0=>open, F0=>uart1_n3065, Q0=>uart1_tx_counter_14);
    uart1_SLICE_298I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"5555", REG0_SD=>"VHI", 
                   CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uart1_n8669, A0=>tx_en, B0=>'X', 
                C0=>'X', D0=>'X', M0=>'X', CE=>uart1_aclk_c_enable_45, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n8669, Q0=>uart1_tx_rq);
    uart1_SLICE_299I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"2020", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n8658, B1=>tx_en_N_533, 
                C1=>tx_en, D1=>'X', DI1=>'X', DI0=>uart1_n8658, 
                A0=>uart1_tx_bitcnt_1, B0=>uart1_tx_bitcnt_0, 
                C0=>uart1_tx_bitcnt_3, D0=>uart1_tx_bitcnt_2, M0=>'X', CE=>'X', 
                CLK=>aclk_c, LSR=>uart1_n8643, OFX1=>open, 
                F1=>uart1_aclk_c_enable_76, Q1=>open, OFX0=>open, 
                F0=>uart1_n8658, Q0=>uart1_tx_shift_en);
    uart1_SLICE_300I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", LSRMUX=>"SIG", 
                   CHECK_M0=>TRUE, CHECK_CE=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>uart1_tx_shift_reg_1, CE=>uart1_aclk_c_enable_75, 
                CLK=>aclk_c, LSR=>uart1_n6714, OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>open, Q0=>uart1_tx_shift_reg_0);
    uart1_SLICE_301I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_en, B1=>uart1_tx_shift_en, 
                C1=>uart1_tx_shift_reg_3, D1=>system_data_o_1, DI1=>uart1_n732, 
                DI0=>uart1_n731, A0=>tx_en, B0=>uart1_tx_shift_en, 
                C0=>uart1_tx_shift_reg_2, D0=>system_data_o_0, M0=>'X', 
                CE=>uart1_aclk_c_enable_75, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n732, Q1=>uart1_tx_shift_reg_2, OFX0=>open, 
                F0=>uart1_n731, Q0=>uart1_tx_shift_reg_1);
    uart1_SLICE_302I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_en, B1=>uart1_tx_shift_en, 
                C1=>uart1_tx_shift_reg_5, D1=>system_data_o_3, DI1=>uart1_n734, 
                DI0=>uart1_n733, A0=>tx_en, B0=>uart1_tx_shift_en, 
                C0=>uart1_tx_shift_reg_4, D0=>system_data_o_2, M0=>'X', 
                CE=>uart1_aclk_c_enable_75, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n734, Q1=>uart1_tx_shift_reg_4, OFX0=>open, 
                F0=>uart1_n733, Q0=>uart1_tx_shift_reg_3);
    uart1_SLICE_303I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_en, B1=>uart1_tx_shift_en, 
                C1=>uart1_tx_shift_reg_7, D1=>system_data_o_5, DI1=>uart1_n736, 
                DI0=>uart1_n735, A0=>tx_en, B0=>uart1_tx_shift_en, 
                C0=>uart1_tx_shift_reg_6, D0=>system_data_o_4, M0=>'X', 
                CE=>uart1_aclk_c_enable_75, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n736, Q1=>uart1_tx_shift_reg_6, OFX0=>open, 
                F0=>uart1_n735, Q0=>uart1_tx_shift_reg_5);
    uart1_SLICE_304I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F780", 
                   LUT1_INITVAL=>X"F780", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_en, B1=>uart1_tx_shift_en, 
                C1=>uart1_tx_shift_reg_9, D1=>system_data_o_7, DI1=>uart1_n738, 
                DI0=>uart1_n737, A0=>tx_en, B0=>uart1_tx_shift_en, 
                C0=>uart1_tx_shift_reg_8, D0=>system_data_o_6, M0=>'X', 
                CE=>uart1_aclk_c_enable_75, CLK=>aclk_c, LSR=>'X', OFX1=>open, 
                F1=>uart1_n738, Q1=>uart1_tx_shift_reg_8, OFX0=>open, 
                F0=>uart1_n737, Q0=>uart1_tx_shift_reg_7);
    SLICE_305I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"F7F7", 
                   LUT1_INITVAL=>X"FFFF", REG1_SD=>"VHI", REG0_SD=>"VHI", 
                   CHECK_DI1=>TRUE, CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>n9433, DI0=>uart1_n739, A0=>tx_en, 
                B0=>uart1_tx_shift_en, C0=>uart1_tx_shift_reg_10, D0=>'X', 
                M0=>'X', CE=>uart1_aclk_c_enable_75, CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>n9433, Q1=>uart1_tx_shift_reg_10, OFX0=>open, 
                F0=>uart1_n739, Q0=>uart1_tx_shift_reg_9);
    uart1_SLICE_306I: SLOGICB
      generic map (CLKMUX=>"SIG", CEMUX=>"SIG", REG0_REGSET=>"SET", 
                   SRMODE=>"ASYNC", LSRONMUX=>"OFF", LUT0_INITVAL=>X"FF01", 
                   REG0_SD=>"VHI", CHECK_DI0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>uart1_txd_o_N_662, 
                A0=>uart1_tx_bitcnt_2, B0=>uart1_n8678, C0=>uart1_tx_bitcnt_3, 
                D0=>uart1_tx_shift_reg_0, M0=>'X', CE=>uart1_aclk_c_enable_73, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_txd_o_N_662, Q0=>uart_o_c);
    gpio1_SLICE_307I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>hw_xonoff_ff, 
                B1=>rx_buffer_reg_0, C1=>n8622, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>ioport_out_0, B0=>gpio1_n2193, C0=>data_o_15_N_441, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>gpio1_n2193, Q1=>open, OFX0=>gpio1_n2194, F0=>open, 
                Q0=>open);
    i17_SLICE_308I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_5, C1=>n8622, D1=>baudrate_reg_5, DI1=>'X', 
                DI0=>'X', A0=>n30_adj_909, B0=>ioport_out_5, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28_adj_913, F0=>open, 
                Q0=>open);
    i17_adj_206_SLICE_309I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_6, C1=>n8622, D1=>baudrate_reg_6, DI1=>'X', 
                DI0=>'X', A0=>n30, B0=>ioport_out_6, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28_adj_908, F0=>open, 
                Q0=>open);
    gpio1_addr_1_I_0_Mux_15_i3_SLICE_310I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_15, 
                B1=>ioport_out_15, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_15, B0=>baudrate_reg_15, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1099, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_14_i3_SLICE_311I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_14, 
                B1=>ioport_out_14, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_14, B0=>baudrate_reg_14, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1098, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_13_i3_SLICE_312I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_13, 
                B1=>ioport_out_13, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_13, B0=>baudrate_reg_13, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1097, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_12_i3_SLICE_313I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_12, 
                B1=>ioport_out_12, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_12, B0=>baudrate_reg_12, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1096, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_11_i3_SLICE_314I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_11, 
                B1=>ioport_out_11, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_11, B0=>baudrate_reg_11, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1095, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_10_i3_SLICE_315I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_10, 
                B1=>ioport_out_10, C1=>memory_addr_1, D1=>n8592, DI1=>'X', 
                DI0=>'X', A0=>gpio_out_10, B0=>baudrate_reg_10, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>n1094, 
                F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_9_i3_SLICE_316I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>gpio_dir_9, B1=>ioport_out_9, 
                C1=>memory_addr_1, D1=>n8592, DI1=>'X', DI0=>'X', 
                A0=>gpio_out_9, B0=>baudrate_reg_9, C0=>data_o_15_N_441, 
                D0=>'X', M0=>n7611, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n1093, F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_7_i3_SLICE_317I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0ACA", LUT1_INITVAL=>X"A0CC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8622, B1=>ioport_out_7, 
                C1=>rx_buffer_reg_7, D1=>data_o_15_N_441, DI1=>'X', DI0=>'X', 
                A0=>n1171, B0=>gpio_dir_7, C0=>n8622, D0=>n8592, 
                M0=>memory_addr_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n1091, F0=>open, Q0=>open);
    gpio1_addr_1_I_0_Mux_0_i1_SLICE_318I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"BF00")
      port map (M1=>memory_addr_1, FXA=>gpio1_n1_adj_893, FXB=>gpio1_n2194, 
                A1=>n8621, B1=>n1996, C1=>system_read, D1=>gpio_dir_0, 
                DI1=>'X', DI0=>'X', A0=>gpio_out_0, B0=>baudrate_reg_0, 
                C0=>data_o_15_N_441, D0=>'X', M0=>n8622, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>n1084, F1=>open, Q1=>open, 
                OFX0=>gpio1_n1_adj_893, F0=>open, Q0=>open);
    gpio1_i7483_SLICE_319I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"0101")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, B1=>tx_en, 
                C1=>hw_xonoff_ff, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>memory_addr_1, B0=>baudrate_reg_8, C0=>rxb_full, D0=>'X', 
                M0=>n8622, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>gpio1_n8242, F0=>open, Q0=>open);
    i17_adj_207_SLICE_320I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_2, C1=>n8622, D1=>baudrate_reg_2, DI1=>'X', 
                DI0=>'X', A0=>n30_adj_923, B0=>ioport_out_2, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28_adj_926, F0=>open, 
                Q0=>open);
    i17_adj_208_SLICE_321I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_1, C1=>n8622, D1=>baudrate_reg_1, DI1=>'X', 
                DI0=>'X', A0=>n30_adj_927, B0=>ioport_out_1, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28, F0=>open, Q0=>open);
    i29_SLICE_322I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>a_11, B1=>n6893, C1=>n6891, 
                D1=>a_13, DI1=>'X', DI0=>'X', A0=>p_11, B0=>n6903, C0=>n6901, 
                D0=>p_13, M0=>n8637, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n18, F0=>open, Q0=>open);
    i7026_SLICE_323I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>sp_2, FXA=>n7690, FXB=>n7691, A1=>sp_0, B1=>n1236, 
                C1=>n1241, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1226, B0=>n1231, 
                C0=>sp_0, D0=>'X', M0=>sp_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7694, F1=>open, Q1=>open, OFX0=>n7690, F0=>open, 
                Q0=>open);
    i7027_SLICE_324I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp_0, B1=>n1256, C1=>n1261, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1246, B0=>n1251, C0=>sp_0, 
                D0=>'X', M0=>sp_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n7691, F0=>open, Q0=>open);
    i7028_SLICE_325I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>sp_2, FXA=>n7692, FXB=>n7693, A1=>sp_0, B1=>n1276, 
                C1=>n1281, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1266, B0=>n1271, 
                C0=>sp_0, D0=>'X', M0=>sp_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7695, F1=>open, Q1=>open, OFX0=>n7692, F0=>open, 
                Q0=>open);
    i7029_SLICE_326I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp_0, B1=>n1296, C1=>n1301, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1286, B0=>n1291, C0=>sp_0, 
                D0=>'X', M0=>sp_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n7693, F0=>open, Q0=>open);
    i7048_SLICE_327I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp1_2, FXA=>n7712, FXB=>n7713, A1=>rp1_0, B1=>n1351, 
                C1=>n1356, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1341, B0=>n1346, 
                C0=>rp1_0, D0=>'X', M0=>rp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7716, F1=>open, Q1=>open, OFX0=>n7712, F0=>open, 
                Q0=>open);
    i7049_SLICE_328I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp1_3, FXA=>n7716, FXB=>n7717, A1=>rp1_0, B1=>n1371, 
                C1=>n1376, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1361, B0=>n1366, 
                C0=>rp1_0, D0=>'X', M0=>rp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n1419, F1=>open, Q1=>open, OFX0=>n7713, F0=>open, 
                Q0=>open);
    i7050_SLICE_329I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp1_2, FXA=>n7714, FXB=>n7715, A1=>rp1_0, B1=>n1391, 
                C1=>n1396, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1381, B0=>n1386, 
                C0=>rp1_0, D0=>'X', M0=>rp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7717, F1=>open, Q1=>open, OFX0=>n7714, F0=>open, 
                Q0=>open);
    i7051_SLICE_330I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_0, B1=>n1411, C1=>n1416, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1401, B0=>n1406, C0=>rp1_0, 
                D0=>'X', M0=>rp1_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n7715, F0=>open, Q0=>open);
    i7063_SLICE_331I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp_2, FXA=>n7727, FXB=>n7728, A1=>rp_0, B1=>n1351, 
                C1=>n1356, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1341, B0=>n1346, 
                C0=>rp_0, D0=>'X', M0=>rp_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7731, F1=>open, Q1=>open, OFX0=>n7727, F0=>open, 
                Q0=>open);
    i7064_SLICE_332I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp_3, FXA=>n7731, FXB=>n7732, A1=>rp_0, B1=>n1371, 
                C1=>n1376, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1361, B0=>n1366, 
                C0=>rp_0, D0=>'X', M0=>rp_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7733, F1=>open, Q1=>open, OFX0=>n7728, F0=>open, 
                Q0=>open);
    i7065_SLICE_333I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>rp_2, FXA=>n7729, FXB=>n7730, A1=>rp_0, B1=>n1391, 
                C1=>n1396, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1381, B0=>n1386, 
                C0=>rp_0, D0=>'X', M0=>rp_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7732, F1=>open, Q1=>open, OFX0=>n7729, F0=>open, 
                Q0=>open);
    i7066_SLICE_334I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp_0, B1=>n1411, C1=>n1416, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1401, B0=>n1406, C0=>rp_0, 
                D0=>'X', M0=>rp_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n7730, F0=>open, Q0=>open);
    i6_SLICE_335I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_0, B1=>i_5, C1=>i_0, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_i_10, B0=>slot_0, 
                C0=>'X', D0=>'X', M0=>slot_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n3, F0=>open, Q0=>open);
    i7011_SLICE_336I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>sp1_2, FXA=>n7675, FXB=>n7676, A1=>sp1_0, B1=>n1236, 
                C1=>n1241, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1226, B0=>n1231, 
                C0=>sp1_0, D0=>'X', M0=>sp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7679, F1=>open, Q1=>open, OFX0=>n7675, F0=>open, 
                Q0=>open);
    i7012_SLICE_337I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>sp1_3, FXA=>n7679, FXB=>n7680, A1=>sp1_0, B1=>n1256, 
                C1=>n1261, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1246, B0=>n1251, 
                C0=>sp1_0, D0=>'X', M0=>sp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n1304, F1=>open, Q1=>open, OFX0=>n7676, F0=>open, 
                Q0=>open);
    i7013_SLICE_338I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E4E4")
      port map (M1=>sp1_2, FXA=>n7677, FXB=>n7678, A1=>sp1_0, B1=>n1276, 
                C1=>n1281, D1=>'X', DI1=>'X', DI0=>'X', A0=>n1266, B0=>n1271, 
                C0=>sp1_0, D0=>'X', M0=>sp1_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>n7680, F1=>open, Q1=>open, OFX0=>n7677, F0=>open, 
                Q0=>open);
    i7014_SLICE_339I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_0, B1=>n1296, C1=>n1301, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1286, B0=>n1291, C0=>sp1_0, 
                D0=>'X', M0=>sp1_1, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>n7678, F0=>open, Q0=>open);
    cpu1_i7107_SLICE_340I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7771, FXB=>cpu1_n7772, 
                A1=>memory_data_i_6, B1=>cpu1_t_sel_0, C1=>n1328, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_6, B0=>memory_data_i_6, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7774, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7771, F0=>open, Q0=>open);
    cpu1_i6956_SLICE_341I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7620, FXB=>cpu1_n7621, 
                A1=>memory_data_i_5, B1=>cpu1_t_sel_0, C1=>n1327, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_5, B0=>memory_data_i_5, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7623, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7620, F0=>open, Q0=>open);
    cpu1_i6957_SLICE_342I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_6, C1=>memory_data_i_14, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_6, B0=>r_6, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7621, F0=>open, Q0=>open);
    cpu1_i6963_SLICE_343I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7627, FXB=>cpu1_n7628, 
                A1=>memory_data_i_4, B1=>cpu1_t_sel_0, C1=>n1326, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_4, B0=>memory_data_i_4, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7630, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7627, F0=>open, Q0=>open);
    cpu1_i6964_SLICE_344I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_5, C1=>memory_data_i_13, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_5, B0=>r_5, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7628, F0=>open, Q0=>open);
    cpu1_i7578_SLICE_345I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"3210")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, B1=>cpu1_n8593, 
                C1=>cpu1_sum_15, D1=>cpu1_sum_16, DI1=>'X', DI0=>'X', 
                A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8629, 
                D0=>memory_data_i_15, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8471, 
                F0=>open, Q0=>open);
    cpu1_i6970_SLICE_346I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7634, FXB=>cpu1_n7635, 
                A1=>memory_data_i_3, B1=>cpu1_t_sel_0, C1=>n1325, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_3, B0=>memory_data_i_3, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7637, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7634, F0=>open, Q0=>open);
    cpu1_i6971_SLICE_347I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_4, C1=>memory_data_i_12, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_4, B0=>r_4, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7635, F0=>open, Q0=>open);
    cpu1_mux_265_Mux_8_i31_SLICE_348I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"3022", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_n3_adj_770, C1=>cpu1_n7397, D1=>cpu1_n3, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n21, B0=>cpu1_code_3, C0=>cpu1_n6372, 
                D0=>cpu1_code_2, M0=>cpu1_code_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_rpopp_N_376, 
                F0=>open, Q0=>open);
    cpu1_i7575_SLICE_349I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_15, D1=>cpu1_n8465, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8631, 
                D0=>memory_data_i_14, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8468, 
                F0=>open, Q0=>open);
    cpu1_i25_SLICE_350I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"4F40", LUT1_INITVAL=>X"5C0C")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_n8635, C1=>cpu1_code_4, D1=>cpu1_n35, DI1=>'X', 
                DI0=>'X', A0=>cpu1_code_0, B0=>cpu1_code_1, C0=>cpu1_code_2, 
                D0=>cpu1_n25, M0=>cpu1_n7616, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n10, F0=>open, 
                Q0=>open);
    cpu1_i6977_SLICE_351I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7641, FXB=>cpu1_n7642, 
                A1=>memory_data_i_2, B1=>cpu1_t_sel_0, C1=>n1324, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_2, B0=>memory_data_i_2, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7644, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7641, F0=>open, Q0=>open);
    cpu1_i7573_SLICE_352I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_2, D1=>cpu1_n8461, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8632, 
                D0=>memory_data_i_1, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8464, 
                F0=>open, Q0=>open);
    cpu1_i38_SLICE_353I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"3800", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_slot_2, C1=>cpu1_n3_adj_770, D1=>n3, DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_0, B0=>cpu1_code_0, C0=>cpu1_code_2, 
                D0=>cpu1_code_1, M0=>cpu1_code_3, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n33, F0=>open, 
                Q0=>open);
    cpu1_i6978_SLICE_354I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_3, C1=>memory_data_i_11, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_3, B0=>r_3, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7642, F0=>open, Q0=>open);
    cpu1_i6984_SLICE_355I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7648, FXB=>cpu1_n7649, 
                A1=>memory_data_i_1, B1=>cpu1_t_sel_0, C1=>n1323, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_1, B0=>memory_data_i_1, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7651, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7648, F0=>open, Q0=>open);
    cpu1_i6985_SLICE_356I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_2, C1=>memory_data_i_10, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_2, B0=>r_2, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7649, F0=>open, Q0=>open);
    cpu1_i6991_SLICE_357I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7655, FXB=>cpu1_n7656, 
                A1=>memory_data_i_0, B1=>cpu1_t_sel_0, C1=>n1322, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_0, B0=>memory_data_i_0, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7658, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7655, F0=>open, Q0=>open);
    cpu1_i7422_SLICE_358I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"3111", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8656, B1=>t_16, 
                C1=>cpu1_code_0, D1=>cpu1_code_2, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n3_adj_770, B0=>cpu1_slot_2, C0=>cpu1_rpopp_N_378, 
                D0=>n3, M0=>cpu1_code_1, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n7, F0=>open, Q0=>open);
    cpu1_i7569_SLICE_359I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"DDDD", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_1, B1=>cpu1_i_11, 
                C1=>cpu1_i_1, D1=>'X', DI1=>'X', DI0=>'X', A0=>slot_1, 
                B0=>cpu1_i_6, C0=>'X', D0=>'X', M0=>slot_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n3_adj_767, F0=>open, Q0=>open);
    cpu1_i7567_SLICE_360I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_3, D1=>cpu1_n8454, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8633, 
                D0=>memory_data_i_2, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8457, 
                F0=>open, Q0=>open);
    cpu1_i6992_SLICE_361I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_1, C1=>memory_data_i_9, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_1, B0=>r_1, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7656, F0=>open, Q0=>open);
    cpu1_i7563_SLICE_362I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_4, D1=>cpu1_n8450, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8634, 
                D0=>memory_data_i_3, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8453, 
                F0=>open, Q0=>open);
    cpu1_mux_265_Mux_9_i31_SLICE_363I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0203", LUT1_INITVAL=>X"AEAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_slot_2, 
                B1=>cpu1_n3_adj_770, C1=>n3, D1=>cpu1_n4_adj_776, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n21, B0=>cpu1_n3, C0=>cpu1_slot_2, 
                D0=>cpu1_n3_adj_770, M0=>cpu1_code_4, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_reset_N_406, F0=>open, Q0=>open);
    cpu1_i6998_SLICE_364I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7662, FXB=>cpu1_n7663, 
                A1=>memory_data_i_13, B1=>cpu1_t_sel_0, C1=>n1335, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_13, B0=>memory_data_i_13, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7665, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7662, F0=>open, Q0=>open);
    cpu1_i6832_SLICE_365I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"DF8A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_code_2, B1=>cpu1_code_0, 
                C1=>cpu1_code_1, D1=>cpu1_n25, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n18, B0=>cpu1_n21, C0=>cpu1_code_2, D0=>'X', 
                M0=>cpu1_code_3, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n30_adj_781, F0=>open, Q0=>open);
    cpu1_i7559_SLICE_366I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_5, D1=>cpu1_n8446, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8612, 
                D0=>memory_data_i_4, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8449, 
                F0=>open, Q0=>open);
    cpu1_mux_265_Mux_4_i31_SLICE_367I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"F202", LUT1_INITVAL=>X"2300")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_767, D1=>cpu1_n3_adj_770, DI1=>'X', DI0=>'X', 
                A0=>cpu1_code_1, B0=>cpu1_code_2, C0=>cpu1_code_3, 
                D0=>cpu1_n35, M0=>cpu1_code_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_spopp_N_372, 
                F0=>open, Q0=>open);
    cpu1_i6999_SLICE_368I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_14, C1=>memory_data_i_6, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_14, B0=>r_14, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7663, F0=>open, Q0=>open);
    cpu1_i7555_SLICE_369I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_6, D1=>cpu1_n8442, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8620, 
                D0=>memory_data_i_5, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8445, 
                F0=>open, Q0=>open);
    cpu1_i18_SLICE_370I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FCEC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_1, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_770, D1=>cpu1_i_15, DI1=>'X', DI0=>'X', 
                A0=>slot_1, B0=>cpu1_i_7, C0=>'X', D0=>'X', M0=>slot_0, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7_adj_828, F0=>open, Q0=>open);
    cpu1_i5071_SLICE_371I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n5704, FXB=>cpu1_n7433, 
                A1=>memory_data_i_14, B1=>cpu1_t_sel_0, C1=>n1336, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_14, B0=>memory_data_i_14, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7492, F1=>open, Q1=>open, 
                OFX0=>cpu1_n5704, F0=>open, Q0=>open);
    cpu1_i6769_SLICE_372I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_15, C1=>memory_data_i_7, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_15, B0=>r_15, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7433, F0=>open, Q0=>open);
    cpu1_i7551_SLICE_373I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"A451", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_7, D1=>cpu1_n8438, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8593, B0=>cpu1_t_sel_0, C0=>n8613, 
                D0=>memory_data_i_6, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8441, 
                F0=>open, Q0=>open);
    cpu1_i7549_SLICE_374I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_8, D1=>cpu1_n8434, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8619, 
                D0=>memory_data_i_7, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8437, 
                F0=>open, Q0=>open);
    cpu1_i7547_SLICE_375I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_9, D1=>cpu1_n8430, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8624, 
                D0=>memory_data_i_8, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8433, 
                F0=>open, Q0=>open);
    cpu1_i7543_SLICE_376I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_10, D1=>cpu1_n8426, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8625, 
                D0=>memory_data_i_9, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8429, 
                F0=>open, Q0=>open);
    cpu1_i7541_SLICE_377I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_11, D1=>cpu1_n8422, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8626, 
                D0=>memory_data_i_10, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8425, 
                F0=>open, Q0=>open);
    cpu1_i7537_SLICE_378I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_12, D1=>cpu1_n8418, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8627, 
                D0=>memory_data_i_11, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8421, 
                F0=>open, Q0=>open);
    cpu1_i7535_SLICE_379I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_13, D1=>cpu1_n8414, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8628, 
                D0=>memory_data_i_12, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8417, 
                F0=>open, Q0=>open);
    cpu1_i6778_SLICE_380I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C022", LUT1_INITVAL=>X"CCCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8697, B1=>cpu1_n29, 
                C1=>cpu1_n3, D1=>cpu1_slot_2, DI1=>'X', DI0=>'X', 
                A0=>cpu1_code_1, B0=>cpu1_code_2, C0=>cpu1_n8644, 
                D0=>cpu1_code_3, M0=>cpu1_code_4, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_t_sel_3_N_308_0, 
                F0=>open, Q0=>open);
    cpu1_i7531_SLICE_381I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"C231", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>memory_data_i_14, D1=>cpu1_n8405, DI1=>'X', 
                DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_n8593, C0=>n8630, 
                D0=>memory_data_i_13, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8408, 
                F0=>open, Q0=>open);
    cpu1_i7501_SLICE_382I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"DDDD", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_1, B1=>cpu1_i_12, 
                C1=>cpu1_i_2, D1=>'X', DI1=>'X', DI0=>'X', A0=>slot_1, 
                B0=>cpu1_i_7, C0=>'X', D0=>'X', M0=>slot_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n3_adj_770, F0=>open, Q0=>open);
    cpu1_i7488_SLICE_383I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"DDDD", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_1, B1=>cpu1_i_13, 
                C1=>cpu1_i_3, D1=>'X', DI1=>'X', DI0=>'X', A0=>slot_1, 
                B0=>cpu1_i_8, C0=>'X', D0=>'X', M0=>slot_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n3, 
                F0=>open, Q0=>open);
    cpu1_i7486_SLICE_384I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"DDDD", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_1, B1=>cpu1_i_14, 
                C1=>cpu1_i_4, D1=>'X', DI1=>'X', DI0=>'X', A0=>slot_1, 
                B0=>cpu1_i_9, C0=>'X', D0=>'X', M0=>slot_0, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n3_adj_769, F0=>open, Q0=>open);
    cpu1_i7101_SLICE_385I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_8, C1=>memory_data_i_0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_8, B0=>r_8, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7765, F0=>open, Q0=>open);
    cpu1_i7108_SLICE_386I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_7, C1=>memory_data_i_15, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_7, B0=>r_7, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7772, F0=>open, Q0=>open);
    cpu1_i7670_SLICE_387I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"242C", LUT1_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_sum_16, B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n3_adj_767, 
                B0=>cpu1_n3_adj_770, C0=>n3, D0=>cpu1_sum_16, M0=>cpu1_slot_2, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n8697, F0=>open, Q0=>open);
    cpu1_i6801_SLICE_388I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CA0A", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_n8655, C1=>cpu1_n7423, D1=>cpu1_n7422, DI1=>'X', 
                DI0=>'X', A0=>cpu1_a_15, B0=>n8623, C0=>cpu1_n8593, 
                D0=>cpu1_t_sel_0, M0=>cpu1_t_sel_2, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n7465, 
                F0=>open, Q0=>open);
    cpu1_i6771_SLICE_389I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"0ACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n5700, 
                B1=>cpu1_n11_adj_835, C1=>cpu1_t_sel_2, D1=>cpu1_n8593, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_15, B0=>memory_data_i_15, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n7613, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n7435, 
                F0=>open, Q0=>open);
    cpu1_i7035_SLICE_390I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7699, FXB=>cpu1_n7700, 
                A1=>memory_data_i_12, B1=>cpu1_t_sel_0, C1=>n1334, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_12, B0=>memory_data_i_12, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7702, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7699, F0=>open, Q0=>open);
    cpu1_i7036_SLICE_391I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_13, C1=>memory_data_i_5, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_13, B0=>r_13, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7700, F0=>open, Q0=>open);
    cpu1_i7072_SLICE_392I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7736, FXB=>cpu1_n7737, 
                A1=>memory_data_i_11, B1=>cpu1_t_sel_0, C1=>n1333, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_11, B0=>memory_data_i_11, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7739, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7736, F0=>open, Q0=>open);
    cpu1_i7073_SLICE_393I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_12, C1=>memory_data_i_4, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_12, B0=>r_12, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7737, F0=>open, Q0=>open);
    cpu1_i7079_SLICE_394I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7743, FXB=>cpu1_n7744, 
                A1=>memory_data_i_10, B1=>cpu1_t_sel_0, C1=>n1332, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_10, B0=>memory_data_i_10, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7746, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7743, F0=>open, Q0=>open);
    cpu1_i7080_SLICE_395I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_11, C1=>memory_data_i_3, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_11, B0=>r_11, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7744, F0=>open, Q0=>open);
    cpu1_i7086_SLICE_396I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7750, FXB=>cpu1_n7751, 
                A1=>memory_data_i_9, B1=>cpu1_t_sel_0, C1=>n1331, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_9, B0=>memory_data_i_9, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7753, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7750, F0=>open, Q0=>open);
    cpu1_i7087_SLICE_397I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_10, C1=>memory_data_i_2, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_10, B0=>r_10, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7751, F0=>open, Q0=>open);
    cpu1_i7093_SLICE_398I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7757, FXB=>cpu1_n7758, 
                A1=>memory_data_i_8, B1=>cpu1_t_sel_0, C1=>n1330, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_8, B0=>memory_data_i_8, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7760, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7757, F0=>open, Q0=>open);
    cpu1_i7094_SLICE_399I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_0, 
                B1=>system_data_o_9, C1=>memory_data_i_1, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>a_9, B0=>r_9, C0=>cpu1_t_sel_0, D0=>'X', 
                M0=>cpu1_n8593, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n7758, F0=>open, Q0=>open);
    cpu1_i7100_SLICE_400I: SLOGICB
      generic map (M0MUX=>"SIG", M1MUX=>"SIG", LUT0_INITVAL=>X"CACA", 
                   LUT1_INITVAL=>X"E222")
      port map (M1=>cpu1_t_sel_2, FXA=>cpu1_n7764, FXB=>cpu1_n7765, 
                A1=>memory_data_i_7, B1=>cpu1_t_sel_0, C1=>n1329, D1=>n8640, 
                DI1=>'X', DI0=>'X', A0=>cpu1_sum_7, B0=>memory_data_i_7, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>cpu1_n8593, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>cpu1_n7767, F1=>open, Q1=>open, 
                OFX0=>cpu1_n7764, F0=>open, Q0=>open);
    cpu1_i7668_SLICE_401I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"0010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_slot_2, 
                B1=>cpu1_n3_adj_767, C1=>cpu1_n3_adj_769, D1=>n3, DI1=>'X', 
                DI0=>'X', A0=>cpu1_slot_2, B0=>cpu1_n3_adj_767, 
                C0=>cpu1_n3_adj_769, D0=>n3, M0=>cpu1_n3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_rload_N_400, F0=>open, Q0=>open);
    cpu1_i7666_SLICE_402I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0200", LUT1_INITVAL=>X"0001")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_slot_2, C1=>cpu1_n3_adj_770, D1=>cpu1_n3, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n3_adj_767, B0=>cpu1_slot_2, 
                C0=>cpu1_n3_adj_770, D0=>cpu1_n3, M0=>n3, CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>cpu1_n8691, 
                F0=>open, Q0=>open);
    cpu1_i7664_SLICE_403I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"1032", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_slot_2, 
                B1=>cpu1_n3_adj_767, C1=>cpu1_n3_adj_770, D1=>cpu1_n30_adj_781, 
                DI1=>'X', DI0=>'X', A0=>n3, B0=>cpu1_slot_2, 
                C0=>cpu1_n3_adj_767, D0=>cpu1_n3_adj_770, M0=>cpu1_n3_adj_769, 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>cpu1_n8688, F0=>open, Q0=>open);
    cpu1_i7688_SLICE_404I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"0405")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_slot_2, B1=>cpu1_n3, 
                C1=>cpu1_n3_adj_769, D1=>cpu1_n3_adj_770, DI1=>'X', DI0=>'X', 
                A0=>cpu1_slot_2, B0=>n3, C0=>cpu1_n3, D0=>cpu1_n3_adj_769, 
                M0=>cpu1_n3_adj_767, CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>cpu1_n3541, F0=>open, Q0=>open);
    i17_adj_235_SLICE_405I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_3, C1=>n8622, D1=>baudrate_reg_3, DI1=>'X', 
                DI0=>'X', A0=>n30_adj_919, B0=>ioport_out_3, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28_adj_922, F0=>open, 
                Q0=>open);
    i17_adj_236_SLICE_406I: SLOGICB
      generic map (M0MUX=>"SIG", LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8580")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_1, 
                B1=>rx_buffer_reg_4, C1=>n8622, D1=>baudrate_reg_4, DI1=>'X', 
                DI0=>'X', A0=>n30_adj_915, B0=>ioport_out_4, C0=>memory_addr_1, 
                D0=>'X', M0=>data_o_15_N_441, CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>n28_adj_918, F0=>open, 
                Q0=>open);
    cpu1_SLICE_407I: SLOGICB
      generic map (LUT0_INITVAL=>X"F040", LUT1_INITVAL=>X"05C5")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_r_sel_1_N_248_1, 
                B1=>cpu1_n8691, C1=>cpu1_n8662, D1=>cpu1_n6404, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8662, B0=>cpu1_r_sel_1_N_248_1, 
                C0=>cpu1_pload, D0=>p_sel_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>p_sel_1, Q1=>open, OFX0=>open, 
                F0=>cpu1_aclk_c_enable_31, Q0=>open);
    cpu1_SLICE_408I: SLOGICB
      generic map (LUT0_INITVAL=>X"BFB0", LUT1_INITVAL=>X"4F40")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_code_0, B1=>cpu1_code_1, 
                C1=>cpu1_code_2, D1=>cpu1_n21, DI1=>'X', DI0=>'X', 
                A0=>cpu1_code_0, B0=>cpu1_code_1, C0=>cpu1_code_3, 
                D0=>cpu1_n8641, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n8641, Q1=>open, OFX0=>open, F0=>cpu1_n5, 
                Q0=>open);
    SLICE_409I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A", LUT1_INITVAL=>X"C8C8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n8658, B1=>tx_en, 
                C1=>tx_en_N_533, D1=>'X', DI1=>'X', DI0=>'X', A0=>tx_counter_1, 
                B0=>n78, C0=>n8651, D0=>tx_en_N_533, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8651, Q1=>open, 
                OFX0=>open, F0=>n3963, Q0=>open);
    SLICE_410I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"C088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1478, B1=>n8640, C1=>n1495, 
                D1=>sp_4, DI1=>'X', DI0=>'X', A0=>n1314, B0=>n1317, C0=>sp_4, 
                D0=>n1305, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_s_16, Q1=>open, OFX0=>open, F0=>n8640, Q0=>open);
    cpu1_SLICE_411I: SLOGICB
      generic map (LUT0_INITVAL=>X"0FB4", LUT1_INITVAL=>X"A0A8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, B1=>cpu1_n8685, 
                C1=>cpu1_n8657, D1=>cpu1_code_1, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n8662, B0=>cpu1_r_sel_1_N_248_1, C0=>rp1_2, 
                D0=>cpu1_n6531, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n6531, Q1=>open, OFX0=>open, 
                F0=>cpu1_n6881, Q0=>open);
    cpu1_SLICE_412I: SLOGICB
      generic map (LUT0_INITVAL=>X"80F0", LUT1_INITVAL=>X"AAAB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>sp_1, C1=>sp_0, 
                D1=>sp_2, DI1=>'X', DI0=>'X', A0=>sp_2, B0=>cpu1_n8676, 
                C0=>sp_3, D0=>cpu1_n6, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n6, Q1=>open, OFX0=>open, F0=>cpu1_n1734, 
                Q0=>open);
    cpu1_SLICE_413I: SLOGICB
      generic map (LUT0_INITVAL=>X"F2F0", LUT1_INITVAL=>X"D000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8672, B1=>cpu1_slot_2, 
                C1=>cpu1_t_sel_3_N_308_2, D1=>cpu1_n8662, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n8662, B0=>cpu1_n8657, C0=>cpu1_t_sel_2, 
                D0=>cpu1_t_sel_3_N_308_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_t_sel_2, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7613, Q0=>open);
    cpu1_SLICE_414I: SLOGICB
      generic map (LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_0, B1=>cpu1_n9434, 
                C1=>slot_1, D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n8672, 
                B0=>cpu1_n9434, C0=>cpu1_n12_adj_815, D0=>cpu1_n8662, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8662, 
                Q1=>open, OFX0=>open, F0=>cpu1_n8600, Q0=>open);
    cpu1_SLICE_415I: SLOGICB
      generic map (LUT0_INITVAL=>X"D000", LUT1_INITVAL=>X"FEF0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_769, 
                B1=>cpu1_n9434, C1=>cpu1_n3541, D1=>cpu1_n30_adj_781, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8672, B0=>cpu1_n9434, 
                C0=>cpu1_t_sel_3_N_308_1, D0=>cpu1_n8662, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_t_sel_3_N_308_1, 
                Q1=>open, OFX0=>open, F0=>cpu1_n8593, Q0=>open);
    cpu1_SLICE_416I: SLOGICB
      generic map (LUT0_INITVAL=>X"AAA2", LUT1_INITVAL=>X"E800")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp_1, B1=>sp_0, C1=>n963, 
                D1=>sp_2, DI1=>'X', DI0=>'X', A0=>n963, B0=>cpu1_n6, 
                C0=>cpu1_n8597, D0=>sp_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n8597, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2024, Q0=>open);
    cpu1_SLICE_417I: SLOGICB
      generic map (LUT0_INITVAL=>X"F080", LUT1_INITVAL=>X"DFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_t_sel_3_N_308_1, 
                B1=>cpu1_t_sel_3_N_308_0, C1=>cpu1_t_sel_2, D1=>cpu1_n8655, 
                DI1=>'X', DI0=>'X', A0=>cpu1_n8610, B0=>cpu1_n8655, 
                C0=>cpu1_tload, D0=>cpu1_n6913, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_n6913, Q1=>open, OFX0=>open, 
                F0=>cpu1_aclk_c_enable_48, Q0=>open);
    cpu1_SLICE_418I: SLOGICB
      generic map (LUT0_INITVAL=>X"EAAA", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8683, B1=>cpu1_slot_2, 
                C1=>n3, D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_slot_2, 
                B0=>cpu1_n3_adj_769, C0=>cpu1_n3_adj_770, D0=>cpu1_n3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8685, 
                Q1=>open, OFX0=>open, F0=>cpu1_n8683, Q0=>open);
    cpu1_SLICE_419I: SLOGICB
      generic map (LUT0_INITVAL=>X"E000", LUT1_INITVAL=>X"080A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, B1=>n3, 
                C1=>cpu1_slot_2, D1=>cpu1_n3_adj_770, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n3_adj_769, B0=>cpu1_slot_2, C0=>cpu1_n8641, 
                D0=>cpu1_n26, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_n26, Q1=>open, OFX0=>open, F0=>cpu1_n6985, Q0=>open);
    SLICE_420I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_5, D1=>cpu1_p_5, DI1=>'X', DI0=>'X', A0=>n8616, 
                B0=>memory_addr_4, C0=>n8617, D0=>memory_addr_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>memory_addr_5, 
                Q1=>open, OFX0=>open, F0=>n7401, Q0=>open);
    SLICE_421I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_4, D1=>cpu1_p_4, DI1=>'X', DI0=>'X', A0=>n8616, 
                B0=>memory_addr_4, C0=>n8615, D0=>memory_addr_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>memory_addr_4, 
                Q1=>open, OFX0=>open, F0=>n7405, Q0=>open);
    SLICE_422I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_0, D1=>cpu1_p_0, DI1=>'X', DI0=>'X', A0=>n8622, 
                B0=>gpio_out_8, C0=>gpio_dir_8, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8622, Q1=>open, 
                OFX0=>open, F0=>gpio1_n8243, Q0=>open);
    SLICE_423I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_1, D1=>cpu1_p_1, DI1=>'X', DI0=>'X', 
                A0=>gpio1_n8243, B0=>ioport_out_8, C0=>memory_addr_1, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>memory_addr_1, Q1=>open, OFX0=>open, F0=>gpio1_n8244, 
                Q0=>open);
    SLICE_424I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_data_o_8, B1=>n8245, 
                C1=>n8618, D1=>n6537, DI1=>'X', DI0=>'X', A0=>gpio1_n8244, 
                B0=>gpio1_n8242, C0=>data_o_15_N_441, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>system_data_o_15_N_25, Q1=>open, OFX0=>open, F0=>n8245, 
                Q0=>open);
    SLICE_425I: SLOGICB
      generic map (LUT0_INITVAL=>X"0200", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_15, D1=>cpu1_p_15, DI1=>'X', DI0=>'X', A0=>n8603, 
                B0=>n8602, C0=>gpio1_n6969, D0=>n8618, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8618, Q1=>open, 
                OFX0=>open, F0=>gpio1_aclk_c_enable_138, Q0=>open);
    SLICE_426I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFD", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_6, D1=>cpu1_p_6, DI1=>'X', DI0=>'X', A0=>n18, 
                B0=>n8604, C0=>n8608, D0=>n8615, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n8615, Q1=>open, OFX0=>open, 
                F0=>gpio1_n6969, Q0=>open);
    SLICE_427I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_3, D1=>cpu1_p_3, DI1=>'X', DI0=>'X', 
                A0=>memory_addr_5, B0=>n8617, C0=>memory_addr_4, D0=>n8615, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8617, 
                Q1=>open, OFX0=>open, F0=>n7407, Q0=>open);
    SLICE_428I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1475, B1=>n1492, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1334, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1334, Q1=>open, OFX0=>open, F0=>n8630, Q0=>open);
    SLICE_429I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n7043, B1=>memory_addr_5, 
                C1=>n8601, D1=>n6835, DI1=>'X', DI0=>'X', A0=>memory_data_o_12, 
                B0=>n1096, C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n6537, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_13, Q0=>open);
    SLICE_430I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1477, B1=>n1494, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1336, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1336, Q1=>open, OFX0=>open, F0=>n8629, Q0=>open);
    SLICE_431I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_7, D1=>cpu1_p_7, DI1=>'X', DI0=>'X', A0=>n8617, 
                B0=>memory_addr_5, C0=>n8615, D0=>n8616, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8616, Q1=>open, 
                OFX0=>open, F0=>n7411, Q0=>open);
    SLICE_432I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1466, B1=>n1483, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1325, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1325, Q1=>open, OFX0=>open, F0=>n8612, Q0=>open);
    SLICE_433I: SLOGICB
      generic map (LUT0_INITVAL=>X"0100", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>cpu1_a_2, D1=>cpu1_p_2, DI1=>'X', DI0=>'X', A0=>n7403, 
                B0=>n8621, C0=>n8615, D0=>n6835, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n8621, Q1=>open, OFX0=>open, 
                F0=>data_o_15_N_441, Q0=>open);
    SLICE_434I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"C5C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n7403, B1=>uart1_tx_shift_en, 
                C1=>tx_en, D1=>n7011, DI1=>'X', DI0=>'X', A0=>n8616, 
                B0=>memory_addr_5, C0=>n8617, D0=>memory_addr_4, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_n743, 
                Q1=>open, OFX0=>open, F0=>n7403, Q0=>open);
    SLICE_435I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_n7341, B1=>uart1_n7353, 
                C1=>uart1_n7351, D1=>uart1_n7335, DI1=>'X', DI0=>'X', 
                A0=>tx_counter_2, B0=>n75, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>tx_en_N_533, 
                Q1=>open, OFX0=>open, F0=>n3993, Q0=>open);
    SLICE_436I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1468, B1=>n1485, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1327, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1327, Q1=>open, OFX0=>open, F0=>n8613, Q0=>open);
    SLICE_437I: SLOGICB
      generic map (LUT0_INITVAL=>X"0040", LUT1_INITVAL=>X"00CA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_0, B1=>cpu1_a_0, 
                C1=>n8637, D1=>memory_addr_1, DI1=>'X', DI0=>'X', A0=>n7407, 
                B0=>n8602, C0=>n7027, D0=>n8616, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n8602, Q1=>open, OFX0=>open, 
                F0=>aclk_c_enable_123, Q0=>open);
    SLICE_438I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8664, B1=>n1305, C1=>n1322, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1314, B0=>n1317, C0=>sp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n8632, Q1=>open, OFX0=>open, F0=>n8664, Q0=>open);
    SLICE_439I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"0400")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rp1_2, B1=>n8666, C1=>rp1_3, 
                D1=>arst_c, DI1=>'X', DI0=>'X', A0=>rp1_0, B0=>rp1_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n7161, Q1=>open, OFX0=>open, F0=>n8666, Q0=>open);
    SLICE_440I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8655, 
                B1=>cpu1_n3_adj_770, C1=>n8668, D1=>cpu1_slot_2, DI1=>'X', 
                DI0=>'X', A0=>sp1_0, B0=>sp1_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n6957, 
                Q1=>open, OFX0=>open, F0=>n8668, Q0=>open);
    SLICE_441I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000", LUT1_INITVAL=>X"00E0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8644, B1=>cpu1_code_4, 
                C1=>cpu1_n8645, D1=>cpu1_code_2, DI1=>'X', DI0=>'X', A0=>sp1_0, 
                B0=>sp1_1, C0=>arst_c, D0=>n8614, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n8614, Q1=>open, OFX0=>open, 
                F0=>aclk_c_enable_18, Q0=>open);
    SLICE_442I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFE0", LUT1_INITVAL=>X"8AAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_2, B1=>cpu1_n6957, 
                C1=>cpu1_n8636, D1=>cpu1_code_3, DI1=>'X', DI0=>'X', A0=>sp1_0, 
                B0=>sp1_1, C0=>n963, D0=>n6010, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n6010, Q1=>open, OFX0=>open, 
                F0=>n8599, Q0=>open);
    SLICE_443I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"03A3")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6823, 
                B1=>cpu1_r_sel_1_N_248_1, C1=>cpu1_n8662, D1=>cpu1_n6404, 
                DI1=>'X', DI0=>'X', A0=>n18, B0=>system_read, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>system_read, Q1=>open, OFX0=>open, F0=>n6833, Q0=>open);
    SLICE_444I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"00B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, 
                B1=>cpu1_r_sel_1_N_248_1, C1=>n8675, D1=>cpu1_n6531, DI1=>'X', 
                DI0=>'X', A0=>rp1_0, B0=>rp1_1, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n5962, 
                Q1=>open, OFX0=>open, F0=>n8675, Q0=>open);
    SLICE_445I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1469, B1=>n1486, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1328, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1328, Q1=>open, OFX0=>open, F0=>n8619, Q0=>open);
    SLICE_446I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1467, B1=>n1484, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1326, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1326, Q1=>open, OFX0=>open, F0=>n8620, Q0=>open);
    SLICE_447I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1462, B1=>n1479, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1321, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1321, Q1=>open, OFX0=>open, F0=>n8623, Q0=>open);
    SLICE_448I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1470, B1=>n1487, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1329, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1329, Q1=>open, OFX0=>open, F0=>n8624, Q0=>open);
    SLICE_449I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1471, B1=>n1488, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1330, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1330, Q1=>open, OFX0=>open, F0=>n8625, Q0=>open);
    SLICE_450I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1473, B1=>n1490, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1332, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1332, Q1=>open, OFX0=>open, F0=>n8627, Q0=>open);
    SLICE_451I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFD", LUT1_INITVAL=>X"4000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_code_4, 
                B1=>cpu1_n7_adj_828, C1=>cpu1_n3, D1=>cpu1_code_0, DI1=>'X', 
                DI0=>'X', A0=>n8618, B0=>n1996, C0=>system_write, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>system_write, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_51, Q0=>open);
    SLICE_452I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1476, B1=>n1493, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1335, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1335, Q1=>open, OFX0=>open, F0=>n8631, Q0=>open);
    SLICE_453I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1465, B1=>n1482, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1324, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1324, Q1=>open, OFX0=>open, F0=>n8634, Q0=>open);
    SLICE_454I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1474, B1=>n1491, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1333, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1333, Q1=>open, OFX0=>open, F0=>n8628, Q0=>open);
    SLICE_455I: SLOGICB
      generic map (LUT0_INITVAL=>X"1010", LUT1_INITVAL=>X"CA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_15, B1=>cpu1_a_15, 
                C1=>n8637, D1=>n18, DI1=>'X', DI0=>'X', A0=>n7411, 
                B0=>memory_addr_4, C0=>n7025, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n7025, Q1=>open, 
                OFX0=>open, F0=>n1996, Q0=>open);
    SLICE_456I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n1472, B1=>n1489, C1=>sp_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8664, B0=>n1305, C0=>n1331, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1331, Q1=>open, OFX0=>open, F0=>n8626, Q0=>open);
    SLICE_457I: SLOGICB
      generic map (LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"DCCC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n7401, B1=>tx_en, C1=>n8602, 
                D1=>n7011, DI1=>'X', DI0=>'X', A0=>n8621, B0=>n8615, C0=>n7001, 
                D0=>n8618, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>uart1_aclk_c_enable_45, Q1=>open, OFX0=>open, F0=>n7011, 
                Q0=>open);
    SLICE_458I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8664, B1=>n1305, C1=>n1323, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n7694, B0=>n7695, C0=>sp_3, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n8633, Q1=>open, OFX0=>open, F0=>n1305, Q0=>open);
    SLICE_459I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAAA", LUT1_INITVAL=>X"0002")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, B1=>cpu1_n8657, 
                C1=>cpu1_n3, D1=>cpu1_code_4, DI1=>'X', DI0=>'X', 
                A0=>p_in_15_N_282_0, B0=>r_0, C0=>n7, D0=>n6376, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n6376, Q1=>open, 
                OFX0=>open, F0=>n3_adj_914, Q0=>open);
    uart1_SLICE_460I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8621, B1=>tx_en, C1=>n8616, 
                D1=>n8622, DI1=>'X', DI0=>'X', A0=>n18, B0=>uart1_n7083, 
                C0=>memory_addr_1, D0=>uart1_n7077, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>uart1_n7077, Q1=>open, OFX0=>open, 
                F0=>uart1_aclk_c_enable_72, Q0=>open);
    SLICE_461I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFF7", LUT1_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_3, B1=>cpu1_a_3, 
                C1=>n8637, D1=>memory_addr_4, DI1=>'X', DI0=>'X', A0=>n8618, 
                B0=>system_write, C0=>n8601, D0=>n8607, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8601, Q1=>open, 
                OFX0=>open, F0=>uart1_n7083, Q0=>open);
    uart1_SLICE_462I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_counter_6, 
                B1=>uart1_rx_counter_15, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>uart1_rx_counter_13, B0=>uart1_n7313, C0=>uart1_n7307, 
                D0=>uart1_rx_counter_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>uart1_n7307, Q1=>open, OFX0=>open, 
                F0=>uart1_n7317, Q0=>open);
    uart1_SLICE_463I: SLOGICB
      generic map (LUT0_INITVAL=>X"0020", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_bitcnt_1, 
                B1=>uart1_rx_bitcnt_0, C1=>uart1_rx_bitcnt_3, 
                D1=>uart1_rx_bitcnt_2, DI1=>'X', DI0=>'X', A0=>n8660, 
                B0=>rx_irq_o_N_643, C0=>rx_en, D0=>uart1_rxb_full_N_674, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8660, 
                Q1=>open, OFX0=>open, F0=>uart1_aclk_c_enable_69, Q0=>open);
    uart1_SLICE_464I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_counter_6, 
                B1=>uart1_tx_counter_15, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>uart1_tx_counter_13, B0=>uart1_n7349, C0=>uart1_n7343, 
                D0=>uart1_tx_counter_8, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>uart1_n7343, Q1=>open, OFX0=>open, 
                F0=>uart1_n7353, Q0=>open);
    uart1_SLICE_465I: SLOGICB
      generic map (LUT0_INITVAL=>X"DCDC", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n7405, B1=>n8621, C1=>n8617, 
                D1=>uart1_n6937, DI1=>'X', DI0=>'X', A0=>rxb_full, 
                B0=>uart1_rxb_full_N_676, C0=>uart1_rxb_full_N_674, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>uart1_rxb_full_N_676, Q1=>open, OFX0=>open, 
                F0=>uart1_aclk_c_enable_24, Q0=>open);
    uart1_SLICE_466I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"FEFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_addr_4, B1=>n8617, 
                C1=>n8606, D1=>system_write, DI1=>'X', DI0=>'X', A0=>n8618, 
                B0=>n18, C0=>uart1_n7053, D0=>uart1_n7051, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_n7053, Q1=>open, 
                OFX0=>open, F0=>uart1_aclk_c_enable_108, Q0=>open);
    SLICE_467I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_6, B1=>cpu1_a_6, 
                C1=>n8637, D1=>n8616, DI1=>'X', DI0=>'X', A0=>n7043, 
                B0=>memory_addr_1, C0=>n8622, D0=>memory_addr_5, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n7043, Q1=>open, 
                OFX0=>open, F0=>uart1_n7051, Q0=>open);
    uart1_SLICE_468I: SLOGICB
      generic map (LUT0_INITVAL=>X"00FE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_tx_bitcnt_1, 
                B1=>uart1_tx_bitcnt_0, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>uart1_tx_bitcnt_2, B0=>uart1_n8678, C0=>uart1_tx_bitcnt_3, 
                D0=>tx_en_N_533, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>uart1_n8678, Q1=>open, OFX0=>open, 
                F0=>uart1_n8649, Q0=>open);
    uart1_SLICE_469I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_bitcnt_1, 
                B1=>uart1_rx_bitcnt_0, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>uart1_rx_bitcnt_2, B0=>uart1_n8681, C0=>uart1_rx_bitcnt_3, 
                D0=>rx_irq_o_N_643, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>uart1_n8681, Q1=>open, OFX0=>open, 
                F0=>uart1_n8648, Q0=>open);
    uart1_SLICE_470I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"F200")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8622, B1=>memory_addr_1, 
                C1=>uart1_n8682, D1=>uart1_n743, DI1=>'X', DI0=>'X', A0=>tx_en, 
                B0=>uart1_tx_shift_en, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_aclk_c_enable_75, 
                Q1=>open, OFX0=>open, F0=>uart1_n8682, Q0=>open);
    cpu1_SLICE_471I: SLOGICB
      generic map (LUT0_INITVAL=>X"1000", LUT1_INITVAL=>X"4048")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_code_0, B1=>cpu1_n8646, 
                C1=>cpu1_code_2, D1=>cpu1_a_0, DI1=>'X', DI0=>'X', A0=>cpu1_n3, 
                B0=>cpu1_slot_2, C0=>cpu1_n3_adj_767, D0=>cpu1_n7291, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n7291, 
                Q1=>open, OFX0=>open, F0=>cpu1_a_sel_2, Q0=>open);
    cpu1_SLICE_472I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"8AAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>sp1_1, B1=>cpu1_n7097, 
                C1=>cpu1_n8636, D1=>cpu1_code_3, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n3_adj_767, B0=>cpu1_n9434, C0=>n3, 
                D0=>cpu1_n3_adj_769, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n1968, Q1=>open, OFX0=>open, 
                F0=>cpu1_n8636, Q0=>open);
    cpu1_SLICE_473I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, B1=>cpu1_n8657, 
                C1=>cpu1_n33, D1=>cpu1_code_4, DI1=>'X', DI0=>'X', 
                A0=>cpu1_a_in_16_N_215_5, B0=>cpu1_a_6, C0=>cpu1_a_sel_0, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_a_sel_0, Q1=>open, OFX0=>open, F0=>cpu1_n2, Q0=>open);
    cpu1_SLICE_474I: SLOGICB
      generic map (LUT0_INITVAL=>X"0002", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n7229, B1=>cpu1_n7241, 
                C1=>cpu1_n7239, D1=>cpu1_n7223, DI1=>'X', DI0=>'X', A0=>n3, 
                B0=>cpu1_slot_2, C0=>cpu1_n3_adj_767, D0=>cpu1_rpopp_N_378, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_rpopp_N_378, Q1=>open, OFX0=>open, F0=>cpu1_n6372, 
                Q0=>open);
    cpu1_SLICE_475I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEF", LUT1_INITVAL=>X"0100")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>slot_0, B1=>cpu1_n9434, 
                C1=>slot_1, D1=>cpu1_r_sel_1_N_248_1, DI1=>'X', DI0=>'X', 
                A0=>n8653, B0=>cpu1_n6531, C0=>cpu1_n7283, D0=>rp_0, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8653, Q1=>open, 
                OFX0=>open, F0=>cpu1_n6548, Q0=>open);
    cpu1_SLICE_476I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, B1=>cpu1_n8657, 
                C1=>cpu1_n6367, D1=>cpu1_code_3, DI1=>'X', DI0=>'X', 
                A0=>cpu1_p_2, B0=>cpu1_a_2, C0=>n8637, D0=>system_write, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8637, 
                Q1=>open, OFX0=>open, F0=>n8603, Q0=>open);
    cpu1_SLICE_477I: SLOGICB
      generic map (LUT0_INITVAL=>X"EC00", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_769, 
                B1=>cpu1_slot_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_code_4, B0=>cpu1_n3541, C0=>cpu1_n5, D0=>cpu1_n8655, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_code_4, Q1=>open, OFX0=>open, F0=>cpu1_n7883, 
                Q0=>open);
    cpu1_SLICE_478I: SLOGICB
      generic map (LUT0_INITVAL=>X"AA2A", LUT1_INITVAL=>X"C8C0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_code_4, B1=>cpu1_n8655, 
                C1=>cpu1_n3541, D1=>cpu1_n30_adj_873, DI1=>'X', DI0=>'X', 
                A0=>cpu1_tload, B0=>cpu1_t_sel_3_N_308_0, C0=>cpu1_n32, 
                D0=>cpu1_n8654, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_tload, Q1=>open, OFX0=>open, 
                F0=>cpu1_aclk_c_enable_74, Q0=>open);
    cpu1_SLICE_479I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEE4", LUT1_INITVAL=>X"AAA8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>acknowledge_o_c, 
                B1=>interrupt_i_c_3, C1=>cpu1_n8_adj_837, D1=>interrupt_i_c_0, 
                DI1=>'X', DI0=>'X', A0=>cpu1_n8662, B0=>cpu1_r_sel_1_N_248_1, 
                C0=>cpu1_n8657, D0=>cpu1_rload_N_400, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_r_sel_1_N_248_1, 
                Q1=>open, OFX0=>open, F0=>cpu1_rload, Q0=>open);
    cpu1_SLICE_480I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAC0", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3, B1=>cpu1_slot_2, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n6985, 
                B0=>cpu1_n8688, C0=>cpu1_code_3, D0=>cpu1_n30_adj_781, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_code_3, 
                Q1=>open, OFX0=>open, F0=>cpu1_n32, Q0=>open);
    cpu1_SLICE_481I: SLOGICB
      generic map (LUT0_INITVAL=>X"F4F4", LUT1_INITVAL=>X"8808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>aclk_c_enable_78, B1=>arst_c, 
                C1=>n1419, D1=>rp1_4, DI1=>'X', DI0=>'X', A0=>cpu1_n8662, 
                B0=>cpu1_r_sel_1_N_248_1, C0=>cpu1_n6531, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n1427, Q1=>open, 
                OFX0=>open, F0=>aclk_c_enable_78, Q0=>open);
    cpu1_SLICE_482I: SLOGICB
      generic map (LUT0_INITVAL=>X"EF00", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n7, B1=>n6376, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>p_sel_1, B0=>n8653, 
                C0=>cpu1_p_sel_0, D0=>cpu1_pload, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_p_sel_0, Q1=>open, OFX0=>open, 
                F0=>cpu1_aclk_c_enable_35, Q0=>open);
    cpu1_SLICE_483I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA00", LUT1_INITVAL=>X"DCDC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_767, D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n21, 
                B0=>cpu1_n8647, C0=>cpu1_code_2, D0=>n6376, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8647, Q1=>open, 
                OFX0=>open, F0=>cpu1_intload, Q0=>open);
    cpu1_SLICE_484I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8", LUT1_INITVAL=>X"D000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8672, B1=>cpu1_n9434, 
                C1=>cpu1_t_sel_3_N_308_0, D1=>cpu1_n8662, DI1=>'X', DI0=>'X', 
                A0=>cpu1_t_sel_0, B0=>cpu1_sum_7, C0=>cpu1_sum_6, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_t_sel_0, Q1=>open, OFX0=>open, F0=>cpu1_n8438, 
                Q0=>open);
    cpu1_SLICE_485I: SLOGICB
      generic map (LUT0_INITVAL=>X"00C2", LUT1_INITVAL=>X"EEEA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8746, B1=>cpu1_n8662, 
                C1=>cpu1_reset_N_406, D1=>cpu1_n8657, DI1=>'X', DI0=>'X', 
                A0=>cpu1_r_sel_1_N_248_1, B0=>slot_1, C0=>slot_0, 
                D0=>cpu1_slot_2, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_slot_2_N_318, Q1=>open, OFX0=>open, 
                F0=>cpu1_n8746, Q0=>open);
    cpu1_SLICE_486I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"5C50")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n46, B1=>cpu1_n14, 
                C1=>cpu1_code_4, D1=>cpu1_code_3, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n26, B0=>cpu1_n30_adj_799, C0=>cpu1_n7616, D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_n30_adj_799, Q1=>open, OFX0=>open, 
                F0=>cpu1_t_sel_3_N_308_2, Q0=>open);
    cpu1_SLICE_487I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBFB", LUT1_INITVAL=>X"2F20")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8647, B1=>cpu1_code_2, 
                C1=>cpu1_code_3, D1=>n7, DI1=>'X', DI0=>'X', A0=>cpu1_n8657, 
                B0=>cpu1_n8662, C0=>cpu1_n7, D0=>cpu1_code_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n7, Q1=>open, 
                OFX0=>open, F0=>cpu1_pload, Q0=>open);
    cpu1_SLICE_488I: SLOGICB
      generic map (LUT0_INITVAL=>X"00E0", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3, B1=>cpu1_n9434, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_code_1, B0=>cpu1_code_0, 
                C0=>cpu1_code_3, D0=>cpu1_code_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_code_0, Q1=>open, OFX0=>open, 
                F0=>cpu1_n6823, Q0=>open);
    cpu1_SLICE_489I: SLOGICB
      generic map (LUT0_INITVAL=>X"D000", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_i_15, B1=>slot_1, 
                C1=>slot_0, D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n8672, 
                B0=>cpu1_slot_2, C0=>cpu1_n10, D0=>cpu1_n8662, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8672, 
                Q1=>open, OFX0=>open, F0=>cpu1_aload, Q0=>open);
    cpu1_SLICE_490I: SLOGICB
      generic map (LUT0_INITVAL=>X"0A2A", LUT1_INITVAL=>X"FFEC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_i_15, B1=>slot_1, 
                C1=>slot_0, D1=>cpu1_n9434, DI1=>'X', DI0=>'X', 
                A0=>cpu1_sum_16, B0=>cpu1_t_sel_3_N_308_0, C0=>cpu1_n8655, 
                D0=>cpu1_t_sel_3_N_308_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n8655, Q1=>open, OFX0=>open, 
                F0=>cpu1_n6_adj_820, Q0=>open);
    cpu1_SLICE_491I: SLOGICB
      generic map (LUT0_INITVAL=>X"0001", LUT1_INITVAL=>X"0202")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8123, B1=>cpu1_n7265, 
                C1=>cpu1_n7273, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>memory_data_i_0, B0=>memory_data_i_7, C0=>memory_data_i_10, 
                D0=>memory_data_i_13, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n8656, Q1=>open, OFX0=>open, 
                F0=>cpu1_n8123, Q0=>open);
    cpu1_SLICE_492I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF7F", LUT1_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n963, B1=>sp1_0, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n8655, B0=>cpu1_n8636, 
                C0=>cpu1_code_3, D0=>cpu1_code_2, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_n1550, Q1=>open, OFX0=>open, 
                F0=>n963, Q0=>open);
    cpu1_SLICE_493I: SLOGICB
      generic map (LUT0_INITVAL=>X"F808", LUT1_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_slot_2, C1=>n3, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_code_3, B0=>cpu1_n21, C0=>cpu1_code_4, D0=>cpu1_n6770, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n21, 
                Q1=>open, OFX0=>open, F0=>cpu1_n12_adj_815, Q0=>open);
    cpu1_SLICE_494I: SLOGICB
      generic map (LUT0_INITVAL=>X"0010", LUT1_INITVAL=>X"CECC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n7209, B1=>cpu1_n8657, 
                C1=>cpu1_code_1, D1=>cpu1_n6367, DI1=>'X', DI0=>'X', 
                A0=>cpu1_i_15, B0=>slot_1, C0=>slot_0, D0=>cpu1_n9434, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_r_sel_1_N_246_1, Q1=>open, OFX0=>open, F0=>cpu1_n8657, 
                Q0=>open);
    cpu1_SLICE_495I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_r_sel_1_N_248_1, 
                B1=>cpu1_n8691, C1=>cpu1_n8662, D1=>cpu1_n6404, DI1=>'X', 
                DI0=>'X', A0=>cpu1_n8672, B0=>cpu1_n3_adj_769, C0=>cpu1_n9434, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n7595, Q1=>open, OFX0=>open, F0=>cpu1_n6404, Q0=>open);
    cpu1_SLICE_496I: SLOGICB
      generic map (LUT0_INITVAL=>X"0008", LUT1_INITVAL=>X"0808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_0, B1=>n3, 
                C1=>cpu1_slot_2, D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_code_1, 
                B0=>cpu1_n8652, C0=>cpu1_n3_adj_770, D0=>cpu1_n3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8652, 
                Q1=>open, OFX0=>open, F0=>cpu1_n6770, Q0=>open);
    cpu1_SLICE_497I: SLOGICB
      generic map (LUT0_INITVAL=>X"F780", LUT1_INITVAL=>X"DC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8672, B1=>cpu1_slot_2, 
                C1=>cpu1_n3, D1=>cpu1_n8662, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n8645, B0=>cpu1_n6367, C0=>a_11, D0=>p_11, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8645, 
                Q1=>open, OFX0=>open, F0=>memory_addr_11, Q0=>open);
    cpu1_SLICE_498I: SLOGICB
      generic map (LUT0_INITVAL=>X"F780", LUT1_INITVAL=>X"0202")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3, B1=>cpu1_n9434, 
                C1=>cpu1_n3_adj_769, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_n8645, B0=>cpu1_n6367, C0=>a_10, D0=>p_10, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n6367, 
                Q1=>open, OFX0=>open, F0=>memory_addr_10, Q0=>open);
    cpu1_SLICE_499I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>r_8, B1=>r_4, C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>r_10, B0=>cpu1_n7237, 
                C0=>cpu1_n7231, D0=>r_11, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n7231, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7241, Q0=>open);
    cpu1_SLICE_500I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_data_i_8, 
                B1=>memory_data_i_6, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_n7269, B0=>cpu1_n7255, C0=>memory_data_i_12, 
                D0=>memory_data_i_1, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n7255, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7273, Q0=>open);
    cpu1_SLICE_501I: SLOGICB
      generic map (LUT0_INITVAL=>X"2321", LUT1_INITVAL=>X"DCFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n3, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_767, D1=>cpu1_n3_adj_770, DI1=>'X', DI0=>'X', 
                A0=>n3, B0=>cpu1_slot_2, C0=>cpu1_n3_adj_767, 
                D0=>cpu1_n3_adj_770, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n14, Q1=>open, OFX0=>open, F0=>cpu1_n29, 
                Q0=>open);
    cpu1_SLICE_502I: SLOGICB
      generic map (LUT0_INITVAL=>X"E000", LUT1_INITVAL=>X"0E00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n6531, B1=>n8653, 
                C1=>rp1_4, D1=>arst_c, DI1=>'X', DI0=>'X', A0=>cpu1_n6531, 
                B0=>n8653, C0=>rp1_4, D0=>arst_c, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>n1536, Q1=>open, OFX0=>open, 
                F0=>n1537, Q0=>open);
    cpu1_SLICE_503I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", LSRMUX=>"SIG", 
                   LUT0_INITVAL=>X"2333", LUT1_INITVAL=>X"1000", 
                   CHECK_M0=>TRUE, CHECK_LSR=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_767, 
                B1=>cpu1_slot_2, C1=>n3, D1=>cpu1_n3, DI1=>'X', DI0=>'X', 
                A0=>n3, B0=>cpu1_slot_2, C0=>cpu1_n3_adj_767, D0=>cpu1_n3, 
                M0=>cpu1_slot_2_N_315_2, CE=>'X', CLK=>aclk_c, 
                LSR=>cpu1_slot_2_N_318, OFX1=>open, F1=>cpu1_n8635, Q1=>open, 
                OFX0=>open, F0=>cpu1_n30_adj_873, Q0=>cpu1_slot_2);
    cpu1_SLICE_504I: SLOGICB
      generic map (LUT0_INITVAL=>X"0888", LUT1_INITVAL=>X"8808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>n1304, 
                D1=>sp1_4, DI1=>'X', DI0=>'X', A0=>n8614, B0=>arst_c, 
                C0=>n1304, D0=>sp1_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>n1312, Q1=>open, OFX0=>open, F0=>n1309, 
                Q0=>open);
    uart1_SLICE_505I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"VHI", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"0B01", 
                   LUT1_INITVAL=>X"0101", CHECK_M0=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rx_en, B1=>rxd_ff, 
                C1=>uart1_rxb_full_N_674, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>rx_en, B0=>rxd_ff, C0=>uart1_rxb_full_N_674, 
                D0=>uart1_n8648, M0=>uart_i_c, CE=>'X', CLK=>aclk_c, LSR=>'X', 
                OFX1=>open, F1=>uart1_n6423, Q1=>open, OFX0=>open, 
                F0=>uart1_aclk_c_enable_92, Q0=>rxd_ff);
    cpu1_SLICE_506I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"F7FC")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_a_0, B1=>n3, 
                C1=>cpu1_slot_2, D1=>cpu1_n3_adj_767, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n3_adj_767, B0=>cpu1_slot_2, C0=>n3, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n18, 
                Q1=>open, OFX0=>open, F0=>cpu1_n8644, Q0=>open);
    cpu1_SLICE_507I: SLOGICB
      generic map (LUT0_INITVAL=>X"4040", LUT1_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8614, B1=>arst_c, C1=>sp1_4, 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_4, B0=>arst_c, C0=>n8614, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>n1498, Q1=>open, OFX0=>open, F0=>n1497, Q0=>open);
    cpu1_SLICE_508I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"1000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_770, D1=>cpu1_rpopp_N_378, DI1=>'X', DI0=>'X', 
                A0=>r_9, B0=>r_6, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_n7209, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7229, Q0=>open);
    cpu1_SLICE_509I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE", LUT1_INITVAL=>X"B0B0")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8662, 
                B1=>cpu1_r_sel_1_N_248_1, C1=>rp1_0, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>interrupt_i_c_1, B0=>interrupt_i_c_2, 
                C0=>interrupt_i_c_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>cpu1_n6927, Q1=>open, OFX0=>open, 
                F0=>cpu1_n8_adj_837, Q0=>open);
    uart1_SLICE_510I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_counter_9, 
                B1=>uart1_rx_counter_10, C1=>uart1_rx_counter_1, 
                D1=>uart1_rx_counter_7, DI1=>'X', DI0=>'X', 
                A0=>uart1_rx_counter_2, B0=>uart1_rx_counter_5, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>uart1_n7315, Q1=>open, OFX0=>open, F0=>uart1_n7299, 
                Q0=>open);
    cpu1_SLICE_511I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_sum_11, B1=>cpu1_t_sel_0, 
                C1=>cpu1_sum_12, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>memory_data_i_11, B0=>memory_data_i_15, 
                C0=>memory_data_i_2, D0=>memory_data_i_9, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8418, Q1=>open, 
                OFX0=>open, F0=>cpu1_n7265, Q0=>open);
    cpu1_SLICE_512I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_data_i_15, 
                B1=>cpu1_s_16, C1=>cpu1_t_sel_0, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_s_16, B0=>t_16, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n5700, Q1=>open, 
                OFX0=>open, F0=>cpu1_n6907, Q0=>open);
    uart1_SLICE_513I: SLOGICB
      generic map (LUT0_INITVAL=>X"FE00", LUT1_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_rx_bitcnt_1, 
                B1=>uart1_rx_bitcnt_0, C1=>uart1_rx_bitcnt_2, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>uart1_rx_bitcnt_2, B0=>uart1_n8681, 
                C0=>uart1_rx_bitcnt_3, D0=>baudrate_reg_15, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_n6, Q1=>open, 
                OFX0=>open, F0=>uart1_n400, Q0=>open);
    cpu1_SLICE_514I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>r_14, B1=>r_0, C1=>r_3, 
                D1=>r_7, DI1=>'X', DI0=>'X', A0=>r_2, B0=>r_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>cpu1_n7239, Q1=>open, OFX0=>open, F0=>cpu1_n7223, Q0=>open);
    cpu1_SLICE_515I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"C0D4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>n8653, B1=>rp_1, C1=>rp_0, 
                D1=>cpu1_n6531, DI1=>'X', DI0=>'X', A0=>rp_1, B0=>rp_2, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>cpu1_n4_adj_773, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7283, Q0=>open);
    uart1_SLICE_516I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_tx_counter_0, 
                B1=>uart1_n81, C1=>n8651, D1=>tx_en_N_533, DI1=>'X', DI0=>'X', 
                A0=>tx_counter_2, B0=>tx_counter_5, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_n3094, 
                Q1=>open, OFX0=>open, F0=>uart1_n7335, Q0=>open);
    SLICE_517I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_counter_6, B1=>n63, 
                C1=>n8651, D1=>tx_en_N_533, DI1=>'X', DI0=>'X', 
                A0=>tx_counter_3, B0=>uart1_tx_counter_11, C0=>'X', D0=>'X', 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n4113, 
                Q1=>open, OFX0=>open, F0=>uart1_n7341, Q0=>open);
    SLICE_518I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA", LUT1_INITVAL=>X"CA00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_15, B1=>cpu1_a_15, 
                C1=>n8637, D1=>n6833, DI1=>'X', DI0=>'X', A0=>gpio_out_7, 
                B0=>baudrate_reg_7, C0=>data_o_15_N_441, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>n6835, Q1=>open, 
                OFX0=>open, F0=>n1171, Q0=>open);
    SLICE_519I: SLOGICB
      generic map (LUT0_INITVAL=>X"4040", LUT1_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_7, B1=>cpu1_a_7, 
                C1=>n8637, D1=>memory_addr_4, DI1=>'X', DI0=>'X', A0=>n8621, 
                B0=>n1996, C0=>system_read, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n8608, Q1=>open, 
                OFX0=>open, F0=>n8592, Q0=>open);
    cpu1_SLICE_520I: SLOGICB
      generic map (LUT0_INITVAL=>X"F8F8", LUT1_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_r_sel_1_N_248_1, 
                B1=>cpu1_r_sel_1_N_246_1, C1=>cpu1_n8662, D1=>'X', DI1=>'X', 
                DI0=>'X', A0=>n7, B0=>n6376, C0=>p_sel_1, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_r_sel_1, 
                Q1=>open, OFX0=>open, F0=>n8596, Q0=>open);
    cpu1_SLICE_521I: SLOGICB
      generic map (LUT0_INITVAL=>X"E8E8", LUT1_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_770, 
                B1=>cpu1_slot_2, C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>sp_1, B0=>sp_0, C0=>n963, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_code_2, Q1=>open, 
                OFX0=>open, F0=>cpu1_n8676, Q0=>open);
    uart1_SLICE_522I: SLOGICB
      generic map (LUT0_INITVAL=>X"0200", LUT1_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_en, B1=>tx_en_N_533, 
                C1=>'X', D1=>'X', DI1=>'X', DI0=>'X', A0=>n8622, 
                B0=>memory_addr_1, C0=>uart1_n8682, D0=>uart1_n743, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>uart1_aclk_c_enable_73, Q1=>open, OFX0=>open, 
                F0=>uart1_n6714, Q0=>open);
    SLICE_523I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080", LUT1_INITVAL=>X"F780")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8645, B1=>cpu1_n6367, 
                C1=>a_8, D1=>p_8, DI1=>'X', DI0=>'X', A0=>system_write, 
                B0=>n8621, C0=>n7025, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>memory_addr_8, Q1=>open, OFX0=>open, 
                F0=>n7027, Q0=>open);
    cpu1_SLICE_524I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAAA", LUT1_INITVAL=>X"CAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_3, B1=>r_3, 
                C1=>n7, D1=>n6376, DI1=>'X', DI0=>'X', 
                A0=>cpu1_p_in_15_N_282_4, B0=>r_4, C0=>n7, D0=>n6376, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n625, 
                Q1=>open, OFX0=>open, F0=>cpu1_n624, Q0=>open);
    cpu1_SLICE_525I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAAA", LUT1_INITVAL=>X"CAAA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_p_in_15_N_282_1, B1=>r_1, 
                C1=>n7, D1=>n6376, DI1=>'X', DI0=>'X', 
                A0=>cpu1_p_in_15_N_282_2, B0=>r_2, C0=>n7, D0=>n6376, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n627, 
                Q1=>open, OFX0=>open, F0=>cpu1_n626, Q0=>open);
    cpu1_SLICE_526I: SLOGICB
      generic map (LUT0_INITVAL=>X"F780", LUT1_INITVAL=>X"DC00")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8672, B1=>cpu1_slot_2, 
                C1=>cpu1_n3_adj_769, D1=>cpu1_n8662, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n8645, B0=>cpu1_n6367, C0=>a_9, D0=>p_9, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8646, 
                Q1=>open, OFX0=>open, F0=>memory_addr_9, Q0=>open);
    cpu1_SLICE_527I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE", LUT1_INITVAL=>X"0808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n3_adj_770, B1=>n3, 
                C1=>cpu1_slot_2, D1=>'X', DI1=>'X', DI0=>'X', 
                A0=>cpu1_n3_adj_767, B0=>cpu1_n9434, C0=>'X', D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n35, 
                Q1=>open, OFX0=>open, F0=>cpu1_code_1, Q0=>open);
    cpu1_SLICE_528I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEC8", LUT1_INITVAL=>X"FFFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_n8655, 
                B1=>cpu1_n3_adj_770, C1=>sp1_0, D1=>cpu1_slot_2, DI1=>'X', 
                DI0=>'X', A0=>n6010, B0=>n963, C0=>n8671, D0=>sp1_3, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n7097, 
                Q1=>open, OFX0=>open, F0=>cpu1_n8_adj_833, Q0=>open);
    cpu1_SLICE_529I: SLOGICB
      generic map (LUT0_INITVAL=>X"F100", LUT1_INITVAL=>X"0013")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>cpu1_i_15, B1=>slot_1, 
                C1=>slot_0, D1=>cpu1_slot_2, DI1=>'X', DI0=>'X', 
                A0=>cpu1_n6531, B0=>n8653, C0=>rp1_0, D0=>rp1_1, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>cpu1_n8654, 
                Q1=>open, OFX0=>open, F0=>cpu1_n2012, Q0=>open);
    uart1_SLICE_530I: SLOGICB
      generic map (M0MUX=>"SIG", CLKMUX=>"SIG", CEMUX=>"SIG", SRMODE=>"ASYNC", 
                   LSRONMUX=>"OFF", LUT0_INITVAL=>X"0F01", 
                   LUT1_INITVAL=>X"C4C4", CHECK_M0=>TRUE, CHECK_CE=>TRUE)
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>rxb_full, 
                B1=>uart1_rxb_full_N_674, C1=>uart1_rxb_full_N_676, D1=>'X', 
                DI1=>'X', DI0=>'X', A0=>rx_en, B0=>rxd_ff, 
                C0=>uart1_rxb_full_N_674, D0=>uart1_n8642, 
                M0=>uart1_rxb_full_N_674, CE=>uart1_aclk_c_enable_24, 
                CLK=>aclk_c, LSR=>'X', OFX1=>open, F1=>uart1_aclk_c_enable_149, 
                Q1=>open, OFX0=>open, F0=>uart1_aclk_c_enable_93, Q0=>rxb_full);
    uart1_SLICE_531I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>uart1_tx_counter_13, 
                B1=>uart1_n42_adj_889, C1=>n8651, D1=>tx_en_N_533, DI1=>'X', 
                DI0=>'X', A0=>uart1_tx_counter_12, B0=>uart1_tx_counter_14, 
                C0=>uart1_tx_counter_0, D0=>tx_counter_4, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>uart1_n3066, Q1=>open, 
                OFX0=>open, F0=>uart1_n7349, Q0=>open);
    SLICE_532I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE", LUT1_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>tx_counter_5, B1=>n66, 
                C1=>n8651, D1=>tx_en_N_533, DI1=>'X', DI0=>'X', 
                A0=>uart1_tx_counter_9, B0=>uart1_tx_counter_10, 
                C0=>tx_counter_1, D0=>uart1_tx_counter_7, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>n4083, Q1=>open, 
                OFX0=>open, F0=>uart1_n7351, Q0=>open);
    SLICE_533I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888", LUT1_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>memory_data_o_1, B1=>n6537, 
                C1=>n8618, D1=>n28, DI1=>'X', DI0=>'X', A0=>n18, 
                B0=>system_write, C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>system_data_o_15_N_46, Q1=>open, 
                OFX0=>open, F0=>n7001, Q0=>open);
    SLICE_534I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_14, B0=>n1098, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_7, Q0=>open);
    SLICE_535I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_5, B0=>gpio_dir_5, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30_adj_909, 
                Q0=>open);
    SLICE_536I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_15, B0=>n1099, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_2, Q0=>open);
    SLICE_537I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_13, B0=>n1097, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_10, Q0=>open);
    SLICE_538I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>tx_counter_3, B0=>n72, 
                C0=>n8651, D0=>tx_en_N_533, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n4023, Q0=>open);
    SLICE_539I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>tx_counter_4, B0=>n69, 
                C0=>n8651, D0=>tx_en_N_533, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n4053, Q0=>open);
    SLICE_540I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_6, B0=>gpio_dir_6, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30, Q0=>open);
    SLICE_541I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_0, B0=>rp1_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n8661, Q0=>open);
    SLICE_542I: SLOGICB
      generic map (LUT0_INITVAL=>X"BBBB")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_0, B0=>rp1_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n8663, Q0=>open);
    SLICE_543I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_11, B0=>n1095, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_16, Q0=>open);
    SLICE_544I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_10, B0=>n1094, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_19, Q0=>open);
    SLICE_545I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_0, B0=>sp1_1, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n8673, Q0=>open);
    SLICE_546I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_9, B0=>n1093, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_22, Q0=>open);
    SLICE_547I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_7, B0=>n1091, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_28, Q0=>open);
    SLICE_548I: SLOGICB
      generic map (LUT0_INITVAL=>X"2000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_0, B0=>sp1_1, C0=>arst_c, 
                D0=>n8614, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>aclk_c_enable_15, Q0=>open);
    SLICE_549I: SLOGICB
      generic map (LUT0_INITVAL=>X"2222")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_2, B0=>sp1_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>aclk_c_enable_29, Q0=>open);
    SLICE_550I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>p_10, B0=>p_8, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n6901, Q0=>open);
    SLICE_551I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>a_12, B0=>a_9, C0=>a_14, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n6893, Q0=>open);
    SLICE_552I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_5, B0=>n6537, 
                C0=>n8618, D0=>n28_adj_913, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_34, Q0=>open);
    SLICE_553I: SLOGICB
      generic map (LUT0_INITVAL=>X"CAFA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_0, B0=>n1084, 
                C0=>n8618, D0=>n6537, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_49, Q0=>open);
    SLICE_554I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_4, B0=>n6537, 
                C0=>n8618, D0=>n28_adj_918, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_37, Q0=>open);
    SLICE_555I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_3, B0=>n6537, 
                C0=>n8618, D0=>n28_adj_922, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_40, Q0=>open);
    SLICE_556I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_2, B0=>n6537, 
                C0=>n8618, D0=>n28_adj_926, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_43, Q0=>open);
    SLICE_557I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>a_10, B0=>a_8, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n6891, Q0=>open);
    SLICE_558I: SLOGICB
      generic map (LUT0_INITVAL=>X"1111")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_2, B0=>sp1_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>aclk_c_enable_21, Q0=>open);
    SLICE_559I: SLOGICB
      generic map (LUT0_INITVAL=>X"4444")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_2, B0=>sp1_3, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>aclk_c_enable_37, Q0=>open);
    SLICE_560I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_3, B0=>gpio_dir_3, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30_adj_919, 
                Q0=>open);
    SLICE_561I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_4, B0=>gpio_dir_4, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30_adj_915, 
                Q0=>open);
    SLICE_562I: SLOGICB
      generic map (LUT0_INITVAL=>X"C088")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1429, B0=>n7733, C0=>n1432, 
                D0=>rp_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n1435, Q0=>open);
    SLICE_563I: SLOGICB
      generic map (LUT0_INITVAL=>X"8080")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>p_12, B0=>p_9, C0=>p_14, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n6903, Q0=>open);
    SLICE_564I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_2, B0=>gpio_dir_2, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30_adj_923, 
                Q0=>open);
    SLICE_565I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>gpio_out_1, B0=>gpio_dir_1, 
                C0=>n8622, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n30_adj_927, 
                Q0=>open);
    SLICE_566I: SLOGICB
      generic map (LUT0_INITVAL=>X"FA3A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_o_6, B0=>n6537, 
                C0=>n8618, D0=>n28_adj_908, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>system_data_o_15_N_31, Q0=>open);
    uart1_SLICE_567I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_3, 
                B0=>uart1_rx_counter_11, C0=>'X', D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>uart1_n7305, Q0=>open);
    uart1_SLICE_568I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_rx_counter_12, 
                B0=>uart1_rx_counter_14, C0=>uart1_rx_counter_0, 
                D0=>uart1_rx_counter_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>uart1_n7313, 
                Q0=>open);
    uart1_SLICE_569I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_7, 
                B0=>uart1_n60_adj_883, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3078, Q0=>open);
    uart1_SLICE_570I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_8, 
                B0=>uart1_n57_adj_884, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3076, Q0=>open);
    uart1_SLICE_571I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_9, 
                B0=>uart1_n54_adj_885, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3074, Q0=>open);
    uart1_SLICE_572I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_10, 
                B0=>uart1_n51_adj_886, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3072, Q0=>open);
    uart1_SLICE_573I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_11, 
                B0=>uart1_n48_adj_887, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3070, Q0=>open);
    uart1_SLICE_574I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_12, 
                B0=>uart1_n45_adj_888, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3068, Q0=>open);
    uart1_SLICE_575I: SLOGICB
      generic map (LUT0_INITVAL=>X"FF08")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_n8658, B0=>tx_en, 
                C0=>tx_en_N_533, D0=>uart1_tx_en_N_534, M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n780, Q0=>open);
    uart1_SLICE_576I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_14, 
                B0=>uart1_n39_adj_890, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3064, Q0=>open);
    uart1_SLICE_577I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n6833, B0=>memory_addr_1, 
                C0=>n8622, D0=>n8618, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>uart1_n6937, 
                Q0=>open);
    uart1_SLICE_578I: SLOGICB
      generic map (LUT0_INITVAL=>X"CA0A")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>uart1_tx_counter_15, 
                B0=>uart1_n36_adj_891, C0=>n8651, D0=>tx_en_N_533, M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>uart1_n3062, Q0=>open);
    uart1_SLICE_579I: SLOGICB
      generic map (LUT0_INITVAL=>X"DDDD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>tx_en, B0=>tx_en_N_533, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>uart1_n8643, 
                Q0=>open);
    cpu1_SLICE_580I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_4, 
                B0=>cpu1_a_5, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_772, Q0=>open);
    cpu1_SLICE_581I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_p_2, B0=>cpu1_a_2, 
                C0=>n8637, D0=>tx_en, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n8606, 
                Q0=>open);
    cpu1_SLICE_582I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1502, B0=>n1519, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1437, Q0=>open);
    cpu1_SLICE_583I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_13, 
                B0=>a_14, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_785, Q0=>open);
    cpu1_SLICE_584I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1516, B0=>n1533, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1451, Q0=>open);
    cpu1_SLICE_585I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_p_0, B0=>cpu1_a_0, 
                C0=>n8637, D0=>memory_addr_1, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n7611, Q0=>open);
    cpu1_SLICE_586I: SLOGICB
      generic map (LUT0_INITVAL=>X"0888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>aclk_c_enable_78, B0=>arst_c, 
                C0=>n1419, D0=>rp1_4, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>n1424, 
                Q0=>open);
    cpu1_SLICE_587I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_0, B0=>cpu1_sum_1, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n4_adj_800, Q0=>open);
    cpu1_SLICE_588I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_0, B0=>r_0, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7422, Q0=>open);
    cpu1_SLICE_589I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>system_data_o_0, 
                B0=>memory_data_i_8, C0=>cpu1_t_sel_0, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>cpu1_n7423, Q0=>open);
    cpu1_SLICE_590I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_p_6, B0=>cpu1_a_6, 
                C0=>n8637, D0=>memory_addr_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n8607, Q0=>open);
    cpu1_SLICE_591I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFCA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_p_3, B0=>cpu1_a_3, 
                C0=>n8637, D0=>memory_addr_5, M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>n8604, Q0=>open);
    cpu1_SLICE_592I: SLOGICB
      generic map (LUT0_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_13, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_14, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8405, 
                Q0=>open);
    cpu1_SLICE_593I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_2, B0=>arst_c, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8665, Q0=>open);
    cpu1_SLICE_594I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_13, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_12, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8414, 
                Q0=>open);
    cpu1_SLICE_595I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_16, B0=>r_16, 
                C0=>cpu1_t_sel_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n11_adj_835, Q0=>open);
    cpu1_SLICE_596I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_11, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_10, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8422, 
                Q0=>open);
    cpu1_SLICE_597I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_3, B0=>arst_c, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8670, Q0=>open);
    cpu1_SLICE_598I: SLOGICB
      generic map (LUT0_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_9, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_10, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8426, 
                Q0=>open);
    cpu1_SLICE_599I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_9, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_8, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8430, 
                Q0=>open);
    cpu1_SLICE_600I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>sp1_4, B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n8674, Q0=>open);
    cpu1_SLICE_601I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_1, 
                B0=>cpu1_a_2, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_841, Q0=>open);
    cpu1_SLICE_602I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_6, 
                B0=>cpu1_a_7, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_844, Q0=>open);
    cpu1_SLICE_603I: SLOGICB
      generic map (LUT0_INITVAL=>X"E2E2")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_7, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_8, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8434, 
                Q0=>open);
    cpu1_SLICE_604I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1501, B0=>n1518, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1436, Q0=>open);
    cpu1_SLICE_605I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_sum_5, 
                C0=>cpu1_sum_6, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8442, 
                Q0=>open);
    cpu1_SLICE_606I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_sum_5, 
                C0=>cpu1_sum_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8446, 
                Q0=>open);
    cpu1_SLICE_607I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_2, 
                B0=>cpu1_a_3, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_857, Q0=>open);
    cpu1_SLICE_608I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_14, 
                B0=>cpu1_a_15, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_859, Q0=>open);
    cpu1_SLICE_609I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_15, 
                B0=>cpu1_sum_0, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_861, Q0=>open);
    cpu1_SLICE_610I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_3, 
                B0=>cpu1_a_4, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_862, Q0=>open);
    cpu1_SLICE_611I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1514, B0=>n1531, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1449, Q0=>open);
    cpu1_SLICE_612I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1517, B0=>n1534, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1452, Q0=>open);
    cpu1_SLICE_613I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_sum_3, 
                C0=>cpu1_sum_4, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8450, 
                Q0=>open);
    cpu1_SLICE_614I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_7, B0=>a_8, 
                C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_865, Q0=>open);
    cpu1_SLICE_615I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_8, B0=>a_9, 
                C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', 
                LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_869, Q0=>open);
    cpu1_SLICE_616I: SLOGICB
      generic map (LUT0_INITVAL=>X"D8D8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_sum_3, 
                C0=>cpu1_sum_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8454, 
                Q0=>open);
    cpu1_SLICE_617I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1513, B0=>n1530, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1448, Q0=>open);
    cpu1_SLICE_618I: SLOGICB
      generic map (LUT0_INITVAL=>X"5555")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_4, B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n1500, Q0=>open);
    cpu1_SLICE_619I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1512, B0=>n1529, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1447, Q0=>open);
    cpu1_SLICE_620I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_12, 
                B0=>a_13, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_870, Q0=>open);
    cpu1_SLICE_621I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1511, B0=>n1528, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1446, Q0=>open);
    cpu1_SLICE_622I: SLOGICB
      generic map (LUT0_INITVAL=>X"E4E4")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_t_sel_0, B0=>cpu1_sum_1, 
                C0=>cpu1_sum_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8461, 
                Q0=>open);
    cpu1_SLICE_623I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1510, B0=>n1527, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1445, Q0=>open);
    cpu1_SLICE_624I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_11, 
                B0=>a_12, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_871, Q0=>open);
    cpu1_SLICE_625I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1463, B0=>n1480, C0=>sp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n1322, Q0=>open);
    cpu1_SLICE_626I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1464, B0=>n1481, C0=>sp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n1323, Q0=>open);
    cpu1_SLICE_627I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_10, 
                B0=>a_11, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_872, Q0=>open);
    cpu1_SLICE_628I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1509, B0=>n1526, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1444, Q0=>open);
    cpu1_SLICE_629I: SLOGICB
      generic map (LUT0_INITVAL=>X"8888")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n3_adj_767, B0=>cpu1_n3, 
                C0=>'X', D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n4_adj_776, Q0=>open);
    cpu1_SLICE_630I: SLOGICB
      generic map (LUT0_INITVAL=>X"B8B8")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_sum_15, B0=>cpu1_t_sel_0, 
                C0=>cpu1_sum_14, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n8465, 
                Q0=>open);
    cpu1_SLICE_631I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1508, B0=>n1525, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1443, Q0=>open);
    cpu1_SLICE_632I: SLOGICB
      generic map (LUT0_INITVAL=>X"EEEE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n3, B0=>cpu1_slot_2, C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n7397, Q0=>open);
    cpu1_SLICE_633I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1507, B0=>n1524, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1442, Q0=>open);
    cpu1_SLICE_634I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1506, B0=>n1523, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1441, Q0=>open);
    cpu1_SLICE_635I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1515, B0=>n1532, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1450, Q0=>open);
    cpu1_SLICE_636I: SLOGICB
      generic map (LUT0_INITVAL=>X"1010")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>rp1_3, B0=>rp1_2, C0=>arst_c, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>n7105, Q0=>open);
    cpu1_SLICE_637I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1505, B0=>n1522, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1440, Q0=>open);
    cpu1_SLICE_638I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>r_5, B0=>r_13, C0=>r_15, 
                D0=>r_12, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n7237, Q0=>open);
    cpu1_SLICE_639I: SLOGICB
      generic map (LUT0_INITVAL=>X"0808")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n3_adj_767, B0=>n3, 
                C0=>cpu1_slot_2, D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', 
                OFX1=>open, F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n25, 
                Q0=>open);
    cpu1_SLICE_640I: SLOGICB
      generic map (LUT0_INITVAL=>X"FDFD")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n3_adj_769, 
                B0=>cpu1_slot_2, C0=>cpu1_n3, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n7616, Q0=>open);
    cpu1_SLICE_641I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1504, B0=>n1521, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1439, Q0=>open);
    cpu1_SLICE_642I: SLOGICB
      generic map (LUT0_INITVAL=>X"8000")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n8614, B0=>arst_c, C0=>sp1_2, 
                D0=>sp1_3, M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>aclk_c_enable_16, Q0=>open);
    cpu1_SLICE_643I: SLOGICB
      generic map (LUT0_INITVAL=>X"FEFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_n3_adj_770, 
                B0=>cpu1_slot_2, C0=>cpu1_n3_adj_767, D0=>'X', M0=>'X', 
                CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, 
                OFX0=>open, F0=>cpu1_n46, Q0=>open);
    cpu1_SLICE_644I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_9, 
                B0=>a_10, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_874, Q0=>open);
    cpu1_SLICE_645I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>n1503, B0=>n1520, C0=>rp_4, 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>cpu1_n1438, Q0=>open);
    cpu1_SLICE_646I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFE")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>memory_data_i_14, 
                B0=>memory_data_i_5, C0=>memory_data_i_3, D0=>memory_data_i_4, 
                M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, 
                Q1=>open, OFX0=>open, F0=>cpu1_n7269, Q0=>open);
    cpu1_SLICE_647I: SLOGICB
      generic map (LUT0_INITVAL=>X"CACA")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>cpu1_a_in_16_N_215_0, 
                B0=>cpu1_a_1, C0=>cpu1_a_sel_0, D0=>'X', M0=>'X', CE=>'X', 
                CLK=>'X', LSR=>'X', OFX1=>open, F1=>open, Q1=>open, OFX0=>open, 
                F0=>cpu1_n2_adj_875, Q0=>open);
    SLICE_648I: SLOGICB
      generic map (LUT0_INITVAL=>X"FFFF")
      port map (M1=>'X', FXA=>'X', FXB=>'X', A1=>'X', B1=>'X', C1=>'X', 
                D1=>'X', DI1=>'X', DI0=>'X', A0=>'X', B0=>'X', C0=>'X', 
                D0=>'X', M0=>'X', CE=>'X', CLK=>'X', LSR=>'X', OFX1=>open, 
                F1=>open, Q1=>open, OFX0=>open, F0=>VCC_net, Q0=>open);
    ioport_15_I: ioport_15_B
      port map (PADDI=>ioport_out_15, PADDT=>gpio_dir_15, PADDO=>gpio_out_15, 
                ioport15=>ioport(15));
    ioport_14_I: ioport_14_B
      port map (PADDI=>ioport_out_14, PADDT=>gpio_dir_14, PADDO=>gpio_out_14, 
                ioport14=>ioport(14));
    ioport_13_I: ioport_13_B
      port map (PADDI=>ioport_out_13, PADDT=>gpio_dir_13, PADDO=>gpio_out_13, 
                ioport13=>ioport(13));
    ioport_12_I: ioport_12_B
      port map (PADDI=>ioport_out_12, PADDT=>gpio_dir_12, PADDO=>gpio_out_12, 
                ioport12=>ioport(12));
    ioport_11_I: ioport_11_B
      port map (PADDI=>ioport_out_11, PADDT=>gpio_dir_11, PADDO=>gpio_out_11, 
                ioport11=>ioport(11));
    ioport_10_I: ioport_10_B
      port map (PADDI=>ioport_out_10, PADDT=>gpio_dir_10, PADDO=>gpio_out_10, 
                ioport10=>ioport(10));
    ioport_9_I: ioport_9_B
      port map (PADDI=>ioport_out_9, PADDT=>gpio_dir_9, PADDO=>gpio_out_9, 
                ioport9=>ioport(9));
    ioport_8_I: ioport_8_B
      port map (PADDI=>ioport_out_8, PADDT=>gpio_dir_8, PADDO=>gpio_out_8, 
                ioport8=>ioport(8));
    ioport_7_I: ioport_7_B
      port map (PADDI=>ioport_out_7, PADDT=>gpio_dir_7, PADDO=>gpio_out_7, 
                ioport7=>ioport(7));
    ioport_6_I: ioport_6_B
      port map (PADDI=>ioport_out_6, PADDT=>gpio_dir_6, PADDO=>gpio_out_6, 
                ioport6=>ioport(6));
    ioport_5_I: ioport_5_B
      port map (PADDI=>ioport_out_5, PADDT=>gpio_dir_5, PADDO=>gpio_out_5, 
                ioport5=>ioport(5));
    ioport_4_I: ioport_4_B
      port map (PADDI=>ioport_out_4, PADDT=>gpio_dir_4, PADDO=>gpio_out_4, 
                ioport4=>ioport(4));
    ioport_3_I: ioport_3_B
      port map (PADDI=>ioport_out_3, PADDT=>gpio_dir_3, PADDO=>gpio_out_3, 
                ioport3=>ioport(3));
    ioport_2_I: ioport_2_B
      port map (PADDI=>ioport_out_2, PADDT=>gpio_dir_2, PADDO=>gpio_out_2, 
                ioport2=>ioport(2));
    ioport_1_I: ioport_1_B
      port map (PADDI=>ioport_out_1, PADDT=>gpio_dir_1, PADDO=>gpio_out_1, 
                ioport1=>ioport(1));
    ioport_0_I: ioport_0_B
      port map (PADDI=>ioport_out_0, PADDT=>gpio_dir_0, PADDO=>gpio_out_0, 
                ioport0=>ioport(0));
    uart_oI: uart_oB
      port map (PADDO=>uart_o_c, uarto=>uart_o);
    acknowledge_oI: acknowledge_oB
      port map (PADDO=>acknowledge_o_c, acknowledgeo=>acknowledge_o);
    aclkI: aclkB
      port map (PADDI=>aclk_c, aclkS=>aclk);
    arstI: arstB
      port map (PADDI=>arst_c, arstS=>arst);
    interrupt_i_4_I: interrupt_i_4_B
      port map (PADDI=>interrupt_i_c_4, interrupti4=>interrupt_i(4));
    interrupt_i_3_I: interrupt_i_3_B
      port map (PADDI=>interrupt_i_c_3, interrupti3=>interrupt_i(3));
    interrupt_i_2_I: interrupt_i_2_B
      port map (PADDI=>interrupt_i_c_2, interrupti2=>interrupt_i(2));
    interrupt_i_1_I: interrupt_i_1_B
      port map (PADDI=>interrupt_i_c_1, interrupti1=>interrupt_i(1));
    interrupt_i_0_I: interrupt_i_0_B
      port map (PADDI=>interrupt_i_c_0, interrupti0=>interrupt_i(0));
    uart_iI: uart_iB
      port map (PADDI=>uart_i_c, uarti=>uart_i);
    GSR_INST: GSR_INSTB
      port map (GSRNET=>arst_c);
    ram_memory_0_ram_memory_0_3_0I: ram_memory_0_ram_memory_0_3_0
      port map (DIA3=>memory_data_i_15, DIA2=>memory_data_i_14, 
                DIA1=>memory_data_i_13, DIA0=>memory_data_i_12, 
                ADA13=>memory_addr_11, ADA12=>memory_addr_10, 
                ADA11=>memory_addr_9, ADA10=>memory_addr_8, ADA9=>n8616, 
                ADA8=>n8615, ADA7=>memory_addr_5, ADA6=>memory_addr_4, 
                ADA5=>n8617, ADA4=>n8621, ADA3=>memory_addr_1, ADA2=>n8622, 
                DOA3=>memory_data_o_15, DOA2=>memory_data_o_14, 
                DOA1=>memory_data_o_13, DOA0=>memory_data_o_12, 
                WEA=>system_write, CLKA=>aclk_c, MORCLKA=>aclk_c);
    ram_memory_0_ram_memory_0_1_2I: ram_memory_0_ram_memory_0_1_2
      port map (DIA3=>memory_data_i_7, DIA2=>memory_data_i_6, 
                DIA1=>memory_data_i_5, DIA0=>memory_data_i_4, 
                ADA13=>memory_addr_11, ADA12=>memory_addr_10, 
                ADA11=>memory_addr_9, ADA10=>memory_addr_8, ADA9=>n8616, 
                ADA8=>n8615, ADA7=>memory_addr_5, ADA6=>memory_addr_4, 
                ADA5=>n8617, ADA4=>n8621, ADA3=>memory_addr_1, ADA2=>n8622, 
                DOA3=>memory_data_o_7, DOA2=>memory_data_o_6, 
                DOA1=>memory_data_o_5, DOA0=>memory_data_o_4, 
                WEA=>system_write, CLKA=>aclk_c, MORCLKA=>aclk_c);
    ram_memory_0_ram_memory_0_0_3I: ram_memory_0_ram_memory_0_0_3
      port map (DIA3=>memory_data_i_3, DIA2=>memory_data_i_2, 
                DIA1=>memory_data_i_1, DIA0=>memory_data_i_0, 
                ADA13=>memory_addr_11, ADA12=>memory_addr_10, 
                ADA11=>memory_addr_9, ADA10=>memory_addr_8, ADA9=>n8616, 
                ADA8=>n8615, ADA7=>memory_addr_5, ADA6=>memory_addr_4, 
                ADA5=>n8617, ADA4=>n8621, ADA3=>memory_addr_1, ADA2=>n8622, 
                DOA3=>memory_data_o_3, DOA2=>memory_data_o_2, 
                DOA1=>memory_data_o_1, DOA0=>memory_data_o_0, 
                WEA=>system_write, CLKA=>aclk_c, MORCLKA=>aclk_c);
    ram_memory_0_ram_memory_0_2_1I: ram_memory_0_ram_memory_0_2_1
      port map (DIA3=>memory_data_i_11, DIA2=>memory_data_i_10, 
                DIA1=>memory_data_i_9, DIA0=>memory_data_i_8, 
                ADA13=>memory_addr_11, ADA12=>memory_addr_10, 
                ADA11=>memory_addr_9, ADA10=>memory_addr_8, ADA9=>n8616, 
                ADA8=>n8615, ADA7=>memory_addr_5, ADA6=>memory_addr_4, 
                ADA5=>n8617, ADA4=>n8621, ADA3=>memory_addr_1, ADA2=>n8622, 
                DOA3=>memory_data_o_11, DOA2=>memory_data_o_10, 
                DOA1=>memory_data_o_9, DOA0=>memory_data_o_8, 
                WEA=>system_write, CLKA=>aclk_c, MORCLKA=>aclk_c);
    PUR_INST: PUR
      port map (PUR=>VCC_net);
  end Structure;



  library IEEE, vital2000, XP2;
  configuration Structure_CON of ep32_chip is
    for Structure
    end for;
  end Structure_CON;


