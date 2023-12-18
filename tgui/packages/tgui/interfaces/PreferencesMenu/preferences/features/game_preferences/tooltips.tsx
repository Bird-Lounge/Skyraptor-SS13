import { multiline } from 'common/string';
<<<<<<< HEAD
import { CheckboxInput, Feature, FeatureNumberInput, FeatureToggle } from '../base';
=======

import {
  CheckboxInput,
  Feature,
  FeatureNumberInput,
  FeatureToggle,
} from '../base';
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))

export const enable_tips: FeatureToggle = {
  name: 'Enable tooltips',
  category: 'TOOLTIPS',
  description: multiline`
    Do you want to see tooltips when hovering over items?
  `,
  component: CheckboxInput,
};

export const tip_delay: Feature<number> = {
  name: 'Tooltip delay (in milliseconds)',
  category: 'TOOLTIPS',
  description: multiline`
    How long should it take to see a tooltip when hovering over items?
  `,
  component: FeatureNumberInput,
};
