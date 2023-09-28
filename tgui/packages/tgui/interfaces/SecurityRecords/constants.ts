export const CRIMESTATUS2COLOR = {
  Arrest: 'bad',
  Discharged: 'blue',
  Incarcerated: 'average',
<<<<<<< HEAD
  Parole: 'blue',
  Suspected: 'purple',
=======
  Parole: 'good',
  Suspected: 'teal',
>>>>>>> 8f6aa8eb6dd (Fixes sec record colors (#78528))
} as const;

export const CRIMESTATUS2DESC = {
  Arrest: 'Arrest. Target must have valid crimes to set this status.',
  Discharged: 'Discharged. Individual has been acquitted from wrongdoing.',
  Incarcerated: 'Incarcerated. Individual is currently serving a sentence.',
  Parole: 'Parole. Released from prison, but still under supervision.',
  Suspected: 'Suspected. Monitor closely for criminal activity.',
} as const;
