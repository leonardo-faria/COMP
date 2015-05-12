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










COM_TYPE:'APPROACH'|'ASOS'|'ATIS'|'AWOS'|'CENTER'|'CLEARANCE'|'CLEARANCE_PRE_TAXI'|'CTAF'|'DEPARTURE'|'FSS'|'GROUND'|'MULTICOM'|'REMOTE_CLEARANCE_DELIVERY'|'TOWER'|'UNICOM';
LENGTH_UNIT: 'M' | 'F';
NAUTICAL: 'N';
BOOL: 'TRUE' | 'FALSE' | 'YES' | 'NO';
FUEL_TYPE: '73' | '87' | '100' | '130' | '145' | 'MOGAS' | 'JET' | 'JETA' | 'JETA1' | 'JETAP' | 'JETB' | 'JET4' | 'JET5' | 'UNKNOWN';
FUEL_AVAILABILITY: 'YES' | 'NO' | 'UNKNOWN' | 'PRIOR_REQUEST';
SURFACE_VAL: 'ASPHALT' | 'BITUMINOUS' | 'BRICK' | 'CLAY' | 'CEMENT' | 'CONCRETE' | 'CORAL' | 'DIRT' | 'GRASS' | 'GRAVEL' | 'ICE' | 'MACADAM' | 'OIL_TREATED, PLANKS' | 'SAND' | 'SHALE' | 'SNOW' | 'STEEL_MATS' | 'TARMAC' | 'UNKNOWN' | 'WATER'; 
RUNWAY_NUMBER: '0'[0-9] | ([1-2]?[0-9] | '3'[0-6]) | 'EAST' | 'NORTH' | 'NORTHEAST' | 'NORTHWEST' | 'SOUTH' | 'SOUTHEAST' | 'SOUTHWEST' | 'WEST';
DESIGNATOR_VAL: 'NONE' | 'C' | 'CENTER' | 'L' | 'LEFT' | 'R' | 'RIGHT' | 'W' | 'WATER' | 'A' | 'B';
PATTERN: 'LEFT' | 'RIGHT';
END_VAL: 'PRIMARY' | 'SECONDARY';
SYSTEM_VAL: 'NONE' | 'ALSF1' | 'ALSF2' | 'CALVERT' | 'CALVERT2' | 'MALS' | 'MALSF' | 'MALSR' | 'ODALS' | 'RAIL' | 'SALS' | 'SALSF' | 'SSALF' | 'SSALR' | 'SSALS';
VASI_TYPE_VAL: 'PAPI2' | 'PAPI4' | 'PVASI' | 'TRICOLOR' | 'TVASI' | 'VASI21' | 'VASI22' | 'VASI23' | 'VASI31' | 'VASI32' | 'VASI33' | 'BALL' | 'APAP' | 'PANELS';
SIDE_VAL: 'LEFT' | 'RIGHT';
IMAGECOMPLEXITY_VAL: 'VERY_SPARCE' | 'SPARCE' | 'NORMAL' | 'DENSE' | 'VERY_DENSE';
TAXIWAYTYPE_VAL: 'NORMAL' | 'HOLD_SHORT' | 'ILS_HOLD_SHORT' | 'HOLD_SHORT_NO_DRAW' | 'ILS_HOLD_SHORT_NO_DRAW';
ORIENTATION_VAL: 'FOWARD' | 'REVERSE';
PATH_TYPE: 'RUNWAY' | 'PARKING' | 'TAXI' | 'PATH' | 'CLOSED' | 'VEHICLE';
EDGE_VAL: 'NONE' | 'SOLID' | 'DASHED' | 'SOLID_DASHED';
LIGHTS_VAL: 'NONE' | 'LOW' | 'MEDIUM' | 'HIGH' ;
HELIPAD_TYPE: 'NONE'|'CIRCLE'|'H'|'MEDICAL'|'SQUARE';
PARKING_TYPE: 'NONE'|'DOCK_GA'|'FUEL'|'GATE_HEAVY'|'GATE_MEDIUM'|'GATE_SMALL'|'RAMP_CARGO'|'RAMP_GA'|'RAMP_GA_LARGE'|'RAMP_GA_MEDIUM'|'RAMP_GA_SMALL'|'RAMP_MIL_CARGO'|'RAMP_MIL_COMBAT'|'VEHICLE';
PARKING_NAME: 'PARKING'|'DOCK'|'GATE'|'GATE_'[A-Z]|'NONE'|'N_PARKING'|'NE_PARKING'|'NW_PARKING'|'SE_PARKING'|'S_PARKING'|'SW_PARKING'|'W_PARKING'|'E_PARKING';
























