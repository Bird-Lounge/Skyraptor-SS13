import { multiline } from 'common/string';
<<<<<<< HEAD
<<<<<<< HEAD
import { CheckboxInput, Feature, FeatureNumberInput, FeatureToggle } from '../base';
=======

=======
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))
import {
  CheckboxInput,
  Feature,
  FeatureNumberInput,
  FeatureToggle,
} from '../base';
<<<<<<< HEAD
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))
=======
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))

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
