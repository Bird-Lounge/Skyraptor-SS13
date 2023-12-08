import { exhaustiveCheck } from 'common/exhaustive';

import { useBackend } from '../../backend';
<<<<<<< HEAD
<<<<<<< HEAD
import { GamePreferencesSelectedPage, PreferencesMenuData, Window } from './data';
=======
import {
  GamePreferencesSelectedPage,
  PreferencesMenuData,
  Window,
} from './data';
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))
import { CharacterPreferenceWindow } from './CharacterPreferenceWindow';
=======
import { CharacterPreferenceWindow } from './CharacterPreferenceWindow';
import {
  GamePreferencesSelectedPage,
  PreferencesMenuData,
  Window,
} from './data';
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))
import { GamePreferenceWindow } from './GamePreferenceWindow';

export const PreferencesMenu = (props) => {
  const { data } = useBackend<PreferencesMenuData>();

  const window = data.window;

  switch (window) {
    case Window.Character:
      return <CharacterPreferenceWindow />;
    case Window.Game:
      return <GamePreferenceWindow />;
    case Window.Keybindings:
      return (
        <GamePreferenceWindow
          startingPage={GamePreferencesSelectedPage.Keybindings}
        />
      );
    default:
      exhaustiveCheck(window);
  }
};
