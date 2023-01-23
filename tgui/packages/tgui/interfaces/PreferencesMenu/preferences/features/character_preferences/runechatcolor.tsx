import { FeatureColorInput, Feature } from '../base';

export const runechat_color: Feature<string> = {
  name: 'Runechat Color',
  description: 'The color of your messages in Runechat.',
  component: FeatureColorInput,
};
