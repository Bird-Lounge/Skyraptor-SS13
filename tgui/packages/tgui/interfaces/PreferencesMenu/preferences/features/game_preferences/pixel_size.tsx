import { createDropdownInput, Feature } from '../base';

export const pixel_size: Feature<number> = {
  name: 'Pixel Scaling',
  category: 'UI',
  component: createDropdownInput({
    0: 'Stretch to fit',
    1: 'Pixel Perfect 1x',
    1.5: 'Pixel Perfect 1.5x',
    2: 'Pixel Perfect 2x',
    2.5: 'Pixel Perfect 2.5x',
    3: 'Pixel Perfect 3x',
    3.5: 'Pixel Perfect 3.5x',
    4: 'Pixel Perfect 4x',
    4.5: 'Pixel Perfect 4.5x',
    5: 'Pixel Perfect 5x',
  }),
};
