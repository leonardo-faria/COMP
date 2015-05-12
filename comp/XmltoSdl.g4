parser grammar XmltoSdl;

options {tokenVocab= P;}

region: REGION EQUALS QUOTE STRING48 QUOTE;
country: COUNTRY EQUALS QUOTE STRING48 QUOTE;
state: STATE EQUALS QUOTE STRING48 QUOTE;
city: CITY EQUALS QUOTE STRING48 QUOTE;
name: NAME EQUALS QUOTE STRING48 QUOTE;
lat: LAT EQUALS QUOTE coord90 QUOTE;
lon: LON EQUALS QUOTE coord180 QUOTE;
alt: ALT EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
magvar: MAGVAR QUOTE EQUALS FLOAT360 QUOTE;
ident: IDENT EQUALS QUOTE STRING4 QUOTE;
airportTestRadius: ATR EQUALS QUOTE FLOAT (LENGTH_UNIT | NAUTICAL) QUOTE;
trafficScallar: TRAFFICSCALLAR EQUALS QUOTE FLOAT1 QUOTE;
com_frequency: FREQUENCY EQUALS QUOTE COM_FREQUENCY QUOTE;
com_type: TYPE EQUALS QUOTE COM_TYPE QUOTE;

coord90: COORD90 | FLOAT90;
coord180: COORD180 | FLOAT180;



airport: airport_open airport_content airport_close;
airport_open: OPEN_TAG AIRPORT airport_atr CLOSE_TAG;
airport_close: OPEN_TAG TAG_SLASH AIRPORT CLOSE_TAG;
airport_atr: region? country? state? city? name? lat lon alt magvar? ident airportTestRadius trafficScallar;

airport_content: ( tower | services | com | runway | runwayAlias | (taxiwayPoint taxiwayParking taxiName taxiwayPath) | helipad)*;

tower: OPEN_TAG TOWER lat lon alt TAG_SLASH CLOSE_TAG;


services: services_open services_content services_close;
services_open: OPEN_TAG SERVICES CLOSE_TAG;
services_close: OPEN_TAG TAG_SLASH SERVICES CLOSE_TAG;

services_content: (fuel)*;
fuel: OPEN_TAG FUEL fuel_type availability TAG_SLASH CLOSE_TAG;
fuel_type: TYPE EQUALS QUOTE FUEL_TYPE QUOTE;
availability: AVAILABILITY EQUALS QUOTE FUEL_AVAILABILITY QUOTE;



com: OPEN_TAG COM com_frequency com_type name TAG_SLASH CLOSE_TAG;



runway: runway_open runway_content runway_close;
runway_open: OPEN_TAG RUNWAY runway_atr CLOSE_TAG;
runway_close: OPEN_TAG TAG_SLASH RUNWAY CLOSE_TAG;

runway_atr: lat lon alt surface heading length width runway_number (designator | primaryDesignator | secondaryDesignator ) patternAltitude? primaryTakeoff? primaryLanding? primaryPattern? secondaryTakeoff? secondaryLanding? secondaryPattern? primaryMarkingBias secondaryMarkingBias;
surface: SURFACE EQUALS QUOTE SURFACE_VAL QUOTE;
heading: HEADING EQUALS QUOTE FLOATP360 QUOTE;
length: LENGTH EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
width: WIDTH EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
runway_number: NUMBER EQUALS QUOTE RUNWAY_NUMBER QUOTE;
designator: DESIGNATOR EQUALS QUOTE DESIGNATOR_VAL QUOTE;
primaryDesignator: PRIMARYDESIGNATOR EQUALS QUOTE DESIGNATOR_VAL QUOTE;
secondaryDesignator: SECONDARYDESIGNATOR EQUALS QUOTE DESIGNATOR_VAL QUOTE;
patternAltitude: PATTERNALTITUDE EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
primaryTakeoff: PRIMARYTAKEOFF EQUALS QUOTE BOOL QUOTE;
primaryLanding: PRIMARYLANDING EQUALS QUOTE BOOL QUOTE;
primaryPattern: PRIMARYPATTERN EQUALS QUOTE PATTERN QUOTE;
secondaryTakeoff: SECONDARYTAKEOFF EQUALS QUOTE BOOL QUOTE;
secondaryLanding: SECONDARYLANDING EQUALS QUOTE BOOL QUOTE;
secondaryPattern: SECONDARYPATTERN EQUALS QUOTE PATTERN QUOTE;
primaryMarkingBias: PRIMARYMARKINGBIAS EQUALS QUOTE FLOAT (LENGTH_UNIT | NAUTICAL) QUOTE; 
secondaryMarkingBias: SECONDARYMARKINGBIAS EQUALS QUOTE FLOAT (LENGTH_UNIT | NAUTICAL) QUOTE;


runway_content: (markings)* (lights)* (offsetThreshold)* (blastPad)* (overrun)* (approachLights)* (vasi)* (ils)* (runwayStart)*;

markings: OPEN_TAG MARKINGS edges threshold fixedDistance touchdown dashes marking_ident precision edgePavement singleEnd primaryClosed secondaryClosed primaryStol secondaryStol TAG_SLASH CLOSE_TAG;
edges: EDGES EQUALS QUOTE BOOL QUOTE;
threshold: THRESHOLD EQUALS QUOTE BOOL QUOTE;
fixedDistance: FIXEDDISTANCE EQUALS QUOTE BOOL QUOTE;
touchdown: TOUCHDOWN EQUALS QUOTE BOOL QUOTE;
dashes: DASHES EQUALS QUOTE BOOL QUOTE;
marking_ident: MARKING_IDENT EQUALS QUOTE BOOL QUOTE;
precision: PRECISION EQUALS QUOTE BOOL QUOTE;
edgePavement: EDGEPAVEMENT EQUALS QUOTE BOOL QUOTE;
singleEnd: SINGLEEND EQUALS QUOTE BOOL QUOTE;
primaryClosed: PRIMARYCLOSED EQUALS QUOTE BOOL QUOTE;
secondaryClosed: SECONDARYCLOSED EQUALS QUOTE BOOL QUOTE;
primaryStol: PRIMARYSTOL EQUALS QUOTE BOOL QUOTE;
secondaryStol: SECONDARYSTOL EQUALS QUOTE BOOL QUOTE;

lights: OPEN_TAG LIGHTS center edge centerRed TAG_SLASH CLOSE_TAG;
center: CENTER EQUALS QUOTE LIGHTS_VAL QUOTE;
edge: EDGE EQUALS QUOTE LIGHTS_VAL QUOTE;
centerRed: CENTERRED EQUALS QUOTE BOOL QUOTE;


offsetThreshold: OPEN_TAG OFFSETTHRESHOLD end length width? surface? TAG_SLASH CLOSE_TAG;
end: END EQUALS QUOTE END_VAL QUOTE;

blastPad: OPEN_TAG BLASTPAD end length width? surface? TAG_SLASH CLOSE_TAG;

overrun: OPEN_TAG OVERRUN end length width? surface? TAG_SLASH CLOSE_TAG;

approachLights: OPEN_TAG APPROACHLIGHTS end system? strobes? reil? touchdown? endlights? TAG_SLASH CLOSE_TAG;
system: SYSTEM EQUALS QUOTE SYSTEM_VAL QUOTE;
strobes: STROBES EQUALS QUOTE INTP QUOTE;
reil: REIL EQUALS QUOTE BOOL QUOTE;
endlights: ENDLIGHTS EQUALS QUOTE BOOL QUOTE;

vasi: OPEN_TAG VASI end vasi_type side biasX biasZ spacing pitch TAG_SLASH CLOSE_TAG;
vasi_type: TYPE EQUALS QUOTE VASI_TYPE_VAL QUOTE;
side: SIDE EQUALS QUOTE SIDE_VAL QUOTE;
biasX: BIASX EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
biasZ: BIASZ EQUALS QUOTE FLOAT (LENGTH_UNIT)? QUOTE;
spacing: SPACING EQUALS QUOTE FLOATP QUOTE;
pitch: PITCH EQUALS QUOTE FLOATP10 QUOTE;


ils: ils_open ils_content ils_close;

ils_open: OPEN_TAG ILS lat lon alt heading frequency end (range)? magvar ident (width)? (name)? (backCourse)? CLOSE_TAG;
frequency: FREQUENCY EQUALS QUOTE FREQUENCY_VAL QUOTE;
range: RANGE EQUALS QUOTE FLOAT (LENGTH_UNIT | NAUTICAL)? QUOTE;
backCourse: BACKCOURSE EQUALS QUOTE BOOL QUOTE;

ils_content: (glideScope)* (dme)* (visualModel)*;
glideScope: OPEN_TAG GLIDESCOPE lat lon alt pitch range TAG_SLASH CLOSE_TAG;
dme: OPEN_TAG DME lat lon alt range TAG_SLASH CLOSE_TAG;

visualModel: visualModel_open visualModel_content visualModel_close;
visualModel_open: OPEN_TAG VISUALMODEL heading? imageComplexity? guid_name instanceId CLOSE_TAG;
imageComplexity: IMAGECOMPLEXITY EQUALS QUOTE IMAGECOMPLEXITY_VAL QUOTE;
guid_name: NAME EQUALS QUOTE GUID_NAME_VAL QUOTE;
instanceId: INSTANCEID EQUALS QUOTE GUID_NAME_VAL QUOTE;

visualModel_content: (biasXYZ)*;
biasXYZ: OPEN_TAG BIASXYZ biasX_xyz biasY_xyz biasZ_xyz TAG_SLASH CLOSE_TAG;
biasX_xyz: BIASX EQUALS QUOTE FLOAT QUOTE;
biasY_xyz: BIASY EQUALS QUOTE FLOAT QUOTE;
biasZ_xyz: BIASZ EQUALS QUOTE FLOAT QUOTE;
visualModel_close: OPEN_TAG TAG_SLASH VISUALMODEL CLOSE_TAG;
ils_close: OPEN_TAG TAG_SLASH ILS CLOSE_TAG;

runwayStart: OPEN_TAG RUNWAYSTART runway_type lat lon alt heading end TAG_SLASH CLOSE_TAG;
runway_type: TYPE EQUALS QUOTE RUNWAY QUOTE;

runwayAlias: OPEN_TAG RUNWAYALIAS runway_number designator TAG_SLASH CLOSE_TAG;



helipad: OPEN_TAG HELIPAD lat lon alt surface heading length width helipad_type closed? transparent? red? green? blue? TAG_SLASH CLOSE_TAG;

helipad_type: TYPE EQUALS QUOTE HELIPAD_TYPE QUOTE;
closed: CLOSED EQUALS QUOTE BOOL QUOTE;
transparent: TRANSPARENT EQUALS QUOTE BOOL QUOTE;
red: RED EQUALS QUOTE INT255 QUOTE;
green: GREEN EQUALS QUOTE INT255 QUOTE;
blue: BLUE EQUALS QUOTE INT255 QUOTE;


taxiwayPoint: OPEN_TAG TAXIWAYPOINT index taxiway_type orientation? ((lat lon) | (biasX_xyz biasZ_xyz)) TAG_SLASH CLOSE_TAG;

index: INDEX EQUALS QUOTE INTP3999 QUOTE;
taxiway_type: TYPE EQUALS QUOTE TAXIWAYTYPE_VAL QUOTE;
orientation: ORIENTATION EQUALS QUOTE ORIENTATION_VAL QUOTE;

taxiName: OPEN_TAG TAXINAME index255 taxi_name TAG_SLASH CLOSE_TAG;
index255: INDEX EQUALS QUOTE INTP255 QUOTE;
taxi_name: NAME EQUALS QUOTE STRINGN8 QUOTE;


taxiwayPath: OPEN_TAG TAXIWAYPATH path_type path_start path_end width weightLimit surface drawSurface drawDetail (centerLine)? (centerLineLighted)? (leftEdge)? (leftEdgeLighted)? (rightEdge)? (rightEdgeLighted)? number designator path_name TAG_SLASH CLOSE_TAG;

path_type:TYPE EQUALS QUOTE PATH_TYPE PATH_TYPE QUOTE;
path_start:START EQUALS QUOTE INT QUOTE;
path_end:END EQUALS QUOTE INT QUOTE;
weightLimit:WHEIGHTLIMIT EQUALS QUOTE FLOAT QUOTE;
drawSurface: DRAWSURFACE EQUALS QUOTE BOOL QUOTE;
drawDetail: DRAWDETAIL EQUALS QUOTE BOOL QUOTE;
centerLine:CENTERLINE EQUALS QUOTE BOOL QUOTE;
centerLineLighted:CENTERLINELIGHTED EQUALS QUOTE BOOL QUOTE;
leftEdge:LEFTEDGE EQUALS QUOTE EDGE_VAL QUOTE;
leftEdgeLighted:LEFTEDGELIGHTED EQUALS QUOTE BOOL QUOTE;
rightEdge:RIGHTEDGE EQUALS QUOTE EDGE_VAL QUOTE;
rightEdgeLighted:RIGHTEDGELIGHTED EQUALS QUOTE BOOL QUOTE;
number:NUMBER EQUALS QUOTE RUNWAY_NUMBER QUOTE;
path_name:NAME EQUALS QUOTE INTP255 QUOTE;


taxiwayParking: OPEN_TAG TAXIWAYPARKING index (lat lon | biasX biasZ) heading radius parking_type parking_name number TAG_SLASH CLOSE_TAG;

radius: RADIUS EQUALS QUOTE FLOAT QUOTE;
parking_type: TYPE EQUALS QUOTE PARKING_TYPE QUOTE;
parking_name: NAME EQUALS QUOTE PARKING_NAME QUOTE;