#define CABLE_LAYER_1 (1<<0)
#define CABLE_LAYER_2 (1<<1)
#define CABLE_LAYER_3 (1<<2)

#define MACHINERY_LAYER_1 1

#define SOLAR_TRACK_OFF     0
#define SOLAR_TRACK_TIMED   1
#define SOLAR_TRACK_AUTO    2

///conversion ratio from joules to watts
#define WATTS / 0.002
///conversion ratio from watts to joules
#define JOULES * 0.002

GLOBAL_VAR_INIT(CHARGELEVEL, 0.001) // Cap for how fast cells charge, as a percentage-per-tick (.001 means cellcharge is capped to 1% per second)

//defines for the singularity engine
#define RAD_DISTANCE_COEFFICIENT 1 //old balance code for determining the range of the scrungulo's radiation.
#define RAD_ENERGY_MULTIPLIER 0.5 //used to determine the radiative power per pulse from the scrungulo.  a small value is necessary to keep it inline with modern power balance.
#define RAD_ENERGY_EXPONENT 1.15 //used after multiplier to determine the final radiative power.
#define RAD_ENERGY_BASELINE 50 //used to determine the baseline radiative power per pulse.  don't make this too big, otherwise a T1 scrungulo not even kept fed by PA could easily power an Icebox-tier station.
#define RAD_ENERGY_SCALEMAX (((2000 * RAD_ENERGY_MULTIPLIER) + RAD_ENERGY_BASELINE) ** RAD_ENERGY_EXPONENT) //used for calculating threshold properly
#define RAD_TO_THRESHOLD(rad) (1 - (##rad / RAD_ENERGY_SCALEMAX))
#define THRESHOLD_TO_RAD(rad) (((0 - ##rad) + 1) * RAD_ENERGY_SCALEMAX)