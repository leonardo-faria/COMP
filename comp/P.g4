lexer grammar P;

WS: [ \t\n\r]+ -> skip ;



CLOSE_TAG: '>';
OPEN_TAG: '<';
TAG_SLASH: '/'; 
EQUALS: '=';
QUOTE: '"';

AIRPORT: 'Airport';
REGION: 'region';
COUNTRY: 'country';
STATE: 'state';
CITY: 'city';
NAME: 'name';
LAT: 'lat';
LON: 'lon';
ALT: 'alt';
MAGVAR: 'magvar';
IDENT: 'ident';
ATR: 'airportTestRadius';
TRAFFICSCALLAR: 'trafficScallar';
SERVICES: 'Services';
FUEL: 'Fuel';
TYPE: 'type';
AVAILABILITY: 'availability';
TOWER: 'Tower';
RUNWAY: 'Runway';
SURFACE: 'surface';
HEADING: 'heading';
LENGTH: 'length';
WIDTH: 'width';
NUMBER: 'number';
DESIGNATOR: 'designator';
PRIMARYDESIGNATOR: 'primaryDesignator';
SECONDARYDESIGNATOR: 'secondaryDesignator';
PATTERNALTITUDE: 'patternAltitude';
PRIMARYTAKEOFF: 'primaryTakeoff';
PRIMARYLANDING: 'primaryLanding';
PRIMARYPATTERN: 'primaryPattern';
SECONDARYTAKEOFF: 'secondaryTakeoff';
SECONDARYLANDING: 'secondaryLanding';
SECONDARYPATTERN: 'secondaryPattern';
PRIMARYMARKINGBIAS: 'primaryMarkingBias';
SECONDARYMARKINGBIAS: 'secondaryMarkingBias';
MARKINGS: 'Markings';
EDGES: 'edges';
THRESHOLD: 'threshold';
FIXEDDISTANCE: 'fixedDistance';
TOUCHDOWN: 'touchdown';
DASHES: 'dashes';
MARKING_IDENT: 'ident';
PRECISION: 'precision';
EDGEPAVEMENT: 'edgePavement';
SINGLEEND: 'singleEnd';
PRIMARYCLOSED: 'primaryClosed';
SECONDARYCLOSED: 'secondaryClosed';
PRIMARYSTOL: 'primaryStol';
SECONDARYSTOL: 'secondaryStol';
LIGHTS: 'Lights';
CENTER: 'center';
EDGE: 'edge';
CENTERRED: 'centerRed';
OFFSETTHRESHOLD: 'OffsetThreshold';
END: 'end';
BLASTPAD: 'BlastPad';
OVERRUN: 'Overrun';
APPROACHLIGHTS: 'ApproachLights';
SYSTEM: 'system';
STROBES: 'strobes';
REIL: 'reil';
ENDLIGHTS: 'endLights';
VASI: 'vasi';
SIDE: 'side';
BIASX: 'biasX';
BIASY: 'biasY';
BIASZ: 'biasZ';
SPACING: 'spacing';
PITCH: 'pitch';
ILS: 'Ils';
FREQUENCY: 'frequency';
RANGE: 'range';
BACKCOURSE: 'backCourse';
GLIDESCOPE: 'GlideScope';
DME: 'DME';
VISUALMODEL: 'VisualModel';
IMAGECOMPLEXITY: 'imageComplexity';
INSTANCEID: 'InstanceId';
BIASXYZ: 'BiasXYZ';
BIASX_xyz: 'biasX';
BIASY_xyz: 'biasY';
BIASZ_xyz: 'biasZ';
RUNWAYSTART: 'RunwayStart';
RUNWAYALIAS: 'RunwayAlias';
START: 'start';
INDEX: 'index';
ORIENTATION: 'orientation';
TAXIWAYPATH: 'TaxiwayPath';
WHEIGHTLIMIT: 'weightLimit';
DRAWSURFACE:'drawSurface';
DRAWDETAIL:'drawDetail';
CENTERLINE:'centerLine';
CENTERLINELIGHTED:'centerLineLIGHTED';
LEFTEDGELIGHTED: 'leftEdgeLighted';
RIGHTEDGE:'rightEdge';
RIGHTEDGELIGHTED: 'rightEdgeLighted';
COM:'Com';
LEFTEDGE: 'leftEdge';
HELIPAD: 'Helipad';
TAXINAME: 'taxiName'; 
TAXIWAYPARKING: 'TaxiwayParking';
RADIUS:'radius';
CLOSED:'closed';
TRANSPARENT:'transparent';
RED:'red';
GREEN:'green';
BLUE:'blue';
TAXIWAYPOINT:'TaxiwayPoint';






//BOOL: 'TRUE' | 'FALSE' | 'YES' | 'NO';
//LIGHTS_VAL: ('NONE' | 'LOW' | 'MEDIUM' | 'HIGH');
//FUEL_TYPE: '73' | '87' | '100' | '130' | '145' | 'MOGAS' | 'JET' | 'JETA' | 'JETA1' | 'JETAP' | 'JETB' | 'JET4' | 'JET5' | 'UNKNOWN';
//FUEL_AVAILABILITY: 'YES' | 'NO' | 'UNKNOWN' | 'PRIOR_REQUEST';
//SYSTEM_VAL: 'NONE' | 'ALSF1' | 'ALSF2' | 'CALVERT' | 'CALVERT2' | 'MALS' | 'MALSF' | 'MALSR' | 'ODALS' | 'RAIL' | 'SALS' | 'SALSF' | 'SSALF' | 'SSALR' | 'SSALS';
//DESIGNATOR_VAL: 'NONE' | 'C' | 'CENTER' | 'L' | 'LEFT' | 'R' | 'RIGHT' | 'W' | 'WATER' | 'A' | 'B';
//TAXIWAYTYPE_VAL: 'NORMAL' | 'HOLD_SHORT' | 'ILS_HOLD_SHORT' | 'HOLD_SHORT_NO_DRAW' | 'ILS_HOLD_SHORT_NO_DRAW'
//PATH_TYPE: 'RUNWAY' | 'PARKING' | 'TAXI' | 'PATH' | 'CLOSED' | 'VEHICLE';
//EDGE_VAL: 'NONE' | 'SOLID' | 'DASHED' | 'SOLID_DASHED';
//HELIPAD_TYPE: 'NONE'|'CIRCLE'|'H'|'MEDICAL'|'SQUARE';

COM_TYPE:'APPROACH'|'ASOS'|'ATIS'|'AWOS'|'CENTER'|'CLEARANCE'|'CLEARANCE_PRE_TAXI'|'CTAF'|'DEPARTURE'|'FSS'|'GROUND'|'MULTICOM'|'REMOTE_CLEARANCE_DELIVERY'|'TOWER'|'UNICOM';
LENGTH_UNIT: 'M' | 'F';
NAUTICAL: 'N';
SURFACE_VAL: 'ASPHALT' | 'BITUMINOUS' | 'BRICK' | 'CLAY' | 'CEMENT' | 'CONCRETE' | 'CORAL' | 'DIRT' | 'GRASS' | 'GRAVEL' | 'ICE' | 'MACADAM' | 'OIL_TREATED, PLANKS' | 'SAND' | 'SHALE' | 'SNOW' | 'STEEL_MATS' | 'TARMAC' | 'UNKNOWN' | 'WATER'; 
VASI_TYPE_VAL: 'PAPI2' | 'PAPI4' | 'PVASI' | 'TRICOLOR' | 'TVASI' | 'VASI21' | 'VASI22' | 'VASI23' | 'VASI31' | 'VASI32' | 'VASI33' | 'BALL' | 'APAP' | 'PANELS';
PATTERN: 'LEFT' | 'RIGHT' ;
RUNWAY_NUMBER: '0'[0-9] | ([1-2]?[0-9] | '3'[0-6]) | 'EAST' | 'NORTH' | 'NORTHEAST' | 'NORTHWEST' | 'SOUTH' | 'SOUTHEAST' | 'SOUTHWEST' | 'WEST';
END_VAL: 'PRIMARY' | 'SECONDARY';
PARKING_TYPE: 'NONE'|'DOCK_GA'|'FUEL'|'GATE_HEAVY'|'GATE_MEDIUM'|'GATE_SMALL'|'RAMP_CARGO'|'RAMP_GA'|'RAMP_GA_LARGE'|'RAMP_GA_MEDIUM'|'RAMP_GA_SMALL'|'RAMP_MIL_CARGO'|'RAMP_MIL_COMBAT'|'VEHICLE';
PARKING_NAME: 'PARKING'|'DOCK'|'GATE'|'GATE_'[A-Z]|'NONE'|'N_PARKING'|'NE_PARKING'|'NW_PARKING'|'SE_PARKING'|'S_PARKING'|'SW_PARKING'|'W_PARKING'|'E_PARKING';
ORIENTATION_VAL: 'FOWARD' | 'REVERSE';
IMAGECOMPLEXITY_VAL: 'VERY_SPARCE' | 'SPARCE' | 'NORMAL' | 'DENSE' | 'VERY_DENSE';



//INT: ('-')? ('0'..'9')+;
//INTP: ('0'..'9')+;
//FLOAT: INT '.' INTP;
//
//FLOATP: INTP '.' INTP;
//NUMB: ('0'..'9');
//HEX: ('0'..'9' 'a'..'f');
//STRINGN8: CHAR+ | '';
//STRING48: CHAR+;
//STRING4: CHAR+;
//CHAR: (.);
//FLOATP10: '0.' NUMB | ('1'..'9') '.' NUMB | '10.0';
//FLOAT1: '0' '.' NUMB? NUMB | '1.0';
//INT60: ('0'..'5') NUMB | '60';
//INT90: ('0'..'8') NUMB | '90'; 
//INT180: '180' | '1' ('0'..'7') NUMB | NUMB? NUMB; 
//INTP255: '2' ('0'..'5') ('0'..'5') | ('0'..'1')? NUMB? NUMB; 
//INTP3999: '3' NUMB NUMB NUMB | ('0'..'2')? NUMB? NUMB? NUMB;
//FLOAT180: ('-')? INT180 '.' NUMB;
//FLOAT90: INT90 '.' INTP; 
//INT360: '3' ('0'..'5') NUMB | '360' | ('0'..'2')? NUMB? NUMB;
//FLOAT360: ('-')? INT360 '.' INTP;
//FLOATP360: INT360 '.' INTP;
//COORD90: ('-')? INT90 | ('-')? INT90 '-' INT60 '-' INT60;
//COORD180: ('-')? INT180 | ('-')? INT180 '-' INT60 '-' INT60;
//GUID_NAME_VAL: HEX HEX HEX HEX HEX HEX HEX '-' HEX HEX HEX '-' HEX HEX HEX HEX  '-' HEX HEX HEX HEX '-' HEX HEX HEX HEX HEX HEX HEX HEX HEX HEX HEX HEX; 
//FREQUENCY_VAL: '108.' NUMB | '1' ('0'..'3') ('0'..'6') '.' NUMB NUMB ('0'..'2'); 






HELIPAD_MODE: '' -> pushMode(HELIPAD);
EDGE_MODE: '' -> pushMode(EDGE_MODE); 
PATH_MODE: '' -> pushMode(PATH_MODE);
TAXIWAYTYPE_VAL_MODE: '' -> pushMode(TAXIWAYTYPE_VAL);
SYSTEM_MODE: '' -> pushMode(SYSTEM);
LIGHT_MODE: '' -> pushMode(LIGHT_VAL);
BOOL_MODE: '' -> pushMode(BOOL);
FUEL_TYPE_MODE: '' -> pushMode(FUEL_TYPE_MODE);
FUEL_AVAILABILITY_MODE: '' -> pushMode(FUEL_AVAILABILITY_MODE);
DESIGNATOR_MODE: '' -> pushMode(DESIGNATOR);

STRING48_MODE:'' -> pushMode(STRING48);
STRING4_MODE:'' -> pushMode(STRING4);
STRINGN8_MODE:'' -> pushMode(STRINGN8);

//mode STRING48;
//STRING48:;
//mode STRING4;
//STRING4:;
//mode STRINGN8;
//STRINGN8:;


mode HELIPAD;
HELIPAD_TYPE: ('NONE'|'CIRCLE'|'H'|'MEDICAL'|'SQUARE') -> popMode;

mode EDGE;
EDGE_VAL: ('NONE' | 'SOLID' | 'DASHED' | 'SOLID_DASHED') -> popMode;

mode PATH;
PATH_TYPE: ('RUNWAY' | 'PARKING' | 'TAXI' | 'PATH' | 'CLOSED' | 'VEHICLE') ->popMode;

mode TAXIWAYTYPE_VAL;
TAXIWAYTYPE_VAL: ('NORMAL' | 'HOLD_SHORT' | 'ILS_HOLD_SHORT' | 'HOLD_SHORT_NO_DRAW' | 'ILS_HOLD_SHORT_NO_DRAW') -> popMode; 

mode DESIGNATOR;
DESIGNATOR_VAL: ('NONE' | 'C' | 'CENTER' | 'L' | 'LEFT' | 'R' | 'RIGHT' | 'W' | 'WATER' | 'A' | 'B') -> popMode;

mode LIGHT_VAL;
LIGHTS_VAL: ('NONE' | 'LOW' | 'MEDIUM' | 'HIGH') -> popMode ;

mode BOOL;
BOOL: ('TRUE' | 'FALSE' | 'YES' | 'NO') -> popMode;

mode FUEL_TYPE_MODE;
FUEL_TYPE: ('73' | '87' | '100' | '130' | '145' | 'MOGAS' | 'JET' | 'JETA' | 'JETA1' | 'JETAP' | 'JETB' | 'JET4' | 'JET5' | 'UNKNOWN') -> popMode;

mode FUEL_AVAILABILITY_MODE;
FUEL_AVAILABILITY: ('YES' | 'NO' | 'UNKNOWN' | 'PRIOR_REQUEST') -> popMode;

mode SYSTEM;
SYSTEM_VAL: ('NONE' | 'ALSF1' | 'ALSF2' | 'CALVERT' | 'CALVERT2' | 'MALS' | 'MALSF' | 'MALSR' | 'ODALS' | 'RAIL' | 'SALS' | 'SALSF' | 'SSALF' | 'SSALR' | 'SSALS') -> popMode;

 








