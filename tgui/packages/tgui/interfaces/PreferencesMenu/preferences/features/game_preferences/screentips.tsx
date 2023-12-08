import { multiline } from 'common/string';
<<<<<<< HEAD
<<<<<<< HEAD
import { CheckboxInput, FeatureColorInput, FeatureToggle, Feature, FeatureChoiced, FeatureDropdownInput } from '../base';
=======

import {
  CheckboxInput,
  Feature,
  FeatureChoiced,
  FeatureColorInput,
  FeatureDropdownInput,
  FeatureToggle,
} from '../base';
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))
=======
import {
  CheckboxInput,
  FeatureColorInput,
  FeatureToggle,
  Feature,
  FeatureChoiced,
  FeatureDropdownInput,
} from '../base';
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))

export const screentip_color: Feature<string> = {
  name: 'Screentips: Screentips color',
  category: 'UI',
  description: multiline`
    The color of screen tips, the text you see when hovering over something.
  `,
  component: FeatureColorInput,
};

export const screentip_images: FeatureToggle = {
  name: 'Screentips: Allow images',
  category: 'UI',
  description: multiline`When enabled, screentip hints use images for
    the mouse button rather than LMB/RMB.`,
  component: CheckboxInput,
};

export const screentip_pref: FeatureChoiced = {
  name: 'Screentips: Enable screentips',
  category: 'UI',
  description: multiline`
    Enables screen tips, the text you see when hovering over something.
    When set to "Only with tips", will only show when there is more information
    than just the name, such as what right-clicking it does.
  `,
  component: FeatureDropdownInput,
};
