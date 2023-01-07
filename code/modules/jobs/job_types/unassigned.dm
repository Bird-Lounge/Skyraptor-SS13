/**
 * This type is used to indicate a lack of a job.
 * The mind variable assigned_role will point here by default.
 * As any other job datum, this is a singleton.
 **/

/datum/job/unassigned
	title = "Unassigned Crewmember"
	rpg_title = "Peasant"
	paycheck = PAYCHECK_ZERO
	tgjob = 0 //so byond won't eat my face, hopefully
