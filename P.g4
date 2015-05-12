lexer grammar P;

WS: [ \t\n\r]+ -> skip ;


AIRPORT: 'Airport';
CLOSE_TAG: '>';
OPEN_TAG: '<';
TAG_SLASH: '/';
EQUALS: '=';
QUOTE: '"';
LENGTH_UNIT: 'M' | 'F';
NAUTICAL: 'N';
BOOL: 'TRUE' | 'FALSE' | 'YES' | 'NO';
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
FUEL_TYPE: '73' | '87' | '100' | '130' | '145' | 'MOGAS' | 'JET' | 'JETA' | 'JETA1' | 'JETAP' | 'JETB' | 'JET4' | 'JET5' | 'UNKNOWN';
AVAILABILITY: 'availability';
FUEL_AVAILABILITY: 'YES' | 'NO' | 'UNKNOWN' | 'PRIOR_REQUEST';
TOWER: 'Tower';

RUNWAY: 'Runway';

SURFACE: 'surface';
SURFACE_VAL: 'ASPHALT' | 'BITUMINOUS' | 'BRICK' | 'CLAY' | 'CEMENT' | 'CONCRETE' | 'CORAL' | 'DIRT' | 'GRASS' | 'GRAVEL' | 'ICE' | 'MACADAM' | 'OIL_TREATED, PLANKS' | 'SAND' | 'SHALE' | 'SNOW' | 'STEEL_MATS' | 'TARMAC' | 'UNKNOWN' | 'WATER'; 

HEADING: 'heading';

LENGTH: 'length';

WIDTH: 'width';


NUMBER: 'number';
RUNWAY_NUMBER: '0'[0-9] | ([1-2]?[0-9] | '3'[0-6]) | 'EAST' | 'NORTH' | 'NORTHEAST' | 'NORTHWEST' | 'SOUTH' | 'SOUTHEAST' | 'SOUTHWEST' | 'WEST';

DESIGNATOR: 'designator';
DESIGNATOR_VAL: 'NONE' | 'C' | 'CENTER' | 'L' | 'LEFT' | 'R' | 'RIGHT' | 'W' | 'WATER' | 'A' | 'B';

PRIMARYDESIGNATOR: 'primaryDesignator';

SECONDARYDESIGNATOR: 'secondaryDesignator';

PATTERNALTITUDE: 'patternAltitude';

PRIMARYTAKEOFF: 'primaryTakeoff';

PRIMARYLANDING: 'primaryLanding';

PRIMARYPATTERN: 'primaryPattern';
PATTERN: 'LEFT' | 'RIGHT';

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
END_VAL: 'PRIMARY' | 'SECONDARY';


BLASTPAD: 'BlastPad';

OVERRUN: 'Overrun';

APPROACHLIGHTS: 'ApproachLights';

SYSTEM: 'system';
SYSTEM_VAL: 'NONE' | 'ALSF1' | 'ALSF2' | 'CALVERT' | 'CALVERT2' | 'MALS' | 'MALSF' | 'MALSR' | 'ODALS' | 'RAIL' | 'SALS' | 'SALSF' | 'SSALF' | 'SSALR' | 'SSALS';

STROBES: 'strobes';

REIL: 'reil';

ENDLIGHTS: 'endLights';

VASI: 'vasi';

VASI_TYPE_VAL: 'PAPI2' | 'PAPI4' | 'PVASI' | 'TRICOLOR' | 'TVASI' | 'VASI21' | 'VASI22' | 'VASI23' | 'VASI31' | 'VASI32' | 'VASI33' | 'BALL' | 'APAP' | 'PANELS';

SIDE: 'side';
SIDE_VAL: 'LEFT' | 'RIGHT';

BIASX: 'biasX';
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
IMAGECOMPLEXITY_VAL: 'VERY_SPARCE' | 'SPARCE' | 'NORMAL' | 'DENSE' | 'VERY_DENSE';

GUID_NAME_VAL: 'lol';
INSTANCEID: 'InstanceId';

BIASXYZ: 'BiasXYZ';
BIASX_xyz: 'biasX';
BIASY_xyz: 'biasY';
BIASZ_xyz: 'biasZ';
RUNWAYSTART: 'RunwayStart';



//FIM DE RUNWAY


RUNWAYALIAS: 'RunwayAlias';

START: 'Start';

INDEX: 'index';

TAXIWAYTYPE_VAL: 'NORMAL' | 'HOLD_SHORT' | 'ILS_HOLD_SHORT' | 'HOLD_SHORT_NO_DRAW' | 'ILS_HOLD_SHORT_NO_DRAW';

ORIENTATION: 'orientation';
ORIENTATION_VAL: 'FOWARD' | 'REVERSE';

TAXIWAYPATH: 'TaxiwayPath';

PATH_TYPE: 'RUNWAY' | 'PARKING' | 'TAXI' | 'PATH' | 'CLOSED' | 'VEHICLE';
WHEIGHTLIMIT: 'weightLimit';

DRAWSURFACE:'drawSurface';
DRAWDETAIL:'drawDetail';

CENTERLINE:'centerLine';

CENTERLINELIGHTED:'centerLineLIGHTED';

LEFTEDGE: 'leftEdge';
EDGE_VAL: 'NONE' | 'SOLID' | 'DASHED' | 'SOLID_DASHED';

LEFTEDGELIGHTED: 'leftEdgeLighted';

RIGHTEDGE:'rightEdge';
RIGHTEDGELIGHTED: 'rightEdgeLighted';
